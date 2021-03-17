if(Deno.args.length == 0){
    console.log('$ urlencode 你好');
    Deno.exit(0);
}
if(Deno.args.length > 1){
    console.log('$ urlencode "你好 世界"');
    Deno.exit(0);
}
console.log(encodeURIComponent(Deno.args[0]));
