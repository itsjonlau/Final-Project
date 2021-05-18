console.log('Is this working?');

let viz;
let viz2;
let viz3;
let viz4;
let viz5;
let viz6;
let viz7;
let viz8;

//Add Share Link to Tableau Public in here
const url = "https://public.tableau.com/views/DashboardImages/TotalDeathsandVaccinations?:language=en&:display_count=y&:origin=viz_share_link";
const url2 = "https://public.tableau.com/views/DashboardImages/NormalizedDeathbyRace?:language=en&:display_count=y&:origin=viz_share_link";
const url3 = "https://public.tableau.com/views/DeathRateByAgeGroup/Dashboard2?:language=en&:display_count=y&:origin=viz_share_link";
const url4 = "https://public.tableau.com/views/CovidDeathCountbyStates/CovidDeathRatebyStates?:language=en&:display_count=y&:origin=viz_share_link";
const url5 = "https://public.tableau.com/views/CovidDeathCountbyGender/DeathCountbyGender?:language=en&:display_count=y&:origin=viz_share_link";
const url6 = "https://public.tableau.com/views/covidpolitics/Dashboard1?:language=en&:display_count=y&:origin=viz_share_link";
const url7 = "https://public.tableau.com/views/covidpolitics/Dashboard2?:language=en&:display_count=y&:origin=viz_share_link";
const url8 = "https://public.tableau.com/views/covidpolitics/ofPopulationWhoDiedofCovid?:language=en&:display_count=y&:origin=viz_share_link";

const vizContainer = document.getElementById('vizContainer');
const vizContainer2 = document.getElementById('vizContainer2');
const vizContainer4 = document.getElementById('vizContainer4');
const vizContainer3 = document.getElementById('vizContainer3');
const vizContainer5 = document.getElementById('vizContainer5');
const vizContainer6 = document.getElementById('vizContainer6');
const vizContainer7 = document.getElementById('vizContainer7');
const vizContainer8 = document.getElementById('vizContainer8');

const options = {
    hideTabs: true,
    height: 1000,
    width: 1200,
    onFirstInteraction: function() {
        workbook = viz.getWorkbook();
        activeSheet = workbook.getActiveSheet();
        console.log("My dashboard is interactive");
    }
};

//create a function to generate the viz element
function initViz() {
    console.log('Executing the initViz function!');
    viz = new tableau.Viz(vizContainer, url, options);
    viz2 = new tableau.Viz(vizContainer2, url2, options);
    viz3 = new tableau.Viz(vizContainer3, url3, options);
    viz4 = new tableau.Viz(vizContainer4, url4, options);
    viz5 = new tableau.Viz(vizContainer5, url5, options);
    viz6 = new tableau.Viz(vizContainer6, url6, options);
    viz7 = new tableau.Viz(vizContainer7, url7, options);
    viz8 = new tableau.Viz(vizContainer8, url8, options);
}


// run the initViz function when the page loads
document.addEventListener("DOMContentLoaded", initViz);


// const exportPDF = document.getElementById('exportPDF');
// const exportImage = document.getElementById('exportImage');


//click on the pdf button to generate pdf of dashboard
// function generatePDF() {
//     viz.showExportPDFDialog()
// }

// exportPDF.addEventListener("click", function () {
//     generatePDF();
//   });

// //click on image to generate image of dashboard
// function generateImage() {
//     viz.showExportImageDialog()
// }

// exportImage.addEventListener("click", function () {
//     generateImage();
//   });