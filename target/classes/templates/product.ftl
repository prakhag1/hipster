<#include "header.ftl">
<main role="main">
        <div class="py-5">
            <div class="container bg-light py-3 px-lg-5 py-lg-5">
                <div class="row">
                    <div class="col-12 col-lg-5">
                            <img class="img-fluid border" style="width: 100%;"
                            src="${prod.picture}" />
                    </div>
                    <div class="col-12 col-lg-7">
                            <h2>${prod.name}</h2>
                            
                            <p class="text-muted">
                                ${prod.priceUsd}
                            </p>
                            <hr/>
                            <p>
                                <h6>Product Description:</h6>
                                ${prod.description}
                            </p>
                            <hr/>

                            <form method="POST" action="/cart" class="form-inline text-muted" modelAttribute="cartForm">
                                <input type="hidden" name="product_id" value="${prod.id}"/>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <label class="input-group-text" for="quantity">Quantity</label>
                                    </div>
                                    <select name="quantity" id="quantity" class="custom-select form-control form-control-lg">
                                        <option>1</option>
                                        <option>2</option>
                                        <option>3</option>
                                        <option>4</option>
                                        <option>5</option>
                                        <option>10</option>
                                    </select>
                                    <button type="submit" class="btn btn-info btn-lg ml-3">Add to Cart</button>
                                </div>
                            </form>
                    </div>
                </div>
                <#if recommend??>
                <#include "recommendations.ftl">
                </#if>
            </div>
        </div>
    </main>
 <#include "footer.ftl">