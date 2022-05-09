; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/mmci_stm32_sdmmc.c_pt.bc'
source_filename = "../drivers/mmc/host/mmci_stm32_sdmmc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mmci_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.mmci_host = type { i32, ptr, ptr, ptr, %struct.mmc_command, ptr, ptr, ptr, i8, ptr, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, %struct.timer_list, i32, i32, %struct.sg_mapping_iter, i32, ptr, i8, ptr, i32 }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.sg_mapping_iter = type { ptr, ptr, i32, i32, %struct.sg_page_iter, i32, i32, i32 }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.list_head = type { ptr, ptr }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, %struct.fault_attr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, %struct.blk_crypto_profile, i8, [15 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.mmc_supply = type { ptr, ptr }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.blk_crypto_profile = type { %struct.blk_crypto_ll_ops, i32, [4 x i32], ptr, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, ptr, i32, ptr }
%struct.blk_crypto_ll_ops = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sdmmc_dlyb = type { ptr, i32, i32 }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
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
%struct.variant_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i8, i32, i32, i32, i8, i32, i32, i32, i8, i32, ptr }
%struct.sdmmc_idma = type { i32, ptr }
%struct.sdmmc_lli_desc = type { i32, i32, i32 }

@sdmmc_variant_ops = internal global { %struct.mmci_host_ops, [36 x i8] } { %struct.mmci_host_ops { ptr @sdmmc_idma_validate_data, ptr @sdmmc_idma_prep_data, ptr @sdmmc_idma_unprep_data, ptr @sdmmc_get_dctrl_cfg, ptr null, ptr @sdmmc_idma_setup, ptr null, ptr @sdmmc_idma_start, ptr @sdmmc_idma_finalize, ptr null, ptr @mmci_sdmmc_set_clkreg, ptr @mmci_sdmmc_set_pwrreg, ptr @sdmmc_busy_complete, ptr @sdmmc_pre_sig_volt_vswitch, ptr @sdmmc_post_sig_volt_switch }, [36 x i8] zeroinitializer }, align 32
@sdmmc_idma_validate_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 69, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"unaligned scatterlist: ofst:%x length:%d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sdmmc_idma_validate_data\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/mmc/host/mmci_stm32_sdmmc.c\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sdmmc_idma_validate_data._entry_ptr = internal global ptr @sdmmc_idma_validate_data._entry, section ".printk_index", align 4
@sdmmc_idma_validate_data._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 77, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"unaligned last scatterlist: ofst:%x length:%d\0A\00", [49 x i8] zeroinitializer }, align 32
@sdmmc_idma_validate_data._entry_ptr.7 = internal global ptr @sdmmc_idma_validate_data._entry.5, section ".printk_index", align 4
@_sdmmc_idma_prep_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 95, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dma_map_sg failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"_sdmmc_idma_prep_data\00", [42 x i8] zeroinitializer }, align 32
@_sdmmc_idma_prep_data._entry_ptr = internal global ptr @_sdmmc_idma_prep_data._entry, section ".printk_index", align 4
@sdmmc_idma_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 134, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to alloc IDMA descriptor\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sdmmc_idma_setup\00", [47 x i8] zeroinitializer }, align 32
@sdmmc_idma_setup._entry_ptr = internal global ptr @sdmmc_idma_setup._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@sdmmc_dlyb_lng_tuning._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 402, ptr @.str.14, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"delay line cfg timeout unit:%d cfgr:%d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sdmmc_dlyb_lng_tuning\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sdmmc_dlyb_lng_tuning._entry_ptr = internal global ptr @sdmmc_dlyb_lng_tuning._entry, section ".printk_index", align 4
@sdmmc_dlyb_phase_tuning._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 441, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"no tuning point found\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sdmmc_dlyb_phase_tuning\00", [40 x i8] zeroinitializer }, align 32
@sdmmc_dlyb_phase_tuning._entry_ptr = internal global ptr @sdmmc_dlyb_phase_tuning._entry, section ".printk_index", align 4
@sdmmc_dlyb_phase_tuning.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.16, ptr @.str.2, ptr @.str.18, i8 0, i8 112, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"armmmci\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unit:%d max_dly:%d phase:%d\0A\00", [35 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 9]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@___asan_gen_.20 = private unnamed_addr constant [18 x i8] c"sdmmc_variant_ops\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 508, i32 29 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 67, i32 4 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 75, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 95, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 134, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 400, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 441, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.90 = private constant [39 x i8] c"../drivers/mmc/host/mmci_stm32_sdmmc.c\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 450, i32 2 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @_sdmmc_idma_prep_data._entry, ptr @_sdmmc_idma_prep_data._entry_ptr, ptr @sdmmc_dlyb_lng_tuning._entry, ptr @sdmmc_dlyb_lng_tuning._entry_ptr, ptr @sdmmc_dlyb_phase_tuning._entry, ptr @sdmmc_dlyb_phase_tuning._entry_ptr, ptr @sdmmc_idma_setup._entry, ptr @sdmmc_idma_setup._entry_ptr, ptr @sdmmc_idma_validate_data._entry, ptr @sdmmc_idma_validate_data._entry.5, ptr @sdmmc_idma_validate_data._entry_ptr, ptr @sdmmc_idma_validate_data._entry_ptr.7, ptr @sdmmc_variant_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdmmc_variant_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdmmc_idma_validate_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdmmc_idma_validate_data._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_sdmmc_idma_prep_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdmmc_idma_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdmmc_dlyb_lng_tuning._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdmmc_dlyb_phase_tuning._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sdmmc_variant_init(ptr nocapture noundef %host) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mmc = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 6
  %0 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %of_node = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %ops = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 24
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @sdmmc_variant_ops, ptr %ops, align 4
  %base = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 1
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !48
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %pwr_reg = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 14
  %11 = ptrtoint ptr %pwr_reg to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %pwr_reg, align 4
  %12 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmc, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 128
  %call3 = tail call ptr @devm_of_iomap(ptr noundef %15, ptr noundef %5, i32 noundef 1, ptr noundef null) #5
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %16 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmc, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 128
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %19, i32 noundef 12, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call3, ptr %call.i, align 4
  %variant_priv = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 26
  %21 = ptrtoint ptr %variant_priv to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i, ptr %variant_priv, align 4
  %mmc_ops = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 23
  %22 = ptrtoint ptr %mmc_ops to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmc_ops, align 4
  %execute_tuning = getelementptr inbounds %struct.mmc_host_ops, ptr %23, i32 0, i32 12
  %24 = ptrtoint ptr %execute_tuning to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @sdmmc_execute_tuning, ptr %execute_tuning, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_of_iomap(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdmmc_execute_tuning(ptr nocapture noundef readonly %mmc, i32 noundef %opcode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %variant_priv = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 9, i32 1, i32 2
  %0 = ptrtoint ptr %variant_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %variant_priv, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %mmc.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 2
  br label %sdmmc_dlyb_set_cfgr.exit.i

sdmmc_dlyb_set_cfgr.exit.i:                       ; preds = %for.inc.i.sdmmc_dlyb_set_cfgr.exit.i_crit_edge, %if.end
  %i.097.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.inc.i.sdmmc_dlyb_set_cfgr.exit.i_crit_edge ]
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 50331648) #5, !srcloc !49
  %shl.i.i = shl i32 %i.097.i, 8
  %or.i.i = or i32 %shl.i.i, 12
  %6 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #5
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %add.ptr39.i.i = getelementptr i8, ptr %8, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39.i.i, i32 %6) #5, !srcloc !49
  %call.i = tail call i64 @ktime_get() #5
  %add.i.i = add i64 %call.i, 1000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 398) #5
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %add.ptr95.i = getelementptr i8, ptr %10, i32 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr95.i) #5, !srcloc !48
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %tobool.not96.i = icmp sgt i32 %12, -1
  br i1 %tobool.not96.i, label %sdmmc_dlyb_set_cfgr.exit.i.land.lhs.true.i_crit_edge, label %sdmmc_dlyb_set_cfgr.exit.i.do.end50.i_crit_edge

sdmmc_dlyb_set_cfgr.exit.i.do.end50.i_crit_edge:  ; preds = %sdmmc_dlyb_set_cfgr.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end50.i

sdmmc_dlyb_set_cfgr.exit.i.land.lhs.true.i_crit_edge: ; preds = %sdmmc_dlyb_set_cfgr.exit.i
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then25.i.land.lhs.true.i_crit_edge, %sdmmc_dlyb_set_cfgr.exit.i.land.lhs.true.i_crit_edge
  %call14.i = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call14.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call14.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %if.then25.i

if.then25.i:                                      ; preds = %land.lhs.true.i
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #5
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !48
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #5
  %tobool.not.i = icmp sgt i32 %16, -1
  br i1 %tobool.not.i, label %if.then25.i.land.lhs.true.i_crit_edge, label %if.then25.i.do.end50.i_crit_edge

if.then25.i.do.end50.i_crit_edge:                 ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end50.i

if.then25.i.land.lhs.true.i_crit_edge:            ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i

for.end.i:                                        ; preds = %land.lhs.true.i
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %add.ptr20.i = getelementptr i8, ptr %18, i32 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i) #5, !srcloc !48
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool29.not.inv.i = icmp slt i32 %20, 0
  br i1 %tobool29.not.inv.i, label %for.end.i.do.end50.i_crit_edge, label %do.end34.i

for.end.i.do.end50.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end50.i

do.end34.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmc.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 128
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %24, ptr noundef nonnull @.str.12, i32 noundef %i.097.i, i32 noundef %20) #8
  br label %for.inc.i

do.end50.i:                                       ; preds = %for.end.i.do.end50.i_crit_edge, %if.then25.i.do.end50.i_crit_edge, %sdmmc_dlyb_set_cfgr.exit.i.do.end50.i_crit_edge
  %cfgr.089.i = phi i32 [ %20, %for.end.i.do.end50.i_crit_edge ], [ %12, %sdmmc_dlyb_set_cfgr.exit.i.do.end50.i_crit_edge ], [ %16, %if.then25.i.do.end50.i_crit_edge ]
  %and52.i = lshr i32 %cfgr.089.i, 16
  %shr53.i = and i32 %and52.i, 4095
  %25 = add nsw i32 %shr53.i, -2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2047, i32 %25)
  %26 = icmp ult i32 %25, -2047
  br i1 %26, label %do.end50.i.for.inc.i_crit_edge, label %for.end59.i

do.end50.i.for.inc.i_crit_edge:                   ; preds = %do.end50.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end50.i.for.inc.i_crit_edge, %do.end34.i
  %inc.i = add nuw nsw i32 %i.097.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 128
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.sdmmc_dlyb_set_cfgr.exit.i_crit_edge

for.inc.i.sdmmc_dlyb_set_cfgr.exit.i_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sdmmc_dlyb_set_cfgr.exit.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.end59.i:                                      ; preds = %do.end50.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %i.097.i)
  %cmp60.i = icmp ugt i32 %i.097.i, 127
  br i1 %cmp60.i, label %for.end59.i.cleanup_crit_edge, label %if.end5

for.end59.i.cleanup_crit_edge:                    ; preds = %for.end59.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %for.end59.i
  call void @__sanitizer_cov_trace_pc() #7
  %unit.i = getelementptr inbounds %struct.sdmmc_dlyb, ptr %1, i32 0, i32 1
  %27 = ptrtoint ptr %unit.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %i.097.i, ptr %unit.i, align 4
  %28 = tail call i32 @llvm.ctlz.i32(i32 %shr53.i, i1 true) #5, !range !50
  %sub.i.i = xor i32 %28, 31
  %max.i = getelementptr inbounds %struct.sdmmc_dlyb, ptr %1, i32 0, i32 2
  %29 = ptrtoint ptr %max.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %sub.i.i, ptr %max.i, align 4
  %call6 = tail call fastcc i32 @sdmmc_dlyb_phase_tuning(ptr noundef %private.i, i32 noundef %opcode)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %for.end59.i.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end5 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.end59.i.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdmmc_idma_validate_data(ptr nocapture noundef readonly %host, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sg1 = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 12
  %sg_len = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 10
  %0 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sg_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp39.not = icmp eq i32 %1, 1
  br i1 %cmp39.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %sg1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sg1, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.041 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %sg.040 = phi ptr [ %call, %for.inc.for.body_crit_edge ], [ %3, %for.body.preheader ]
  %4 = ptrtoint ptr %sg1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sg1, align 4
  %offset = getelementptr inbounds %struct.scatterlist, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset, align 4
  %and = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp3 = icmp eq i32 %and, 0
  br i1 %cmp3, label %lor.lhs.false, label %for.body.do.end_crit_edge

for.body.do.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.lhs.false:                                    ; preds = %for.body
  %length = getelementptr inbounds %struct.scatterlist, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length, align 4
  %and5 = and i32 %9, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %cmp6 = icmp eq i32 %and5, 0
  br i1 %cmp6, label %for.inc, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %for.body.do.end_crit_edge
  %mmc = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 6
  %10 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmc, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 128
  %length10 = getelementptr inbounds %struct.scatterlist, ptr %5, i32 0, i32 2
  %14 = ptrtoint ptr %length10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str, i32 noundef %7, i32 noundef %15) #8
  br label %cleanup

for.inc:                                          ; preds = %lor.lhs.false
  %inc = add nuw i32 %i.041, 1
  %call = tail call ptr @sg_next(ptr noundef %sg.040) #5
  %16 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sg_len, align 4
  %sub = add i32 %17, -1
  %cmp = icmp ult i32 %inc, %sub
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %18 = ptrtoint ptr %sg1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sg1, align 4
  %offset12 = getelementptr inbounds %struct.scatterlist, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %offset12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %offset12, align 4
  %and13 = and i32 %21, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %cmp14 = icmp eq i32 %and13, 0
  br i1 %cmp14, label %for.end.cleanup_crit_edge, label %do.end18

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end18:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %mmc19 = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 6
  %22 = ptrtoint ptr %mmc19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmc19, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 128
  %length24 = getelementptr inbounds %struct.scatterlist, ptr %19, i32 0, i32 2
  %26 = ptrtoint ptr %length24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %length24, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.6, i32 noundef %21, i32 noundef %27) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end18, %for.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end18 ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdmmc_idma_prep_data(ptr nocapture noundef readonly %host, ptr nocapture noundef readonly %data, i1 noundef zeroext %next) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %next, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %host_cookie = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 13
  %0 = ptrtoint ptr %host_cookie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %host_cookie, align 4
  %next_cookie = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 39
  %2 = ptrtoint ptr %next_cookie to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %next_cookie, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %land.lhs.true.return_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %mmc.i = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 6
  %4 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmc.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 128
  %sg.i = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 12
  %8 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sg.i, align 4
  %sg_len.i = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 10
  %10 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sg_len.i, align 4
  %flags.i.i = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 6
  %12 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %13, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 2, i32 1
  %call1.i = tail call i32 @dma_map_sg_attrs(ptr noundef %7, ptr noundef %9, i32 noundef %11, i32 noundef %cond.i.i, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmc.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.8) #8
  br label %return

return:                                           ; preds = %do.end.i, %if.end.return_crit_edge, %land.lhs.true.return_crit_edge
  %retval.0 = phi i32 [ 0, %land.lhs.true.return_crit_edge ], [ -22, %do.end.i ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdmmc_idma_unprep_data(ptr nocapture noundef readonly %host, ptr nocapture noundef readonly %data, i32 noundef %err) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mmc = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 6
  %0 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %sg = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 12
  %4 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sg, align 4
  %sg_len = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 10
  %6 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sg_len, align 4
  %flags.i = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 6
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %3, ptr noundef %5, i32 noundef %7, i32 noundef %cond.i, i32 noundef 0) #5
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sdmmc_get_dctrl_cfg(ptr nocapture noundef readonly %host) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 5
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %blksz.i = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %blksz.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %blksz.i, align 4
  %4 = tail call i32 @llvm.cttz.i32(i32 %3, i1 true) #5, !range !50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %iszero.i = icmp eq i32 %3, 0
  %.op.i = shl nuw nsw i32 %4, 4
  %shl.i = select i1 %iszero.i, i32 -16, i32 %.op.i
  %mmc = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 6
  %5 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmc, align 4
  %card = getelementptr inbounds %struct.mmc_host, ptr %6, i32 0, i32 37
  %7 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %card, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %type = getelementptr inbounds %struct.mmc_card, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp = icmp eq i32 %10, 2
  br i1 %cmp, label %land.lhs.true3, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true3:                                   ; preds = %land.lhs.true
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %blocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp4 = icmp eq i32 %12, 1
  br i1 %cmp4, label %if.then, label %land.lhs.true3.if.else_crit_edge

land.lhs.true3.if.else_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #7
  %or = or i32 %shl.i, 4
  br label %if.end13

if.else:                                          ; preds = %land.lhs.true3.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %stop = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %stop, align 4
  %tobool6.not = icmp eq ptr %14, null
  br i1 %tobool6.not, label %if.else.if.end13_crit_edge, label %land.lhs.true7

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

land.lhs.true7:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %mrq = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 2
  %15 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mrq, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %tobool8.not = icmp eq ptr %18, null
  %or10 = or i32 %shl.i, 12
  %spec.select = select i1 %tobool8.not, i32 %or10, i32 %shl.i
  br label %if.end13

if.end13:                                         ; preds = %land.lhs.true7, %if.else.if.end13_crit_edge, %if.then
  %datactrl.0 = phi i32 [ %or, %if.then ], [ %shl.i, %if.else.if.end13_crit_edge ], [ %spec.select, %land.lhs.true7 ]
  ret i32 %datactrl.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdmmc_idma_setup(ptr nocapture noundef %host) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mmc = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 6
  %0 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 8, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %dma_priv = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 38
  %4 = ptrtoint ptr %dma_priv to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %dma_priv, align 4
  %variant = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 25
  %5 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %variant, align 4
  %dma_lli = getelementptr inbounds %struct.variant_data, ptr %6, i32 0, i32 27
  %7 = ptrtoint ptr %dma_lli to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %dma_lli, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool1.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %call.i37 = tail call ptr @dmam_alloc_attrs(ptr noundef %3, i32 noundef 4096, ptr noundef nonnull %call.i, i32 noundef 3264, i32 noundef 0) #5
  %sg_cpu = getelementptr inbounds %struct.sdmmc_idma, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %sg_cpu to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i37, ptr %sg_cpu, align 4
  %tobool5.not = icmp eq ptr %call.i37, null
  br i1 %tobool5.not, label %do.end, label %if.end7

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.10) #8
  br label %cleanup

if.end7:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmc, align 4
  %max_segs = getelementptr inbounds %struct.mmc_host, ptr %10, i32 0, i32 21
  %11 = ptrtoint ptr %max_segs to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 341, ptr %max_segs, align 4
  %12 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %variant, align 4
  %stm32_idmabsize_mask = getelementptr inbounds %struct.variant_data, ptr %13, i32 0, i32 28
  %14 = load ptr, ptr %mmc, align 4
  br label %if.end16

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmc, align 4
  %max_segs12 = getelementptr inbounds %struct.mmc_host, ptr %16, i32 0, i32 21
  %17 = ptrtoint ptr %max_segs12 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %max_segs12, align 4
  %18 = load ptr, ptr %mmc, align 4
  %max_req_size = getelementptr inbounds %struct.mmc_host, ptr %18, i32 0, i32 23
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.end7
  %.sink38 = phi ptr [ %18, %if.else ], [ %14, %if.end7 ]
  %.sink.in = phi ptr [ %max_req_size, %if.else ], [ %stm32_idmabsize_mask, %if.end7 ]
  %19 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %19)
  %.sink = load i32, ptr %.sink.in, align 4
  %max_seg_size15 = getelementptr inbounds %struct.mmc_host, ptr %.sink38, i32 0, i32 20
  %20 = ptrtoint ptr %max_seg_size15 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %.sink, ptr %max_seg_size15, align 16
  %dma_parms.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 22
  %21 = ptrtoint ptr %dma_parms.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dma_parms.i, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.end16.cleanup_crit_edge, label %if.then.i

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmc, align 4
  %max_seg_size18 = getelementptr inbounds %struct.mmc_host, ptr %24, i32 0, i32 20
  %25 = ptrtoint ptr %max_seg_size18 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %max_seg_size18, align 16
  %27 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %22, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end16.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then.i ], [ -5, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdmmc_idma_start(ptr nocapture noundef readonly %host, ptr nocapture noundef readnone %datactrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_priv = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 38
  %0 = ptrtoint ptr %dma_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_priv, align 4
  %sg_cpu = getelementptr inbounds %struct.sdmmc_idma, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sg_cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sg_cpu, align 4
  %data1 = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 5
  %4 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data1, align 4
  %variant = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 25
  %6 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %variant, align 4
  %dma_lli = getelementptr inbounds %struct.variant_data, ptr %7, i32 0, i32 27
  %8 = ptrtoint ptr %dma_lli to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %dma_lli, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %sg_len = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 10
  %9 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sg_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp = icmp eq i32 %10, 1
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %sg2 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 12
  %11 = ptrtoint ptr %sg2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sg2, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma_address, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %base = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 1
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %17, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %15) #5, !srcloc !49
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 4
  %add.ptr4 = getelementptr i8, ptr %19, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 16777216) #5, !srcloc !49
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %20 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sg_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp765.not = icmp eq i32 %21, 0
  br i1 %cmp765.not, label %if.end.for.end_crit_edge, label %for.body.preheader

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.preheader:                               ; preds = %if.end
  %sg5 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 12
  %22 = ptrtoint ptr %sg5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sg5, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.067 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %sg.066 = phi ptr [ %call, %for.body.for.body_crit_edge ], [ %23, %for.body.preheader ]
  %add = add nuw i32 %i.067, 1
  %mul = mul i32 %add, 12
  %arrayidx = getelementptr %struct.sdmmc_lli_desc, ptr %3, i32 %i.067
  %or = or i32 %mul, -536870912
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or, ptr %arrayidx, align 4
  %dma_address10 = getelementptr inbounds %struct.scatterlist, ptr %sg.066, i32 0, i32 3
  %25 = ptrtoint ptr %dma_address10 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dma_address10, align 4
  %idmabase = getelementptr %struct.sdmmc_lli_desc, ptr %3, i32 %i.067, i32 1
  %27 = ptrtoint ptr %idmabase to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %idmabase, align 4
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.066, i32 0, i32 4
  %28 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dma_length, align 4
  %idmasize = getelementptr %struct.sdmmc_lli_desc, ptr %3, i32 %i.067, i32 2
  %30 = ptrtoint ptr %idmasize to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %idmasize, align 4
  %call = tail call ptr @sg_next(ptr noundef %sg.066) #5
  %31 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sg_len, align 4
  %cmp7 = icmp ult i32 %add, %32
  br i1 %cmp7, label %for.body.for.body_crit_edge, label %for.end.loopexit

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %phi.bo = add i32 %32, -1
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end.for.end_crit_edge
  %.lcssa = phi i32 [ -1, %if.end.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  %arrayidx14 = getelementptr %struct.sdmmc_lli_desc, ptr %3, i32 %.lcssa
  %33 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx14, align 4
  %and = and i32 %34, 2147483647
  store i32 %and, ptr %arrayidx14, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !51
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %1, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %base16 = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 1
  %38 = ptrtoint ptr %base16 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base16, align 4
  %add.ptr17 = getelementptr i8, ptr %39, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %37) #5, !srcloc !49
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %3, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  %43 = ptrtoint ptr %base16 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base16, align 4
  %add.ptr21 = getelementptr i8, ptr %44, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %42) #5, !srcloc !49
  %idmabase23 = getelementptr inbounds %struct.sdmmc_lli_desc, ptr %3, i32 0, i32 1
  %45 = ptrtoint ptr %idmabase23 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %idmabase23, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  %48 = ptrtoint ptr %base16 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base16, align 4
  %add.ptr25 = getelementptr i8, ptr %49, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %47) #5, !srcloc !49
  %idmasize27 = getelementptr inbounds %struct.sdmmc_lli_desc, ptr %3, i32 0, i32 2
  %50 = ptrtoint ptr %idmasize27 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %idmasize27, align 4
  %52 = tail call i32 @llvm.bswap.i32(i32 %51)
  %53 = ptrtoint ptr %base16 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base16, align 4
  %add.ptr29 = getelementptr i8, ptr %54, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 %52) #5, !srcloc !49
  %55 = ptrtoint ptr %base16 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base16, align 4
  %add.ptr31 = getelementptr i8, ptr %56, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 50331648) #5, !srcloc !49
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdmmc_idma_finalize(ptr nocapture noundef readonly %host, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #5, !srcloc !49
  %host_cookie = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 13
  %2 = ptrtoint ptr %host_cookie to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %host_cookie, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %mmc.i = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 6
  %4 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmc.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 128
  %sg.i = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 12
  %8 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sg.i, align 4
  %sg_len.i = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 10
  %10 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sg_len.i, align 4
  %flags.i.i = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 6
  %12 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %13, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %7, ptr noundef %9, i32 noundef %11, i32 noundef %cond.i.i, i32 noundef 0) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmci_sdmmc_set_clkreg(ptr noundef %host, i32 noundef %desired) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mmc = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 6
  %0 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc, align 4
  %timing = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 28, i32 7
  %2 = ptrtoint ptr %timing to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %timing, align 4
  %.off = add i8 %3, -7
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  %spec.select123 = select i1 %switch, i32 262144, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %desired)
  %tobool.not = icmp eq i32 %desired, 0
  %mclk26 = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 11
  %4 = ptrtoint ptr %mclk26 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mclk26, align 4
  br i1 %tobool.not, label %entry.if.end30.sink.split_crit_edge, label %if.then8

entry.if.end30.sink.split_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30.sink.split

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %desired)
  %cmp9.not = icmp ugt i32 %5, %desired
  %brmerge = or i1 %switch, %cmp9.not
  br i1 %brmerge, label %if.else, label %if.then8.if.end30_crit_edge

if.then8.if.end30_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.else:                                          ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  %mul = shl i32 %desired, 1
  %add = add i32 %mul, -1
  %sub = add i32 %add, %5
  %div = udiv i32 %sub, %mul
  %6 = tail call i32 @llvm.umin.i32(i32 %div, i32 1023)
  %mul21 = shl nuw nsw i32 %6, 1
  br label %if.end30.sink.split

if.end30.sink.split:                              ; preds = %if.else, %entry.if.end30.sink.split_crit_edge
  %mul21.sink = phi i32 [ %mul21, %if.else ], [ 2046, %entry.if.end30.sink.split_crit_edge ]
  %clk.0.ph = phi i32 [ %6, %if.else ], [ 1023, %entry.if.end30.sink.split_crit_edge ]
  %div22 = udiv i32 %5, %mul21.sink
  br label %if.end30

if.end30:                                         ; preds = %if.end30.sink.split, %if.then8.if.end30_crit_edge
  %.sink124 = phi i32 [ %5, %if.then8.if.end30_crit_edge ], [ %div22, %if.end30.sink.split ]
  %clk.0 = phi i32 [ 0, %if.then8.if.end30_crit_edge ], [ %clk.0.ph, %if.end30.sink.split ]
  %cclk = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 13
  %7 = ptrtoint ptr %cclk to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %.sink124, ptr %cclk, align 4
  %power_mode = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 28, i32 5
  %8 = ptrtoint ptr %power_mode to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %power_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %cmp34 = icmp eq i8 %9, 2
  br i1 %cmp34, label %if.then36, label %if.end30.if.end42_crit_edge

if.end30.if.end42_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

if.then36:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  %cclk37 = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 13
  %10 = ptrtoint ptr %cclk37 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cclk37, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then36, %if.end30.if.end42_crit_edge
  %.sink = phi i32 [ %11, %if.then36 ], [ 0, %if.end30.if.end42_crit_edge ]
  %12 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 58
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.sink, ptr %12, align 8
  %14 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmc, align 4
  %bus_width = getelementptr inbounds %struct.mmc_host, ptr %15, i32 0, i32 28, i32 6
  %16 = ptrtoint ptr %bus_width to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bus_width, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %17)
  %cmp46 = icmp eq i8 %17, 2
  %or = or i32 %clk.0, 16384
  %spec.select = select i1 %cmp46, i32 %or, i32 %clk.0
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %17)
  %cmp54 = icmp eq i8 %17, 3
  %or57 = or i32 %spec.select, 32768
  %clk.2 = select i1 %cmp54, i32 %or57, i32 %spec.select
  %clk_reg_add = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 17
  %18 = ptrtoint ptr %clk_reg_add to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %clk_reg_add, align 4
  %or59 = or i32 %19, %spec.select123
  %or60 = or i32 %or59, %clk.2
  %or61 = or i32 %or60, 131072
  %timing64 = getelementptr inbounds %struct.mmc_host, ptr %15, i32 0, i32 28, i32 7
  %20 = ptrtoint ptr %timing64 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %timing64, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %21)
  %cmp66 = icmp ugt i8 %21, 4
  br i1 %cmp66, label %if.then68, label %if.end42.if.end86_crit_edge

if.end42.if.end86_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end86

if.then68:                                        ; preds = %if.end42
  %or69 = or i32 %or60, 655360
  %22 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i8 %21, label %if.then68.if.end86_crit_edge [
    i8 6, label %if.then68.if.then83_crit_edge
    i8 9, label %if.then68.if.then83_crit_edge125
  ]

if.then68.if.then83_crit_edge125:                 ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then83

if.then68.if.then83_crit_edge:                    ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then83

if.then68.if.end86_crit_edge:                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end86

if.then83:                                        ; preds = %if.then68.if.then83_crit_edge, %if.then68.if.then83_crit_edge125
  %and = and i32 %or69, -3145729
  %or84 = or i32 %and, 2097152
  br label %if.end86

if.end86:                                         ; preds = %if.then83, %if.then68.if.end86_crit_edge, %if.end42.if.end86_crit_edge
  %clk.3 = phi i32 [ %or84, %if.then83 ], [ %or61, %if.end42.if.end86_crit_edge ], [ %or69, %if.then68.if.end86_crit_edge ]
  tail call void @mmci_write_clkreg(ptr noundef %host, i32 noundef %clk.3) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmci_sdmmc_set_pwrreg(ptr noundef %host, i32 noundef %pwr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mmc = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 6
  %0 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc, align 4
  %ios.sroa.4.0.ios1.sroa_idx = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 28, i32 5
  %2 = ptrtoint ptr %ios.sroa.4.0.ios1.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %2)
  %ios.sroa.4.0.copyload15 = load i8, ptr %ios.sroa.4.0.ios1.sroa_idx, align 2
  %variant_priv = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 26
  %3 = ptrtoint ptr %variant_priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %variant_priv, align 4
  %pwr_reg_add = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 15
  %5 = ptrtoint ptr %pwr_reg_add to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pwr_reg_add, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %entry.sdmmc_dlyb_input_ck.exit_crit_edge, label %lor.lhs.false.i

entry.sdmmc_dlyb_input_ck.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sdmmc_dlyb_input_ck.exit

lor.lhs.false.i:                                  ; preds = %entry
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %tobool1.not.i = icmp eq ptr %8, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.sdmmc_dlyb_input_ck.exit_crit_edge, label %if.end.i

lor.lhs.false.i.sdmmc_dlyb_input_ck.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sdmmc_dlyb_input_ck.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %8, i32 0) #5, !srcloc !49
  br label %sdmmc_dlyb_input_ck.exit

sdmmc_dlyb_input_ck.exit:                         ; preds = %if.end.i, %lor.lhs.false.i.sdmmc_dlyb_input_ck.exit_crit_edge, %entry.sdmmc_dlyb_input_ck.exit_crit_edge
  %9 = zext i8 %ios.sroa.4.0.copyload15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.19)
  switch i8 %ios.sroa.4.0.copyload15, label %sdmmc_dlyb_input_ck.exit.if.end14_crit_edge [
    i8 0, label %if.then
    i8 2, label %do.body
  ]

sdmmc_dlyb_input_ck.exit.if.end14_crit_edge:      ; preds = %sdmmc_dlyb_input_ck.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.then:                                          ; preds = %sdmmc_dlyb_input_ck.exit
  call void @__sanitizer_cov_trace_pc() #7
  %rst = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 9
  %10 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rst, align 4
  %call = tail call i32 @reset_control_assert(ptr noundef %11) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 429496) #5
  %13 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rst, align 4
  %call4 = tail call i32 @reset_control_deassert(ptr noundef %14) #5
  %or = or i32 %6, 2
  br label %if.end14.sink.split

do.body:                                          ; preds = %sdmmc_dlyb_input_ck.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !52
  tail call void @arm_heavy_mb() #5
  %variant = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 25
  %15 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %variant, align 4
  %start_err = getelementptr inbounds %struct.variant_data, ptr %16, i32 0, i32 25
  %17 = ptrtoint ptr %start_err to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %start_err, align 4
  %or10 = or i32 %18, 255
  %19 = tail call i32 @llvm.bswap.i32(i32 %or10)
  %base = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 1
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %21, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %19) #5, !srcloc !49
  %pwr_reg = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 14
  %22 = ptrtoint ptr %pwr_reg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pwr_reg, align 4
  %and = and i32 %23, 12
  %or11 = or i32 %and, %6
  tail call void @mmci_write_pwrreg(ptr noundef %host, i32 noundef %or11) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748000) #5
  %or13 = or i32 %or11, 3
  br label %if.end14.sink.split

if.end14.sink.split:                              ; preds = %do.body, %if.then
  %or13.sink = phi i32 [ %or13, %do.body ], [ %or, %if.then ]
  tail call void @mmci_write_pwrreg(ptr noundef %host, i32 noundef %or13.sink) #5
  br label %if.end14

if.end14:                                         ; preds = %if.end14.sink.split, %sdmmc_dlyb_input_ck.exit.if.end14_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @sdmmc_busy_complete(ptr nocapture noundef %host, i32 noundef %status, i32 noundef %err_msk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %base1 = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base1, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 60
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !48
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %add.ptr3 = getelementptr i8, ptr %1, i32 52
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #5, !srcloc !48
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %and6 = and i32 %5, 1048576
  %and7 = and i32 %err_msk, %status
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool.not = icmp ne i32 %and7, 0
  %and = and i32 %5, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp ne i32 %and, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool8.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool9.not = icmp eq i32 %and6, 0
  %or.cond48 = select i1 %or.cond, i1 true, i1 %tobool9.not
  %busy_status18 = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 19
  %6 = ptrtoint ptr %busy_status18 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %busy_status18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool19.not = icmp eq i32 %7, 0
  br i1 %or.cond48, label %complete, label %if.then10

if.then10:                                        ; preds = %entry
  br i1 %tobool19.not, label %if.then12, label %if.then10.cleanup_crit_edge

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then12:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  %variant = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 25
  %8 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %variant, align 4
  %busy_detect_mask = getelementptr inbounds %struct.variant_data, ptr %9, i32 0, i32 22
  %10 = ptrtoint ptr %busy_detect_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %busy_detect_mask, align 4
  %or = or i32 %11, %3
  %12 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %12) #5, !srcloc !49
  %and14 = and i32 %status, 192
  %13 = ptrtoint ptr %busy_status18 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and14, ptr %busy_status18, align 4
  br label %cleanup

complete:                                         ; preds = %entry
  br i1 %tobool19.not, label %complete.if.end26_crit_edge, label %if.then20

complete.if.end26_crit_edge:                      ; preds = %complete
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.then20:                                        ; preds = %complete
  call void @__sanitizer_cov_trace_pc() #7
  %variant21 = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 25
  %14 = ptrtoint ptr %variant21 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %variant21, align 4
  %busy_detect_mask22 = getelementptr inbounds %struct.variant_data, ptr %15, i32 0, i32 22
  %16 = ptrtoint ptr %busy_detect_mask22 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %busy_detect_mask22, align 4
  %neg = xor i32 %17, -1
  %and23 = and i32 %3, %neg
  %18 = tail call i32 @llvm.bswap.i32(i32 %and23)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %18) #5, !srcloc !49
  %19 = ptrtoint ptr %busy_status18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %busy_status18, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then20, %complete.if.end26_crit_edge
  %variant27 = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 25
  %20 = ptrtoint ptr %variant27 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %variant27, align 4
  %busy_detect_mask28 = getelementptr inbounds %struct.variant_data, ptr %21, i32 0, i32 22
  %22 = ptrtoint ptr %busy_detect_mask28 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %busy_detect_mask28, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %add.ptr29 = getelementptr i8, ptr %1, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 %24) #5, !srcloc !49
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then12, %if.then10.cleanup_crit_edge
  ret i1 %or.cond48
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdmmc_pre_sig_volt_vswitch(ptr noundef %host) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 2) #5, !srcloc !49
  %pwr_reg = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 14
  %2 = ptrtoint ptr %pwr_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pwr_reg, align 4
  %or = or i32 %3, 8
  tail call void @mmci_write_pwrreg(ptr noundef %host, i32 noundef %or) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdmmc_post_sig_volt_switch(ptr noundef %host, ptr nocapture noundef readonly %ios) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 10
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %signal_voltage = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 8
  %0 = ptrtoint ptr %signal_voltage to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %signal_voltage, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp6 = icmp eq i8 %1, 1
  br i1 %cmp6, label %land.lhs.true, label %entry.if.end67_crit_edge

entry.if.end67_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67

land.lhs.true:                                    ; preds = %entry
  %pwr_reg = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 14
  %2 = ptrtoint ptr %pwr_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pwr_reg, align 4
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true.if.end67_crit_edge, label %if.then

land.lhs.true.if.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67

if.then:                                          ; preds = %land.lhs.true
  %or = or i32 %3, 4
  tail call void @mmci_write_pwrreg(ptr noundef %host, i32 noundef %or) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #5
  %call10 = tail call i64 @ktime_get() #5
  %add.i = add i64 %call10, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 495) #5
  %base = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 1
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr90 = getelementptr i8, ptr %5, i32 52
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr90) #5, !srcloc !48
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %and2691 = and i32 %7, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2691)
  %tobool27.not92 = icmp eq i32 %and2691, 0
  br i1 %tobool27.not92, label %if.then.land.lhs.true31_crit_edge, label %if.then.for.end_crit_edge

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.then.land.lhs.true31_crit_edge:                ; preds = %if.then
  br label %land.lhs.true31

land.lhs.true31:                                  ; preds = %if.then44.land.lhs.true31_crit_edge, %if.then.land.lhs.true31_crit_edge
  %call32 = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call32, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call32, %add.i
  br i1 %cmp3.i, label %if.then36, label %if.then44

if.then36:                                        ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr39 = getelementptr i8, ptr %9, i32 52
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39) #5, !srcloc !48
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  br label %for.end

if.then44:                                        ; preds = %land.lhs.true31
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #5
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 52
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !48
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %and26 = and i32 %15, 33554432
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.then44.land.lhs.true31_crit_edge, label %if.then44.for.end_crit_edge

if.then44.for.end_crit_edge:                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.then44.land.lhs.true31_crit_edge:              ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true31

for.end:                                          ; preds = %if.then44.for.end_crit_edge, %if.then36, %if.then.for.end_crit_edge
  %status.0 = phi i32 [ %11, %if.then36 ], [ %7, %if.then.for.end_crit_edge ], [ %15, %if.then44.for.end_crit_edge ]
  %and47 = and i32 %status.0, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  %cond = select i1 %tobool48.not, i32 -110, i32 0
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %add.ptr50 = getelementptr i8, ptr %17, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50, i32 6) #5, !srcloc !49
  %call60 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %18 = ptrtoint ptr %pwr_reg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pwr_reg, align 4
  %and66 = and i32 %19, -13
  tail call void @mmci_write_pwrreg(ptr noundef %host, i32 noundef %and66) #5
  br label %if.end67

if.end67:                                         ; preds = %for.end, %land.lhs.true.if.end67_crit_edge, %entry.if.end67_crit_edge
  %ret.0 = phi i32 [ %cond, %for.end ], [ 0, %land.lhs.true.if.end67_crit_edge ], [ 0, %entry.if.end67_crit_edge ]
  %flags.0 = phi i32 [ %call60, %for.end ], [ %call2, %land.lhs.true.if.end67_crit_edge ], [ %call2, %entry.if.end67_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.0) #5
  ret i32 %ret.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmci_write_clkreg(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmci_write_pwrreg(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sdmmc_dlyb_phase_tuning(ptr nocapture noundef readonly %host, i32 noundef %opcode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %variant_priv = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 26
  %0 = ptrtoint ptr %variant_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %variant_priv, align 4
  %max = getelementptr inbounds %struct.sdmmc_dlyb, ptr %1, i32 0, i32 2
  %unit = getelementptr inbounds %struct.sdmmc_dlyb, ptr %1, i32 0, i32 1
  %mmc = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %phase.068 = phi i32 [ 0, %entry ], [ %inc4, %for.body.for.body_crit_edge ]
  %end_of_len.067 = phi i32 [ 0, %entry ], [ %end_of_len.1, %for.body.for.body_crit_edge ]
  %max_len.066 = phi i32 [ 0, %entry ], [ %max_len.1, %for.body.for.body_crit_edge ]
  %cur_len.065 = phi i32 [ 0, %entry ], [ %cur_len.1, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %unit, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 50331648) #5, !srcloc !49
  %shl.i = shl i32 %3, 8
  %and13.i = and i32 %shl.i, 32512
  %and37.i = and i32 %phase.068, 15
  %or.i = or i32 %and13.i, %and37.i
  %6 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %add.ptr39.i = getelementptr i8, ptr %8, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39.i, i32 %6) #5, !srcloc !49
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 16777216) #5, !srcloc !49
  %11 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmc, align 4
  %call = tail call i32 @mmc_send_tuning(ptr noundef %12, i32 noundef %opcode, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %inc = add i32 %cur_len.065, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %max_len.066)
  %cmp1 = icmp sgt i32 %inc, %max_len.066
  %13 = tail call i32 @llvm.smax.i32(i32 %inc, i32 %max_len.066)
  %cur_len.1 = select i1 %tobool.not, i32 %inc, i32 0
  %max_len.1 = select i1 %tobool.not, i32 %13, i32 %max_len.066
  %14 = select i1 %tobool.not, i1 %cmp1, i1 false
  %end_of_len.1 = select i1 %14, i32 %phase.068, i32 %end_of_len.067
  %inc4 = add i32 %phase.068, 1
  %15 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max, align 4
  %cmp.not = icmp ugt i32 %inc4, %16
  br i1 %cmp.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_len.1)
  %tobool5.not = icmp eq i32 %max_len.1, 0
  br i1 %tobool5.not, label %do.end, label %if.end8

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmc, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.15) #8
  br label %cleanup

if.end8:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 0) #5, !srcloc !49
  %div.neg = sdiv i32 %max_len.1, -2
  %sub = add i32 %div.neg, %end_of_len.1
  %23 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %unit, align 4
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 50331648) #5, !srcloc !49
  %shl.i52 = shl i32 %24, 8
  %and13.i53 = and i32 %shl.i52, 32512
  %and37.i54 = and i32 %sub, 15
  %or.i55 = or i32 %and13.i53, %and37.i54
  %27 = tail call i32 @llvm.bswap.i32(i32 %or.i55) #5
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %add.ptr39.i56 = getelementptr i8, ptr %29, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39.i56, i32 %27) #5, !srcloc !49
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 16777216) #5, !srcloc !49
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdmmc_dlyb_phase_tuning.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdmmc_dlyb_phase_tuning, %if.then15)) #5
          to label %cleanup [label %if.then15], !srcloc !53

if.then15:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mmc, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 128
  %36 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %unit, align 4
  %38 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %max, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdmmc_dlyb_phase_tuning.__UNIQUE_ID_ddebug284, ptr noundef %35, ptr noundef nonnull @.str.18, i32 noundef %37, i32 noundef %39, i32 noundef %sub) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end8, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then15 ], [ 0, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_send_tuning(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !19, !21, !22, !23, !24, !26, !27, !28, !29, !30, !32, !33, !34, !35, !37, !38}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @sdmmc_variant_ops, !1, !"sdmmc_variant_ops", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/mmci_stm32_sdmmc.c", i32 508, i32 29}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/mmc/host/mmci_stm32_sdmmc.c", i32 67, i32 4}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @sdmmc_idma_validate_data._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @sdmmc_idma_validate_data._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mmc/host/mmci_stm32_sdmmc.c", i32 75, i32 3}
!12 = !{ptr @sdmmc_idma_validate_data._entry.5, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @sdmmc_idma_validate_data._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mmc/host/mmci_stm32_sdmmc.c", i32 95, i32 3}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @_sdmmc_idma_prep_data._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @_sdmmc_idma_prep_data._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/mmc/host/mmci_stm32_sdmmc.c", i32 134, i32 4}
!21 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @sdmmc_idma_setup._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @sdmmc_idma_setup._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mmc/host/mmci_stm32_sdmmc.c", i32 400, i32 4}
!26 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @sdmmc_dlyb_lng_tuning._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @sdmmc_dlyb_lng_tuning._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mmc/host/mmci_stm32_sdmmc.c", i32 441, i32 3}
!32 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @sdmmc_dlyb_phase_tuning._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @sdmmc_dlyb_phase_tuning._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/mmc/host/mmci_stm32_sdmmc.c", i32 450, i32 2}
!37 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @sdmmc_dlyb_phase_tuning.__UNIQUE_ID_ddebug284, !36, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{i64 6264353}
!49 = !{i64 6263935}
!50 = !{i32 0, i32 33}
!51 = !{i64 2154633018}
!52 = !{i64 2154639103}
!53 = !{i64 2148800200, i64 2148800205, i64 2148800218, i64 2148800262, i64 2148800296, i64 2148800317}
