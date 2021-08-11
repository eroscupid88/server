$ORIGIN .
$TTL 604800	; 1 week
example.com		IN SOA	ns1.example.com. hostmaster.example.com. (
				10082      ; serial
				604800     ; refresh (1 week)
				86400      ; retry (1 day)
				2419200    ; expire (4 weeks)
				604800     ; minimum (1 week)
				)
			NS	ns1.example.com.
$ORIGIN example.com.
$TTL 86400	; 1 day
_kerberos		TXT	"EXAMPLE.COM"
$ORIGIN _tcp.example.com.
_kerberos		SRV	0 100 88 id1.example.com.
_kerberos-master	SRV	0 100 88 id1.example.com.
_kpasswd		SRV	0 100 464 id1.example.com.
_ldap			SRV	0 100 389 id1.example.com.
$ORIGIN _udp.example.com.
_kerberos		SRV	0 100 88 id1.example.com.
_kerberos-master	SRV	0 100 88 id1.example.com.
_kpasswd		SRV	0 100 464 id1.example.com.
$ORIGIN example.com.
$TTL 604800	; 1 week
dhcpserver		A	10.0.2.4
id1			A	10.0.2.6
$TTL 86400	; 1 day
ipa-ca			A	10.0.2.6
			AAAA	fe80::a00:27ff:fee4:bc05
$TTL 604800	; 1 week
ns1			A	10.0.2.5
$TTL 600	; 10 minutes
pro-10-0-2-100		A	10.0.2.100
			DHCID	( AAAB5qYbRq18vrD9sTsncXeGOdchV6JoIa/KVrNdv+LK
				5XM= ) ; 0 1 32
pro-10-0-2-101		A	10.0.2.101
			DHCID	( AAEBuKZEGrQ2vlZIk5ljgzFX/bN7ldHpMC1OahrCgQZ+
				ROU= ) ; 1 1 32
pro-10-0-2-102		A	10.0.2.102
			DHCID	( AAAB91gk3GalphIdT1r4LsRd4EUfpuA6SNQ+wpxijRwx
				vIk= ) ; 0 1 32
