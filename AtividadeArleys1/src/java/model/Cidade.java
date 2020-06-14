
package model;

import java.sql.Timestamp;


public class Cidade {
    private String cidade;
    private int cidade_id;
    private Pais pais_id;
    private Timestamp ultima_atualizacao;

    public String getCidade() {
        return cidade;
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }

    public int getCidade_id() {
        return cidade_id;
    }

    public void setCidade_id(int cidade_id) {
        this.cidade_id = cidade_id;
    }

    public Pais getPais_id() {
        return pais_id;
    }

    public void setPais_id(Pais pais_id) {
        this.pais_id = pais_id;
    }

    public Timestamp getUltima_atualizacao() {
        return ultima_atualizacao;
    }

    public void setUltima_atualizacao(Timestamp ultima_atualizacao) {
        this.ultima_atualizacao = ultima_atualizacao;
    }

    
    }

