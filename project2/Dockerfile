# 📦 Use a base image that includes Python, Jupyter, and many scientific libraries (e.g., NumPy, SciPy, pandas, scikit-learn)
FROM jupyter/scipy-notebook

# 📁 Create a directory inside the container to store the trained model files
RUN mkdir my-model

# 🌍 Define environment variables for the model directory and filenames
# These can be accessed in Python using os.environ["MODEL_DIR"], etc.
ENV MODEL_DIR=/home/jovyan/my-model
ENV MODEL_FILE_LDA=clf_lda.joblib
ENV MODEL_FILE_NN=clf_nn.joblib

# 🛠 Install additional Python packages not already included (only joblib in this case)
RUN pip install joblib

# 📄 Copy your training and testing CSV data files from your local machine into the container
COPY train.csv ./train.csv
COPY test.csv ./test.csv

# 🧠 Copy your training and inference Python scripts into the container
COPY train.py ./train.py
COPY inference.py ./inference.py

# 🚀 Run the training script during the image build process so the models get trained and saved into MODEL_DIR
RUN python3 train.py
