$(document).ready(function(){
  console.log('Document ready!')

  var url = 'http://localhost:3000/api/v1/coffees'
  addFormListener();


  $.ajax({
    method: 'GET',
    url: url,
    success: function(response){
      const lis = response.map(function(coffee){
        return `<li><h5>${coffee.blend_name}</h5></li><br>Origin: <li>${coffee.origin}</li><br>`
        })
        $('#coffee_index').html(lis.join(''))
      }
      // error: function(response){
      //
      // }

  })

  //addFormListener();





})

  function addFormListener(){

    $('#add_coffee').on('submit', function(event){
      event.preventDefault()
      var url = 'http://localhost:3000/api/v1/coffees'

      console.log("this works!")
      const name_input = this.children[1].value
      const origin_input = this.children[3].value
      const notes_input = this.children[5].value

      $.ajax({
        method: "POST",
        url: url,
        data:{
          coffee: {
            blend_name: `${name_input}`,
            origin: `${origin_input}`,
            notes: `${notes_input}`
          }
        },
        success: function(response){
          const string = `<li><h5>${response.blend_name}</h5></li><br>Origin: <li>${response.origin}</li><br>`
          $('#coffee_index').append(string)
        },
        error: function(response){

        }
      })

    })

  }

    function coffeeIndex(){


    }
