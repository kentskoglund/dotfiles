#!/bin/sh

for layout in ~/.i3/layouts/*; do
  i3-msg "workspace $(basename "$layout" .json); append_layout $layout"
done

(zoom &)
(teams &)
(outlook-kent &)
