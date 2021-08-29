import React, { useState, useEffect } from 'react';
import Row from './Row';
import requests from '../packs/requests';
import axios from '../packs/axios'

const base_poster_image_url = "https://image.tmdb.org/t/p/original/";

function Billboard() {
	const [movie, setMovies] = useState([]);

	useEffect(() => {
		// If [], run once when the rows loads, and dont run again.
		async function fetchData() {
			const request = await axios.get(requests.fetchNetflixOriginals);
			var index = Math.floor(Math.random() * request.data.results.length - 1);
			if (index < 0) {
				index = 0;
			}
			setMovies(
				request.data.results[index]
			);
			return request;
		}
		fetchData();
	}, []);

	return (
		<div className="billboard-presentation">
			<div className="billboard-contentBx">
				<h2 className="movie-title">{movie.name}</h2>
				<p className="movie-description">{movie.overview}</p>
				<div className="actionBx">
					<a href="" className="action-play"><i class="fas fa-play"></i> Play</a>
					<a href="" className="action-info">More Information</a>
				</div>
			</div>
			<div className="billboard-image-container">
				<div className="billboard-image-layer"></div>
				<img
					key={movie.id}
					className="billboard-image"
					src={`${base_poster_image_url}${movie.backdrop_path}`}
					alt="banner ${movie.name}"
				/>
			</div>
		</div>
	);
}

export default Billboard;