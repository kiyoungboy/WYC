const jangsung_strawberry_salse = document.querySelector(".jangsung_strawberry_salse")
const jangsung_strawberry_salse_detail = document.querySelector("#jangsung_strawberry_salse_detail")

jangsung_strawberry_salse.addEventListener("click", ()=>{
  jangsung_strawberry_salse_detail.classList.toggle("dis_none");
})

// ---------------------------------------------
const salse_detail = document.querySelectorAll(".salse_detail")

function sales_detail(index){
  salse_detail[index].classList.toggle('dis_none');
}


const cost_detail = document.querySelectorAll(".cost_detail")

function detail_table(index){
  cost_detail[index].classList.toggle('dis_none');
}


