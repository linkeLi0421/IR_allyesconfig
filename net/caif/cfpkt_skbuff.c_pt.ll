; ModuleID = '/llk/IR_all_yes/net/caif/cfpkt_skbuff.c_pt.bc'
source_filename = "../net/caif/cfpkt_skbuff.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+cfpkt_fromnative\22, \22a\22\09"
module asm "\09.weak\09__crc_cfpkt_fromnative\09\09\09\09"
module asm "\09.long\09__crc_cfpkt_fromnative\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfpkt_fromnative:\09\09\09\09\09"
module asm "\09.asciz \09\22cfpkt_fromnative\22\09\09\09\09\09"
module asm "__kstrtabns_cfpkt_fromnative:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cfpkt_tonative\22, \22a\22\09"
module asm "\09.weak\09__crc_cfpkt_tonative\09\09\09\09"
module asm "\09.long\09__crc_cfpkt_tonative\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfpkt_tonative:\09\09\09\09\09"
module asm "\09.asciz \09\22cfpkt_tonative\22\09\09\09\09\09"
module asm "__kstrtabns_cfpkt_tonative:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cfpkt_extr_head\22, \22a\22\09"
module asm "\09.weak\09__crc_cfpkt_extr_head\09\09\09\09"
module asm "\09.long\09__crc_cfpkt_extr_head\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfpkt_extr_head:\09\09\09\09\09"
module asm "\09.asciz \09\22cfpkt_extr_head\22\09\09\09\09\09"
module asm "__kstrtabns_cfpkt_extr_head:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cfpkt_add_head\22, \22a\22\09"
module asm "\09.weak\09__crc_cfpkt_add_head\09\09\09\09"
module asm "\09.long\09__crc_cfpkt_add_head\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfpkt_add_head:\09\09\09\09\09"
module asm "\09.asciz \09\22cfpkt_add_head\22\09\09\09\09\09"
module asm "__kstrtabns_cfpkt_add_head:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cfpkt_info\22, \22a\22\09"
module asm "\09.weak\09__crc_cfpkt_info\09\09\09\09"
module asm "\09.long\09__crc_cfpkt_info\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfpkt_info:\09\09\09\09\09"
module asm "\09.asciz \09\22cfpkt_info\22\09\09\09\09\09"
module asm "__kstrtabns_cfpkt_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cfpkt_set_prio\22, \22a\22\09"
module asm "\09.weak\09__crc_cfpkt_set_prio\09\09\09\09"
module asm "\09.long\09__crc_cfpkt_set_prio\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfpkt_set_prio:\09\09\09\09\09"
module asm "\09.asciz \09\22cfpkt_set_prio\22\09\09\09\09\09"
module asm "__kstrtabns_cfpkt_set_prio:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.1, %union.anon.2, [48 x i8], %union.anon.3, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.5, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.1 = type { ptr }
%union.anon.2 = type { i64 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { i32, ptr }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.7, i32, i32, i32, i16, i16, %union.anon.9, i32, %union.anon.10, %union.anon.11, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.7 = type { i32 }
%union.anon.9 = type { i32 }
%union.anon.10 = type { i32 }
%union.anon.11 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }

@__kstrtab_cfpkt_fromnative = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfpkt_fromnative = external dso_local constant [0 x i8], align 1
@__ksymtab_cfpkt_fromnative = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfpkt_fromnative to i32), ptr @__kstrtab_cfpkt_fromnative, ptr @__kstrtabns_cfpkt_fromnative }, section "___ksymtab+cfpkt_fromnative", align 4
@__kstrtab_cfpkt_tonative = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfpkt_tonative = external dso_local constant [0 x i8], align 1
@__ksymtab_cfpkt_tonative = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfpkt_tonative to i32), ptr @__kstrtab_cfpkt_tonative, ptr @__kstrtabns_cfpkt_tonative }, section "___ksymtab+cfpkt_tonative", align 4
@cfpkt_extr_head._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014caif:%s(): read beyond end of packet\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cfpkt_extr_head\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"net/caif/cfpkt_skbuff.c\00", [40 x i8] zeroinitializer }, align 32
@cfpkt_extr_head._entry_ptr = internal global ptr @cfpkt_extr_head._entry, section ".printk_index", align 4
@cfpkt_extr_head._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014caif:%s(): linearize failed\0A\00", [33 x i8] zeroinitializer }, align 32
@cfpkt_extr_head._entry_ptr.5 = internal global ptr @cfpkt_extr_head._entry.3, section ".printk_index", align 4
@__kstrtab_cfpkt_extr_head = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfpkt_extr_head = external dso_local constant [0 x i8], align 1
@__ksymtab_cfpkt_extr_head = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfpkt_extr_head to i32), ptr @__kstrtab_cfpkt_extr_head, ptr @__kstrtabns_cfpkt_extr_head }, section "___ksymtab+cfpkt_extr_head", align 4
@cfpkt_extr_trail._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.6, ptr @.str.2, i32 154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cfpkt_extr_trail\00", [47 x i8] zeroinitializer }, align 32
@cfpkt_extr_trail._entry_ptr = internal global ptr @cfpkt_extr_trail._entry, section ".printk_index", align 4
@cfpkt_extr_trail._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.6, ptr @.str.2, i32 158, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cfpkt_extr_trail._entry_ptr.8 = internal global ptr @cfpkt_extr_trail._entry.7, section ".printk_index", align 4
@cfpkt_add_body._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\014caif:%s(): cow failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cfpkt_add_body\00", [17 x i8] zeroinitializer }, align 32
@cfpkt_add_body._entry_ptr = internal global ptr @cfpkt_add_body._entry, section ".printk_index", align 4
@cfpkt_add_head._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\014caif:%s(): no headroom\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cfpkt_add_head\00", [17 x i8] zeroinitializer }, align 32
@cfpkt_add_head._entry_ptr = internal global ptr @cfpkt_add_head._entry, section ".printk_index", align 4
@cfpkt_add_head._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.12, ptr @.str.2, i32 232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cfpkt_add_head._entry_ptr.14 = internal global ptr @cfpkt_add_head._entry.13, section ".printk_index", align 4
@__kstrtab_cfpkt_add_head = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfpkt_add_head = external dso_local constant [0 x i8], align 1
@__ksymtab_cfpkt_add_head = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfpkt_add_head to i32), ptr @__kstrtab_cfpkt_add_head, ptr @__kstrtabns_cfpkt_add_head }, section "___ksymtab+cfpkt_add_head", align 4
@cfpkt_iterate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.15, ptr @.str.2, i32 264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cfpkt_iterate\00", [18 x i8] zeroinitializer }, align 32
@cfpkt_iterate._entry_ptr = internal global ptr @cfpkt_iterate._entry, section ".printk_index", align 4
@cfpkt_setlen._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014caif:%s(): skb_pad_trail failed\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cfpkt_setlen\00", [19 x i8] zeroinitializer }, align 32
@cfpkt_setlen._entry_ptr = internal global ptr @cfpkt_setlen._entry, section ".printk_index", align 4
@cfpkt_split._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014caif:%s(): trying to split beyond end of packet\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cfpkt_split\00", [20 x i8] zeroinitializer }, align 32
@cfpkt_split._entry_ptr = internal global ptr @cfpkt_split._entry, section ".printk_index", align 4
@__kstrtab_cfpkt_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfpkt_info = external dso_local constant [0 x i8], align 1
@__ksymtab_cfpkt_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfpkt_info to i32), ptr @__kstrtab_cfpkt_info, ptr @__kstrtabns_cfpkt_info }, section "___ksymtab+cfpkt_info", align 4
@__kstrtab_cfpkt_set_prio = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfpkt_set_prio = external dso_local constant [0 x i8], align 1
@__ksymtab_cfpkt_set_prio = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfpkt_set_prio to i32), ptr @__kstrtab_cfpkt_set_prio, ptr @__kstrtabns_cfpkt_set_prio }, section "___ksymtab+cfpkt_set_prio", align 4
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 127, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 133, i32 4 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 154, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 158, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 198, i32 4 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 225, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 232, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 264, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 289, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.90 = private constant [27 x i8] c"../net/caif/cfpkt_skbuff.c\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 343, i32 3 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__ksymtab_cfpkt_add_head, ptr @__ksymtab_cfpkt_extr_head, ptr @__ksymtab_cfpkt_fromnative, ptr @__ksymtab_cfpkt_info, ptr @__ksymtab_cfpkt_set_prio, ptr @__ksymtab_cfpkt_tonative, ptr @cfpkt_add_body._entry, ptr @cfpkt_add_body._entry_ptr, ptr @cfpkt_add_head._entry, ptr @cfpkt_add_head._entry.13, ptr @cfpkt_add_head._entry_ptr, ptr @cfpkt_add_head._entry_ptr.14, ptr @cfpkt_extr_head._entry, ptr @cfpkt_extr_head._entry.3, ptr @cfpkt_extr_head._entry_ptr, ptr @cfpkt_extr_head._entry_ptr.5, ptr @cfpkt_extr_trail._entry, ptr @cfpkt_extr_trail._entry.7, ptr @cfpkt_extr_trail._entry_ptr, ptr @cfpkt_extr_trail._entry_ptr.8, ptr @cfpkt_iterate._entry, ptr @cfpkt_iterate._entry_ptr, ptr @cfpkt_setlen._entry, ptr @cfpkt_setlen._entry_ptr, ptr @cfpkt_split._entry, ptr @cfpkt_split._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfpkt_extr_head._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfpkt_extr_head._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfpkt_extr_trail._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfpkt_extr_trail._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfpkt_add_body._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfpkt_add_head._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfpkt_add_head._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfpkt_iterate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfpkt_setlen._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfpkt_split._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local ptr @cfpkt_fromnative(i32 %dir, ptr noundef returned writeonly %nativepkt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %erronous = getelementptr inbounds %struct.sk_buff, ptr %nativepkt, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %erronous to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %erronous, align 4
  ret ptr %nativepkt
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @cfpkt_tonative(ptr noundef readnone returned %pkt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr %pkt
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cfpkt_create(i16 noundef zeroext %len) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %add = add i16 %len, 2
  %conv.i = zext i16 %add to i32
  %add.i = add nuw nsw i32 %conv.i, 48
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %add.i, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #9
  %cmp.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.i, label %entry.cfpkt_create_pfx.exit_crit_edge, label %if.end.i, !prof !65

entry.cfpkt_create_pfx.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cfpkt_create_pfx.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 48
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %3, i32 48
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  br label %cfpkt_create_pfx.exit

cfpkt_create_pfx.exit:                            ; preds = %if.end.i, %entry.cfpkt_create_pfx.exit_crit_edge
  ret ptr %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cfpkt_destroy(ptr noundef %pkt) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree_skb_reason(ptr noundef %pkt, i32 noundef 0) #9
  ret void
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @cfpkt_more(ptr nocapture noundef readonly %pkt) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %len = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp ne i32 %1, 0
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cfpkt_peek_head(ptr noundef %pkt, ptr noundef %data, i16 noundef zeroext %len) local_unnamed_addr #4 align 64 {
entry:
  %lastskb.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 6
  %0 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i, align 8
  %sub.i = sub i32 %1, %3
  %conv = zext i16 %len to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %conv)
  %cmp.not = icmp ult i32 %sub.i, %conv
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %data3 = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 19
  %4 = ptrtoint ptr %data3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data3, align 4
  %6 = call ptr @memcpy(ptr %data, ptr %5, i32 %conv)
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call i32 @cfpkt_extr_head(ptr noundef %pkt, ptr noundef %data, i16 noundef zeroext %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %land.rhs, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.rhs:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lastskb.i) #9
  %7 = ptrtoint ptr %lastskb.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %lastskb.i, align 4, !annotation !66
  %erronous.i.i = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 3, i32 8
  %8 = ptrtoint ptr %erronous.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %erronous.i.i, align 4, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.i.not.i = icmp eq i8 %9, 0
  br i1 %tobool.i.not.i, label %if.end.i, label %land.rhs.cfpkt_add_head.exit_crit_edge, !prof !68

land.rhs.cfpkt_add_head.exit_crit_edge:           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cfpkt_add_head.exit

if.end.i:                                         ; preds = %land.rhs
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 19
  %10 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 18
  %12 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %11 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %13 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i, i32 %conv)
  %cmp.i = icmp ult i32 %sub.ptr.sub.i.i, %conv
  br i1 %cmp.i, label %do.body.i, label %if.end18.i, !prof !65

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %erronous.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %erronous.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 16
  %15 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %11, ptr %tail.i.i, align 8
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #12
  br label %cfpkt_add_head.exit

if.end18.i:                                       ; preds = %if.end.i
  %call19.i = call i32 @skb_cow_data(ptr noundef %pkt, i32 noundef 0, ptr noundef nonnull %lastskb.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %cmp20.i = icmp slt i32 %call19.i, 0
  br i1 %cmp20.i, label %do.body29.i, label %if.end40.i, !prof !65

do.body29.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %erronous.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %erronous.i.i, align 4
  %17 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i.i, align 4
  %tail.i61.i = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 16
  %19 = ptrtoint ptr %tail.i61.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %tail.i61.i, align 8
  %call37.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12) #12
  br label %cfpkt_add_head.exit

if.end40.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  %call42.i = call ptr @skb_push(ptr noundef %pkt, i32 noundef %conv) #9
  %20 = call ptr @memcpy(ptr %call42.i, ptr %data, i32 %conv)
  br label %cfpkt_add_head.exit

cfpkt_add_head.exit:                              ; preds = %if.end40.i, %do.body29.i, %do.body.i, %land.rhs.cfpkt_add_head.exit_crit_edge
  %tobool7.not = phi i32 [ 0, %land.rhs.cfpkt_add_head.exit_crit_edge ], [ 0, %do.body.i ], [ 0, %do.body29.i ], [ 1, %if.end40.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lastskb.i) #9
  br label %cleanup

cleanup:                                          ; preds = %cfpkt_add_head.exit, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.end.cleanup_crit_edge ], [ %tobool7.not, %cfpkt_add_head.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cfpkt_extr_head(ptr noundef %pkt, ptr noundef writeonly %data, i16 noundef zeroext %len) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %erronous.i = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %erronous.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %erronous.i, align 4, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.i.not = icmp eq i8 %1, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge, !prof !68

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i16 %len to i32
  %len3 = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 6
  %2 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp = icmp ult i32 %3, %conv
  br i1 %cmp, label %do.body, label %if.end18, !prof !65

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %erronous.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %erronous.i, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 19
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 16
  %7 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %tail.i, align 8
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 7
  %8 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_len.i, align 8
  %sub.i = sub i32 %3, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %conv)
  %cmp21 = icmp ult i32 %sub.i, %conv
  br i1 %cmp21, label %if.then29, label %if.end18.if.end52_crit_edge, !prof !65

if.end18.if.end52_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.then29:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.i.not.i = icmp eq i32 %9, 0
  br i1 %tobool.i.not.i, label %if.then29.if.end52_crit_edge, label %cond.true.i

if.then29.if.end52_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

cond.true.i:                                      ; preds = %if.then29
  %call.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %pkt, i32 noundef %9) #9
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %do.body40, label %cond.true.i.if.end52_crit_edge

cond.true.i.if.end52_crit_edge:                   ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

do.body40:                                        ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %erronous.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %erronous.i, align 4
  %data.i76 = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 19
  %11 = ptrtoint ptr %data.i76 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i76, align 4
  %tail.i77 = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 16
  %13 = ptrtoint ptr %tail.i77 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %tail.i77, align 8
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end52:                                         ; preds = %cond.true.i.if.end52_crit_edge, %if.then29.if.end52_crit_edge, %if.end18.if.end52_crit_edge
  %call54 = tail call ptr @skb_pull(ptr noundef %pkt, i32 noundef %conv) #9
  %tobool56.not = icmp eq ptr %data, null
  br i1 %tobool56.not, label %if.end52.cleanup_crit_edge, label %if.then57

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then57:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  %idx.neg = sub nsw i32 0, %conv
  %add.ptr = getelementptr i8, ptr %call54, i32 %idx.neg
  %14 = call ptr @memcpy(ptr %data, ptr %add.ptr, i32 %conv)
  br label %cleanup

cleanup:                                          ; preds = %if.then57, %if.end52.cleanup_crit_edge, %do.body40, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -71, %do.body ], [ -71, %do.body40 ], [ -71, %entry.cleanup_crit_edge ], [ 0, %if.then57 ], [ 0, %if.end52.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cfpkt_add_head(ptr noundef %pkt, ptr nocapture noundef readonly %data2, i16 noundef zeroext %len) #4 align 64 {
entry:
  %lastskb = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lastskb) #9
  %0 = ptrtoint ptr %lastskb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %lastskb, align 4, !annotation !66
  %erronous.i = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %erronous.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %erronous.i, align 4, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.i.not = icmp eq i8 %2, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge, !prof !68

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 19
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 18
  %5 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %4 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %6 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv = zext i16 %len to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %conv)
  %cmp = icmp ult i32 %sub.ptr.sub.i, %conv
  br i1 %cmp, label %do.body, label %if.end18, !prof !65

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %erronous.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %erronous.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %4, ptr %tail.i, align 8
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #12
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %call19 = call i32 @skb_cow_data(ptr noundef %pkt, i32 noundef 0, ptr noundef nonnull %lastskb) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %do.body29, label %if.end40, !prof !65

do.body29:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %erronous.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %erronous.i, align 4
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i, align 4
  %tail.i61 = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 16
  %12 = ptrtoint ptr %tail.i61 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %tail.i61, align 8
  %call37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12) #12
  br label %cleanup

if.end40:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %call42 = call ptr @skb_push(ptr noundef %pkt, i32 noundef %conv) #9
  %13 = call ptr @memcpy(ptr %call42, ptr %data2, i32 %conv)
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %do.body29, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -71, %do.body ], [ %call19, %do.body29 ], [ 0, %if.end40 ], [ -71, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lastskb) #9
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cfpkt_extr_trail(ptr noundef %pkt, ptr nocapture noundef writeonly %dta, i16 noundef zeroext %len) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %erronous.i = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %erronous.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %erronous.i, align 4, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.i.not = icmp eq i8 %1, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge, !prof !68

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not.i = icmp eq i32 %3, 0
  br i1 %tobool.i.not.i, label %if.end.if.end17_crit_edge, label %cond.true.i

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

cond.true.i:                                      ; preds = %if.end
  %call.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %pkt, i32 noundef %3) #9
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %do.body, label %cond.true.i.if.end17_crit_edge

cond.true.i.if.end17_crit_edge:                   ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

do.body:                                          ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %erronous.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %erronous.i, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 19
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 16
  %7 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %tail.i, align 8
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.6) #12
  br label %cleanup

if.end17:                                         ; preds = %cond.true.i.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %data18 = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 19
  %8 = ptrtoint ptr %data18 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data18, align 4
  %conv = zext i16 %len to i32
  %add.ptr = getelementptr i8, ptr %9, i32 %conv
  %tail.i62 = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 16
  %10 = ptrtoint ptr %tail.i62 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i62, align 8
  %cmp20 = icmp ugt ptr %add.ptr, %11
  br i1 %cmp20, label %do.body29, label %if.end40, !prof !65

do.body29:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %erronous.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %erronous.i, align 4
  %13 = ptrtoint ptr %tail.i62 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %9, ptr %tail.i62, align 8
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.6) #12
  br label %cleanup

if.end40:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %idx.neg = sub nsw i32 0, %conv
  %add.ptr43 = getelementptr i8, ptr %11, i32 %idx.neg
  %len44 = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 6
  %14 = ptrtoint ptr %len44 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len44, align 4
  %sub = sub i32 %15, %conv
  tail call void @skb_trim(ptr noundef %pkt, i32 noundef %sub) #9
  %16 = call ptr @memcpy(ptr %dta, ptr %add.ptr43, i32 %conv)
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %do.body29, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -71, %do.body ], [ -71, %do.body29 ], [ 0, %if.end40 ], [ -71, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cfpkt_pad_trail(ptr noundef %pkt, i16 noundef zeroext %len) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @cfpkt_add_body(ptr noundef %pkt, ptr noundef null, i16 noundef zeroext %len)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cfpkt_add_body(ptr noundef %pkt, ptr noundef readonly %data, i16 noundef zeroext %len) local_unnamed_addr #4 align 64 {
entry:
  %lastskb = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lastskb) #9
  %erronous.i = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %erronous.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %erronous.i, align 4, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.i.not = icmp eq i8 %1, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge, !prof !68

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %lastskb to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pkt, ptr %lastskb, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 7
  %3 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not.i = icmp eq i32 %4, 0
  br i1 %tobool.i.not.i, label %cond.false.i, label %if.end.skb_tailroom.exit_crit_edge

if.end.skb_tailroom.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_tailroom.exit

cond.false.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 17
  %5 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 16
  %7 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %6 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %8 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br label %skb_tailroom.exit

skb_tailroom.exit:                                ; preds = %cond.false.i, %if.end.skb_tailroom.exit_crit_edge
  %cond.i = phi i32 [ %sub.ptr.sub.i, %cond.false.i ], [ 0, %if.end.skb_tailroom.exit_crit_edge ]
  %conv = zext i16 %len to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %conv)
  %cmp = icmp slt i32 %cond.i, %conv
  br i1 %cmp, label %if.then11, label %lor.lhs.false, !prof !65

if.then11:                                        ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %len)
  %cmp13 = icmp ult i16 %len, 128
  br i1 %cmp13, label %if.then11.if.then37_crit_edge, label %if.end23, !prof !68

if.then11.if.then37_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then37

if.end23:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then37

lor.lhs.false:                                    ; preds = %skb_tailroom.exit
  %cloned.i = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 12
  %9 = ptrtoint ptr %cloned.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load.i = load i8, ptr %cloned.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %lor.lhs.false.lor.rhs_crit_edge, label %skb_cloned.exit

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs

skb_cloned.exit:                                  ; preds = %lor.lhs.false
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 17
  %10 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %end.i.i, align 4
  %dataref.i = getelementptr inbounds %struct.skb_shared_info, ptr %11, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i, i32 noundef 4) #9
  %12 = ptrtoint ptr %dataref.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %dataref.i, align 4
  %and.i = and i32 %13, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1
  br i1 %cmp.i.not, label %skb_cloned.exit.lor.rhs_crit_edge, label %skb_cloned.exit.if.then37_crit_edge, !prof !68

skb_cloned.exit.if.then37_crit_edge:              ; preds = %skb_cloned.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then37

skb_cloned.exit.lor.rhs_crit_edge:                ; preds = %skb_cloned.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs

lor.rhs:                                          ; preds = %skb_cloned.exit.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %users.i = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 21
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %users.i, i32 noundef 4) #9
  %14 = ptrtoint ptr %users.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %users.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp.i87.not = icmp eq i32 %15, 1
  br i1 %cmp.i87.not, label %lor.rhs.if.end56_crit_edge, label %lor.rhs.if.then37_crit_edge, !prof !68

lor.rhs.if.then37_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then37

lor.rhs.if.end56_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

if.then37:                                        ; preds = %lor.rhs.if.then37_crit_edge, %skb_cloned.exit.if.then37_crit_edge, %if.end23, %if.then11.if.then37_crit_edge
  %addlen.091 = phi i32 [ %conv, %if.end23 ], [ 0, %skb_cloned.exit.if.then37_crit_edge ], [ 0, %lor.rhs.if.then37_crit_edge ], [ 128, %if.then11.if.then37_crit_edge ]
  %call39 = call i32 @skb_cow_data(ptr noundef %pkt, i32 noundef %addlen.091, ptr noundef nonnull %lastskb) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %do.body, label %if.then37.if.end56_crit_edge, !prof !65

if.then37.if.end56_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

do.body:                                          ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %erronous.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %erronous.i, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 19
  %17 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i, align 4
  %tail.i88 = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 16
  %19 = ptrtoint ptr %tail.i88 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %tail.i88, align 8
  %call52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #12
  br label %cleanup

if.end56:                                         ; preds = %if.then37.if.end56_crit_edge, %lor.rhs.if.end56_crit_edge
  %20 = ptrtoint ptr %lastskb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lastskb, align 4
  %call58 = call ptr @pskb_put(ptr noundef %pkt, ptr noundef %21, i32 noundef %conv) #9
  %tobool59.not = icmp eq ptr %data, null
  br i1 %tobool59.not, label %if.end56.cleanup_crit_edge, label %if.then66, !prof !65

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then66:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  %22 = call ptr @memcpy(ptr %call58, ptr %data, i32 %conv)
  br label %cleanup

cleanup:                                          ; preds = %if.then66, %if.end56.cleanup_crit_edge, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -71, %do.body ], [ -71, %entry.cleanup_crit_edge ], [ 0, %if.then66 ], [ 0, %if.end56.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lastskb) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_cow_data(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pskb_put(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cfpkt_addbdy(ptr noundef %pkt, i8 noundef zeroext %data) local_unnamed_addr #3 align 64 {
entry:
  %data.addr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %data.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %data, ptr %data.addr, align 1
  %call = call i32 @cfpkt_add_body(ptr noundef %pkt, ptr noundef nonnull %data.addr, i16 noundef zeroext 1)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cfpkt_add_trail(ptr noundef %pkt, ptr noundef %data, i16 noundef zeroext %len) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @cfpkt_add_body(ptr noundef %pkt, ptr noundef %data, i16 noundef zeroext %len)
  ret i32 %call
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @cfpkt_getlen(ptr nocapture noundef readonly %pkt) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %len = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %conv = trunc i32 %1 to i16
  ret i16 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cfpkt_iterate(ptr noundef %pkt, ptr nocapture noundef readonly %iter_func, i16 noundef zeroext %data) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %erronous.i = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %erronous.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %erronous.i, align 4, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.i.not = icmp eq i8 %1, 0
  br i1 %tobool.i.not, label %if.end, label %entry.return_crit_edge, !prof !68

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not.i = icmp eq i32 %3, 0
  br i1 %tobool.i.not.i, label %if.end.if.end15_crit_edge, label %cond.true.i

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

cond.true.i:                                      ; preds = %if.end
  %call.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %pkt, i32 noundef %3) #9
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %do.body, label %cond.true.i.if.end15_crit_edge

cond.true.i.if.end15_crit_edge:                   ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

do.body:                                          ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %erronous.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %erronous.i, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 19
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 16
  %7 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %tail.i, align 8
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.15) #12
  br label %return

if.end15:                                         ; preds = %cond.true.i.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %data17 = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 19
  %8 = ptrtoint ptr %data17 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data17, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 6
  %10 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len.i, align 4
  %conv.i = trunc i32 %11 to i16
  %call19 = tail call zeroext i16 %iter_func(i16 noundef zeroext %data, ptr noundef %9, i16 noundef zeroext %conv.i) #9
  %conv = zext i16 %call19 to i32
  br label %return

return:                                           ; preds = %if.end15, %do.body, %entry.return_crit_edge
  %retval.0 = phi i32 [ -71, %do.body ], [ %conv, %if.end15 ], [ -71, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cfpkt_setlen(ptr noundef %pkt, i16 noundef zeroext %len) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %erronous.i = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %erronous.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %erronous.i, align 4, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.i.not = icmp eq i8 %1, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge, !prof !68

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i16 %len to i32
  %len3 = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 6
  %2 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp.not = icmp ult i32 %3, %conv
  br i1 %cmp.not, label %if.end26, label %if.then11, !prof !65

if.then11:                                        ; preds = %if.end
  %data_len = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 7
  %4 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool12.not = icmp eq i32 %5, 0
  br i1 %tobool12.not, label %if.else, label %if.then19, !prof !68

if.then19:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  %call21 = tail call i32 @___pskb_trim(ptr noundef %pkt, i32 noundef %conv) #9
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @skb_trim(ptr noundef %pkt, i32 noundef %conv) #9
  br label %cleanup.sink.split

if.end26:                                         ; preds = %if.end
  %6 = trunc i32 %3 to i16
  %conv29 = sub i16 %len, %6
  %call.i = tail call i32 @cfpkt_add_body(ptr noundef %pkt, ptr noundef null, i16 noundef zeroext %conv29) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool31.not = icmp eq i32 %call.i, 0
  br i1 %tobool31.not, label %do.body, label %if.end26.cleanup.sink.split_crit_edge, !prof !65

if.end26.cleanup.sink.split_crit_edge:            ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

do.body:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %erronous.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %erronous.i, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 19
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 16
  %10 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %tail.i, align 8
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.body, %if.end26.cleanup.sink.split_crit_edge, %if.else, %if.then19
  %11 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len3, align 4
  %conv49 = and i32 %12, 65535
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -71, %entry.cleanup_crit_edge ], [ %conv49, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___pskb_trim(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cfpkt_append(ptr noundef %dstpkt, ptr noundef %addpkt, i16 noundef zeroext %expectlen) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %addpkt, i32 0, i32 6
  %0 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %addpkt, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i, align 8
  %sub.i = sub i32 %1, %3
  %conv = trunc i32 %sub.i to i16
  %erronous.i = getelementptr inbounds %struct.sk_buff, ptr %dstpkt, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %erronous.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %erronous.i, align 4, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.i.not = icmp eq i8 %5, 0
  br i1 %tobool.i.not, label %lor.rhs, label %entry.cleanup40_crit_edge, !prof !68

entry.cleanup40_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup40

lor.rhs:                                          ; preds = %entry
  %erronous.i65 = getelementptr inbounds %struct.sk_buff, ptr %addpkt, i32 0, i32 3, i32 8
  %6 = ptrtoint ptr %erronous.i65 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %erronous.i65, align 4, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.i66.not = icmp eq i8 %7, 0
  br i1 %tobool.i66.not, label %if.end, label %lor.rhs.cleanup40_crit_edge, !prof !68

lor.rhs.cleanup40_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup40

if.end:                                           ; preds = %lor.rhs
  %conv8 = zext i16 %expectlen to i32
  %conv9 = and i32 %sub.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv9, i32 %conv8)
  %cmp = icmp ult i32 %conv9, %conv8
  %expectlen.conv = select i1 %cmp, i16 %expectlen, i16 %conv
  %tail = getelementptr inbounds %struct.sk_buff, ptr %dstpkt, i32 0, i32 16
  %8 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail, align 8
  %conv13 = zext i16 %expectlen.conv to i32
  %add.ptr = getelementptr i8, ptr %9, i32 %conv13
  %end = getelementptr inbounds %struct.sk_buff, ptr %dstpkt, i32 0, i32 17
  %10 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %end, align 4
  %cmp14 = icmp ugt ptr %add.ptr, %11
  br i1 %cmp14, label %if.then16, label %if.end.if.end35_crit_edge

if.end.if.end35_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then16:                                        ; preds = %if.end
  %len.i67 = getelementptr inbounds %struct.sk_buff, ptr %dstpkt, i32 0, i32 6
  %12 = ptrtoint ptr %len.i67 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len.i67, align 4
  %data_len.i68 = getelementptr inbounds %struct.sk_buff, ptr %dstpkt, i32 0, i32 7
  %14 = ptrtoint ptr %data_len.i68 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data_len.i68, align 8
  %sub.i69 = sub i32 %13, %15
  %16 = trunc i32 %sub.i69 to i16
  %conv22 = add i16 %expectlen.conv, 52
  %add.i = add i16 %conv22, %16
  %conv.i.i = zext i16 %add.i to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 48
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef %add.i.i, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #9
  %cmp.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %cmp.i.i, label %if.then16.cleanup40_crit_edge, label %cleanup, !prof !65

if.then16.cleanup40_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup40

cleanup:                                          ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %17 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %18, i32 48
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %19 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %20, i32 48
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %conv19 = and i32 %sub.i69, 65535
  %data = getelementptr inbounds %struct.sk_buff, ptr %dstpkt, i32 0, i32 19
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef %conv19) #9
  %23 = call ptr @memcpy(ptr %call.i, ptr %22, i32 %conv19)
  tail call void @kfree_skb_reason(ptr noundef %dstpkt, i32 noundef 0) #9
  br label %if.end35

if.end35:                                         ; preds = %cleanup, %if.end.if.end35_crit_edge
  %dst.1 = phi ptr [ %call.i.i.i, %cleanup ], [ %dstpkt, %if.end.if.end35_crit_edge ]
  %data36 = getelementptr inbounds %struct.sk_buff, ptr %addpkt, i32 0, i32 19
  %24 = ptrtoint ptr %data36 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data36, align 4
  %26 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len.i, align 4
  %28 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %data_len.i, align 8
  %sub.i72 = sub i32 %27, %29
  %call.i73 = tail call ptr @skb_put(ptr noundef %dst.1, i32 noundef %sub.i72) #9
  %30 = call ptr @memcpy(ptr %call.i73, ptr %25, i32 %sub.i72)
  tail call void @kfree_skb_reason(ptr noundef %addpkt, i32 noundef 0) #9
  br label %cleanup40

cleanup40:                                        ; preds = %if.end35, %if.then16.cleanup40_crit_edge, %lor.rhs.cleanup40_crit_edge, %entry.cleanup40_crit_edge
  %retval.1 = phi ptr [ %dst.1, %if.end35 ], [ %dstpkt, %lor.rhs.cleanup40_crit_edge ], [ %dstpkt, %entry.cleanup40_crit_edge ], [ null, %if.then16.cleanup40_crit_edge ]
  ret ptr %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cfpkt_split(ptr noundef %pkt, i16 noundef zeroext %pos) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %conv = zext i16 %pos to i32
  %add.ptr = getelementptr i8, ptr %1, i32 %conv
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %erronous.i = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %erronous.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %erronous.i, align 4, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.i.not = icmp eq i8 %5, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge, !prof !68

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp = icmp ugt ptr %add.ptr, %3
  br i1 %cmp, label %do.body, label %if.end17

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %erronous.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %erronous.i, align 4
  %7 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %1, ptr %tail.i, align 8
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #12
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %conv20 = add i32 %sub.ptr.sub, 50
  %conv.i = and i32 %conv20, 65535
  %add.i = add nuw nsw i32 %conv.i, 48
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %add.i, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #9
  %cmp.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.i, label %if.end17.cleanup_crit_edge, label %if.end30, !prof !65

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end30:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %conv18 = and i32 %sub.ptr.sub, 65535
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %8 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 48
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %10 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %11, i32 48
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %conv18) #9
  %12 = call ptr @memcpy(ptr %call.i, ptr %add.ptr, i32 %conv18)
  tail call void @skb_trim(ptr noundef %pkt, i32 noundef %conv) #9
  %priority = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 15, i32 0, i32 6
  %13 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %priority, align 4
  %priority34 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 6
  %15 = ptrtoint ptr %priority34 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %priority34, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.end17.cleanup_crit_edge, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.body ], [ %call.i.i, %if.end30 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end17.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @cfpkt_erroneous(ptr nocapture noundef readonly %pkt) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %erronous = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %erronous to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %erronous, align 4, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool = icmp ne i8 %1, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @cfpkt_info(ptr noundef readnone %pkt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cb = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 3
  ret ptr %cb
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @cfpkt_set_prio(ptr nocapture noundef writeonly %pkt, i32 noundef %prio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priority = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 15, i32 0, i32 6
  %0 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %prio, ptr %priority, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !16, !18, !19, !20, !22, !23, !25, !26, !27, !28, !30, !31, !32, !33, !35, !36, !38, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !52, !54}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @__ksymtab_cfpkt_fromnative, !1, !"__ksymtab_cfpkt_fromnative", i1 false, i1 false}
!1 = !{!"../net/caif/cfpkt_skbuff.c", i32 71, i32 1}
!2 = !{ptr @__ksymtab_cfpkt_tonative, !3, !"__ksymtab_cfpkt_tonative", i1 false, i1 false}
!3 = !{!"../net/caif/cfpkt_skbuff.c", i32 77, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/caif/cfpkt_skbuff.c", i32 127, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @cfpkt_extr_head._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @cfpkt_extr_head._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/caif/cfpkt_skbuff.c", i32 133, i32 4}
!12 = !{ptr @cfpkt_extr_head._entry.3, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @cfpkt_extr_head._entry_ptr.5, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @__ksymtab_cfpkt_extr_head, !15, !"__ksymtab_cfpkt_extr_head", i1 false, i1 false}
!15 = !{!"../net/caif/cfpkt_skbuff.c", i32 143, i32 1}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/caif/cfpkt_skbuff.c", i32 154, i32 3}
!18 = !{ptr @cfpkt_extr_trail._entry, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @cfpkt_extr_trail._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @cfpkt_extr_trail._entry.7, !21, !"_entry", i1 false, i1 false}
!21 = !{!"../net/caif/cfpkt_skbuff.c", i32 158, i32 3}
!22 = !{ptr @cfpkt_extr_trail._entry_ptr.8, !21, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/caif/cfpkt_skbuff.c", i32 198, i32 4}
!25 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @cfpkt_add_body._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @cfpkt_add_body._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/caif/cfpkt_skbuff.c", i32 225, i32 3}
!30 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @cfpkt_add_head._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @cfpkt_add_head._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @cfpkt_add_head._entry.13, !34, !"_entry", i1 false, i1 false}
!34 = !{!"../net/caif/cfpkt_skbuff.c", i32 232, i32 3}
!35 = !{ptr @cfpkt_add_head._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @__ksymtab_cfpkt_add_head, !37, !"__ksymtab_cfpkt_add_head", i1 false, i1 false}
!37 = !{!"../net/caif/cfpkt_skbuff.c", i32 240, i32 1}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../net/caif/cfpkt_skbuff.c", i32 264, i32 3}
!40 = !{ptr @cfpkt_iterate._entry, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @cfpkt_iterate._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/caif/cfpkt_skbuff.c", i32 289, i32 3}
!44 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @cfpkt_setlen._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @cfpkt_setlen._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../net/caif/cfpkt_skbuff.c", i32 343, i32 3}
!49 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @cfpkt_split._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @cfpkt_split._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @__ksymtab_cfpkt_info, !53, !"__ksymtab_cfpkt_info", i1 false, i1 false}
!53 = !{!"../net/caif/cfpkt_skbuff.c", i32 376, i32 1}
!54 = !{ptr @__ksymtab_cfpkt_set_prio, !55, !"__ksymtab_cfpkt_set_prio", i1 false, i1 false}
!55 = !{!"../net/caif/cfpkt_skbuff.c", i32 382, i32 1}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{!"branch_weights", i32 1, i32 2000}
!66 = !{!"auto-init"}
!67 = !{i8 0, i8 2}
!68 = !{!"branch_weights", i32 2000, i32 1}
