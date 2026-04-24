// EVENT DATA (Add all events here)
const eventsData = {
    tedx: {
        title: "TEDxKUET",
        image: "tedx.jpg",
        desc: `
TEDxKUET is an independently organized TEDx event hosted by the KUET Business & Entrepreneurship Club as part of the global TEDx program. It gathers thought leaders, innovators, and change-makers to share inspiring ideas that spark meaningful dialogue, reflection, and action.

The inaugural edition took place on November 4, 2022, themed 'Break The Barrier,' featuring live talks and compelling storytelling. TEDxKUET serves as a vital platform for students and the community to explore ideas in entrepreneurship, technology, leadership, creativity, social impact, and innovation, while continuing to bring globally recognized idea-sharing events to the KUET campus.

Summary
TEDxKUET - independently organized by KBEC under the global TEDx banner, launched November 4, 2022 with 'Break The Barrier' theme, fostering ideas in entrepreneurship, technology, leadership, and innovation at KUET.

Hope this helps! Let me know if you need any other adjustments! 


        `
        ,
        location: "KUET Auditorium, Khulna",
        registerLink: "https://example.com/register-tedx"
    }
};


// GET EVENT FROM URL
const params = new URLSearchParams(window.location.search);
const eventKey = params.get("event");


// LOAD EVENT DATA
function loadEvent() {
    if (!eventsData[eventKey]) {
        document.body.innerHTML = `
            <h1 style="text-align:center; margin-top:100px;">
                Event not found
            </h1>
        `;
        return;
    }

    const event = eventsData[eventKey];

    document.getElementById("eventTitle").innerText = event.title;
    document.getElementById("eventImage").src = event.image;
    document.getElementById("eventDesc").innerText = event.desc;
    document.getElementById("eventLocation").innerText = event.location;
    document.getElementById("registerBtn").href = event.registerLink;

    document.title = event.title;
}


loadEvent();