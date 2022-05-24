/**
 * 
 */
console.log("hello ceci est un test");
const img=document.querySelectorAll('[id=img_product]');
console.log(img);
const product_name = document.querySelectorAll('[id=product_name]');
console.log(product_name);

for(i=0;i<product_name.length;i++){
	console.log(img_product[i].attributes.src.nodeValue);
	
	if(product_name[i].innerHTML=="Parfum Lolita"){
    img_product[i].attributes.src.nodeValue="https://cdn.shopify.com/s/files/1/0008/4285/8551/products/lolita-lempicka-lolita-lempicka-30ml-edp-l-sp_ddc3d43f-dffa-4aba-af12-3a19d600f10e_800x.jpg?v=1560319016";
}else if(product_name[i].innerHTML=="Gel douche Dove"){
    img_product[i].attributes.src.nodeValue="https://static.beaute-test.com/prod/full/img128536.jpg";
}else if(product_name[i].innerHTML=="recils Maybeline"){
    img_product[i].attributes.src.nodeValue="https://www.maybelline.fr/~/media/mny/fr/eye-makeup/mascara/mascara-volume-cils-sensational-sky-high/c6ods5bkap1mm6fdzg1jamz0brayofnb.jpg?thn=0&w=380&hash=45660FAD82AF9C06055159457B03F5E75D4C9E44";
}else if(product_name[i].outerText=="creme Nivea"){
	img_product[i].attributes.src.nodeValue="https://media.auchan.fr/MEDIASTEP141728395_1200x1200/B2CD/";
}

else{
    img_product[i].attributes.src.nodeValue="https://www.slow-cosmetique.com/blogwp/wp-content/uploads/2019/08/Visuel-CARRE-Article-MAG-Cosme%CC%81tique-maison-avantages-et-inconve%CC%81nients.png";
}
	

}
