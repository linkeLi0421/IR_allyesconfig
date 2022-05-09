; ModuleID = '/llk/IR_all_yes/drivers/mmc/core/sdio_cis.c_pt.bc'
source_filename = "../drivers/mmc/core/sdio_cis.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cis_tpl = type { i8, i8, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sdio_func = type { ptr, %struct.device, ptr, i32, i8, i16, i16, i32, i32, i32, i32, ptr, i8, i8, i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.mmc_card = type { ptr, %struct.device, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i8, [4 x i32], [4 x i32], [2 x i32], [16 x i32], %struct.mmc_cid, %struct.mmc_csd, %struct.mmc_ext_csd, %struct.sd_scr, %struct.sd_ssr, %struct.sd_switch_caps, %struct.sd_ext_reg, %struct.sd_ext_reg, i32, %struct.atomic_t, %struct.sdio_cccr, %struct.sdio_cis, [7 x ptr], ptr, i8, i8, i32, ptr, ptr, i32, i32, i32, ptr, [7 x %struct.mmc_part], i32, ptr }
%struct.mmc_cid = type { i32, [8 x i8], i8, i32, i16, i16, i8, i8, i8 }
%struct.mmc_csd = type { i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.mmc_ext_csd = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i8, i8, i32, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, [8 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, i8, i32 }
%struct.sd_scr = type { i8, i8, i8, i8, i8, i8 }
%struct.sd_ssr = type { i32, i32, i32 }
%struct.sd_switch_caps = type { i32, i32, i32, i32, i32 }
%struct.sd_ext_reg = type { i8, i8, i16, i8, i8, i8 }
%struct.sdio_cccr = type { i32, i32, i8 }
%struct.sdio_cis = type { i16, i16, i16, i32 }
%struct.mmc_part = type { i64, i32, [20 x i8], i8, i32 }
%struct.sdio_func_tuple = type { ptr, i8, i8, [0 x i8] }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, %struct.fault_attr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, %struct.blk_crypto_profile, i8, [15 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.mmc_supply = type { ptr, ptr }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.blk_crypto_profile = type { %struct.blk_crypto_ll_ops, i32, [4 x i32], ptr, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, ptr, i32, ptr }
%struct.blk_crypto_ll_ops = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CIS\00", [28 x i8] zeroinitializer }, align 32
@cis_tpl_list = internal constant { [5 x %struct.cis_tpl], [56 x i8] } { [5 x %struct.cis_tpl] [%struct.cis_tpl { i8 21, i8 3, ptr @cistpl_vers_1 }, %struct.cis_tpl { i8 32, i8 4, ptr @cistpl_manfid }, %struct.cis_tpl { i8 33, i8 2, ptr null }, %struct.cis_tpl { i8 34, i8 0, ptr @cistpl_funce }, %struct.cis_tpl { i8 -111, i8 2, ptr null }], [56 x i8] zeroinitializer }, align 32
@sdio_read_cis._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@sdio_read_cis.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 86, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmc_core\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sdio_read_cis\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/mmc/core/sdio_cis.c\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s: queuing vendor CIS tuple 0x%02x [%*ph] (%u bytes)\0A\00", [41 x i8] zeroinitializer }, align 32
@sdio_read_cis._rs.6 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@sdio_read_cis._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.3, ptr @.str.4, i32 351, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014%s: queuing unknown CIS tuple 0x%02x [%*ph] (%u bytes)\0A\00", [38 x i8] zeroinitializer }, align 32
@sdio_read_cis._entry_ptr = internal global ptr @sdio_read_cis._entry, section ".printk_index", align 4
@cis_tpl_parse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.4, i32 145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: bad %s tuple 0x%02x (%u bytes)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cis_tpl_parse\00", [18 x i8] zeroinitializer }, align 32
@cis_tpl_parse._entry_ptr = internal global ptr @cis_tpl_parse._entry, section ".printk_index", align 4
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CISTPL_FUNCE\00", [19 x i8] zeroinitializer }, align 32
@cis_tpl_funce_list = internal constant { [3 x %struct.cis_tpl], [40 x i8] } { [3 x %struct.cis_tpl] [%struct.cis_tpl { i8 0, i8 4, ptr @cistpl_funce_common }, %struct.cis_tpl { i8 1, i8 0, ptr @cistpl_funce_func }, %struct.cis_tpl { i8 4, i8 8, ptr null }], [40 x i8] zeroinitializer }, align 32
@speed_val = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\00\0A\0C\0D\0F\14\19\1E#(-27<FP", [16 x i8] zeroinitializer }, align 32
@speed_unit = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 10000, i32 100000, i32 1000000, i32 10000000, i32 0, i32 0, i32 0, i32 0], [32 x i8] zeroinitializer }, align 32
@cistpl_funce_func._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.4, i32 191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014%s: card has broken SDIO 1.1 CIS, forcing SDIO 1.0\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cistpl_funce_func\00", [46 x i8] zeroinitializer }, align 32
@cistpl_funce_func._entry_ptr = internal global ptr @cistpl_funce_func._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.13 = internal global [7 x i64] [i64 5, i64 8, i64 21, i64 32, i64 33, i64 34, i64 145]
@__sancov_gen_cov_switch_values.14 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967212, i64 4294967294]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.16 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 4]
@__sancov_gen_cov_switch_values.17 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967212, i64 4294967294]
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 318, i32 35 }
@___asan_gen_.21 = private unnamed_addr constant [13 x i8] c"cis_tpl_list\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 235, i32 29 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 343, i32 6 }
@___asan_gen_.42 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 348, i32 6 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 144, i32 4 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 228, i32 35 }
@___asan_gen_.63 = private unnamed_addr constant [19 x i8] c"cis_tpl_funce_list\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 216, i32 29 }
@___asan_gen_.66 = private unnamed_addr constant [10 x i8] c"speed_val\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 105, i32 28 }
@___asan_gen_.69 = private unnamed_addr constant [11 x i8] c"speed_unit\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 107, i32 27 }
@___asan_gen_.72 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.79 = private constant [31 x i8] c"../drivers/mmc/core/sdio_cis.c\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 190, i32 3 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @cis_tpl_parse._entry, ptr @cis_tpl_parse._entry_ptr, ptr @cistpl_funce_func._entry, ptr @cistpl_funce_func._entry_ptr, ptr @sdio_read_cis._entry, ptr @sdio_read_cis._entry_ptr, ptr @.str, ptr @cis_tpl_list, ptr @sdio_read_cis._rs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @sdio_read_cis._rs.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @cis_tpl_funce_list, ptr @speed_val, ptr @speed_unit, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cis_tpl_list to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdio_read_cis._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdio_read_cis._rs.6 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdio_read_cis._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cis_tpl_parse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cis_tpl_funce_list to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speed_val to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speed_unit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cistpl_funce_func._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sdio_read_common_cis(ptr noundef %card) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sdio_read_cis(ptr noundef %card, ptr noundef null)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sdio_read_cis(ptr noundef %card, ptr noundef %func) unnamed_addr #0 align 64 {
entry:
  %x = alloca i8, align 1
  %tpl_code = alloca i8, align 1
  %tpl_link = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %func, null
  %num = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %x) #8
  %0 = ptrtoint ptr %x to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %x, align 1, !annotation !44
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num, align 4
  %phi.bo = shl i32 %2, 8
  %phi.bo254 = and i32 %phi.bo, 65280
  %phi.bo255 = or i32 %phi.bo254, 9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %fn.0 = phi i32 [ %phi.bo255, %if.then ], [ 9, %entry.if.end_crit_edge ]
  %call = call i32 @mmc_io_rw_direct(ptr noundef %card, i32 noundef 0, i32 noundef 0, i32 noundef %fn.0, i8 noundef zeroext 0, ptr noundef nonnull %x) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %for.inc, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %if.end.2.cleanup_crit_edge, %if.end.1.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %call.lcssa = phi i32 [ %call, %if.end.cleanup_crit_edge ], [ %call.1, %if.end.1.cleanup_crit_edge ], [ %call.2, %if.end.2.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %x) #8
  br label %cleanup143

for.inc:                                          ; preds = %if.end
  %3 = ptrtoint ptr %x to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %x, align 1
  %conv6 = zext i8 %4 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %x) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %x) #8
  %5 = ptrtoint ptr %x to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %x, align 1, !annotation !44
  br i1 %tobool.not, label %for.inc.if.end.1_crit_edge, label %if.then.1

for.inc.if.end.1_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num, align 4
  %phi.bo256 = shl i32 %7, 8
  %phi.bo257 = and i32 %phi.bo256, 65280
  %phi.bo258 = or i32 %phi.bo257, 10
  br label %if.end.1

if.end.1:                                         ; preds = %if.then.1, %for.inc.if.end.1_crit_edge
  %fn.0.1 = phi i32 [ %phi.bo258, %if.then.1 ], [ 10, %for.inc.if.end.1_crit_edge ]
  %call.1 = call i32 @mmc_io_rw_direct(ptr noundef %card, i32 noundef 0, i32 noundef 0, i32 noundef %fn.0.1, i8 noundef zeroext 0, ptr noundef nonnull %x) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool3.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool3.not.1, label %for.inc.1, label %if.end.1.cleanup_crit_edge

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.1:                                        ; preds = %if.end.1
  %8 = ptrtoint ptr %x to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %x, align 1
  %conv6.1 = zext i8 %9 to i32
  %shl.1 = shl nuw nsw i32 %conv6.1, 8
  %or.1 = or i32 %shl.1, %conv6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %x) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %x) #8
  %10 = ptrtoint ptr %x to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %x, align 1, !annotation !44
  br i1 %tobool.not, label %for.inc.1.if.end.2_crit_edge, label %if.then.2

for.inc.1.if.end.2_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num, align 4
  %phi.bo259 = shl i32 %12, 8
  %phi.bo260 = and i32 %phi.bo259, 65280
  %phi.bo261 = or i32 %phi.bo260, 11
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.2, %for.inc.1.if.end.2_crit_edge
  %fn.0.2 = phi i32 [ %phi.bo261, %if.then.2 ], [ 11, %for.inc.1.if.end.2_crit_edge ]
  %call.2 = call i32 @mmc_io_rw_direct(ptr noundef %card, i32 noundef 0, i32 noundef 0, i32 noundef %fn.0.2, i8 noundef zeroext 0, ptr noundef nonnull %x) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool3.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool3.not.2, label %for.inc.2, label %if.end.2.cleanup_crit_edge

if.end.2.cleanup_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.2:                                        ; preds = %if.end.2
  %13 = ptrtoint ptr %x to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %x, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %x) #8
  %tuples = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 16
  %tuples12 = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 37
  %prev.0 = select i1 %tobool.not, ptr %tuples12, ptr %tuples
  %15 = ptrtoint ptr %prev.0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.0, align 4
  %tobool14.not = icmp eq ptr %16, null
  br i1 %tobool14.not, label %do.body.preheader, label %for.inc.2.cleanup143_crit_edge

for.inc.2.cleanup143_crit_edge:                   ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup143

do.body.preheader:                                ; preds = %for.inc.2
  %conv6.2 = zext i8 %14 to i32
  %shl.2 = shl nuw nsw i32 %conv6.2, 16
  %or.2 = or i32 %shl.2, %or.1
  br label %do.body

do.body:                                          ; preds = %do.cond134.do.body_crit_edge, %do.body.preheader
  %prev.1 = phi ptr [ %prev.3.ph224, %do.cond134.do.body_crit_edge ], [ %prev.0, %do.body.preheader ]
  %ptr.2 = phi i32 [ %ptr.3.ph, %do.cond134.do.body_crit_edge ], [ %or.2, %do.body.preheader ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tpl_code) #8
  %17 = ptrtoint ptr %tpl_code to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -1, ptr %tpl_code, align 1, !annotation !44
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tpl_link) #8
  %18 = ptrtoint ptr %tpl_link to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -1, ptr %tpl_link, align 1, !annotation !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %add18 = add i32 %19, 1000
  %inc19 = add i32 %ptr.2, 1
  %call20 = call i32 @mmc_io_rw_direct(ptr noundef %card, i32 noundef 0, i32 noundef 0, i32 noundef %ptr.2, i8 noundef zeroext 0, ptr noundef nonnull %tpl_code) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %do.body.cleanup129.thread_crit_edge

do.body.cleanup129.thread_crit_edge:              ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup129.thread

if.end23:                                         ; preds = %do.body
  %20 = ptrtoint ptr %tpl_code to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %tpl_code, align 1
  %22 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i8 %21, label %if.end33 [
    i8 -1, label %if.end23.cleanup129.thread_crit_edge
    i8 0, label %if.end23.do.cond134_crit_edge
  ]

if.end23.do.cond134_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond134

if.end23.cleanup129.thread_crit_edge:             ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup129.thread

if.end33:                                         ; preds = %if.end23
  %inc34 = add i32 %ptr.2, 2
  %call35 = call i32 @mmc_io_rw_direct(ptr noundef %card, i32 noundef 0, i32 noundef 0, i32 noundef %inc19, i8 noundef zeroext 0, ptr noundef nonnull %tpl_link) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end33.cleanup129.thread_crit_edge

if.end33.cleanup129.thread_crit_edge:             ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup129.thread

if.end38:                                         ; preds = %if.end33
  %23 = ptrtoint ptr %tpl_link to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %tpl_link, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %24)
  %cmp40 = icmp eq i8 %24, -1
  br i1 %cmp40, label %if.end38.cleanup129.thread_crit_edge, label %if.end8.i

if.end38.cleanup129.thread_crit_edge:             ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup129.thread

if.end8.i:                                        ; preds = %if.end38
  %conv39 = zext i8 %24 to i32
  %add45 = add nuw nsw i32 %conv39, 8
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add45, i32 noundef 3264) #11
  %tobool47.not = icmp eq ptr %call9.i, null
  br i1 %tobool47.not, label %cleanup129, label %for.cond50.preheader

for.cond50.preheader:                             ; preds = %if.end8.i
  %25 = ptrtoint ptr %tpl_link to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %tpl_link, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp52245.not = icmp eq i8 %26, 0
  br i1 %cmp52245.not, label %for.cond50.preheader.if.end65_crit_edge, label %for.cond50.preheader.for.body54_crit_edge

for.cond50.preheader.for.body54_crit_edge:        ; preds = %for.cond50.preheader
  br label %for.body54

for.cond50.preheader.if.end65_crit_edge:          ; preds = %for.cond50.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

for.cond50:                                       ; preds = %for.body54
  %inc61 = add nuw nsw i32 %i.1246, 1
  %27 = ptrtoint ptr %tpl_link to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %tpl_link, align 1
  %conv51 = zext i8 %28 to i32
  %cmp52 = icmp ult i32 %inc61, %conv51
  br i1 %cmp52, label %for.cond50.for.body54_crit_edge, label %for.cond50.if.end65_crit_edge

for.cond50.if.end65_crit_edge:                    ; preds = %for.cond50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

for.cond50.for.body54_crit_edge:                  ; preds = %for.cond50
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body54

for.body54:                                       ; preds = %for.cond50.for.body54_crit_edge, %for.cond50.preheader.for.body54_crit_edge
  %i.1246 = phi i32 [ %inc61, %for.cond50.for.body54_crit_edge ], [ 0, %for.cond50.preheader.for.body54_crit_edge ]
  %add55 = add i32 %i.1246, %inc34
  %arrayidx = getelementptr %struct.sdio_func_tuple, ptr %call9.i, i32 0, i32 3, i32 %i.1246
  %call56 = call i32 @mmc_io_rw_direct(ptr noundef %card, i32 noundef 0, i32 noundef 0, i32 noundef %add55, i8 noundef zeroext 0, ptr noundef %arrayidx) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %for.cond50, label %if.then64

if.then64:                                        ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call9.i) #8
  br label %cleanup129.thread

if.end65:                                         ; preds = %for.cond50.if.end65_crit_edge, %for.cond50.preheader.if.end65_crit_edge
  %29 = ptrtoint ptr %tpl_code to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %tpl_code, align 1
  %data66 = getelementptr inbounds %struct.sdio_func_tuple, ptr %call9.i, i32 0, i32 3
  %31 = ptrtoint ptr %tpl_link to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %tpl_link, align 1
  %conv67 = zext i8 %32 to i32
  %33 = zext i8 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.13)
  switch i8 %30, label %if.end65.if.then77_crit_edge [
    i8 21, label %if.end65.if.then7.critedge.i_crit_edge
    i8 32, label %if.then7.critedge.i.fold.split
    i8 33, label %if.then7.critedge.i.fold.split270
    i8 34, label %if.then7.critedge.i.fold.split271
    i8 -111, label %if.then7.critedge.i.fold.split272
  ]

if.end65.if.then7.critedge.i_crit_edge:           ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7.critedge.i

if.end65.if.then77_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then77

if.then7.critedge.i.fold.split:                   ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7.critedge.i

if.then7.critedge.i.fold.split270:                ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7.critedge.i

if.then7.critedge.i.fold.split271:                ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7.critedge.i

if.then7.critedge.i.fold.split272:                ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7.critedge.i

if.then7.critedge.i:                              ; preds = %if.then7.critedge.i.fold.split272, %if.then7.critedge.i.fold.split271, %if.then7.critedge.i.fold.split270, %if.then7.critedge.i.fold.split, %if.end65.if.then7.critedge.i_crit_edge
  %tpl.addr.052.i.lcssa = phi ptr [ @cis_tpl_list, %if.end65.if.then7.critedge.i_crit_edge ], [ getelementptr inbounds ([5 x %struct.cis_tpl], ptr @cis_tpl_list, i32 0, i32 1), %if.then7.critedge.i.fold.split ], [ getelementptr inbounds ([5 x %struct.cis_tpl], ptr @cis_tpl_list, i32 0, i32 2), %if.then7.critedge.i.fold.split270 ], [ getelementptr inbounds ([5 x %struct.cis_tpl], ptr @cis_tpl_list, i32 0, i32 3), %if.then7.critedge.i.fold.split271 ], [ getelementptr inbounds ([5 x %struct.cis_tpl], ptr @cis_tpl_list, i32 0, i32 4), %if.then7.critedge.i.fold.split272 ]
  %min_size.i = getelementptr inbounds %struct.cis_tpl, ptr %tpl.addr.052.i.lcssa, i32 0, i32 1
  %34 = ptrtoint ptr %min_size.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %min_size.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %35, i8 %32)
  %cmp9.not.i = icmp ugt i8 %35, %32
  br i1 %cmp9.not.i, label %if.then7.critedge.i.do.end.i_crit_edge, label %if.then11.i

if.then7.critedge.i.do.end.i_crit_edge:           ; preds = %if.then7.critedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.then11.i:                                      ; preds = %if.then7.critedge.i
  %parse.i = getelementptr inbounds %struct.cis_tpl, ptr %tpl.addr.052.i.lcssa, i32 0, i32 2
  %36 = ptrtoint ptr %parse.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %parse.i, align 4
  %tobool.not.i = icmp eq ptr %37, null
  br i1 %tobool.not.i, label %if.then11.i.if.then73.thread_crit_edge, label %if.end16.i

if.then11.i.if.then73.thread_crit_edge:           ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then73.thread

if.end16.i:                                       ; preds = %if.then11.i
  %call.i = call i32 %37(ptr noundef %card, ptr noundef %func, ptr noundef %data66, i32 noundef %conv67) #8
  %38 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %call.i, label %if.end16.i.do.end.i_crit_edge [
    i32 0, label %if.end16.i.if.else125_crit_edge
    i32 -84, label %if.end16.i.if.then73.thread_crit_edge
    i32 -2, label %if.end16.i.if.then77_crit_edge
  ]

if.end16.i.if.then77_crit_edge:                   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then77

if.end16.i.if.then73.thread_crit_edge:            ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then73.thread

if.end16.i.if.else125_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else125

if.end16.i.do.end.i_crit_edge:                    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.end16.i.do.end.i_crit_edge, %if.then7.critedge.i.do.end.i_crit_edge
  %ret.046.i = phi i32 [ %call.i, %if.end16.i.do.end.i_crit_edge ], [ -22, %if.then7.critedge.i.do.end.i_crit_edge ]
  %39 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %card, align 8
  %init_name.i.i = getelementptr inbounds %struct.mmc_host, ptr %40, i32 0, i32 1, i32 3
  %41 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %42, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.cis_tpl_parse.exit_crit_edge

do.end.i.cis_tpl_parse.exit_crit_edge:            ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cis_tpl_parse.exit

if.end.i.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %class_dev.i = getelementptr inbounds %struct.mmc_host, ptr %40, i32 0, i32 1
  %43 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %class_dev.i, align 4
  br label %cis_tpl_parse.exit

cis_tpl_parse.exit:                               ; preds = %if.end.i.i, %do.end.i.cis_tpl_parse.exit_crit_edge
  %retval.0.i.i = phi ptr [ %44, %if.end.i.i ], [ %42, %do.end.i.cis_tpl_parse.exit_crit_edge ]
  %conv25.i = zext i8 %30 to i32
  %call26.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %retval.0.i.i, ptr noundef nonnull @.str, i32 noundef %conv25.i, i32 noundef %conv67) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -84, i32 %ret.046.i)
  %cond = icmp eq i32 %ret.046.i, -84
  br i1 %cond, label %cis_tpl_parse.exit.if.then73.thread_crit_edge, label %cis_tpl_parse.exit.if.else125_crit_edge

cis_tpl_parse.exit.if.else125_crit_edge:          ; preds = %cis_tpl_parse.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else125

cis_tpl_parse.exit.if.then73.thread_crit_edge:    ; preds = %cis_tpl_parse.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then73.thread

if.then73.thread:                                 ; preds = %cis_tpl_parse.exit.if.then73.thread_crit_edge, %if.end16.i.if.then73.thread_crit_edge, %if.then11.i.if.then73.thread_crit_edge
  %45 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %call9.i, align 128
  %46 = ptrtoint ptr %tpl_code to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %tpl_code, align 1
  %code263 = getelementptr inbounds %struct.sdio_func_tuple, ptr %call9.i, i32 0, i32 1
  %48 = ptrtoint ptr %code263 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %code263, align 4
  %49 = ptrtoint ptr %tpl_link to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %tpl_link, align 1
  %size264 = getelementptr inbounds %struct.sdio_func_tuple, ptr %call9.i, i32 0, i32 2
  %51 = ptrtoint ptr %size264 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %size264, align 1
  %52 = ptrtoint ptr %prev.1 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call9.i, ptr %prev.1, align 4
  br label %if.end126

if.then77:                                        ; preds = %if.end16.i.if.then77_crit_edge, %if.end65.if.then77_crit_edge
  %53 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %call9.i, align 128
  %54 = ptrtoint ptr %tpl_code to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %tpl_code, align 1
  %code = getelementptr inbounds %struct.sdio_func_tuple, ptr %call9.i, i32 0, i32 1
  %56 = ptrtoint ptr %code to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %code, align 4
  %57 = ptrtoint ptr %tpl_link to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %tpl_link, align 1
  %size = getelementptr inbounds %struct.sdio_func_tuple, ptr %call9.i, i32 0, i32 2
  %59 = ptrtoint ptr %size to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %size, align 1
  %60 = ptrtoint ptr %prev.1 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call9.i, ptr %prev.1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %61 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add18, %61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp78 = icmp slt i32 %sub, 0
  br i1 %cmp78, label %if.then77.cleanup129.thread_crit_edge, label %if.end81

if.then77.cleanup129.thread_crit_edge:            ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup129.thread

if.end81:                                         ; preds = %if.then77
  call void @__sanitizer_cov_trace_const_cmp1(i8 -112, i8 %55)
  %62 = icmp slt i8 %55, -112
  br i1 %62, label %do.body89, label %if.else105

do.body89:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdio_read_cis.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdio_read_cis, %land.lhs.true94)) #8
          to label %if.end126 [label %land.lhs.true94], !srcloc !45

land.lhs.true94:                                  ; preds = %do.body89
  %call95 = call i32 @___ratelimit(ptr noundef nonnull @sdio_read_cis._rs, ptr noundef nonnull @.str.3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %land.lhs.true94.if.end126_crit_edge, label %if.then97

land.lhs.true94.if.end126_crit_edge:              ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end126

if.then97:                                        ; preds = %land.lhs.true94
  %63 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %card, align 8
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %64, i32 0, i32 1, i32 3
  %65 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i196 = icmp eq ptr %66, null
  br i1 %tobool.not.i196, label %if.end.i197, label %if.then97.dev_name.exit_crit_edge

if.then97.dev_name.exit_crit_edge:                ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i197:                                      ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #10
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %64, i32 0, i32 1
  %67 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i197, %if.then97.dev_name.exit_crit_edge
  %retval.0.i198 = phi ptr [ %68, %if.end.i197 ], [ %66, %if.then97.dev_name.exit_crit_edge ]
  %69 = ptrtoint ptr %tpl_code to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %tpl_code, align 1
  %conv99 = zext i8 %70 to i32
  %71 = ptrtoint ptr %tpl_link to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %tpl_link, align 1
  %conv100 = zext i8 %72 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sdio_read_cis.descriptor, ptr noundef nonnull @.str.5, ptr noundef %retval.0.i198, i32 noundef %conv99, i32 noundef %conv100, ptr noundef %data66, i32 noundef %conv100) #8
  br label %if.end126

if.else105:                                       ; preds = %if.end81
  %call106 = call i32 @___ratelimit(ptr noundef nonnull @sdio_read_cis._rs.6, ptr noundef nonnull @.str.3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %if.else105.if.end126_crit_edge, label %do.end111

if.else105.if.end126_crit_edge:                   ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end126

do.end111:                                        ; preds = %if.else105
  %73 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %card, align 8
  %init_name.i199 = getelementptr inbounds %struct.mmc_host, ptr %74, i32 0, i32 1, i32 3
  %75 = ptrtoint ptr %init_name.i199 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %init_name.i199, align 8
  %tobool.not.i200 = icmp eq ptr %76, null
  br i1 %tobool.not.i200, label %if.end.i201, label %do.end111.dev_name.exit203_crit_edge

do.end111.dev_name.exit203_crit_edge:             ; preds = %do.end111
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit203

if.end.i201:                                      ; preds = %do.end111
  call void @__sanitizer_cov_trace_pc() #10
  %class_dev114 = getelementptr inbounds %struct.mmc_host, ptr %74, i32 0, i32 1
  %77 = ptrtoint ptr %class_dev114 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %class_dev114, align 4
  br label %dev_name.exit203

dev_name.exit203:                                 ; preds = %if.end.i201, %do.end111.dev_name.exit203_crit_edge
  %retval.0.i202 = phi ptr [ %78, %if.end.i201 ], [ %76, %do.end111.dev_name.exit203_crit_edge ]
  %79 = ptrtoint ptr %tpl_code to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %tpl_code, align 1
  %conv116 = zext i8 %80 to i32
  %81 = ptrtoint ptr %tpl_link to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %tpl_link, align 1
  %conv117 = zext i8 %82 to i32
  %call121 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %retval.0.i202, i32 noundef %conv116, i32 noundef %conv117, ptr noundef %data66, i32 noundef %conv117) #12
  br label %if.end126

if.else125:                                       ; preds = %cis_tpl_parse.exit.if.else125_crit_edge, %if.end16.i.if.else125_crit_edge
  %ret.1.i214 = phi i32 [ %ret.046.i, %cis_tpl_parse.exit.if.else125_crit_edge ], [ %call.i, %if.end16.i.if.else125_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i) #8
  br label %if.end126

if.end126:                                        ; preds = %if.else125, %dev_name.exit203, %if.else105.if.end126_crit_edge, %dev_name.exit, %land.lhs.true94.if.end126_crit_edge, %do.body89, %if.then73.thread
  %prev.2 = phi ptr [ %prev.1, %if.else125 ], [ %call9.i, %dev_name.exit ], [ %call9.i, %land.lhs.true94.if.end126_crit_edge ], [ %call9.i, %dev_name.exit203 ], [ %call9.i, %if.else105.if.end126_crit_edge ], [ %call9.i, %do.body89 ], [ %call9.i, %if.then73.thread ]
  %ret.2 = phi i32 [ %ret.1.i214, %if.else125 ], [ 0, %dev_name.exit ], [ 0, %land.lhs.true94.if.end126_crit_edge ], [ 0, %dev_name.exit203 ], [ 0, %if.else105.if.end126_crit_edge ], [ 0, %do.body89 ], [ 0, %if.then73.thread ]
  %83 = ptrtoint ptr %tpl_link to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %tpl_link, align 1
  %conv127 = zext i8 %84 to i32
  %add128 = add i32 %inc34, %conv127
  br label %do.cond134

cleanup129.thread:                                ; preds = %if.then77.cleanup129.thread_crit_edge, %if.then64, %if.end38.cleanup129.thread_crit_edge, %if.end33.cleanup129.thread_crit_edge, %if.end23.cleanup129.thread_crit_edge, %do.body.cleanup129.thread_crit_edge
  %prev.3.ph = phi ptr [ %prev.1, %if.then64 ], [ %prev.1, %do.body.cleanup129.thread_crit_edge ], [ %prev.1, %if.end23.cleanup129.thread_crit_edge ], [ %prev.1, %if.end33.cleanup129.thread_crit_edge ], [ %prev.1, %if.end38.cleanup129.thread_crit_edge ], [ %call9.i, %if.then77.cleanup129.thread_crit_edge ]
  %ret.3.ph = phi i32 [ %call56, %if.then64 ], [ %call20, %do.body.cleanup129.thread_crit_edge ], [ 0, %if.end23.cleanup129.thread_crit_edge ], [ %call35, %if.end33.cleanup129.thread_crit_edge ], [ 0, %if.end38.cleanup129.thread_crit_edge ], [ -2, %if.then77.cleanup129.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tpl_link) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tpl_code) #8
  br label %do.end138

cleanup129:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tpl_link) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tpl_code) #8
  br label %cleanup143

do.cond134:                                       ; preds = %if.end126, %if.end23.do.cond134_crit_edge
  %prev.3.ph224 = phi ptr [ %prev.2, %if.end126 ], [ %prev.1, %if.end23.do.cond134_crit_edge ]
  %ptr.3.ph = phi i32 [ %add128, %if.end126 ], [ %inc19, %if.end23.do.cond134_crit_edge ]
  %ret.3.ph225 = phi i32 [ %ret.2, %if.end126 ], [ 0, %if.end23.do.cond134_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tpl_link) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tpl_code) #8
  %tobool135.not = icmp eq i32 %ret.3.ph225, 0
  br i1 %tobool135.not, label %do.cond134.do.body_crit_edge, label %do.cond134.do.end138_crit_edge

do.cond134.do.end138_crit_edge:                   ; preds = %do.cond134
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end138

do.cond134.do.body_crit_edge:                     ; preds = %do.cond134
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end138:                                        ; preds = %do.cond134.do.end138_crit_edge, %cleanup129.thread
  %ret.3222 = phi i32 [ %ret.3.ph, %cleanup129.thread ], [ %ret.3.ph225, %do.cond134.do.end138_crit_edge ]
  %prev.3221 = phi ptr [ %prev.3.ph, %cleanup129.thread ], [ %prev.3.ph224, %do.cond134.do.end138_crit_edge ]
  br i1 %tobool.not, label %do.end138.cleanup143_crit_edge, label %if.then140

do.end138.cleanup143_crit_edge:                   ; preds = %do.end138
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup143

if.then140:                                       ; preds = %do.end138
  call void @__sanitizer_cov_trace_pc() #10
  %85 = ptrtoint ptr %tuples12 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %tuples12, align 4
  %87 = ptrtoint ptr %prev.3221 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %86, ptr %prev.3221, align 4
  br label %cleanup143

cleanup143:                                       ; preds = %if.then140, %do.end138.cleanup143_crit_edge, %cleanup129, %for.inc.2.cleanup143_crit_edge, %cleanup
  %retval.4 = phi i32 [ %call.lcssa, %cleanup ], [ -12, %cleanup129 ], [ -22, %for.inc.2.cleanup143_crit_edge ], [ %ret.3222, %if.then140 ], [ %ret.3222, %do.end138.cleanup143_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sdio_free_common_cis(ptr nocapture noundef %card) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tuples = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 37
  %0 = ptrtoint ptr %tuples to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuples, align 4
  %tobool.not5 = icmp eq ptr %1, null
  br i1 %tobool.not5, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %tuple.06 = phi ptr [ %3, %while.body.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %2 = ptrtoint ptr %tuple.06 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tuple.06, align 4
  tail call void @kfree(ptr noundef nonnull %tuple.06) #8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %4 = ptrtoint ptr %tuples to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %tuples, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sdio_read_func_cis(ptr noundef %func) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %func, align 8
  %call = tail call fastcc i32 @sdio_read_cis(ptr noundef %1, ptr noundef %func)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %func, align 8
  %dev = getelementptr inbounds %struct.mmc_card, ptr %3, i32 0, i32 1
  %call2 = tail call ptr @get_device(ptr noundef %dev) #8
  %vendor = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 5
  %4 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vendor, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp = icmp eq i16 %5, 0
  br i1 %cmp, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %func, align 8
  %cis = getelementptr inbounds %struct.mmc_card, ptr %7, i32 0, i32 30
  %8 = ptrtoint ptr %cis to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %cis, align 4
  %10 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %vendor, align 2
  %device = getelementptr inbounds %struct.mmc_card, ptr %7, i32 0, i32 30, i32 1
  %11 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %device, align 2
  %device10 = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 6
  %13 = ptrtoint ptr %device10 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %device10, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sdio_free_func_cis(ptr nocapture noundef %func) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tuples = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 16
  %0 = ptrtoint ptr %tuples to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuples, align 8
  %tobool.not10 = icmp eq ptr %1, null
  br i1 %tobool.not10, label %entry.while.end_crit_edge, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %tuple.011 = phi ptr [ %7, %while.body.land.rhs_crit_edge ], [ %1, %entry.land.rhs_crit_edge ]
  %2 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %func, align 8
  %tuples1 = getelementptr inbounds %struct.mmc_card, ptr %3, i32 0, i32 37
  %4 = ptrtoint ptr %tuples1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tuples1, align 4
  %cmp.not = icmp eq ptr %tuple.011, %5
  br i1 %cmp.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %6 = ptrtoint ptr %tuple.011 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tuple.011, align 4
  tail call void @kfree(ptr noundef nonnull %tuple.011) #8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge, %entry.while.end_crit_edge
  %8 = ptrtoint ptr %tuples to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %tuples, align 8
  %9 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %func, align 8
  %dev = getelementptr inbounds %struct.mmc_card, ptr %10, i32 0, i32 1
  tail call void @put_device(ptr noundef %dev) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_io_rw_direct(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cistpl_vers_1(ptr nocapture noundef writeonly %card, ptr noundef writeonly %func, ptr nocapture noundef readonly %buf, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %size)
  %cmp = icmp ult i32 %size, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %buf, align 1
  %arrayidx1 = getelementptr i8, ptr %buf, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  %add.ptr = getelementptr i8, ptr %buf, i32 2
  %sub = add i32 %size, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp293.not = icmp eq i32 %sub, 0
  br i1 %cmp293.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %nr_strings.095 = phi i32 [ %nr_strings.1, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %i.094 = phi i32 [ %inc14, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx3 = getelementptr i8, ptr %add.ptr, i32 %i.094
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx3, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.15)
  switch i8 %5, label %for.body.for.inc_crit_edge [
    i8 -1, label %for.body.for.end_crit_edge
    i8 0, label %if.then12
  ]

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then12:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %inc = add i32 %nr_strings.095, 1
  br label %for.inc

for.inc:                                          ; preds = %if.then12, %for.body.for.inc_crit_edge
  %nr_strings.1 = phi i32 [ %inc, %if.then12 ], [ %nr_strings.095, %for.body.for.inc_crit_edge ]
  %inc14 = add nuw i32 %i.094, 1
  %exitcond.not = icmp eq i32 %inc14, %sub
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  %i.0.lcssa = phi i32 [ %sub, %for.inc.for.end_crit_edge ], [ %i.094, %for.body.for.end_crit_edge ]
  %nr_strings.0.lcssa = phi i32 [ %nr_strings.1, %for.inc.for.end_crit_edge ], [ %nr_strings.095, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_strings.0.lcssa)
  %cmp15 = icmp eq i32 %nr_strings.0.lcssa, 0
  br i1 %cmp15, label %for.end.cleanup_crit_edge, label %if.end8.i.i

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8.i.i:                                      ; preds = %for.end
  %mul = shl i32 %nr_strings.0.lcssa, 2
  %add = add i32 %mul, %i.0.lcssa
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.end8.i.i.cleanup_crit_edge, label %for.body25.preheader

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body25.preheader:                             ; preds = %if.end8.i.i
  %add.ptr21 = getelementptr ptr, ptr %call9.i.i, i32 %nr_strings.0.lcssa
  br label %for.body25

for.body25:                                       ; preds = %for.body25.for.body25_crit_edge, %for.body25.preheader
  %string.0102 = phi ptr [ %add.ptr30, %for.body25.for.body25_crit_edge ], [ %add.ptr21, %for.body25.preheader ]
  %i.1101 = phi i32 [ %inc35, %for.body25.for.body25_crit_edge ], [ 0, %for.body25.preheader ]
  %buf.addr.0100 = phi ptr [ %add.ptr33, %for.body25.for.body25_crit_edge ], [ %add.ptr, %for.body25.preheader ]
  %arrayidx26 = getelementptr ptr, ptr %call9.i.i, i32 %i.1101
  %7 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %string.0102, ptr %arrayidx26, align 4
  %call27 = tail call ptr @strcpy(ptr noundef %string.0102, ptr noundef %buf.addr.0100) #13
  %call28 = tail call i32 @strlen(ptr noundef %string.0102) #13
  %add29 = add i32 %call28, 1
  %add.ptr30 = getelementptr i8, ptr %string.0102, i32 %add29
  %call31 = tail call i32 @strlen(ptr noundef %buf.addr.0100) #13
  %add32 = add i32 %call31, 1
  %add.ptr33 = getelementptr i8, ptr %buf.addr.0100, i32 %add32
  %inc35 = add nuw i32 %i.1101, 1
  %exitcond103.not = icmp eq i32 %inc35, %nr_strings.0.lcssa
  br i1 %exitcond103.not, label %for.end36, label %for.body25.for.body25_crit_edge

for.body25.for.body25_crit_edge:                  ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body25

for.end36:                                        ; preds = %for.body25
  %tobool37.not = icmp eq ptr %func, null
  br i1 %tobool37.not, label %if.else, label %if.then38

if.then38:                                        ; preds = %for.end36
  call void @__sanitizer_cov_trace_pc() #10
  %major_rev39 = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 12
  %8 = ptrtoint ptr %major_rev39 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %1, ptr %major_rev39, align 4
  %minor_rev40 = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 13
  %9 = ptrtoint ptr %minor_rev40 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %3, ptr %minor_rev40, align 1
  %num_info = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 14
  %10 = ptrtoint ptr %num_info to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %nr_strings.0.lcssa, ptr %num_info, align 8
  %info = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 15
  %11 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call9.i.i, ptr %info, align 4
  br label %cleanup

if.else:                                          ; preds = %for.end36
  call void @__sanitizer_cov_trace_pc() #10
  %major_rev41 = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 33
  %12 = ptrtoint ptr %major_rev41 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %1, ptr %major_rev41, align 8
  %minor_rev42 = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 34
  %13 = ptrtoint ptr %minor_rev42 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %3, ptr %minor_rev42, align 1
  %num_info43 = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 35
  %14 = ptrtoint ptr %num_info43 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %nr_strings.0.lcssa, ptr %num_info43, align 4
  %info44 = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 36
  %15 = ptrtoint ptr %info44 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call9.i.i, ptr %info44, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then38, %if.end8.i.i.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ], [ -12, %if.end8.i.i.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.then38 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cistpl_manfid(ptr nocapture noundef writeonly %card, ptr noundef writeonly %func, ptr nocapture noundef readonly %buf, i32 noundef %size) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %buf, align 1
  %conv = zext i8 %1 to i16
  %arrayidx1 = getelementptr i8, ptr %buf, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %3 to i16
  %shl = shl nuw i16 %conv2, 8
  %or = or i16 %shl, %conv
  %arrayidx3 = getelementptr i8, ptr %buf, i32 2
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %5 to i32
  %arrayidx5 = getelementptr i8, ptr %buf, i32 3
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %7 to i32
  %shl7 = shl nuw nsw i32 %conv6, 8
  %or8 = or i32 %shl7, %conv4
  %tobool.not = icmp eq ptr %func, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %vendor10 = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 5
  %8 = ptrtoint ptr %vendor10 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %or, ptr %vendor10, align 2
  %conv11 = trunc i32 %or8 to i16
  %device12 = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 6
  %9 = ptrtoint ptr %device12 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv11, ptr %device12, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %cis = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 30
  %10 = ptrtoint ptr %cis to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %or, ptr %cis, align 4
  %conv15 = trunc i32 %or8 to i16
  %device17 = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 30, i32 1
  %11 = ptrtoint ptr %device17 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv15, ptr %device17, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cistpl_funce(ptr noundef %card, ptr noundef %func, ptr noundef %buf, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp = icmp eq i32 %size, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %buf, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.16)
  switch i8 %1, label %if.end.return_crit_edge [
    i8 0, label %if.end.if.then7.critedge.i_crit_edge
    i8 1, label %if.then7.critedge.i.fold.split
    i8 4, label %if.then7.critedge.i.fold.split5
  ]

if.end.if.then7.critedge.i_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7.critedge.i

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then7.critedge.i.fold.split:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7.critedge.i

if.then7.critedge.i.fold.split5:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7.critedge.i

if.then7.critedge.i:                              ; preds = %if.then7.critedge.i.fold.split5, %if.then7.critedge.i.fold.split, %if.end.if.then7.critedge.i_crit_edge
  %tpl.addr.052.i.lcssa = phi ptr [ @cis_tpl_funce_list, %if.end.if.then7.critedge.i_crit_edge ], [ getelementptr inbounds ([3 x %struct.cis_tpl], ptr @cis_tpl_funce_list, i32 0, i32 1), %if.then7.critedge.i.fold.split ], [ getelementptr inbounds ([3 x %struct.cis_tpl], ptr @cis_tpl_funce_list, i32 0, i32 2), %if.then7.critedge.i.fold.split5 ]
  %min_size.i = getelementptr inbounds %struct.cis_tpl, ptr %tpl.addr.052.i.lcssa, i32 0, i32 1
  %3 = ptrtoint ptr %min_size.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %min_size.i, align 1
  %conv8.i = zext i8 %4 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv8.i, i32 %size)
  %cmp9.not.i = icmp ugt i32 %conv8.i, %size
  br i1 %cmp9.not.i, label %if.then7.critedge.i.do.end.i_crit_edge, label %if.then11.i

if.then7.critedge.i.do.end.i_crit_edge:           ; preds = %if.then7.critedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.then11.i:                                      ; preds = %if.then7.critedge.i
  %parse.i = getelementptr inbounds %struct.cis_tpl, ptr %tpl.addr.052.i.lcssa, i32 0, i32 2
  %5 = ptrtoint ptr %parse.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parse.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.then11.i.if.end29.fold.split.i_crit_edge, label %if.end16.i

if.then11.i.if.end29.fold.split.i_crit_edge:      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.fold.split.i

if.end16.i:                                       ; preds = %if.then11.i
  %call.i = tail call i32 %6(ptr noundef %card, ptr noundef %func, ptr noundef %buf, i32 noundef %size) #8
  %7 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %call.i, label %if.end16.i.do.end.i_crit_edge [
    i32 0, label %if.end16.i.return_crit_edge
    i32 -84, label %if.end16.i.if.end29.fold.split.i_crit_edge
    i32 -2, label %if.end29.fold.split44.i
  ]

if.end16.i.if.end29.fold.split.i_crit_edge:       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.fold.split.i

if.end16.i.return_crit_edge:                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end16.i.do.end.i_crit_edge:                    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.end16.i.do.end.i_crit_edge, %if.then7.critedge.i.do.end.i_crit_edge
  %ret.046.i = phi i32 [ %call.i, %if.end16.i.do.end.i_crit_edge ], [ -22, %if.then7.critedge.i.do.end.i_crit_edge ]
  %8 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card, align 8
  %init_name.i.i = getelementptr inbounds %struct.mmc_host, ptr %9, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.dev_name.exit.i_crit_edge

do.end.i.dev_name.exit.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %class_dev.i = getelementptr inbounds %struct.mmc_host, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %class_dev.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %do.end.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %13, %if.end.i.i ], [ %11, %do.end.i.dev_name.exit.i_crit_edge ]
  %conv25.i = zext i8 %1 to i32
  %call26.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %retval.0.i.i, ptr noundef nonnull @.str.10, i32 noundef %conv25.i, i32 noundef %size) #12
  br label %return

if.end29.fold.split.i:                            ; preds = %if.end16.i.if.end29.fold.split.i_crit_edge, %if.then11.i.if.end29.fold.split.i_crit_edge
  br label %return

if.end29.fold.split44.i:                          ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

return:                                           ; preds = %if.end29.fold.split44.i, %if.end29.fold.split.i, %dev_name.exit.i, %if.end16.i.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ %ret.046.i, %dev_name.exit.i ], [ %call.i, %if.end16.i.return_crit_edge ], [ -84, %if.end29.fold.split.i ], [ -2, %if.end29.fold.split44.i ], [ -2, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cistpl_funce_common(ptr nocapture noundef writeonly %card, ptr noundef readnone %func, ptr nocapture noundef readonly %buf, i32 noundef %size) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %func, null
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr i8, ptr %buf, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i16
  %arrayidx1 = getelementptr i8, ptr %buf, i32 2
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %3 to i16
  %shl = shl nuw i16 %conv2, 8
  %or = or i16 %shl, %conv
  %blksize = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 30, i32 2
  %4 = ptrtoint ptr %blksize to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %or, ptr %blksize, align 4
  %arrayidx4 = getelementptr i8, ptr %buf, i32 3
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %6 to i32
  %7 = lshr i32 %conv5, 3
  %and = and i32 %7, 15
  %arrayidx6 = getelementptr [16 x i8], ptr @speed_val, i32 0, i32 %and
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %9 to i32
  %and10 = and i32 %conv5, 7
  %arrayidx11 = getelementptr [8 x i32], ptr @speed_unit, i32 0, i32 %and10
  %10 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx11, align 4
  %mul = mul i32 %11, %conv7
  %max_dtr = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 30, i32 3
  %12 = ptrtoint ptr %max_dtr to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %mul, ptr %max_dtr, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cistpl_funce_func(ptr nocapture noundef readonly %card, ptr noundef %func, ptr nocapture noundef readonly %buf, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %func, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %func, align 8
  %cccr = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %cccr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cccr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %size)
  %cmp2 = icmp eq i32 %size, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp3 = icmp eq i32 %3, 1
  %or.cond = select i1 %cmp2, i1 %cmp3, i1 false
  br i1 %or.cond, label %do.end, label %if.else

do.end:                                           ; preds = %if.end
  %4 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card, align 8
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.if.end9.thread_crit_edge

do.end.if.end9.thread_crit_edge:                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.thread

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %class_dev, align 4
  br label %if.end9.thread

if.end9.thread:                                   ; preds = %if.end.i, %do.end.if.end9.thread_crit_edge
  %retval.0.i = phi ptr [ %9, %if.end.i ], [ %7, %do.end.if.end9.thread_crit_edge ]
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %retval.0.i) #12
  %arrayidx37 = getelementptr i8, ptr %buf, i32 12
  %10 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx37, align 1
  %conv38 = zext i8 %11 to i32
  %arrayidx1039 = getelementptr i8, ptr %buf, i32 13
  %12 = ptrtoint ptr %arrayidx1039 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx1039, align 1
  %conv1140 = zext i8 %13 to i32
  %shl41 = shl nuw nsw i32 %conv1140, 8
  %or42 = or i32 %shl41, %conv38
  %max_blksize43 = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 7
  %14 = ptrtoint ptr %max_blksize43 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or42, ptr %max_blksize43, align 8
  br label %if.else21

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  %cond = select i1 %cmp, i32 28, i32 42
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %size)
  %cmp6 = icmp ugt i32 %cond, %size
  br i1 %cmp6, label %if.else.cleanup_crit_edge, label %if.end9

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.else
  %arrayidx = getelementptr i8, ptr %buf, i32 12
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %16 to i32
  %arrayidx10 = getelementptr i8, ptr %buf, i32 13
  %17 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %18 to i32
  %shl = shl nuw nsw i32 %conv11, 8
  %or = or i32 %shl, %conv
  %max_blksize = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 7
  %19 = ptrtoint ptr %max_blksize to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or, ptr %max_blksize, align 8
  br i1 %cmp, label %if.end9.if.else21_crit_edge, label %if.then14

if.end9.if.else21_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else21

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx15 = getelementptr i8, ptr %buf, i32 28
  %20 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %21 to i32
  %arrayidx17 = getelementptr i8, ptr %buf, i32 29
  %22 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %23 to i32
  %shl19 = shl nuw nsw i32 %conv18, 8
  %or20 = or i32 %shl19, %conv16
  %mul = mul nuw nsw i32 %or20, 10
  br label %cleanup.sink.split

if.else21:                                        ; preds = %if.end9.if.else21_crit_edge, %if.end9.thread
  %call22 = tail call i32 @jiffies_to_msecs(i32 noundef 100) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else21, %if.then14
  %mul.sink = phi i32 [ %mul, %if.then14 ], [ %call22, %if.else21 ]
  %enable_timeout = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 9
  %24 = ptrtoint ptr %enable_timeout to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %mul.sink, ptr %enable_timeout, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !20, !22, !24, !26, !28, !30, !32, !33, !34}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mmc/core/sdio_cis.c", i32 318, i32 35}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/mmc/core/sdio_cis.c", i32 343, i32 6}
!4 = !{ptr @sdio_read_cis._rs, !3, !"_rs", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @sdio_read_cis.descriptor, !3, !"descriptor", i1 false, i1 false}
!10 = !{ptr @sdio_read_cis._rs.6, !11, !"_rs", i1 false, i1 false}
!11 = !{!"../drivers/mmc/core/sdio_cis.c", i32 348, i32 6}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @sdio_read_cis._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @sdio_read_cis._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/mmc/core/sdio_cis.c", i32 144, i32 4}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @cis_tpl_parse._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @cis_tpl_parse._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @cis_tpl_list, !21, !"cis_tpl_list", i1 false, i1 false}
!21 = !{!"../drivers/mmc/core/sdio_cis.c", i32 235, i32 29}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mmc/core/sdio_cis.c", i32 228, i32 35}
!24 = !{ptr @cis_tpl_funce_list, !25, !"cis_tpl_funce_list", i1 false, i1 false}
!25 = !{!"../drivers/mmc/core/sdio_cis.c", i32 216, i32 29}
!26 = !{ptr @speed_val, !27, !"speed_val", i1 false, i1 false}
!27 = !{!"../drivers/mmc/core/sdio_cis.c", i32 105, i32 28}
!28 = !{ptr @speed_unit, !29, !"speed_unit", i1 false, i1 false}
!29 = !{!"../drivers/mmc/core/sdio_cis.c", i32 107, i32 27}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mmc/core/sdio_cis.c", i32 190, i32 3}
!32 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @cistpl_funce_func._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @cistpl_funce_func._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{!"auto-init"}
!45 = !{i64 2148699321, i64 2148699326, i64 2148699339, i64 2148699383, i64 2148699417, i64 2148699438}
