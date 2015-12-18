var tour = new Tour({
  storage: false,
  steps: [
  {
    element: "#t11",
    title: "Add a profile picture",
    content: "Add a picture of your ugly mug.",
    placement: "right"
  },
  {
    element: "#t2",
    title: "Add pictures",
    content: "Add pictures for your friends and random internet stalkers to see."
  },
  {
    element: "#t3",
    title: "Make a post",
    content: "Write some stuff and hit that post button.",
    placement: "top"
  },
  {
    element: "#t4",
    title: "View followers",
    content: "View the people you're following and who is following you.",
    placement: "bottom"
  },
  {
    element: "#t5",
    title: "Placeholder",
    content: "This doesn't do anything and it may never.",
    placement: "bottom"
  },
  {
    element: "#t6",
    title: "Placeholder",
    content: "This one either.",
    placement: "bottom"
  },
  {
    element: "#t7",
    title: "Your profile",
    content: "Click here anytime to get back to your profile.",
    placement: "bottom"
  },
  {
    element: "#t8",
    title: "View Users",
    content: "View other people who are using Spacebook. Stalker.",
    placement: "bottom"
  },
  {
    element: "#t9",
    title: "Edit your profile",
    content: "Change your profile settings.",
    placement: "bottom"
  },
  {
    element: "#t10",
    title: "Logout",
    content: "For when you realize you've wasted enough time.",
    placement: "bottom"
  }
]});

function tourStart() {
  // Initialize and start the tour
  tour.init(true);
  tour.start(true);
}
