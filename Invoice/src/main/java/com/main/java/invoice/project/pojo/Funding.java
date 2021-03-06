package com.main.java.invoice.project.pojo;

import java.math.BigDecimal;
import java.util.Date;

public class Funding
{
    private Integer fundingId;
    private String kontakName;
    private Integer reff;
    private Date tanggal;
    private BigDecimal nilai;
    private String keterangan;
    private String image;
    private Integer checkReff;

    public Integer getFundingId() {
        return fundingId;
    }

    public void setFundingId(Integer fundingId) {
        this.fundingId = fundingId;
    }

    public String getKontakName() {
        return kontakName;
    }

    public void setKontakName(String kontakName) {
        this.kontakName = kontakName;
    }

    public Integer getReff() {
        return reff;
    }

    public void setReff(Integer reff) {
        this.reff = reff;
    }

    public Date getTanggal() {
        return tanggal;
    }

    public void setTanggal(Date tanggal) {
        this.tanggal = tanggal;
    }

    public BigDecimal getNilai() {
        return nilai;
    }

    public void setNilai(BigDecimal nilai) {
        this.nilai = nilai;
    }

    public String getKeterangan() {
        return keterangan;
    }

    public void setKeterangan(String keterangan) {
        this.keterangan = keterangan;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public Integer getCheckReff() {
        return checkReff;
    }

    public void setCheckReff(Integer checkReff) {
        this.checkReff = checkReff;
    }

    @Override
    public String toString() {
        final StringBuffer sb = new StringBuffer("Funding{");
        sb.append("fundingId=").append(fundingId);
        sb.append(", kontakName='").append(kontakName).append('\'');
        sb.append(", reff=").append(reff);
        sb.append(", tanggal=").append(tanggal);
        sb.append(", nilai=").append(nilai);
        sb.append(", keterangan='").append(keterangan).append('\'');
        sb.append(", image='").append(image).append('\'');
        sb.append(", checkReff=").append(checkReff);
        sb.append('}');
        return sb.toString();
    }
}