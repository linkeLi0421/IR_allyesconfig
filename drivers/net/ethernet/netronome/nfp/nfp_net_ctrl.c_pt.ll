; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/netronome/nfp/nfp_net_ctrl.c_pt.bc'
source_filename = "../drivers/net/ethernet/netronome/nfp/nfp_net_ctrl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nfp_net_tlv_caps = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }

@nfp_net_tlv_caps_parse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 69, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"TLV size not multiple of %u offset:%u len:%u\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nfp_net_tlv_caps_parse\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/net/ethernet/netronome/nfp/nfp_net_ctrl.c\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nfp_net_tlv_caps_parse._entry_ptr = internal global ptr @nfp_net_tlv_caps_parse._entry, section ".printk_index", align 4
@nfp_net_tlv_caps_parse._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 74, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"oversized TLV offset:%u len:%u\0A\00", [32 x i8] zeroinitializer }, align 32
@nfp_net_tlv_caps_parse._entry_ptr.7 = internal global ptr @nfp_net_tlv_caps_parse._entry.5, section ".printk_index", align 4
@nfp_net_tlv_caps_parse._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 80, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"NULL TLV at offset:%u\0A\00", [41 x i8] zeroinitializer }, align 32
@nfp_net_tlv_caps_parse._entry_ptr.10 = internal global ptr @nfp_net_tlv_caps_parse._entry.8, section ".printk_index", align 4
@nfp_net_tlv_caps_parse._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 89, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"END TLV should be empty, has offset:%u len:%d\0A\00", [49 x i8] zeroinitializer }, align 32
@nfp_net_tlv_caps_parse._entry_ptr.13 = internal global ptr @nfp_net_tlv_caps_parse._entry.11, section ".printk_index", align 4
@nfp_net_tlv_caps_parse._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 95, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"ME FREQ TLV should be 4B, is %dB offset:%u\0A\00", [52 x i8] zeroinitializer }, align 32
@nfp_net_tlv_caps_parse._entry_ptr.16 = internal global ptr @nfp_net_tlv_caps_parse._entry.14, section ".printk_index", align 4
@nfp_net_tlv_caps_parse._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.1, ptr @.str.2, i32 115, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"experimental TLV type:%u offset:%u len:%u\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@nfp_net_tlv_caps_parse._entry_ptr.20 = internal global ptr @nfp_net_tlv_caps_parse._entry.17, section ".printk_index", align 4
@nfp_net_tlv_caps_parse._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 120, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"REPR CAP TLV short %dB < 4B offset:%u\0A\00", [57 x i8] zeroinitializer }, align 32
@nfp_net_tlv_caps_parse._entry_ptr.23 = internal global ptr @nfp_net_tlv_caps_parse._entry.21, section ".printk_index", align 4
@nfp_net_tlv_caps_parse._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.1, ptr @.str.2, i32 139, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"VNIC STATS TLV misaligned, ignoring offset:%u len:%u\0A\00", [42 x i8] zeroinitializer }, align 32
@nfp_net_tlv_caps_parse._entry_ptr.26 = internal global ptr @nfp_net_tlv_caps_parse._entry.24, section ".printk_index", align 4
@nfp_net_tlv_caps_parse._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.1, ptr @.str.2, i32 157, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"unknown TLV type:%u offset:%u len:%u\0A\00", [58 x i8] zeroinitializer }, align 32
@nfp_net_tlv_caps_parse._entry_ptr.29 = internal global ptr @nfp_net_tlv_caps_parse._entry.27, section ".printk_index", align 4
@nfp_net_tlv_caps_parse._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.1, ptr @.str.2, i32 163, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"reached end of BAR without END TLV\0A\00", [60 x i8] zeroinitializer }, align 32
@nfp_net_tlv_caps_parse._entry_ptr.32 = internal global ptr @nfp_net_tlv_caps_parse._entry.30, section ".printk_index", align 4
@nfp_net_tls_parse_crypto_ops._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 33, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"CRYPTO OPS TLV should be at least 32B, is %dB offset:%u\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"nfp_net_tls_parse_crypto_ops\00", [35 x i8] zeroinitializer }, align 32
@nfp_net_tls_parse_crypto_ops._entry_ptr = internal global ptr @nfp_net_tls_parse_crypto_ops._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [14 x i64] [i64 12, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 10, i64 11, i64 12, i64 13]
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 68, i32 4 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 73, i32 4 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 80, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 88, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 93, i32 5 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 112, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 119, i32 5 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 138, i32 5 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 155, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 163, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.117 = private constant [53 x i8] c"../drivers/net/ethernet/netronome/nfp/nfp_net_ctrl.c\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 31, i32 3 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @nfp_net_tls_parse_crypto_ops._entry, ptr @nfp_net_tls_parse_crypto_ops._entry_ptr, ptr @nfp_net_tlv_caps_parse._entry, ptr @nfp_net_tlv_caps_parse._entry.11, ptr @nfp_net_tlv_caps_parse._entry.14, ptr @nfp_net_tlv_caps_parse._entry.17, ptr @nfp_net_tlv_caps_parse._entry.21, ptr @nfp_net_tlv_caps_parse._entry.24, ptr @nfp_net_tlv_caps_parse._entry.27, ptr @nfp_net_tlv_caps_parse._entry.30, ptr @nfp_net_tlv_caps_parse._entry.5, ptr @nfp_net_tlv_caps_parse._entry.8, ptr @nfp_net_tlv_caps_parse._entry_ptr, ptr @nfp_net_tlv_caps_parse._entry_ptr.10, ptr @nfp_net_tlv_caps_parse._entry_ptr.13, ptr @nfp_net_tlv_caps_parse._entry_ptr.16, ptr @nfp_net_tlv_caps_parse._entry_ptr.20, ptr @nfp_net_tlv_caps_parse._entry_ptr.23, ptr @nfp_net_tlv_caps_parse._entry_ptr.26, ptr @nfp_net_tlv_caps_parse._entry_ptr.29, ptr @nfp_net_tlv_caps_parse._entry_ptr.32, ptr @nfp_net_tlv_caps_parse._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @.str.34], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_net_tlv_caps_parse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_net_tlv_caps_parse._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_net_tlv_caps_parse._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_net_tlv_caps_parse._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_net_tlv_caps_parse._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_net_tlv_caps_parse._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_net_tlv_caps_parse._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_net_tlv_caps_parse._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_net_tlv_caps_parse._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_net_tlv_caps_parse._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_net_tls_parse_crypto_ops._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_net_tlv_caps_parse(ptr noundef %dev, ptr noundef %ctrl_mem, ptr nocapture noundef %caps) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ctrl_mem, i32 88
  %add.ptr1 = getelementptr i8, ptr %ctrl_mem, i32 32768
  %0 = getelementptr inbounds i8, ptr %caps, i32 12
  %1 = call ptr @memset(ptr %0, i32 0, i32 28)
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1200, ptr %caps, align 4
  %mbox_off.i = getelementptr inbounds %struct.nfp_net_tlv_caps, ptr %caps, i32 0, i32 1
  %3 = ptrtoint ptr %mbox_off.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 6144, ptr %mbox_off.i, align 4
  %mbox_len.i = getelementptr inbounds %struct.nfp_net_tlv_caps, ptr %caps, i32 0, i32 2
  %4 = ptrtoint ptr %mbox_len.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 504, ptr %mbox_len.i, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.cleanup201_crit_edge, label %while.cond.preheader

entry.cleanup201_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup201

while.cond.preheader:                             ; preds = %entry
  %sub.ptr.rhs.cast = ptrtoint ptr %ctrl_mem to i32
  %tls_resync_ss.i281 = getelementptr inbounds %struct.nfp_net_tlv_caps, ptr %caps, i32 0, i32 9
  %crypto_ops.i287 = getelementptr inbounds %struct.nfp_net_tlv_caps, ptr %caps, i32 0, i32 5
  %sub.ptr.sub.i290 = sub i32 16, %sub.ptr.rhs.cast
  %crypto_enable_off.i292 = getelementptr inbounds %struct.nfp_net_tlv_caps, ptr %caps, i32 0, i32 6
  %vnic_stats_off = getelementptr inbounds %struct.nfp_net_tlv_caps, ptr %caps, i32 0, i32 7
  %vnic_stats_cnt = getelementptr inbounds %struct.nfp_net_tlv_caps, ptr %caps, i32 0, i32 8
  %mbox_cmsg_types = getelementptr inbounds %struct.nfp_net_tlv_caps, ptr %caps, i32 0, i32 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog.while.cond_crit_edge, %while.cond.preheader
  %data.0 = phi ptr [ %add.ptr29, %sw.epilog.while.cond_crit_edge ], [ %add.ptr, %while.cond.preheader ]
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %data.0) #3, !srcloc !59
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !61
  %and = and i32 %7, 65535
  %sub.ptr.lhs.cast = ptrtoint ptr %data.0 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add.ptr22 = getelementptr i8, ptr %data.0, i32 4
  %rem = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool23.not = icmp eq i32 %rem, 0
  br i1 %tobool23.not, label %if.end28, label %do.end27

do.end27:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef 4, i32 noundef %sub.ptr.sub, i32 noundef %and) #6
  br label %cleanup201

if.end28:                                         ; preds = %while.cond
  %add.ptr29 = getelementptr i8, ptr %add.ptr22, i32 %and
  %cmp = icmp ugt ptr %add.ptr29, %add.ptr1
  br i1 %cmp, label %do.end33, label %do.end49

do.end33:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef %sub.ptr.sub, i32 noundef %and) #6
  br label %cleanup201

do.end49:                                         ; preds = %if.end28
  %and51 = lshr i32 %7, 16
  %shr52 = and i32 %and51, 32767
  %8 = zext i32 %shr52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr52, label %do.end163 [
    i32 0, label %do.end55
    i32 1, label %do.end49.sw.epilog_crit_edge
    i32 2, label %sw.bb56
    i32 3, label %sw.bb63
    i32 4, label %sw.bb75
    i32 5, label %do.end49.do.end87_crit_edge
    i32 6, label %do.end49.do.end87_crit_edge454
    i32 7, label %sw.bb106
    i32 10, label %sw.bb118
    i32 11, label %sw.bb127
    i32 12, label %sw.bb131
    i32 13, label %sw.bb145
  ]

do.end49.do.end87_crit_edge454:                   ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end87

do.end49.do.end87_crit_edge:                      ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end87

do.end49.sw.epilog_crit_edge:                     ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

do.end55:                                         ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %sub.ptr.sub) #6
  br label %cleanup201

sw.bb56:                                          ; preds = %do.end49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool57.not = icmp eq i32 %and, 0
  br i1 %tobool57.not, label %sw.bb56.cleanup201_crit_edge, label %do.end62

sw.bb56.cleanup201_crit_edge:                     ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup201

do.end62:                                         ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %sub.ptr.sub, i32 noundef %and) #6
  br label %cleanup201

sw.bb63:                                          ; preds = %do.end49
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and)
  %cmp64.not = icmp eq i32 %and, 4
  br i1 %cmp64.not, label %if.end69, label %do.end68

do.end68:                                         ; preds = %sw.bb63
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %and, i32 noundef %sub.ptr.sub) #6
  br label %cleanup201

if.end69:                                         ; preds = %sw.bb63
  call void @__sanitizer_cov_trace_pc() #5
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #3, !srcloc !59
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  %11 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %caps, align 4
  br label %sw.epilog

sw.bb75:                                          ; preds = %do.end49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool76.not = icmp eq i32 %and, 0
  br i1 %tobool76.not, label %if.then77, label %if.else

if.then77:                                        ; preds = %sw.bb75
  call void @__sanitizer_cov_trace_pc() #5
  %12 = ptrtoint ptr %mbox_off.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %mbox_off.i, align 4
  %13 = ptrtoint ptr %mbox_len.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %mbox_len.i, align 4
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb75
  call void @__sanitizer_cov_trace_pc() #5
  %sub.ptr.lhs.cast78 = ptrtoint ptr %add.ptr22 to i32
  %sub.ptr.sub80 = sub i32 %sub.ptr.lhs.cast78, %sub.ptr.rhs.cast
  %14 = ptrtoint ptr %mbox_off.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub.ptr.sub80, ptr %mbox_off.i, align 4
  %15 = ptrtoint ptr %mbox_len.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and, ptr %mbox_len.i, align 4
  br label %sw.epilog

do.end87:                                         ; preds = %do.end49.do.end87_crit_edge, %do.end49.do.end87_crit_edge454
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %shr52, i32 noundef %sub.ptr.sub, i32 noundef %and) #6
  br label %sw.epilog

sw.bb106:                                         ; preds = %do.end49
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and)
  %cmp107 = icmp ult i32 %and, 4
  br i1 %cmp107, label %do.end111, label %if.end112

do.end111:                                        ; preds = %sw.bb106
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %and, i32 noundef %sub.ptr.sub) #6
  br label %cleanup201

if.end112:                                        ; preds = %sw.bb106
  call void @__sanitizer_cov_trace_pc() #5
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #3, !srcloc !59
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !63
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %0, align 4
  br label %sw.epilog

sw.bb118:                                         ; preds = %do.end49
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp119 = icmp ugt i32 %and, 3
  br i1 %cmp119, label %if.then120, label %sw.bb118.sw.epilog_crit_edge

sw.bb118.sw.epilog_crit_edge:                     ; preds = %sw.bb118
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then120:                                       ; preds = %sw.bb118
  call void @__sanitizer_cov_trace_pc() #5
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #3, !srcloc !59
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !64
  %21 = ptrtoint ptr %mbox_cmsg_types to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %mbox_cmsg_types, align 4
  br label %sw.epilog

sw.bb127:                                         ; preds = %do.end49
  %22 = ptrtoint ptr %tls_resync_ss.i281 to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load.i = load i8, ptr %tls_resync_ss.i281, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb127.sw.epilog_crit_edge

sw.bb127.sw.epilog_crit_edge:                     ; preds = %sw.bb127
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb127
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and)
  %cmp.i = icmp ult i32 %and, 32
  br i1 %cmp.i, label %nfp_net_tls_parse_crypto_ops.exit, label %if.end3.i

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #3, !srcloc !59
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !65
  %25 = ptrtoint ptr %crypto_ops.i287 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %crypto_ops.i287, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr22 to i32
  %add.i = add i32 %sub.ptr.sub.i290, %sub.ptr.lhs.cast.i
  %26 = ptrtoint ptr %crypto_enable_off.i292 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add.i, ptr %crypto_enable_off.i292, align 4
  %27 = ptrtoint ptr %tls_resync_ss.i281 to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load7.i = load i8, ptr %tls_resync_ss.i281, align 4
  %bf.clear.i = and i8 %bf.load7.i, 127
  store i8 %bf.clear.i, ptr %tls_resync_ss.i281, align 4
  br label %sw.epilog

nfp_net_tls_parse_crypto_ops.exit:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33, i32 noundef %and, i32 noundef %sub.ptr.sub) #6
  br label %cleanup201

sw.bb131:                                         ; preds = %do.end49
  %sub.ptr.lhs.cast132 = ptrtoint ptr %add.ptr22 to i32
  %sub.ptr.sub134 = sub i32 %sub.ptr.lhs.cast132, %sub.ptr.rhs.cast
  %28 = and i32 %sub.ptr.sub134, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool136.not = icmp eq i32 %28, 0
  br i1 %tobool136.not, label %if.end141, label %do.end140

do.end140:                                        ; preds = %sw.bb131
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %sub.ptr.sub, i32 noundef %and) #6
  br label %sw.epilog

if.end141:                                        ; preds = %sw.bb131
  call void @__sanitizer_cov_trace_pc() #5
  %29 = ptrtoint ptr %vnic_stats_off to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %sub.ptr.sub134, ptr %vnic_stats_off, align 4
  %div.lhs.trunc = trunc i32 %7 to i16
  %div303 = udiv i16 %div.lhs.trunc, 10
  %div.zext = zext i16 %div303 to i32
  %30 = ptrtoint ptr %vnic_stats_cnt to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %div.zext, ptr %vnic_stats_cnt, align 4
  br label %sw.epilog

sw.bb145:                                         ; preds = %do.end49
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and)
  %cmp.i284 = icmp ult i32 %and, 32
  br i1 %cmp.i284, label %nfp_net_tls_parse_crypto_ops.exit297, label %nfp_net_tls_parse_crypto_ops.exit297.thread

nfp_net_tls_parse_crypto_ops.exit297.thread:      ; preds = %sw.bb145
  call void @__sanitizer_cov_trace_pc() #5
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #3, !srcloc !59
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !65
  %33 = ptrtoint ptr %crypto_ops.i287 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %crypto_ops.i287, align 4
  %sub.ptr.lhs.cast.i288 = ptrtoint ptr %add.ptr22 to i32
  %add.i291 = add i32 %sub.ptr.sub.i290, %sub.ptr.lhs.cast.i288
  %34 = ptrtoint ptr %crypto_enable_off.i292 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add.i291, ptr %crypto_enable_off.i292, align 4
  %35 = ptrtoint ptr %tls_resync_ss.i281 to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load7.i293 = load i8, ptr %tls_resync_ss.i281, align 4
  %bf.set.i = or i8 %bf.load7.i293, -128
  store i8 %bf.set.i, ptr %tls_resync_ss.i281, align 4
  br label %sw.epilog

nfp_net_tls_parse_crypto_ops.exit297:             ; preds = %sw.bb145
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33, i32 noundef %and, i32 noundef %sub.ptr.sub) #6
  br label %cleanup201

do.end163:                                        ; preds = %do.end49
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %tobool167.not = icmp sgt i32 %7, -1
  br i1 %tobool167.not, label %do.end163.sw.epilog_crit_edge, label %do.end172

do.end163.sw.epilog_crit_edge:                    ; preds = %do.end163
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

do.end172:                                        ; preds = %do.end163
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %shr52, i32 noundef %sub.ptr.sub, i32 noundef %and) #6
  br label %cleanup201

sw.epilog:                                        ; preds = %do.end163.sw.epilog_crit_edge, %nfp_net_tls_parse_crypto_ops.exit297.thread, %if.end141, %do.end140, %if.end3.i, %sw.bb127.sw.epilog_crit_edge, %if.then120, %sw.bb118.sw.epilog_crit_edge, %if.end112, %do.end87, %if.else, %if.then77, %if.end69, %do.end49.sw.epilog_crit_edge
  %add.ptr192 = getelementptr i8, ptr %add.ptr29, i32 4
  %cmp193 = icmp ugt ptr %add.ptr192, %add.ptr1
  br i1 %cmp193, label %do.end197, label %sw.epilog.while.cond_crit_edge

sw.epilog.while.cond_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond

do.end197:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31) #6
  br label %cleanup201

cleanup201:                                       ; preds = %do.end197, %do.end172, %nfp_net_tls_parse_crypto_ops.exit297, %nfp_net_tls_parse_crypto_ops.exit, %do.end111, %do.end68, %do.end62, %sw.bb56.cleanup201_crit_edge, %do.end55, %do.end33, %do.end27, %entry.cleanup201_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup201_crit_edge ], [ -22, %nfp_net_tls_parse_crypto_ops.exit297 ], [ -22, %nfp_net_tls_parse_crypto_ops.exit ], [ 0, %sw.bb56.cleanup201_crit_edge ], [ -22, %do.end27 ], [ -22, %do.end33 ], [ -22, %do.end55 ], [ -22, %do.end62 ], [ -22, %do.end68 ], [ -22, %do.end111 ], [ -22, %do.end172 ], [ -22, %do.end197 ]
  ret i32 %retval.2
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_ctrl.c", i32 68, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nfp_net_tlv_caps_parse._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @nfp_net_tlv_caps_parse._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_ctrl.c", i32 73, i32 4}
!10 = !{ptr @nfp_net_tlv_caps_parse._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @nfp_net_tlv_caps_parse._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_ctrl.c", i32 80, i32 4}
!14 = !{ptr @nfp_net_tlv_caps_parse._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @nfp_net_tlv_caps_parse._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_ctrl.c", i32 88, i32 4}
!18 = !{ptr @nfp_net_tlv_caps_parse._entry.11, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @nfp_net_tlv_caps_parse._entry_ptr.13, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.15, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_ctrl.c", i32 93, i32 5}
!22 = !{ptr @nfp_net_tlv_caps_parse._entry.14, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @nfp_net_tlv_caps_parse._entry_ptr.16, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.18, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_ctrl.c", i32 112, i32 4}
!26 = !{ptr @.str.19, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @nfp_net_tlv_caps_parse._entry.17, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @nfp_net_tlv_caps_parse._entry_ptr.20, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.22, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_ctrl.c", i32 119, i32 5}
!31 = !{ptr @nfp_net_tlv_caps_parse._entry.21, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @nfp_net_tlv_caps_parse._entry_ptr.23, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.25, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_ctrl.c", i32 138, i32 5}
!35 = !{ptr @nfp_net_tlv_caps_parse._entry.24, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @nfp_net_tlv_caps_parse._entry_ptr.26, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.28, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_ctrl.c", i32 155, i32 4}
!39 = !{ptr @nfp_net_tlv_caps_parse._entry.27, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @nfp_net_tlv_caps_parse._entry_ptr.29, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.31, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_ctrl.c", i32 163, i32 4}
!43 = !{ptr @nfp_net_tlv_caps_parse._entry.30, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @nfp_net_tlv_caps_parse._entry_ptr.32, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.33, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_ctrl.c", i32 31, i32 3}
!47 = !{ptr @.str.34, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @nfp_net_tls_parse_crypto_ops._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @nfp_net_tls_parse_crypto_ops._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{i64 4942280}
!60 = !{i64 2156336006}
!61 = !{i64 2156336440}
!62 = !{i64 2156373715}
!63 = !{i64 2156395882}
!64 = !{i64 2156396319}
!65 = !{i64 2156335553}
