console.log('Is this working?');

let viz;
let viz2;

//Add Share Link to Tableau Public in here
const url = "https://public.tableau.com/views/DashboardImages/TotalDeathsandVaccinations?:language=en&:display_count=y&:origin=viz_share_link";
const url2 = "https://public.tableau.com/views/DashboardImages/NormalizedDeathbyRace?:language=en&:display_count=y&:origin=viz_share_link";
//const url3 = "JONATHAN TO ADD"
//const url4 = "RUBY TO ADD"
const url5 = "JUSTIN TO ADD"
const url6 = "JUSTIN TO ADD"

const vizContainer = document.getElementById('vizContainer');
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
    viz3 = new tableau.Viz(vizContainer3, ur13, options);
    viz4 = new tableau.Viz(vizContainer4, url4, options);
    viz5 = new tableau.Viz(vizContainer5, url5, options);
}

// run the initViz function when the page loads
document.addEventListener("DOMContentLoaded", initViz);

const exportPDF = document.getElementById('exportPDF');
const exportImage = document.getElementById('exportImage');


//click on the pdf button to generate pdf of dashboard
function generatePDF() {
    viz.showExportPDFDialog()
}

exportPDF.addEventListener("click", function () {
    generatePDF();
  });

//click on image to generate image of dashboard
function generateImage() {
    viz.showExportImageDialog()
}

exportImage.addEventListener("click", function () {
    generateImage();
  });