; ModuleID = '/llk/IR_all_yes/net/netfilter/ipset/pfxlen.c_pt.bc'
source_filename = "../net/netfilter/ipset/pfxlen.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+ip_set_netmask_map\22, \22a\22\09"
module asm "\09.weak\09__crc_ip_set_netmask_map\09\09\09\09"
module asm "\09.long\09__crc_ip_set_netmask_map\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_set_netmask_map:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_set_netmask_map\22\09\09\09\09\09"
module asm "__kstrtabns_ip_set_netmask_map:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ip_set_hostmask_map\22, \22a\22\09"
module asm "\09.weak\09__crc_ip_set_hostmask_map\09\09\09\09"
module asm "\09.long\09__crc_ip_set_hostmask_map\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_set_hostmask_map:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_set_hostmask_map\22\09\09\09\09\09"
module asm "__kstrtabns_ip_set_hostmask_map:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ip_set_range_to_cidr\22, \22a\22\09"
module asm "\09.weak\09__crc_ip_set_range_to_cidr\09\09\09\09"
module asm "\09.long\09__crc_ip_set_range_to_cidr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_set_range_to_cidr:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_set_range_to_cidr\22\09\09\09\09\09"
module asm "__kstrtabns_ip_set_range_to_cidr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%union.nf_inet_addr = type { [4 x i32] }
%struct.kernel_symbol = type { i32, ptr, ptr }

@ip_set_netmask_map = dso_local constant { [129 x %union.nf_inet_addr], [528 x i8] } { [129 x %union.nf_inet_addr] [%union.nf_inet_addr zeroinitializer, %union.nf_inet_addr { [4 x i32] [i32 -2147483648, i32 0, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1073741824, i32 0, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -536870912, i32 0, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -268435456, i32 0, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -134217728, i32 0, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -67108864, i32 0, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -33554432, i32 0, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -16777216, i32 0, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -8388608, i32 0, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -4194304, i32 0, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -2097152, i32 0, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1048576, i32 0, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -524288, i32 0, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -262144, i32 0, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -131072, i32 0, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -65536, i32 0, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -32768, i32 0, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -16384, i32 0, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -8192, i32 0, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -4096, i32 0, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -2048, i32 0, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1024, i32 0, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -512, i32 0, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -256, i32 0, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -128, i32 0, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -64, i32 0, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -32, i32 0, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -16, i32 0, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -8, i32 0, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -4, i32 0, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -2, i32 0, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 0, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -2147483648, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1073741824, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -536870912, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -268435456, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -134217728, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -67108864, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -33554432, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -16777216, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -8388608, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -4194304, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -2097152, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1048576, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -524288, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -262144, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -131072, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -65536, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -32768, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -16384, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -8192, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -4096, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -2048, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1024, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -512, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -256, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -128, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -64, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -32, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -16, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -8, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -4, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -2, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -2147483648, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -1073741824, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -536870912, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -268435456, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -134217728, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -67108864, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -33554432, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -16777216, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -8388608, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -4194304, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -2097152, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -1048576, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -524288, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -262144, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -131072, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -65536, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -32768, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -16384, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -8192, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -4096, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -2048, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -1024, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -512, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -256, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -128, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -64, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -32, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -16, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -8, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -4, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -2, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -2147483648] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -1073741824] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -536870912] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -268435456] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -134217728] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -67108864] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -33554432] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -16777216] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -8388608] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -4194304] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -2097152] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -1048576] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -524288] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -262144] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -131072] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -65536] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -32768] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -16384] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -8192] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -4096] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -2048] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -1024] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -512] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -256] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -128] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -64] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -32] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -16] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -8] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -4] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -2] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -1] }], [528 x i8] zeroinitializer }, align 32
@__kstrtab_ip_set_netmask_map = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_set_netmask_map = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_set_netmask_map = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_set_netmask_map to i32), ptr @__kstrtab_ip_set_netmask_map, ptr @__kstrtabns_ip_set_netmask_map }, section "___ksymtab_gpl+ip_set_netmask_map", align 4
@ip_set_hostmask_map = dso_local constant { [129 x %union.nf_inet_addr], [528 x i8] } { [129 x %union.nf_inet_addr] [%union.nf_inet_addr zeroinitializer, %union.nf_inet_addr { [4 x i32] [i32 -2147483648, i32 0, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1073741824, i32 0, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -536870912, i32 0, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -268435456, i32 0, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -134217728, i32 0, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -67108864, i32 0, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -33554432, i32 0, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -16777216, i32 0, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -8388608, i32 0, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -4194304, i32 0, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -2097152, i32 0, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1048576, i32 0, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -524288, i32 0, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -262144, i32 0, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -131072, i32 0, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -65536, i32 0, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -32768, i32 0, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -16384, i32 0, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -8192, i32 0, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -4096, i32 0, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -2048, i32 0, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1024, i32 0, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -512, i32 0, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -256, i32 0, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -128, i32 0, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -64, i32 0, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -32, i32 0, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -16, i32 0, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -8, i32 0, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -4, i32 0, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -2, i32 0, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 0, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -2147483648, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1073741824, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -536870912, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -268435456, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -134217728, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -67108864, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -33554432, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -16777216, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -8388608, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -4194304, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -2097152, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1048576, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -524288, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -262144, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -131072, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -65536, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -32768, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -16384, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -8192, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -4096, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -2048, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1024, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -512, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -256, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -128, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -64, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -32, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -16, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -8, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -4, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -2, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 0, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -2147483648, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -1073741824, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -536870912, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -268435456, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -134217728, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -67108864, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -33554432, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -16777216, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -8388608, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -4194304, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -2097152, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -1048576, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -524288, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -262144, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -131072, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -65536, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -32768, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -16384, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -8192, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -4096, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -2048, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -1024, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -512, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -256, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -128, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -64, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -32, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -16, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -8, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -4, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -2, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 0] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -2147483648] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -1073741824] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -536870912] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -268435456] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -134217728] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -67108864] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -33554432] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -16777216] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -8388608] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -4194304] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -2097152] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -1048576] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -524288] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -262144] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -131072] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -65536] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -32768] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -16384] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -8192] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -4096] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -2048] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -1024] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -512] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -256] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -128] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -64] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -32] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -16] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -8] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -4] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -2] }, %union.nf_inet_addr { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -1] }], [528 x i8] zeroinitializer }, align 32
@__kstrtab_ip_set_hostmask_map = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_set_hostmask_map = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_set_hostmask_map = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_set_hostmask_map to i32), ptr @__kstrtab_ip_set_hostmask_map, ptr @__kstrtabns_ip_set_hostmask_map }, section "___ksymtab_gpl+ip_set_hostmask_map", align 4
@__kstrtab_ip_set_range_to_cidr = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_set_range_to_cidr = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_set_range_to_cidr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_set_range_to_cidr to i32), ptr @__kstrtab_ip_set_range_to_cidr, ptr @__kstrtabns_ip_set_range_to_cidr }, section "___ksymtab_gpl+ip_set_range_to_cidr", align 4
@___asan_gen_.1 = private unnamed_addr constant [19 x i8] c"ip_set_netmask_map\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 151, i32 26 }
@___asan_gen_.4 = private unnamed_addr constant [20 x i8] c"ip_set_hostmask_map\00", align 1
@___asan_gen_.5 = private constant [32 x i8] c"../net/netfilter/ipset/pfxlen.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 165, i32 26 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_ip_set_hostmask_map, ptr @__ksymtab_ip_set_netmask_map, ptr @__ksymtab_ip_set_range_to_cidr, ptr @ip_set_netmask_map, ptr @ip_set_hostmask_map], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_set_netmask_map to i32), i32 2064, i32 2592, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_set_hostmask_map to i32), i32 2064, i32 2592, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define dso_local i32 @ip_set_range_to_cidr(i32 noundef %from, i32 noundef %to, ptr nocapture noundef writeonly %cidr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %indvars.iv = phi i32 [ 1, %entry ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %arrayidx.i = getelementptr [0 x %union.nf_inet_addr], ptr @ip_set_hostmask_map, i32 0, i32 %indvars.iv
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %and = and i32 %1, %from
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %from)
  %cmp2.not = icmp eq i32 %and, %from
  br i1 %cmp2.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.inc

if.end:                                           ; preds = %for.body
  %neg = xor i32 %1, -1
  %or = or i32 %neg, %from
  %sub.i = sub i32 %to, %or
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.end.for.inc_crit_edge, label %cleanup.split.loop.exit22

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.inc

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 32
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

cleanup.split.loop.exit22:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #3
  %2 = trunc i32 %indvars.iv to i8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.split.loop.exit22, %for.inc.cleanup_crit_edge
  %storemerge = phi i8 [ %2, %cleanup.split.loop.exit22 ], [ 32, %for.inc.cleanup_crit_edge ]
  %retval.0 = phi i32 [ %or, %cleanup.split.loop.exit22 ], [ %from, %for.inc.cleanup_crit_edge ]
  %3 = ptrtoint ptr %cidr to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %storemerge, ptr %cidr, align 1
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #1

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #2 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #2 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind }
attributes #2 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #3 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @ip_set_netmask_map, !1, !"ip_set_netmask_map", i1 false, i1 false}
!1 = !{!"../net/netfilter/ipset/pfxlen.c", i32 151, i32 26}
!2 = !{ptr @__ksymtab_ip_set_netmask_map, !3, !"__ksymtab_ip_set_netmask_map", i1 false, i1 false}
!3 = !{!"../net/netfilter/ipset/pfxlen.c", i32 154, i32 1}
!4 = !{ptr @ip_set_hostmask_map, !5, !"ip_set_hostmask_map", i1 false, i1 false}
!5 = !{!"../net/netfilter/ipset/pfxlen.c", i32 165, i32 26}
!6 = !{ptr @__ksymtab_ip_set_hostmask_map, !7, !"__ksymtab_ip_set_hostmask_map", i1 false, i1 false}
!7 = !{!"../net/netfilter/ipset/pfxlen.c", i32 168, i32 1}
!8 = !{ptr @__ksymtab_ip_set_range_to_cidr, !9, !"__ksymtab_ip_set_range_to_cidr", i1 false, i1 false}
!9 = !{!"../net/netfilter/ipset/pfxlen.c", i32 189, i32 1}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
