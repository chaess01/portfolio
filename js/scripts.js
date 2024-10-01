/*!
* Start Bootstrap - Creative v7.0.7 (https://startbootstrap.com/theme/creative)
* Copyright 2013-2023 Start Bootstrap
* Licensed under MIT (https://github.com/StartBootstrap/startbootstrap-creative/blob/master/LICENSE)
*/
//
// Scripts
// 

window.addEventListener('DOMContentLoaded', event => {

    // Navbar shrink function
    var navbarShrink = function () {
        const navbarCollapsible = document.body.querySelector('#mainNav');
        if (!navbarCollapsible) {
            return;
        }
        if (window.scrollY === 0) {
            navbarCollapsible.classList.remove('navbar-shrink')
        } else {
            navbarCollapsible.classList.add('navbar-shrink')
        }

    };

    // Shrink the navbar 
    navbarShrink();

    // Shrink the navbar when page is scrolled
    document.addEventListener('scroll', navbarShrink);

    // Activate Bootstrap scrollspy on the main nav element
    const mainNav = document.body.querySelector('#mainNav');
    if (mainNav) {
        new bootstrap.ScrollSpy(document.body, {
            target: '#mainNav',
            rootMargin: '0px 0px -40%',
        });
    };

    // Collapse responsive navbar when toggler is visible
    const navbarToggler = document.body.querySelector('.navbar-toggler');
    const responsiveNavItems = [].slice.call(
        document.querySelectorAll('#navbarResponsive .nav-link')
    );
    responsiveNavItems.map(function (responsiveNavItem) {
        responsiveNavItem.addEventListener('click', () => {
            if (window.getComputedStyle(navbarToggler).display !== 'none') {
                navbarToggler.click();
            }
        });
    });

    // Activate SimpleLightbox plugin for portfolio items
    new SimpleLightbox({
        elements: '#portfolio a.portfolio-box'
    });

});


//캐러셀
// 캐러셀 이미지 데이터 정의
const popdayImages = [
    {
        src: 'assets/img/pop/main.png'
        
    },
    {
        src: 'assets/img/pop/list.png'
       
    },
    {
        src: 'assets/img/pop/marchlist.png'
        
    },
    {
        src: 'assets/img/pop/login1.png'
       
    },
    {
        src: 'assets/img/pop/enter.png'
     
    },
    {
        src: 'assets/img/pop/login.png'
   
    },
    {
        src: 'assets/img/pop/user.png'
       
    },
    {
        src: 'assets/img/pop/registe.png'
     
    },
    {
        src: 'assets/img/pop/registe1.png'
        
    },
    {
        src: 'assets/img/pop/registe2.png'
    
    },
    {
        src: 'assets/img/pop/modify.png'
       
    },
    {
        src: 'assets/img/pop/delete.png'
       
    }
];

//newjeans
const newjeansImages = [
    {
        src: 'assets/img/new/1.png'
       
    },
    {
        src: 'assets/img/new/2.png'
      
    },
    {
        src: 'assets/img/new/3.png'
       
    },
    {
        src: 'assets/img/new/4.png'
        
    },
    {
        src: 'assets/img/new/5.png'
        
    },
    {
        src: 'assets/img/new/6.png'
       
    },
    {
        src: 'assets/img/new/7.png'
      
    },
    {
        src: 'assets/img/new/8.png'
       
    },
    {
        src: 'assets/img/new/9.png'
       
    },
    {
        src: 'assets/img/new/10.png'
      
    },
    {
        src: 'assets/img/new/11.png'
      
    },
    {
        src: 'assets/img/new/12.png'
      
    },
    {
        src: 'assets/img/new/13.png'
    
    },
    {
        src: 'assets/img/new/14.png'
 
    },
    {
        src: 'assets/img/new/15.png'
     
    },
    {
        src: 'assets/img/new/16.png'
      
    },
    {
        src: 'assets/img/new/17.png'
       
    },
    {
        src: 'assets/img/new/18.png'
       
    },
    {
        src: 'assets/img/new/19.png'
    
    },
    {
        src: 'assets/img/new/20.png'
       
    },
    {
        src: 'assets/img/new/21.png'
    
    }
];

// openModal 함수 정의
function openModal(index) {
    const carouselInner = document.querySelector('.carousel-inner');
    const carouselIndicators = document.querySelector('.carousel-indicators');
    
    // 포트폴리오 항목에 따라 캐러셀 데이터 선택
    let images;
    if (index === 0) {
        images = popdayImages;  // PopDay 캐러셀 이미지
    } else if (index === 1) {
        images = newjeansImages;  // NewJeans 캐러셀 이미지
    } else {
        images = [];  // 기본 빈 배열 (기타)
    }

    // 기존 캐러셀 항목 초기화
    carouselInner.innerHTML = '';
    carouselIndicators.innerHTML = '';

    // 캐러셀 항목을 동적으로 추가
    images.forEach((image, i) => {
        const isActive = i === 0 ? 'active' : '';

        // 캐러셀 이미지 항목 추가
        const carouselItem = `
            <div class="carousel-item ${isActive}">
                <img src="${image.src}" class="d-block w-100" alt="${image.caption}">
                <div class="carousel-caption d-none d-md-block">
                    <h5>${image.caption}</h5>
                    <p>${image.description}</p>
                </div>
            </div>
        `;
        carouselInner.innerHTML += carouselItem;

        // 인디케이터 추가
        const indicator = `
            <button type="button" data-bs-target="#carouselExample" data-bs-slide-to="${i}" class="${isActive}" aria-current="true" aria-label="Slide ${i+1}"></button>
        `;
        carouselIndicators.innerHTML += indicator;
    });

    // 모달을 열기
    const modal = new bootstrap.Modal(document.getElementById('carouselModal'));
    modal.show();
}




