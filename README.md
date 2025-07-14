# 📌 APEX Status Timeline Plug-in

A modern, responsive, and customizable **Status Timeline** plug-in for Oracle APEX. Easily display application or ticket stages with icons, colors, user info, and timestamps — all in a clean, animated timeline format (vertical or horizontal).

---

## 🔧 Features

- 🎨 User-defined background colors (`#BG_COLOUR#`)
- 🧠 Auto-injected icons based on status (e.g., completed, pending, rejected)
- 📅 Shows timestamp and user info per stage
- 🔁 Supports lazy loading in Classic Report
- 💻 Mobile-responsive design
- ✨ Font Awesome 6 support

---

## 🚀 Installation

1. Export the plug-in `.sql` from Oracle APEX (Shared Components > Plug-ins).
2. Import the plug-in into your APEX app.
3. Upload CSS and JS if required (optional).
4. Use the plug-in in a Classic Report or Dynamic Content region.
5. Reference `#BG_COLOUR#`, `#STATUS#`, `#UPDATED_ON#`, and other placeholders in your SQL.

---

## 📥 Example Usage

```sql
SELECT APP_ID,
    STEP_NUMBER,
    STAGE_NAME,
    STATUS,
    UPDATED_ON,
    UPDATED_BY,
    REMARKS,
    CASE STATUS
        WHEN 'Verified' then 'fa-solid fa-badge-check'
        when 'In Review' then 'fa-solid fa-rotate-right'
        when 'Rejected' then 'fa-solid fa-ban'
        else 'fa-solid fa-circle-check'
    end as icons,
    'yellow' AS BG_CLR,
    'bg-blue' AS ICON_BG
FROM 
    app_stage_tracking_sample
WHERE APP_ID=1


//HTML template 
<ul class="timeline #Timeline_Style#">
  <li class="timeline-item #STATUS_CLASS#">
    <div class="timeline-icon">
      <i class="fa fa-check-circle text-success"></i>
    </div>
    <div class="timeline-content">
      <div class="timeline-date" style="background: #BG_COLOUR#;">
        #UPDATED_ON#<br>by #UPDATED_BY#
      </div>
      <div class="timeline-details">
        <h3>#STATUS#</h3>
        <p>#REMARKS#</p>
      </div>
    </div>
  </li>
</ul>

<img src="https://raw.githubusercontent.com/mishab424/Dashboard-with-Chart-and-Cards/refs/heads/main/images/Screenshot%202025-07-10%20171856.png">

CSS Classes
Already included in the plug-in:

.timeline, .timeline-item, .timeline-content, .timeline-icon, .timeline-date, .timeline-details

Layouts: vertical or horizontal

Colors: User-defined or fallback defaults




# Oracle APEX Status Timeline Plug-in

This plug-in displays a modern, responsive status timeline in Oracle APEX...
Keywords: APEX timeline, status tracker, progress bar, horizontal timeline, vertical timeline, Oracle APEX plug-in.

See the [LICENSE](./LICENSE) file for details.
