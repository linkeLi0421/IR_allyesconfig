; ModuleID = '/llk/IR_all_yes/drivers/infiniband/core/ud_header.c_pt.bc'
source_filename = "../drivers/infiniband/core/ud_header.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ib_ud_ip4_csum\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_ud_ip4_csum\09\09\09\09"
module asm "\09.long\09__crc_ib_ud_ip4_csum\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_ud_ip4_csum:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_ud_ip4_csum\22\09\09\09\09\09"
module asm "__kstrtabns_ib_ud_ip4_csum:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_ud_header_init\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_ud_header_init\09\09\09\09"
module asm "\09.long\09__crc_ib_ud_header_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_ud_header_init:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_ud_header_init\22\09\09\09\09\09"
module asm "__kstrtabns_ib_ud_header_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_ud_header_pack\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_ud_header_pack\09\09\09\09"
module asm "\09.long\09__crc_ib_ud_header_pack\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_ud_header_pack:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_ud_header_pack\22\09\09\09\09\09"
module asm "__kstrtabns_ib_ud_header_pack:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_ud_header_unpack\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_ud_header_unpack\09\09\09\09"
module asm "\09.long\09__crc_ib_ud_header_unpack\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_ud_header_unpack:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_ud_header_unpack\22\09\09\09\09\09"
module asm "__kstrtabns_ib_ud_header_unpack:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ib_field = type { i32, i32, i32, i32, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ib_ud_header = type { i32, %struct.ib_unpacked_lrh, i32, %struct.ib_unpacked_eth, i32, %struct.ib_unpacked_vlan, i32, %struct.ib_unpacked_grh, i32, %struct.ib_unpacked_ip4, i32, %struct.ib_unpacked_udp, %struct.ib_unpacked_bth, %struct.ib_unpacked_deth, i32, i32 }
%struct.ib_unpacked_lrh = type { i8, i8, i8, i8, i16, i16, i16 }
%struct.ib_unpacked_eth = type { [4 x i8], [2 x i8], [2 x i8], [4 x i8], i16 }
%struct.ib_unpacked_vlan = type { i16, i16 }
%struct.ib_unpacked_grh = type { i8, i8, i32, i16, i8, i8, %union.ib_gid, %union.ib_gid }
%union.ib_gid = type { %struct.anon }
%struct.anon = type { i64, i64 }
%struct.ib_unpacked_ip4 = type { i8, i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ib_unpacked_udp = type { i16, i16, i16, i16 }
%struct.ib_unpacked_bth = type { i8, i8, i8, i8, i8, i16, i32, i8, i32 }
%struct.ib_unpacked_deth = type { i32, i32 }

@__kstrtab_ib_ud_ip4_csum = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_ud_ip4_csum = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_ud_ip4_csum = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_ud_ip4_csum to i32), ptr @__kstrtab_ib_ud_ip4_csum, ptr @__kstrtabns_ib_ud_ip4_csum }, section "___ksymtab+ib_ud_ip4_csum", align 4
@__kstrtab_ib_ud_header_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_ud_header_init = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_ud_header_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_ud_header_init to i32), ptr @__kstrtab_ib_ud_header_init, ptr @__kstrtabns_ib_ud_header_init }, section "___ksymtab+ib_ud_header_init", align 4
@lrh_table = internal constant { [9 x %struct.ib_field], [40 x i8] } { [9 x %struct.ib_field] [%struct.ib_field { i32 0, i32 1, i32 0, i32 0, i32 4, ptr @.str.18 }, %struct.ib_field { i32 1, i32 1, i32 0, i32 4, i32 4, ptr @.str.19 }, %struct.ib_field { i32 2, i32 1, i32 0, i32 8, i32 4, ptr @.str.20 }, %struct.ib_field { i32 0, i32 0, i32 0, i32 12, i32 2, ptr @.str.21 }, %struct.ib_field { i32 3, i32 1, i32 0, i32 14, i32 2, ptr @.str.22 }, %struct.ib_field { i32 4, i32 2, i32 0, i32 16, i32 16, ptr @.str.23 }, %struct.ib_field { i32 0, i32 0, i32 1, i32 0, i32 5, ptr @.str.21 }, %struct.ib_field { i32 6, i32 2, i32 1, i32 5, i32 11, ptr @.str.24 }, %struct.ib_field { i32 8, i32 2, i32 1, i32 16, i32 16, ptr @.str.25 }], [40 x i8] zeroinitializer }, align 32
@eth_table = internal constant { [5 x %struct.ib_field], [40 x i8] } { [5 x %struct.ib_field] [%struct.ib_field { i32 0, i32 4, i32 0, i32 0, i32 32, ptr @.str.26 }, %struct.ib_field { i32 4, i32 2, i32 1, i32 0, i32 16, ptr @.str.27 }, %struct.ib_field { i32 6, i32 2, i32 1, i32 16, i32 16, ptr @.str.28 }, %struct.ib_field { i32 8, i32 4, i32 2, i32 0, i32 32, ptr @.str.29 }, %struct.ib_field { i32 12, i32 2, i32 3, i32 0, i32 16, ptr @.str.30 }], [40 x i8] zeroinitializer }, align 32
@vlan_table = internal constant { [2 x %struct.ib_field], [48 x i8] } { [2 x %struct.ib_field] [%struct.ib_field { i32 0, i32 2, i32 0, i32 0, i32 16, ptr @.str.31 }, %struct.ib_field { i32 2, i32 2, i32 0, i32 16, i32 16, ptr @.str.32 }], [48 x i8] zeroinitializer }, align 32
@grh_table = internal constant { [8 x %struct.ib_field], [32 x i8] } { [8 x %struct.ib_field] [%struct.ib_field { i32 0, i32 1, i32 0, i32 0, i32 4, ptr @.str.33 }, %struct.ib_field { i32 1, i32 1, i32 0, i32 4, i32 8, ptr @.str.34 }, %struct.ib_field { i32 4, i32 4, i32 0, i32 12, i32 20, ptr @.str.35 }, %struct.ib_field { i32 8, i32 2, i32 1, i32 0, i32 16, ptr @.str.36 }, %struct.ib_field { i32 10, i32 1, i32 1, i32 16, i32 8, ptr @.str.37 }, %struct.ib_field { i32 11, i32 1, i32 1, i32 24, i32 8, ptr @.str.38 }, %struct.ib_field { i32 16, i32 16, i32 2, i32 0, i32 128, ptr @.str.39 }, %struct.ib_field { i32 32, i32 16, i32 6, i32 0, i32 128, ptr @.str.40 }], [32 x i8] zeroinitializer }, align 32
@ip4_table = internal constant { [11 x %struct.ib_field], [88 x i8] } { [11 x %struct.ib_field] [%struct.ib_field { i32 0, i32 1, i32 0, i32 0, i32 4, ptr @.str.41 }, %struct.ib_field { i32 1, i32 1, i32 0, i32 4, i32 4, ptr @.str.42 }, %struct.ib_field { i32 2, i32 1, i32 0, i32 8, i32 8, ptr @.str.43 }, %struct.ib_field { i32 4, i32 2, i32 0, i32 16, i32 16, ptr @.str.44 }, %struct.ib_field { i32 6, i32 2, i32 1, i32 0, i32 16, ptr @.str.45 }, %struct.ib_field { i32 8, i32 2, i32 1, i32 16, i32 16, ptr @.str.46 }, %struct.ib_field { i32 10, i32 1, i32 2, i32 0, i32 8, ptr @.str.47 }, %struct.ib_field { i32 11, i32 1, i32 2, i32 8, i32 8, ptr @.str.48 }, %struct.ib_field { i32 12, i32 2, i32 2, i32 16, i32 16, ptr @.str.49 }, %struct.ib_field { i32 16, i32 4, i32 3, i32 0, i32 32, ptr @.str.50 }, %struct.ib_field { i32 20, i32 4, i32 4, i32 0, i32 32, ptr @.str.51 }], [88 x i8] zeroinitializer }, align 32
@udp_table = internal constant { [4 x %struct.ib_field], [32 x i8] } { [4 x %struct.ib_field] [%struct.ib_field { i32 0, i32 2, i32 0, i32 0, i32 16, ptr @.str.52 }, %struct.ib_field { i32 2, i32 2, i32 0, i32 16, i32 16, ptr @.str.53 }, %struct.ib_field { i32 4, i32 2, i32 1, i32 0, i32 16, ptr @.str.54 }, %struct.ib_field { i32 6, i32 2, i32 1, i32 16, i32 16, ptr @.str.55 }], [32 x i8] zeroinitializer }, align 32
@bth_table = internal constant { [11 x %struct.ib_field], [88 x i8] } { [11 x %struct.ib_field] [%struct.ib_field { i32 0, i32 1, i32 0, i32 0, i32 8, ptr @.str.56 }, %struct.ib_field { i32 1, i32 1, i32 0, i32 8, i32 1, ptr @.str.57 }, %struct.ib_field { i32 2, i32 1, i32 0, i32 9, i32 1, ptr @.str.58 }, %struct.ib_field { i32 3, i32 1, i32 0, i32 10, i32 2, ptr @.str.59 }, %struct.ib_field { i32 4, i32 1, i32 0, i32 12, i32 4, ptr @.str.60 }, %struct.ib_field { i32 6, i32 2, i32 0, i32 16, i32 16, ptr @.str.61 }, %struct.ib_field { i32 0, i32 0, i32 1, i32 0, i32 8, ptr @.str.21 }, %struct.ib_field { i32 8, i32 4, i32 1, i32 8, i32 24, ptr @.str.62 }, %struct.ib_field { i32 12, i32 1, i32 2, i32 0, i32 1, ptr @.str.63 }, %struct.ib_field { i32 0, i32 0, i32 2, i32 1, i32 7, ptr @.str.21 }, %struct.ib_field { i32 16, i32 4, i32 2, i32 8, i32 24, ptr @.str.64 }], [88 x i8] zeroinitializer }, align 32
@deth_table = internal constant { [3 x %struct.ib_field], [56 x i8] } { [3 x %struct.ib_field] [%struct.ib_field { i32 0, i32 4, i32 0, i32 0, i32 32, ptr @.str.65 }, %struct.ib_field { i32 0, i32 0, i32 1, i32 0, i32 8, ptr @.str.21 }, %struct.ib_field { i32 4, i32 4, i32 1, i32 8, i32 24, ptr @.str.66 }], [56 x i8] zeroinitializer }, align 32
@__kstrtab_ib_ud_header_pack = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_ud_header_pack = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_ud_header_pack = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_ud_header_pack to i32), ptr @__kstrtab_ib_ud_header_pack, ptr @__kstrtabns_ib_ud_header_pack }, section "___ksymtab+ib_ud_header_pack", align 4
@ib_ud_header_unpack._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 483, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014Invalid LRH.link_version %u\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ib_ud_header_unpack\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/infiniband/core/ud_header.c\00", [60 x i8] zeroinitializer }, align 32
@ib_ud_header_unpack._entry_ptr = internal global ptr @ib_ud_header_unpack._entry, section ".printk_index", align 4
@ib_ud_header_unpack._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 500, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\014Invalid GRH.ip_version %u\0A\00", [35 x i8] zeroinitializer }, align 32
@ib_ud_header_unpack._entry_ptr.5 = internal global ptr @ib_ud_header_unpack._entry.3, section ".printk_index", align 4
@ib_ud_header_unpack._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 505, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014Invalid GRH.next_header 0x%02x\0A\00", [62 x i8] zeroinitializer }, align 32
@ib_ud_header_unpack._entry_ptr.8 = internal global ptr @ib_ud_header_unpack._entry.6, section ".printk_index", align 4
@ib_ud_header_unpack._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 512, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014Invalid LRH.link_next_header %u\0A\00", [61 x i8] zeroinitializer }, align 32
@ib_ud_header_unpack._entry_ptr.11 = internal global ptr @ib_ud_header_unpack._entry.9, section ".printk_index", align 4
@ib_ud_header_unpack._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 528, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\014Invalid BTH.opcode 0x%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@ib_ud_header_unpack._entry_ptr.14 = internal global ptr @ib_ud_header_unpack._entry.12, section ".printk_index", align 4
@ib_ud_header_unpack._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 534, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014Invalid BTH.transport_header_version %u\0A\00", [53 x i8] zeroinitializer }, align 32
@ib_ud_header_unpack._entry_ptr.17 = internal global ptr @ib_ud_header_unpack._entry.15, section ".printk_index", align 4
@__kstrtab_ib_ud_header_unpack = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_ud_header_unpack = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_ud_header_unpack = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_ud_header_unpack to i32), ptr @__kstrtab_ib_ud_header_unpack, ptr @__kstrtabns_ib_ud_header_unpack }, section "___ksymtab+ib_ud_header_unpack", align 4
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lrh:virtual_lane\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lrh:link_version\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lrh:service_level\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"reserved\00", [23 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lrh:link_next_header\00", [43 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lrh:destination_lid\00", [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lrh:packet_length\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lrh:source_lid\00", [17 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"eth:dmac_h\00", [21 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"eth:dmac_l\00", [21 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"eth:smac_h\00", [21 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"eth:smac_l\00", [21 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"eth:type\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vlan:tag\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vlan:type\00", [22 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"grh:ip_version\00", [17 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"grh:traffic_class\00", [46 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"grh:flow_label\00", [17 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"grh:payload_length\00", [45 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"grh:next_header\00", [16 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"grh:hop_limit\00", [18 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"grh:source_gid\00", [17 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"grh:destination_gid\00", [44 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ip4:ver\00", [24 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ip4:hdr_len\00", [20 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ip4:tos\00", [24 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ip4:tot_len\00", [20 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ip4:id\00", [25 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ip4:frag_off\00", [19 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ip4:ttl\00", [24 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ip4:protocol\00", [19 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ip4:check\00", [22 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ip4:saddr\00", [22 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ip4:daddr\00", [22 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"udp:sport\00", [22 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"udp:dport\00", [22 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"udp:length\00", [21 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"udp:csum\00", [23 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bth:opcode\00", [21 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bth:solicited_event\00", [44 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bth:mig_req\00", [20 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bth:pad_count\00", [18 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"bth:transport_header_version\00", [35 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bth:pkey\00", [23 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bth:destination_qpn\00", [44 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bth:ack_req\00", [20 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bth:psn\00", [24 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"deth:qkey\00", [22 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"deth:source_qpn\00", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 6]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 8, i64 100, i64 101]
@___asan_gen_.69 = private unnamed_addr constant [10 x i8] c"lrh_table\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 47, i32 30 }
@___asan_gen_.72 = private unnamed_addr constant [10 x i8] c"eth_table\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 86, i32 30 }
@___asan_gen_.75 = private unnamed_addr constant [11 x i8] c"vlan_table\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 109, i32 30 }
@___asan_gen_.78 = private unnamed_addr constant [10 x i8] c"grh_table\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 186, i32 30 }
@___asan_gen_.81 = private unnamed_addr constant [10 x i8] c"ip4_table\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 120, i32 30 }
@___asan_gen_.84 = private unnamed_addr constant [10 x i8] c"udp_table\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 167, i32 30 }
@___asan_gen_.87 = private unnamed_addr constant [10 x i8] c"bth_table\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 221, i32 30 }
@___asan_gen_.90 = private unnamed_addr constant [11 x i8] c"deth_table\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 268, i32 30 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 482, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 499, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 504, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 511, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 528, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 533, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 48, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 52, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 56, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 60, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 64, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 68, i32 4 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 76, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 80, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 87, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 91, i32 4 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 95, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 99, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 103, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 110, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 114, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 187, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 191, i32 4 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 195, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 199, i32 4 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 203, i32 4 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 207, i32 4 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 211, i32 4 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 215, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 121, i32 4 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 125, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 129, i32 4 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 133, i32 4 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 137, i32 4 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 141, i32 4 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 145, i32 4 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 149, i32 4 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 153, i32 4 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 157, i32 4 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 161, i32 4 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 168, i32 4 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 172, i32 4 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 176, i32 4 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 180, i32 4 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 222, i32 4 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 226, i32 4 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 230, i32 4 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 234, i32 4 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 238, i32 4 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 242, i32 4 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 250, i32 4 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 254, i32 4 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 262, i32 4 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 269, i32 4 }
@___asan_gen_.279 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.280 = private constant [39 x i8] c"../drivers/infiniband/core/ud_header.c\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 277, i32 4 }
@llvm.compiler.used = appending global [81 x ptr] [ptr @__ksymtab_ib_ud_header_init, ptr @__ksymtab_ib_ud_header_pack, ptr @__ksymtab_ib_ud_header_unpack, ptr @__ksymtab_ib_ud_ip4_csum, ptr @ib_ud_header_unpack._entry, ptr @ib_ud_header_unpack._entry.12, ptr @ib_ud_header_unpack._entry.15, ptr @ib_ud_header_unpack._entry.3, ptr @ib_ud_header_unpack._entry.6, ptr @ib_ud_header_unpack._entry.9, ptr @ib_ud_header_unpack._entry_ptr, ptr @ib_ud_header_unpack._entry_ptr.11, ptr @ib_ud_header_unpack._entry_ptr.14, ptr @ib_ud_header_unpack._entry_ptr.17, ptr @ib_ud_header_unpack._entry_ptr.5, ptr @ib_ud_header_unpack._entry_ptr.8, ptr @lrh_table, ptr @eth_table, ptr @vlan_table, ptr @grh_table, ptr @ip4_table, ptr @udp_table, ptr @bth_table, ptr @deth_table, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66], section "llvm.metadata"
@0 = internal global [71 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lrh_table to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eth_table to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vlan_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grh_table to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip4_table to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udp_table to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bth_table to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deth_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_ud_header_unpack._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_ud_header_unpack._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_ud_header_unpack._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_ud_header_unpack._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_ud_header_unpack._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_ud_header_unpack._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @ib_ud_ip4_csum(ptr nocapture noundef readonly %header) #0 align 64 {
entry:
  %iph = alloca %struct.iphdr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %iph) #5
  %0 = getelementptr inbounds %struct.iphdr, ptr %iph, i32 0, i32 1
  %1 = getelementptr inbounds %struct.iphdr, ptr %iph, i32 0, i32 2
  %2 = getelementptr inbounds %struct.iphdr, ptr %iph, i32 0, i32 3
  %3 = getelementptr inbounds %struct.iphdr, ptr %iph, i32 0, i32 4
  %4 = getelementptr inbounds %struct.iphdr, ptr %iph, i32 0, i32 5
  %5 = getelementptr inbounds %struct.iphdr, ptr %iph, i32 0, i32 6
  %6 = getelementptr inbounds %struct.iphdr, ptr %iph, i32 0, i32 7
  %7 = getelementptr inbounds %struct.iphdr, ptr %iph, i32 0, i32 8
  %8 = getelementptr inbounds %struct.iphdr, ptr %iph, i32 0, i32 9
  %9 = ptrtoint ptr %iph to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 69, ptr %iph, align 4
  %tos = getelementptr inbounds %struct.ib_ud_header, ptr %header, i32 0, i32 9, i32 2
  %10 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %tos, align 2
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %0, align 1
  %tot_len = getelementptr inbounds %struct.ib_ud_header, ptr %header, i32 0, i32 9, i32 3
  %13 = ptrtoint ptr %tot_len to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %tot_len, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %1, align 2
  %id = getelementptr inbounds %struct.ib_ud_header, ptr %header, i32 0, i32 9, i32 4
  %16 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %id, align 2
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %2, align 4
  %frag_off = getelementptr inbounds %struct.ib_ud_header, ptr %header, i32 0, i32 9, i32 5
  %19 = ptrtoint ptr %frag_off to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %frag_off, align 4
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %3, align 2
  %ttl = getelementptr inbounds %struct.ib_ud_header, ptr %header, i32 0, i32 9, i32 6
  %22 = ptrtoint ptr %ttl to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ttl, align 2
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %4, align 4
  %protocol = getelementptr inbounds %struct.ib_ud_header, ptr %header, i32 0, i32 9, i32 7
  %25 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %protocol, align 1
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %5, align 1
  %28 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %6, align 2
  %saddr = getelementptr inbounds %struct.ib_ud_header, ptr %header, i32 0, i32 9, i32 9
  %29 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %saddr, align 4
  %31 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %7, align 4
  %daddr = getelementptr inbounds %struct.ib_ud_header, ptr %header, i32 0, i32 9, i32 10
  %32 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %daddr, align 4
  %34 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %8, align 4
  %35 = call { i32, ptr, i32, i32 } asm sideeffect "ldr\09$0, [$1], #4\09\09@ ip_fast_csum\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09sub\09$2, $2, #5\09\09\09\09\09\0A\09adds\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A1:\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09tst\09$2, #15\09\09\09@ do this carefully\09\0A\09subne\09$2, $2, #1\09\09@ without destroying\09\0A\09bne\091b\09\09\09@ the carry flag\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09adc\09$0, $0, #0", "=r,=r,=r,=r,1,2,~{cc},~{memory}"(ptr nonnull %iph, i32 5) #5, !srcloc !157
  %asmresult.i = extractvalue { i32, ptr, i32, i32 } %35, 0
  %36 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %asmresult.i) #8, !srcloc !158
  %neg.i.i = xor i32 %36, -1
  %shr.i.i = lshr i32 %neg.i.i, 16
  %conv.i.i = trunc i32 %shr.i.i to i16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %iph) #5
  ret i16 %conv.i.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @ib_ud_header_init(i32 noundef %payload_bytes, i32 noundef %lrh_present, i32 noundef %eth_present, i32 noundef %vlan_present, i32 noundef %grh_present, i32 noundef %ip_version, i32 noundef %udp_present, i32 noundef %immediate_present, ptr noundef writeonly %header) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %udp_present)
  %tobool.not = icmp eq i32 %udp_present, 0
  %cond = select i1 %tobool.not, i32 0, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %grh_present)
  %tobool1.not = icmp ne i32 %grh_present, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ip_version)
  %tobool2.not = icmp eq i32 %ip_version, 0
  %spec.select = and i1 %tobool1.not, %tobool2.not
  %0 = call ptr @memset(ptr %header, i32 0, i32 176)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %ip_version)
  %cmp.not = icmp eq i32 %ip_version, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %ip_version)
  %cmp5.not = icmp eq i32 %ip_version, 6
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %switch.early.test

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

switch.early.test:                                ; preds = %entry
  %1 = zext i32 %ip_version to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %ip_version, label %switch.early.test.cleanup_crit_edge [
    i32 6, label %switch.early.test.if.end_crit_edge
    i32 4, label %switch.early.test.if.end_crit_edge131
  ]

switch.early.test.if.end_crit_edge131:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

switch.early.test.if.end_crit_edge:               ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

switch.early.test.cleanup_crit_edge:              ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %switch.early.test.if.end_crit_edge, %switch.early.test.if.end_crit_edge131, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lrh_present)
  %tobool6.not = icmp eq i32 %lrh_present, 0
  br i1 %tobool6.not, label %if.end.if.end19_crit_edge, label %if.then7

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %conv = select i1 %spec.select, i8 3, i8 2
  %link_next_header = getelementptr inbounds %struct.ib_ud_header, ptr %header, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %link_next_header to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %link_next_header, align 1
  %add = select i1 %spec.select, i32 68, i32 28
  %add13 = add i32 %payload_bytes, 7
  %add15 = add i32 %add13, %add
  %div = sdiv i32 %add15, 4
  %conv16 = trunc i32 %div to i16
  %packet_length18 = getelementptr inbounds %struct.ib_ud_header, ptr %header, i32 0, i32 1, i32 5
  %3 = ptrtoint ptr %packet_length18 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv16, ptr %packet_length18, align 2
  br label %if.end19

if.end19:                                         ; preds = %if.then7, %if.end.if.end19_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vlan_present)
  %tobool20.not = icmp eq i32 %vlan_present, 0
  br i1 %tobool20.not, label %if.end19.if.end22_crit_edge, label %if.then21

if.end19.if.end22_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %type = getelementptr inbounds %struct.ib_ud_header, ptr %header, i32 0, i32 3, i32 4
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -32512, ptr %type, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end19.if.end22_crit_edge
  %brmerge = or i1 %cmp5.not, %spec.select
  br i1 %brmerge, label %if.then26, label %if.end22.if.end39_crit_edge

if.end22.if.end39_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %grh = getelementptr inbounds %struct.ib_ud_header, ptr %header, i32 0, i32 7
  %5 = ptrtoint ptr %grh to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 6, ptr %grh, align 8
  %add29 = add i32 %payload_bytes, 20
  %add30 = add i32 %add29, %cond
  %6 = trunc i32 %add30 to i16
  %7 = add i16 %6, 7
  %conv33 = and i16 %7, -4
  %payload_length = getelementptr inbounds %struct.ib_ud_header, ptr %header, i32 0, i32 7, i32 3
  %8 = ptrtoint ptr %payload_length to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv33, ptr %payload_length, align 8
  %conv37 = select i1 %tobool.not, i8 27, i8 17
  %next_header = getelementptr inbounds %struct.ib_ud_header, ptr %header, i32 0, i32 7, i32 4
  %9 = ptrtoint ptr %next_header to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv37, ptr %next_header, align 2
  br label %if.end39

if.end39:                                         ; preds = %if.then26, %if.end22.if.end39_crit_edge
  br i1 %cmp.not, label %if.then42, label %if.end39.if.end52_crit_edge

if.end39.if.end52_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  %ip4 = getelementptr inbounds %struct.ib_ud_header, ptr %header, i32 0, i32 9
  %10 = ptrtoint ptr %ip4 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 4, ptr %ip4, align 4
  %hdr_len = getelementptr inbounds %struct.ib_ud_header, ptr %header, i32 0, i32 9, i32 1
  %11 = ptrtoint ptr %hdr_len to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 5, ptr %hdr_len, align 1
  %add46 = add i32 %payload_bytes, 40
  %add47 = add i32 %add46, %cond
  %12 = trunc i32 %add47 to i16
  %conv49 = add i16 %12, 4
  %tot_len = getelementptr inbounds %struct.ib_ud_header, ptr %header, i32 0, i32 9, i32 3
  %13 = ptrtoint ptr %tot_len to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv49, ptr %tot_len, align 4
  %protocol = getelementptr inbounds %struct.ib_ud_header, ptr %header, i32 0, i32 9, i32 7
  %14 = ptrtoint ptr %protocol to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 17, ptr %protocol, align 1
  br label %if.end52

if.end52:                                         ; preds = %if.then42, %if.end39.if.end52_crit_edge
  %or.cond128 = or i1 %tobool2.not, %tobool.not
  br i1 %or.cond128, label %if.end52.if.end60_crit_edge, label %if.then56

if.end52.if.end60_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60

if.then56:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  %15 = trunc i32 %payload_bytes to i16
  %conv59 = add i16 %15, 32
  %length = getelementptr inbounds %struct.ib_ud_header, ptr %header, i32 0, i32 11, i32 2
  %16 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv59, ptr %length, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then56, %if.end52.if.end60_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %immediate_present)
  %tobool61.not = icmp eq i32 %immediate_present, 0
  %spec.select130 = select i1 %tobool61.not, i8 100, i8 101
  %17 = getelementptr inbounds %struct.ib_ud_header, ptr %header, i32 0, i32 12
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %spec.select130, ptr %17, align 8
  %19 = trunc i32 %payload_bytes to i8
  %20 = sub i8 0, %19
  %conv67 = and i8 %20, 3
  %pad_count = getelementptr inbounds %struct.ib_ud_header, ptr %header, i32 0, i32 12, i32 3
  %21 = ptrtoint ptr %pad_count to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv67, ptr %pad_count, align 1
  %transport_header_version = getelementptr inbounds %struct.ib_ud_header, ptr %header, i32 0, i32 12, i32 4
  %22 = ptrtoint ptr %transport_header_version to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %transport_header_version, align 4
  %23 = ptrtoint ptr %header to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %lrh_present, ptr %header, align 8
  %eth_present71 = getelementptr inbounds %struct.ib_ud_header, ptr %header, i32 0, i32 2
  %24 = ptrtoint ptr %eth_present71 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %eth_present, ptr %eth_present71, align 8
  %vlan_present72 = getelementptr inbounds %struct.ib_ud_header, ptr %header, i32 0, i32 4
  %25 = ptrtoint ptr %vlan_present72 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %vlan_present, ptr %vlan_present72, align 4
  %spec.select129 = zext i1 %brmerge to i32
  %grh_present76 = getelementptr inbounds %struct.ib_ud_header, ptr %header, i32 0, i32 6
  %26 = ptrtoint ptr %grh_present76 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %spec.select129, ptr %grh_present76, align 4
  %conv78 = zext i1 %cmp.not to i32
  %ipv4_present = getelementptr inbounds %struct.ib_ud_header, ptr %header, i32 0, i32 8
  %27 = ptrtoint ptr %ipv4_present to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv78, ptr %ipv4_present, align 8
  %udp_present79 = getelementptr inbounds %struct.ib_ud_header, ptr %header, i32 0, i32 10
  %28 = ptrtoint ptr %udp_present79 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %udp_present, ptr %udp_present79, align 4
  %immediate_present80 = getelementptr inbounds %struct.ib_ud_header, ptr %header, i32 0, i32 14
  %29 = ptrtoint ptr %immediate_present80 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %immediate_present, ptr %immediate_present80, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %switch.early.test.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end60 ], [ -22, %switch.early.test.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ib_ud_header_pack(ptr noundef %header, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %header, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %lrh = getelementptr inbounds %struct.ib_ud_header, ptr %header, i32 0, i32 1
  tail call void @ib_pack(ptr noundef nonnull @lrh_table, i32 noundef 9, ptr noundef %lrh, ptr noundef %buf) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %len.0 = phi i32 [ 8, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %eth_present = getelementptr inbounds %struct.ib_ud_header, ptr %header, i32 0, i32 2
  %2 = ptrtoint ptr %eth_present to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %eth_present, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.end.if.end5_crit_edge, label %if.then2

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %eth = getelementptr inbounds %struct.ib_ud_header, ptr %header, i32 0, i32 3
  %add.ptr3 = getelementptr i8, ptr %buf, i32 %len.0
  tail call void @ib_pack(ptr noundef nonnull @eth_table, i32 noundef 5, ptr noundef %eth, ptr noundef %add.ptr3) #5
  %add4 = add nuw nsw i32 %len.0, 14
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge
  %len.1 = phi i32 [ %add4, %if.then2 ], [ %len.0, %if.end.if.end5_crit_edge ]
  %vlan_present = getelementptr inbounds %struct.ib_ud_header, ptr %header, i32 0, i32 4
  %4 = ptrtoint ptr %vlan_present to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vlan_present, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool6.not = icmp eq i32 %5, 0
  br i1 %tobool6.not, label %if.end5.if.end10_crit_edge, label %if.then7

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %vlan = getelementptr inbounds %struct.ib_ud_header, ptr %header, i32 0, i32 5
  %add.ptr8 = getelementptr i8, ptr %buf, i32 %len.1
  tail call void @ib_pack(ptr noundef nonnull @vlan_table, i32 noundef 2, ptr noundef %vlan, ptr noundef %add.ptr8) #5
  %add9 = add nuw nsw i32 %len.1, 4
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end5.if.end10_crit_edge
  %len.2 = phi i32 [ %add9, %if.then7 ], [ %len.1, %if.end5.if.end10_crit_edge ]
  %grh_present = getelementptr inbounds %struct.ib_ud_header, ptr %header, i32 0, i32 6
  %6 = ptrtoint ptr %grh_present to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %grh_present, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool11.not = icmp eq i32 %7, 0
  br i1 %tobool11.not, label %if.end10.if.end15_crit_edge, label %if.then12

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %grh = getelementptr inbounds %struct.ib_ud_header, ptr %header, i32 0, i32 7
  %add.ptr13 = getelementptr i8, ptr %buf, i32 %len.2
  tail call void @ib_pack(ptr noundef nonnull @grh_table, i32 noundef 8, ptr noundef %grh, ptr noundef %add.ptr13) #5
  %add14 = add nuw nsw i32 %len.2, 40
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end10.if.end15_crit_edge
  %len.3 = phi i32 [ %add14, %if.then12 ], [ %len.2, %if.end10.if.end15_crit_edge ]
  %ipv4_present = getelementptr inbounds %struct.ib_ud_header, ptr %header, i32 0, i32 8
  %8 = ptrtoint ptr %ipv4_present to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ipv4_present, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool16.not = icmp eq i32 %9, 0
  br i1 %tobool16.not, label %if.end15.if.end20_crit_edge, label %if.then17

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %ip4 = getelementptr inbounds %struct.ib_ud_header, ptr %header, i32 0, i32 9
  %add.ptr18 = getelementptr i8, ptr %buf, i32 %len.3
  tail call void @ib_pack(ptr noundef nonnull @ip4_table, i32 noundef 11, ptr noundef %ip4, ptr noundef %add.ptr18) #5
  %add19 = add nuw nsw i32 %len.3, 20
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end15.if.end20_crit_edge
  %len.4 = phi i32 [ %add19, %if.then17 ], [ %len.3, %if.end15.if.end20_crit_edge ]
  %udp_present = getelementptr inbounds %struct.ib_ud_header, ptr %header, i32 0, i32 10
  %10 = ptrtoint ptr %udp_present to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %udp_present, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool21.not = icmp eq i32 %11, 0
  br i1 %tobool21.not, label %if.end20.if.end25_crit_edge, label %if.then22

if.end20.if.end25_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %udp = getelementptr inbounds %struct.ib_ud_header, ptr %header, i32 0, i32 11
  %add.ptr23 = getelementptr i8, ptr %buf, i32 %len.4
  tail call void @ib_pack(ptr noundef nonnull @udp_table, i32 noundef 4, ptr noundef %udp, ptr noundef %add.ptr23) #5
  %add24 = add nuw nsw i32 %len.4, 8
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.end20.if.end25_crit_edge
  %len.5 = phi i32 [ %add24, %if.then22 ], [ %len.4, %if.end20.if.end25_crit_edge ]
  %bth = getelementptr inbounds %struct.ib_ud_header, ptr %header, i32 0, i32 12
  %add.ptr26 = getelementptr i8, ptr %buf, i32 %len.5
  tail call void @ib_pack(ptr noundef nonnull @bth_table, i32 noundef 11, ptr noundef %bth, ptr noundef %add.ptr26) #5
  %add27 = add nuw nsw i32 %len.5, 12
  %deth = getelementptr inbounds %struct.ib_ud_header, ptr %header, i32 0, i32 13
  %add.ptr28 = getelementptr i8, ptr %buf, i32 %add27
  tail call void @ib_pack(ptr noundef nonnull @deth_table, i32 noundef 3, ptr noundef %deth, ptr noundef %add.ptr28) #5
  %add29 = add nuw nsw i32 %len.5, 20
  %immediate_present = getelementptr inbounds %struct.ib_ud_header, ptr %header, i32 0, i32 14
  %12 = ptrtoint ptr %immediate_present to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %immediate_present, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool30.not = icmp eq i32 %13, 0
  br i1 %tobool30.not, label %if.end25.if.end34_crit_edge, label %if.then31

if.end25.if.end34_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

if.then31:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr32 = getelementptr i8, ptr %buf, i32 %add29
  %immediate_data = getelementptr inbounds %struct.ib_ud_header, ptr %header, i32 0, i32 15
  %14 = ptrtoint ptr %immediate_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %immediate_data, align 8
  %16 = ptrtoint ptr %add.ptr32 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %15, ptr %add.ptr32, align 1
  %add33 = add nuw nsw i32 %len.5, 24
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.end25.if.end34_crit_edge
  %len.6 = phi i32 [ %add33, %if.then31 ], [ %add29, %if.end25.if.end34_crit_edge ]
  ret i32 %len.6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_pack(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ib_ud_header_unpack(ptr noundef %buf, ptr noundef %header) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lrh = getelementptr inbounds %struct.ib_ud_header, ptr %header, i32 0, i32 1
  tail call void @ib_unpack(ptr noundef nonnull @lrh_table, i32 noundef 9, ptr noundef %buf, ptr noundef %lrh) #5
  %add.ptr = getelementptr i8, ptr %buf, i32 8
  %link_version = getelementptr inbounds %struct.ib_ud_header, ptr %header, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %link_version to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %link_version, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.not = icmp eq i8 %1, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i8 %1 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv) #9
  br label %return

if.end:                                           ; preds = %entry
  %link_next_header = getelementptr inbounds %struct.ib_ud_header, ptr %header, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %link_next_header to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %link_next_header, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.67)
  switch i8 %3, label %do.end38 [
    i8 2, label %sw.bb
    i8 3, label %sw.bb8
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %grh_present = getelementptr inbounds %struct.ib_ud_header, ptr %header, i32 0, i32 6
  %5 = ptrtoint ptr %grh_present to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %grh_present, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  %grh_present9 = getelementptr inbounds %struct.ib_ud_header, ptr %header, i32 0, i32 6
  %6 = ptrtoint ptr %grh_present9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %grh_present9, align 4
  %grh = getelementptr inbounds %struct.ib_ud_header, ptr %header, i32 0, i32 7
  tail call void @ib_unpack(ptr noundef nonnull @grh_table, i32 noundef 8, ptr noundef %add.ptr, ptr noundef %grh) #5
  %7 = ptrtoint ptr %grh to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %grh, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %8)
  %cmp13.not = icmp eq i8 %8, 6
  br i1 %cmp13.not, label %if.end23, label %do.end17

do.end17:                                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #7
  %conv12 = zext i8 %8 to i32
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %conv12) #9
  br label %return

if.end23:                                         ; preds = %sw.bb8
  %add.ptr10 = getelementptr i8, ptr %buf, i32 48
  %next_header = getelementptr inbounds %struct.ib_ud_header, ptr %header, i32 0, i32 7, i32 4
  %9 = ptrtoint ptr %next_header to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %next_header, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 27, i8 %10)
  %cmp26.not = icmp eq i8 %10, 27
  br i1 %cmp26.not, label %if.end23.sw.epilog_crit_edge, label %do.end30

if.end23.sw.epilog_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end30:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %conv25 = zext i8 %10 to i32
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %conv25) #9
  br label %return

do.end38:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %conv7 = zext i8 %3 to i32
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %conv7) #9
  br label %return

sw.epilog:                                        ; preds = %if.end23.sw.epilog_crit_edge, %sw.bb
  %buf.addr.0 = phi ptr [ %add.ptr10, %if.end23.sw.epilog_crit_edge ], [ %add.ptr, %sw.bb ]
  %bth = getelementptr inbounds %struct.ib_ud_header, ptr %header, i32 0, i32 12
  tail call void @ib_unpack(ptr noundef nonnull @bth_table, i32 noundef 11, ptr noundef %buf.addr.0, ptr noundef %bth) #5
  %add.ptr44 = getelementptr i8, ptr %buf.addr.0, i32 12
  %11 = ptrtoint ptr %bth to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bth, align 8
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.68)
  switch i8 %12, label %do.end52 [
    i8 100, label %sw.epilog.sw.epilog58_crit_edge
    i8 101, label %sw.bb48
  ]

sw.epilog.sw.epilog58_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog58

sw.bb48:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog58

do.end52:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %conv46 = zext i8 %12 to i32
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %conv46) #9
  br label %return

sw.epilog58:                                      ; preds = %sw.bb48, %sw.epilog.sw.epilog58_crit_edge
  %.sink = phi i32 [ 1, %sw.bb48 ], [ 0, %sw.epilog.sw.epilog58_crit_edge ]
  %immediate_present49 = getelementptr inbounds %struct.ib_ud_header, ptr %header, i32 0, i32 14
  %14 = ptrtoint ptr %immediate_present49 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %.sink, ptr %immediate_present49, align 4
  %transport_header_version = getelementptr inbounds %struct.ib_ud_header, ptr %header, i32 0, i32 12, i32 4
  %15 = ptrtoint ptr %transport_header_version to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %transport_header_version, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp61.not = icmp eq i8 %16, 0
  br i1 %cmp61.not, label %if.end71, label %do.end65

do.end65:                                         ; preds = %sw.epilog58
  call void @__sanitizer_cov_trace_pc() #7
  %conv60 = zext i8 %16 to i32
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %conv60) #9
  br label %return

if.end71:                                         ; preds = %sw.epilog58
  %deth = getelementptr inbounds %struct.ib_ud_header, ptr %header, i32 0, i32 13
  tail call void @ib_unpack(ptr noundef nonnull @deth_table, i32 noundef 3, ptr noundef %add.ptr44, ptr noundef %deth) #5
  %immediate_present73 = getelementptr inbounds %struct.ib_ud_header, ptr %header, i32 0, i32 14
  %17 = ptrtoint ptr %immediate_present73 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %immediate_present73, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not = icmp eq i32 %18, 0
  br i1 %tobool.not, label %if.end71.return_crit_edge, label %if.then74

if.end71.return_crit_edge:                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then74:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr72 = getelementptr i8, ptr %buf.addr.0, i32 20
  %immediate_data = getelementptr inbounds %struct.ib_ud_header, ptr %header, i32 0, i32 15
  %19 = ptrtoint ptr %add.ptr72 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %add.ptr72, align 1
  %21 = ptrtoint ptr %immediate_data to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %immediate_data, align 8
  br label %return

return:                                           ; preds = %if.then74, %if.end71.return_crit_edge, %do.end65, %do.end52, %do.end38, %do.end30, %do.end17, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end38 ], [ -22, %do.end17 ], [ -22, %do.end30 ], [ -22, %do.end52 ], [ -22, %do.end65 ], [ 0, %if.then74 ], [ 0, %if.end71.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_unpack(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind readnone }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146}
!llvm.module.flags = !{!148, !149, !150, !151, !152, !153, !154, !155}
!llvm.ident = !{!156}

!0 = !{ptr @__ksymtab_ib_ud_ip4_csum, !1, !"__ksymtab_ib_ud_ip4_csum", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/core/ud_header.c", i32 301, i32 1}
!2 = !{ptr @__ksymtab_ib_ud_header_init, !3, !"__ksymtab_ib_ud_header_init", i1 false, i1 false}
!3 = !{!"../drivers/infiniband/core/ud_header.c", i32 403, i32 1}
!4 = !{ptr @__ksymtab_ib_ud_header_pack, !5, !"__ksymtab_ib_ud_header_pack", i1 false, i1 false}
!5 = !{!"../drivers/infiniband/core/ud_header.c", i32 464, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/infiniband/core/ud_header.c", i32 482, i32 3}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @ib_ud_header_unpack._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @ib_ud_header_unpack._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/infiniband/core/ud_header.c", i32 499, i32 4}
!14 = !{ptr @ib_ud_header_unpack._entry.3, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @ib_ud_header_unpack._entry_ptr.5, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/infiniband/core/ud_header.c", i32 504, i32 4}
!18 = !{ptr @ib_ud_header_unpack._entry.6, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @ib_ud_header_unpack._entry_ptr.8, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/infiniband/core/ud_header.c", i32 511, i32 3}
!22 = !{ptr @ib_ud_header_unpack._entry.9, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @ib_ud_header_unpack._entry_ptr.11, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/infiniband/core/ud_header.c", i32 528, i32 3}
!26 = !{ptr @ib_ud_header_unpack._entry.12, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @ib_ud_header_unpack._entry_ptr.14, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/infiniband/core/ud_header.c", i32 533, i32 3}
!30 = !{ptr @ib_ud_header_unpack._entry.15, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @ib_ud_header_unpack._entry_ptr.17, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @__ksymtab_ib_ud_header_unpack, !33, !"__ksymtab_ib_ud_header_unpack", i1 false, i1 false}
!33 = !{!"../drivers/infiniband/core/ud_header.c", i32 547, i32 1}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/infiniband/core/ud_header.c", i32 48, i32 4}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/infiniband/core/ud_header.c", i32 52, i32 4}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/infiniband/core/ud_header.c", i32 56, i32 4}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/infiniband/core/ud_header.c", i32 60, i32 4}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/infiniband/core/ud_header.c", i32 64, i32 4}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/infiniband/core/ud_header.c", i32 68, i32 4}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/infiniband/core/ud_header.c", i32 76, i32 4}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/infiniband/core/ud_header.c", i32 80, i32 4}
!50 = !{ptr @lrh_table, !51, !"lrh_table", i1 false, i1 false}
!51 = !{!"../drivers/infiniband/core/ud_header.c", i32 47, i32 30}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/infiniband/core/ud_header.c", i32 87, i32 4}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/infiniband/core/ud_header.c", i32 91, i32 4}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/infiniband/core/ud_header.c", i32 95, i32 4}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/infiniband/core/ud_header.c", i32 99, i32 4}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/infiniband/core/ud_header.c", i32 103, i32 4}
!62 = !{ptr @eth_table, !63, !"eth_table", i1 false, i1 false}
!63 = !{!"../drivers/infiniband/core/ud_header.c", i32 86, i32 30}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/infiniband/core/ud_header.c", i32 110, i32 4}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/infiniband/core/ud_header.c", i32 114, i32 4}
!68 = !{ptr @vlan_table, !69, !"vlan_table", i1 false, i1 false}
!69 = !{!"../drivers/infiniband/core/ud_header.c", i32 109, i32 30}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/infiniband/core/ud_header.c", i32 187, i32 4}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/infiniband/core/ud_header.c", i32 191, i32 4}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/infiniband/core/ud_header.c", i32 195, i32 4}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/infiniband/core/ud_header.c", i32 199, i32 4}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/infiniband/core/ud_header.c", i32 203, i32 4}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/infiniband/core/ud_header.c", i32 207, i32 4}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/infiniband/core/ud_header.c", i32 211, i32 4}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/infiniband/core/ud_header.c", i32 215, i32 4}
!86 = !{ptr @grh_table, !87, !"grh_table", i1 false, i1 false}
!87 = !{!"../drivers/infiniband/core/ud_header.c", i32 186, i32 30}
!88 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/infiniband/core/ud_header.c", i32 121, i32 4}
!90 = !{ptr @.str.42, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/infiniband/core/ud_header.c", i32 125, i32 4}
!92 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/infiniband/core/ud_header.c", i32 129, i32 4}
!94 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/infiniband/core/ud_header.c", i32 133, i32 4}
!96 = !{ptr @.str.45, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/infiniband/core/ud_header.c", i32 137, i32 4}
!98 = !{ptr @.str.46, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/infiniband/core/ud_header.c", i32 141, i32 4}
!100 = !{ptr @.str.47, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/infiniband/core/ud_header.c", i32 145, i32 4}
!102 = !{ptr @.str.48, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/infiniband/core/ud_header.c", i32 149, i32 4}
!104 = !{ptr @.str.49, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/infiniband/core/ud_header.c", i32 153, i32 4}
!106 = !{ptr @.str.50, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/infiniband/core/ud_header.c", i32 157, i32 4}
!108 = !{ptr @.str.51, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/infiniband/core/ud_header.c", i32 161, i32 4}
!110 = !{ptr @ip4_table, !111, !"ip4_table", i1 false, i1 false}
!111 = !{!"../drivers/infiniband/core/ud_header.c", i32 120, i32 30}
!112 = !{ptr @.str.52, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/infiniband/core/ud_header.c", i32 168, i32 4}
!114 = !{ptr @.str.53, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/infiniband/core/ud_header.c", i32 172, i32 4}
!116 = !{ptr @.str.54, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/infiniband/core/ud_header.c", i32 176, i32 4}
!118 = !{ptr @.str.55, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/infiniband/core/ud_header.c", i32 180, i32 4}
!120 = !{ptr @udp_table, !121, !"udp_table", i1 false, i1 false}
!121 = !{!"../drivers/infiniband/core/ud_header.c", i32 167, i32 30}
!122 = !{ptr @.str.56, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/infiniband/core/ud_header.c", i32 222, i32 4}
!124 = !{ptr @.str.57, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/infiniband/core/ud_header.c", i32 226, i32 4}
!126 = !{ptr @.str.58, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/infiniband/core/ud_header.c", i32 230, i32 4}
!128 = !{ptr @.str.59, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/infiniband/core/ud_header.c", i32 234, i32 4}
!130 = !{ptr @.str.60, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/infiniband/core/ud_header.c", i32 238, i32 4}
!132 = !{ptr @.str.61, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/infiniband/core/ud_header.c", i32 242, i32 4}
!134 = !{ptr @.str.62, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/infiniband/core/ud_header.c", i32 250, i32 4}
!136 = !{ptr @.str.63, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/infiniband/core/ud_header.c", i32 254, i32 4}
!138 = !{ptr @.str.64, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/infiniband/core/ud_header.c", i32 262, i32 4}
!140 = !{ptr @bth_table, !141, !"bth_table", i1 false, i1 false}
!141 = !{!"../drivers/infiniband/core/ud_header.c", i32 221, i32 30}
!142 = !{ptr @.str.65, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/infiniband/core/ud_header.c", i32 269, i32 4}
!144 = !{ptr @.str.66, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/infiniband/core/ud_header.c", i32 277, i32 4}
!146 = !{ptr @deth_table, !147, !"deth_table", i1 false, i1 false}
!147 = !{!"../drivers/infiniband/core/ud_header.c", i32 268, i32 30}
!148 = !{i32 1, !"wchar_size", i32 2}
!149 = !{i32 1, !"min_enum_size", i32 4}
!150 = !{i32 8, !"branch-target-enforcement", i32 0}
!151 = !{i32 8, !"sign-return-address", i32 0}
!152 = !{i32 8, !"sign-return-address-all", i32 0}
!153 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!154 = !{i32 7, !"uwtable", i32 1}
!155 = !{i32 7, !"frame-pointer", i32 2}
!156 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!157 = !{i64 6463925, i64 6463964, i64 6463990, i64 6464014, i64 6464039, i64 6464065, i64 6464090, i64 6464116, i64 6464143, i64 6464169, i64 6464208, i64 6464252, i64 6464283, i64 6464308}
!158 = !{i64 6463542}
