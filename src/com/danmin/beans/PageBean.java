package com.danmin.beans;

public class PageBean {

	// �ּ� ������ ��ȣ
	private int min;
	// �ִ� ������ ��ȣ
	private int max;
	// ���� ��ư�� ������ �� �̵��� ������
	private int prevPage;
	// ���� ��ư�� ������ �� �̵��� ������
	private int nextPage;
	// ��ü ������ ����
	private int pageCnt;
	// ���� ������
	private int currentPage;

	// ��ü �� ����, ���� ������, ������ �� �� ����, ������ ��ư ����
	public PageBean(int contentCnt, int currentPage, int contentPageCnt, int paginationCnt) {
		this.currentPage = currentPage;
		this.pageCnt = contentCnt / contentPageCnt;

		if (contentCnt % contentPageCnt > 0) {
			pageCnt++;
		}

		min = ((currentPage - 1) / contentPageCnt) * contentPageCnt + 1;
		max = min + paginationCnt - 1;

		if (max > pageCnt) {
			max = pageCnt;
		}

		prevPage = min - 1;
		nextPage = max + 1;

		if (nextPage > pageCnt) {
			nextPage = pageCnt;
		}
	}

	public int getMin() {
		return min;
	}

	public int getMax() {
		return max;
	}

	public int getPrevPage() {
		return prevPage;
	}

	public int getNextPage() {
		return nextPage;
	}

	public int getPageCnt() {
		return pageCnt;
	}

	public int getCurrentPage() {
		return currentPage;
	}

}
