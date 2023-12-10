const x2js = new X2JS()

const normalize = (str) => str.replaceAll('&lt;', '<').replaceAll('&gt;', '>').replaceAll('&quot;', '"')

const insert_number = (n) => {
    let s = n.toString()
    s += ' '.repeat(14-s.length);
    return s;
};

const make_computation_on_client = async () => {
    const n = document.getElementById("input-n").value;
    const url = "http://127.0.0.1:3000/compute/view.xml?n=" + n
    const response = await fetch(url);
    const result = x2js.xml_str2json(normalize(await response.text()))
    console.log(result.objects.object)
    document.getElementById("result").innerHTML = `
<pre>
Result:
+----------------+----------------+
|       n        |       n*n      |
+----------------+----------------+
${result.objects.object.map((x) => {
    return `| \t\t | \t\t  |
| ${insert_number(x.n.__text)} | ${insert_number(x.nn.__text)} |`;
}).join('\n')}
+----------------+----------------+
</pre>`
};

const make_computation_on_server = async () => {
    const n = document.getElementById("input-n").value;
    const url = "http://127.0.0.1:3000/compute/view?n=" + n
    const response = await fetch(url);
    const res = normalize(await response.text())
    document.getElementById("result").innerHTML = res
};
