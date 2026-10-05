using System;
using System.Web.UI;

namespace ASPNetPracticals
{
    public partial class TrafficLight : Page
    {
        private int CurrentLight
        {
            get { return ViewState["CurrentLight"] == null ? 0 : (int)ViewState["CurrentLight"]; }
            set { ViewState["CurrentLight"] = value; }
        }

        private int TimeRemaining
        {
            get { return ViewState["TimeRemaining"] == null ? 3 : (int)ViewState["TimeRemaining"]; }
            set { ViewState["TimeRemaining"] = value; }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CurrentLight = 0;
                TimeRemaining = 3;
                UpdateLights();
            }
        }

        protected void btnStartStop_Click(object sender, EventArgs e)
        {
            if (timerLight.Enabled)
            {
                timerLight.Enabled = false;
                btnStartStop.Text = "Start";
                lblStatus.Text = "Stopped";
            }
            else
            {
                TimeRemaining = 3;
                timerLight.Enabled = true;
                btnStartStop.Text = "Stop";
                lblStatus.Text = "Time Remaining: " + TimeRemaining;
            }
        }

        protected void timerLight_Tick(object sender, EventArgs e)
        {
            TimeRemaining--;

            if (TimeRemaining == 0)
            {
                CurrentLight = (CurrentLight + 1) % 3;
                TimeRemaining = 3;
                UpdateLights();
            }

            lblStatus.Text = "Time Remaining: " + TimeRemaining;
        }

        private void UpdateLights()
        {
            imgRed.CssClass = CurrentLight == 0 ? "lamp on" : "lamp off";
            imgGreen.CssClass = CurrentLight == 1 ? "lamp on" : "lamp off";
            imgYellow.CssClass = CurrentLight == 2 ? "lamp on" : "lamp off";
        }
    }
}
