#! /bin/bash
version()
{
uname -a > noyau
cut -d " " -f 3 noyau 
}
