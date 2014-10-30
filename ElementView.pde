class ElementView {
	public final Element element;
	private Point center;
	private float radius;
	public final Point index;

	public final float RADIUS_SCALE = 2;
	public final color FILL_COLOR = color(50, 50, 50);
	public final color STROKE_COLOR = color(0, 0, 0);
	public final color TEXT_COLOR = color(255, 0, 0);

	// Defaults center to left corner
	public ElementView(Element element, Point index) {
		this.element = element;
		this.radius = this.element.data * RADIUS_SCALE;
		this.center = new Point(0, 0);
		this.index = index;
	}

	public Point getCenter() {
		return center;
	}

	public void setCenter(Point p) {
		this.center = p;
	}

	public float getRadius() {
		return radius;
	}

	public void setRadius(float r) {
		this.radius = r;
	}

	public void render() {
		ellipseMode(CENTER);  // First 2 params center, second two width & height
		stroke(STROKE_COLOR);
		fill(FILL_COLOR);

		// Draw function takes in diameter, must scale radius
		ellipse(center.x, center.y, 2 * radius, 2 * radius);

		fill(TEXT_COLOR);
		textAlign(CENTER, CENTER);
		text(element.id, center.x, center.y);

	}

	public void tPrint() {
		println("id = " + element.id);
		println("data = " + element.data);
		println("Index = (" + index.x + ", " + index.y + ")");
		println();
	}

}