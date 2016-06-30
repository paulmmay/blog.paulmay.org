var scene = new THREE.Scene();
var camera = new THREE.PerspectiveCamera(75, window.innerWidth/window.innerHeight, 0.1, 1000);

var renderer = new THREE.WebGLRenderer();
renderer.setSize(window.innerWidth, window.innerHeight);
document.body.appendChild(renderer.domElement);

//Geometry contains the vertices; the shape
var geometry = new THREE.BoxGeometry(1,1,1);
//Material is the texture/fill/surface of the geometry
// var material = new THREE.MeshBasicMaterial({color: 0x666666});
//Mesh is the combination of the collection of vertices (the shape) and the material
// var cube = new THREE.Mesh(geometry, material);
var cube = new THREE.Mesh(geometry);


//add our mesh at 0,0,0
scene.add(cube);

camera.position.z = 5;

//This is the same as draw in processing; a loop that continually updates the frame
var render = function () {
	requestAnimationFrame(render);

	cube.rotation.x += 0.01;
	cube.rotation.y += 0.005;
	cube.rotation.z += 0.009;

	// camera.position.z +=0.003;
	// camera.position.x +=0.002;
	// camera.position.y +=0.003;


	renderer.render(scene, camera);
	
};


//add a light - remove the material to see this
areaLight1 = new THREE.AreaLight( 0xffffff, 1 );
areaLight1.position.set( 0.0001, 10.0001, -18.5001 );
areaLight1.rotation.set( -0.74719, 0.0001, 0.0001 );
areaLight1.width = 10;
areaLight1.height = 1;

scene.add( areaLight1 );

render();