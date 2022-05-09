; ModuleID = '/llk/IR_all_yes/sound/pci/ctxfi/cthw20k2.c_pt.bc'
source_filename = "../sound/pci/ctxfi/cthw20k2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hw = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.regs_cs4382 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.card_conf = type { i32, i32, i32 }
%struct.hw20k2 = type { %struct.hw, i8, i8, i8, i32 }
%struct.src_rsc_ctrl_blk = type { i32, i32, i32, i32, i32, i32, %union.src_dirty }
%union.src_dirty = type { %struct.anon.72 }
%struct.anon.72 = type { i16 }
%struct.src_mgr_ctrl_blk = type { i32, [8 x i32], %union.src_mgr_dirty }
%union.src_mgr_dirty = type { %struct.anon.73 }
%struct.anon.73 = type { i16 }
%struct.srcimp_mgr_ctrl_blk = type { %struct.srcimap, %union.srcimp_mgr_dirty }
%struct.srcimap = type { i32, i32 }
%union.srcimp_mgr_dirty = type { %struct.anon.74 }
%struct.anon.74 = type { i16 }
%struct.amixer_rsc_ctrl_blk = type { i32, i32, %union.amixer_dirty }
%union.amixer_dirty = type { %struct.anon.75 }
%struct.anon.75 = type { i16 }
%struct.dai_ctrl_blk = type { i32, %union.dai_dirty }
%union.dai_dirty = type { %struct.anon.76 }
%struct.anon.76 = type { i16 }
%struct.dao_ctrl_blk = type { i32, %union.dao_dirty }
%union.dao_dirty = type { %struct.anon.77 }
%struct.anon.77 = type { i16 }
%struct.daio_mgr_ctrl_blk = type { %struct.daoimap, [8 x i32], [8 x i32], %union.daio_mgr_dirty }
%struct.daoimap = type { i32, i32 }
%union.daio_mgr_dirty = type { %struct.anon.78 }
%struct.anon.78 = type { i32 }

@ct20k2_preset = internal constant { %struct.hw, [100 x i8] } { %struct.hw { ptr @hw_card_init, ptr @hw_card_stop, ptr @hw_pll_init, ptr @hw_suspend, ptr @hw_resume, ptr @hw_is_adc_input_selected, ptr @hw_adc_input_select, ptr @hw_capabilities, ptr @hw_output_switch_get, ptr @hw_output_switch_put, ptr @hw_mic_source_switch_get, ptr @hw_mic_source_switch_put, ptr @src_get_rsc_ctrl_blk, ptr @src_put_rsc_ctrl_blk, ptr @src_set_state, ptr @src_set_bm, ptr @src_set_rsr, ptr @src_set_sf, ptr @src_set_wr, ptr @src_set_pm, ptr @src_set_rom, ptr @src_set_vo, ptr @src_set_st, ptr @src_set_ie, ptr @src_set_ilsz, ptr @src_set_bp, ptr @src_set_cisz, ptr @src_set_ca, ptr @src_set_sa, ptr @src_set_la, ptr @src_set_pitch, ptr @src_set_clear_zbufs, ptr @src_set_dirty, ptr @src_set_dirty_all, ptr @src_commit_write, ptr @src_get_ca, ptr @src_get_dirty, ptr @src_dirty_conj_mask, ptr @src_mgr_get_ctrl_blk, ptr @src_mgr_put_ctrl_blk, ptr @src_mgr_enbs_src, ptr @src_mgr_enb_src, ptr @src_mgr_dsb_src, ptr @src_mgr_commit_write, ptr @srcimp_mgr_get_ctrl_blk, ptr @srcimp_mgr_put_ctrl_blk, ptr @srcimp_mgr_set_imaparc, ptr @srcimp_mgr_set_imapuser, ptr @srcimp_mgr_set_imapnxt, ptr @srcimp_mgr_set_imapaddr, ptr @srcimp_mgr_commit_write, ptr @amixer_rsc_get_ctrl_blk, ptr @amixer_rsc_put_ctrl_blk, ptr @amixer_mgr_get_ctrl_blk, ptr @amixer_mgr_put_ctrl_blk, ptr @amixer_set_mode, ptr @amixer_set_iv, ptr @amixer_set_x, ptr @amixer_set_y, ptr @amixer_set_sadr, ptr @amixer_set_se, ptr @amixer_set_dirty, ptr @amixer_set_dirty_all, ptr @amixer_commit_write, ptr @amixer_get_y, ptr @amixer_get_dirty, ptr @dai_get_ctrl_blk, ptr @dai_put_ctrl_blk, ptr @dai_srt_set_srco, ptr @dai_srt_set_srcm, ptr @dai_srt_set_rsr, ptr @dai_srt_set_drat, ptr @dai_srt_set_ec, ptr @dai_srt_set_et, ptr @dai_commit_write, ptr @dao_get_ctrl_blk, ptr @dao_put_ctrl_blk, ptr @dao_set_spos, ptr @dao_commit_write, ptr @dao_get_spos, ptr @daio_mgr_get_ctrl_blk, ptr @daio_mgr_put_ctrl_blk, ptr @daio_mgr_enb_dai, ptr @daio_mgr_dsb_dai, ptr @daio_mgr_enb_dao, ptr @daio_mgr_dsb_dao, ptr @daio_mgr_dao_init, ptr @daio_mgr_set_imaparc, ptr @daio_mgr_set_imapnxt, ptr @daio_mgr_set_imapaddr, ptr @daio_mgr_commit_write, ptr @set_timer_irq, ptr @set_timer_tick, ptr @get_wc, ptr null, ptr null, ptr null, ptr null, i32 -1, i32 0, ptr null, i32 0, i32 0 }, [100 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"XFi\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"snd_ctxfi\00", [22 x i8] zeroinitializer }, align 32
@hw_card_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 2056, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"XFi: Cannot get irq %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hw_card_start\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sound/pci/ctxfi/cthw20k2.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hw_card_start._entry_ptr = internal global ptr @hw_card_start._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@hw_auto_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 1371, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Card Auto-init failed!!!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hw_auto_init\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\011\00", [29 x i8] zeroinitializer }, align 32
@hw_auto_init._entry_ptr = internal global ptr @hw_auto_init._entry, section ".printk_index", align 4
@hw_trn_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 1241, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Wrong device page table page address!!!\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hw_trn_init\00", [20 x i8] zeroinitializer }, align 32
@hw_trn_init._entry_ptr = internal global ptr @hw_trn_init._entry, section ".printk_index", align 4
@hw_daio_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.4, i32 1181, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ERROR!!! Invalid sampling rate!!!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hw_daio_init\00", [19 x i8] zeroinitializer }, align 32
@hw_daio_init._entry_ptr = internal global ptr @hw_daio_init._entry, section ".printk_index", align 4
@hw_adc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.4, i32 1842, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failure to acquire I2C!!!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hw_adc_init\00", [20 x i8] zeroinitializer }, align 32
@hw_adc_init._entry_ptr = internal global ptr @hw_adc_init._entry, section ".printk_index", align 4
@hw_adc_init._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.4, i32 1887, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Invalid master sampling rate (msr %d)!!!\0A\00", [54 x i8] zeroinitializer }, align 32
@hw_adc_init._entry_ptr.18 = internal global ptr @hw_adc_init._entry.16, section ".printk_index", align 4
@hw_pll_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.4, i32 1347, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"PLL initialization failed!!!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hw_pll_init\00", [20 x i8] zeroinitializer }, align 32
@hw_pll_init._entry_ptr = internal global ptr @hw_pll_init._entry, section ".printk_index", align 4
@switch.table.hw_mic_source_switch_put = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 2, i32 8], [20 x i8] zeroinitializer }, align 32
@switch.table.daio_mgr_dao_init = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 1, i32 0, i32 2, i32 0, i32 0, i32 0, i32 3], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.24 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.27 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 16, i64 32]
@__sancov_gen_cov_switch_values.28 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 16, i64 32]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.30 = private unnamed_addr constant [14 x i8] c"ct20k2_preset\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 2216, i32 24 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 2033, i32 34 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 2053, i32 7 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 2055, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 1371, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 1240, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 1180, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 1842, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 1885, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.108 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.109 = private constant [30 x i8] c"../sound/pci/ctxfi/cthw20k2.c\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 1346, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant [38 x i8] c"switch.table.hw_mic_source_switch_put\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [31 x i8] c"switch.table.daio_mgr_dao_init\00", align 1
@llvm.compiler.used = appending global [36 x ptr] [ptr @hw_adc_init._entry, ptr @hw_adc_init._entry.16, ptr @hw_adc_init._entry_ptr, ptr @hw_adc_init._entry_ptr.18, ptr @hw_auto_init._entry, ptr @hw_auto_init._entry_ptr, ptr @hw_card_start._entry, ptr @hw_card_start._entry_ptr, ptr @hw_daio_init._entry, ptr @hw_daio_init._entry_ptr, ptr @hw_pll_init._entry, ptr @hw_pll_init._entry_ptr, ptr @hw_trn_init._entry, ptr @hw_trn_init._entry_ptr, ptr @ct20k2_preset, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @switch.table.hw_mic_source_switch_put, ptr @switch.table.daio_mgr_dao_init], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ct20k2_preset to i32), i32 412, i32 512, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_card_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_auto_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_trn_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_daio_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_adc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_adc_init._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_pll_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.hw_mic_source_switch_put to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.daio_mgr_dao_init to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @create_20k2_hw_obj(ptr nocapture noundef writeonly %rhw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rhw to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %rhw, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 420) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = call ptr @memcpy(ptr %call7.i.i, ptr @ct20k2_preset, i32 412)
  %3 = ptrtoint ptr %rhw to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %rhw, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @destroy_20k2_hw_obj(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %io_base = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 99
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %io_base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %irq.i = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 98
  %2 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.i = icmp sgt i32 %3, -1
  br i1 %cmp.i, label %if.then.i, label %if.then.if.end.i_crit_edge

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call ptr @free_irq(i32 noundef %3, ptr noundef %hw) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %4 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %irq.i, align 4
  %mem_base.i = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 100
  %5 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mem_base.i, align 4
  tail call void @iounmap(ptr noundef %6) #11
  %7 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %mem_base.i, align 4
  %8 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %io_base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.end.i.hw_card_shutdown.exit_crit_edge, label %if.then4.i

if.end.i.hw_card_shutdown.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hw_card_shutdown.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %pci.i = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 96
  %10 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci.i, align 4
  tail call void @pci_release_regions(ptr noundef %11) #11
  br label %hw_card_shutdown.exit

hw_card_shutdown.exit:                            ; preds = %if.then4.i, %if.end.i.hw_card_shutdown.exit_crit_edge
  %12 = ptrtoint ptr %io_base to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %io_base, align 4
  %pci7.i = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 96
  %13 = ptrtoint ptr %pci7.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pci7.i, align 4
  tail call void @pci_disable_device(ptr noundef %14) #11
  br label %if.end

if.end:                                           ; preds = %hw_card_shutdown.exit, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %hw) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_card_init(ptr noundef %hw, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  %cs_read.i = alloca %struct.regs_cs4382, align 4
  %cs_def.i = alloca %struct.regs_cs4382, align 4
  %gctl.i75 = alloca i32, align 4
  %gctl.i = alloca i32, align 4
  %gctl = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gctl) #11
  %0 = ptrtoint ptr %gctl to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %gctl, align 4, !annotation !53
  %pci1.i = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 96
  %1 = ptrtoint ptr %pci1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pci1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gctl.i) #11
  %3 = ptrtoint ptr %gctl.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %gctl.i, align 4, !annotation !53
  %call.i = tail call i32 @pci_enable_device(ptr noundef %2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.hw_card_start.exit.thread_crit_edge, label %if.end.i

entry.hw_card_start.exit.thread_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %hw_card_start.exit.thread

if.end.i:                                         ; preds = %entry
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  %call.i.i = tail call i32 @dma_set_mask(ptr noundef %dev.i, i64 noundef 4294967295) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.if.end6.sink.split.i_crit_edge, label %if.then3.i

if.end.i.if.end6.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6.sink.split.i

if.then3.i:                                       ; preds = %if.end.i
  %call.i84.i = tail call i32 @dma_set_mask(ptr noundef %dev.i, i64 noundef 4294967295) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i84.i)
  %cmp.i85.i = icmp eq i32 %call.i84.i, 0
  br i1 %cmp.i85.i, label %if.then3.i.if.end6.sink.split.i_crit_edge, label %if.then3.i.if.end6.i_crit_edge

if.then3.i.if.end6.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6.i

if.then3.i.if.end6.sink.split.i_crit_edge:        ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6.sink.split.i

if.end6.sink.split.i:                             ; preds = %if.then3.i.if.end6.sink.split.i_crit_edge, %if.end.i.if.end6.sink.split.i_crit_edge
  %call1.i86.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev.i, i64 noundef 4294967295) #11
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.end6.sink.split.i, %if.then3.i.if.end6.i_crit_edge
  %io_base.i = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 99
  %4 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io_base.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool7.not.i = icmp eq i32 %5, 0
  br i1 %tobool7.not.i, label %if.then8.i, label %if.end6.i.if.end33.i_crit_edge

if.end6.i.if.end33.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33.i

if.then8.i:                                       ; preds = %if.end6.i
  %call9.i = tail call i32 @pci_request_regions(ptr noundef %2, ptr noundef nonnull @.str) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp slt i32 %call9.i, 0
  br i1 %cmp10.i, label %if.then8.i.error1.i_crit_edge, label %if.end12.i

if.then8.i.error1.i_crit_edge:                    ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %error1.i

if.end12.i:                                       ; preds = %if.then8.i
  %6 = ptrtoint ptr %pci1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci1.i, align 4
  %arrayidx.i = getelementptr %struct.pci_dev, ptr %7, i32 0, i32 47, i32 2
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 8
  %10 = ptrtoint ptr %io_base.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %io_base.i, align 4
  %end.i = getelementptr %struct.pci_dev, ptr %7, i32 0, i32 47, i32 2, i32 1
  %11 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp19.i = icmp eq i32 %12, 0
  br i1 %cmp19.i, label %if.end12.i.cond.end.i_crit_edge, label %cond.false.i

if.end12.i.cond.end.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 8
  %sub.i = add i32 %12, 1
  %add.i = sub i32 %sub.i, %14
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.end12.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %add.i, %cond.false.i ], [ 0, %if.end12.i.cond.end.i_crit_edge ]
  %call28.i = tail call ptr @ioremap(i32 noundef %9, i32 noundef %cond.i) #11
  %mem_base.i = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 100
  %15 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call28.i, ptr %mem_base.i, align 4
  %tobool30.not.i = icmp eq ptr %call28.i, null
  br i1 %tobool30.not.i, label %cond.end.i.error2.i_crit_edge, label %cond.end.i.if.end33.i_crit_edge

cond.end.i.if.end33.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33.i

cond.end.i.error2.i_crit_edge:                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %error2.i

if.end33.i:                                       ; preds = %cond.end.i.if.end33.i_crit_edge, %if.end6.i.if.end33.i_crit_edge
  %mem_base.i.i = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 100
  %16 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 1798288
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !54
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !55
  %20 = ptrtoint ptr %gctl.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %gctl.i, align 4
  call void @set_field(ptr noundef nonnull %gctl.i, i32 noundef 2, i32 noundef 0) #11
  %21 = ptrtoint ptr %gctl.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %gctl.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  call void @arm_heavy_mb() #11
  %23 = call i32 @llvm.bswap.i32(i32 %22) #11
  %24 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i90.i = getelementptr i8, ptr %25, i32 1798288
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i90.i, i32 %23) #11, !srcloc !57
  %irq.i = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 98
  %26 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp35.i = icmp slt i32 %27, 0
  br i1 %cmp35.i, label %if.then36.i, label %if.end33.i.if.end_crit_edge

if.end33.i.if.end_crit_edge:                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then36.i:                                      ; preds = %if.end33.i
  %irq37.i = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 46
  %28 = ptrtoint ptr %irq37.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irq37.i, align 4
  %call.i91.i = call i32 @request_threaded_irq(i32 noundef %29, ptr noundef nonnull @ct_20k2_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.1, ptr noundef %hw) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91.i)
  %cmp39.i = icmp slt i32 %call.i91.i, 0
  br i1 %cmp39.i, label %do.end.i, label %if.end43.i

do.end.i:                                         ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #13
  %card.i = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 97
  %30 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %card.i, align 4
  %dev41.i = getelementptr inbounds %struct.snd_card, ptr %31, i32 0, i32 27
  %32 = ptrtoint ptr %dev41.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev41.i, align 8
  %34 = ptrtoint ptr %irq37.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %irq37.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.2, i32 noundef %35) #15
  br label %error2.i

if.end43.i:                                       ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %irq37.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %irq37.i, align 4
  %38 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %irq.i, align 4
  %card47.i = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 97
  %39 = ptrtoint ptr %card47.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %card47.i, align 4
  %sync_irq.i = getelementptr inbounds %struct.snd_card, ptr %40, i32 0, i32 33
  %41 = ptrtoint ptr %sync_irq.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %37, ptr %sync_irq.i, align 4
  br label %if.end

error2.i:                                         ; preds = %do.end.i, %cond.end.i.error2.i_crit_edge
  %err.0.i = phi i32 [ %call.i91.i, %do.end.i ], [ -2, %cond.end.i.error2.i_crit_edge ]
  call void @pci_release_regions(ptr noundef %2) #11
  %42 = ptrtoint ptr %io_base.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %io_base.i, align 4
  br label %error1.i

error1.i:                                         ; preds = %error2.i, %if.then8.i.error1.i_crit_edge
  %err.1.i = phi i32 [ %err.0.i, %error2.i ], [ %call9.i, %if.then8.i.error1.i_crit_edge ]
  call void @pci_disable_device(ptr noundef %2) #11
  br label %hw_card_start.exit.thread

hw_card_start.exit.thread:                        ; preds = %error1.i, %entry.hw_card_start.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i, %entry.hw_card_start.exit.thread_crit_edge ], [ %err.1.i, %error1.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gctl.i) #11
  br label %cleanup

if.end:                                           ; preds = %if.end43.i, %if.end33.i.if.end_crit_edge
  call void @pci_set_master(ptr noundef %2) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gctl.i) #11
  %rsr = getelementptr inbounds %struct.card_conf, ptr %info, i32 0, i32 1
  %43 = ptrtoint ptr %rsr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rsr, align 4
  %call1 = call i32 @hw_pll_init(ptr noundef %hw, i32 noundef %44)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gctl.i75) #11
  %45 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i.i77 = getelementptr i8, ptr %46, i32 1798288
  %47 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i77) #11, !srcloc !54
  %48 = call i32 @llvm.bswap.i32(i32 %47) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !55
  %49 = ptrtoint ptr %gctl.i75 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %gctl.i75, align 4
  call void @set_field(ptr noundef nonnull %gctl.i75, i32 noundef 1, i32 noundef 0) #11
  %50 = ptrtoint ptr %gctl.i75 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %gctl.i75, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  call void @arm_heavy_mb() #11
  %52 = call i32 @llvm.bswap.i32(i32 %51) #11
  %53 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %54, i32 1798288
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i, i32 %52) #11, !srcloc !57
  call void @set_field(ptr noundef nonnull %gctl.i75, i32 noundef 1, i32 noundef 1) #11
  %55 = ptrtoint ptr %gctl.i75 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %gctl.i75, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  call void @arm_heavy_mb() #11
  %57 = call i32 @llvm.bswap.i32(i32 %56) #11
  %58 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i17.i = getelementptr i8, ptr %59, i32 1798288
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i, i32 %57) #11, !srcloc !57
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %60(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %61(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %62(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %63(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %64(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %65(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %66 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %66(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %67(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %68(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %69(i32 noundef 214748000) #11
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end3
  %i.021.i = phi i32 [ 0, %if.end3 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %70 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i19.i = getelementptr i8, ptr %71, i32 1798288
  %72 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19.i) #11, !srcloc !54
  %73 = call i32 @llvm.bswap.i32(i32 %72) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !55
  %74 = ptrtoint ptr %gctl.i75 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %gctl.i75, align 4
  %call2.i = call i32 @get_field(i32 noundef %73, i32 noundef 4096) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp ne i32 %call2.i, 0
  %inc.i = add nuw nsw i32 %i.021.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 400000, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 400000
  %or.cond.i = select i1 %tobool3.not.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %75 = ptrtoint ptr %gctl.i75 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %gctl.i75, align 4
  %call4.i = call i32 @get_field(i32 noundef %76, i32 noundef 4096) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %hw_auto_init.exit.thread, label %if.end7

hw_auto_init.exit.thread:                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %card.i78 = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 97
  %77 = ptrtoint ptr %card.i78 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %card.i78, align 4
  %dev.i79 = getelementptr inbounds %struct.snd_card, ptr %78, i32 0, i32 27
  %79 = ptrtoint ptr %dev.i79 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev.i79, align 8
  call void (ptr, ptr, ...) @_dev_alert(ptr noundef %80, ptr noundef nonnull @.str.7) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gctl.i75) #11
  br label %cleanup

if.end7:                                          ; preds = %for.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gctl.i75) #11
  %81 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %82, i32 1798288
  %83 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !54
  %84 = call i32 @llvm.bswap.i32(i32 %83) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !55
  %85 = ptrtoint ptr %gctl to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %gctl, align 4
  call void @set_field(ptr noundef nonnull %gctl, i32 noundef 8, i32 noundef 1) #11
  call void @set_field(ptr noundef nonnull %gctl, i32 noundef 32, i32 noundef 1) #11
  call void @set_field(ptr noundef nonnull %gctl, i32 noundef 128, i32 noundef 1) #11
  call void @set_field(ptr noundef nonnull %gctl, i32 noundef 4, i32 noundef 0) #11
  %86 = ptrtoint ptr %gctl to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %gctl, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  call void @arm_heavy_mb() #11
  %88 = call i32 @llvm.bswap.i32(i32 %87) #11
  %89 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i84 = getelementptr i8, ptr %90, i32 1798288
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i84, i32 %88) #11, !srcloc !57
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  call void @arm_heavy_mb() #11
  %91 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i86 = getelementptr i8, ptr %92, i32 1798164
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i86, i32 0) #11, !srcloc !57
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  call void @arm_heavy_mb() #11
  %93 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i88 = getelementptr i8, ptr %94, i32 1708076
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i88, i32 0) #11, !srcloc !57
  %model = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 102
  %95 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %model, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %96)
  %cmp9.not = icmp eq i32 %96, 7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  call void @arm_heavy_mb() #11
  %97 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i92 = getelementptr i8, ptr %98, i32 1798180
  br i1 %cmp9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i92, i32 47710208) #11, !srcloc !57
  br label %if.end11

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i92, i32 1604190208) #11, !srcloc !57
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  call void @arm_heavy_mb() #11
  %99 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i94 = getelementptr i8, ptr %100, i32 1638412
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i94, i32 16777216) #11, !srcloc !57
  %101 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %102)
  %cmp.i95 = icmp eq i32 %102, -1
  br i1 %cmp.i95, label %hw_trn_init.exit.thread, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end11
  %103 = call i32 @llvm.bswap.i32(i32 %102) #11
  br label %for.body.i104

hw_trn_init.exit.thread:                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %card.i97 = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 97
  %104 = ptrtoint ptr %card.i97 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %card.i97, align 4
  %dev.i98 = getelementptr inbounds %struct.snd_card, ptr %105, i32 0, i32 27
  %106 = ptrtoint ptr %dev.i98 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev.i98, align 8
  call void (ptr, ptr, ...) @_dev_alert(ptr noundef %107, ptr noundef nonnull @.str.10) #15
  br label %cleanup

for.body.i104:                                    ; preds = %for.body.i104.for.body.i104_crit_edge, %for.cond.preheader.i
  %i.035.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i102, %for.body.i104.for.body.i104_crit_edge ]
  %mul.i = shl i32 %i.035.i, 4
  %add.i100 = add nuw nsw i32 %mul.i, 1860352
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  call void @arm_heavy_mb() #11
  %108 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i.i101 = getelementptr i8, ptr %109, i32 %add.i100
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i101, i32 %103) #11, !srcloc !57
  %add6.i = add nuw nsw i32 %mul.i, 1860356
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  call void @arm_heavy_mb() #11
  %110 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i24.i = getelementptr i8, ptr %111, i32 %add6.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24.i, i32 0) #11, !srcloc !57
  %inc.i102 = add nuw nsw i32 %i.035.i, 1
  %exitcond.not.i103 = icmp eq i32 %inc.i102, 64
  br i1 %exitcond.not.i103, label %if.end16, label %for.body.i104.for.body.i104_crit_edge

for.body.i104.for.body.i104_crit_edge:            ; preds = %for.body.i104
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i104

if.end16:                                         ; preds = %for.body.i104
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  call void @arm_heavy_mb() #11
  %112 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i26.i = getelementptr i8, ptr %113, i32 1863680
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26.i, i32 252444800) #11, !srcloc !57
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  call void @arm_heavy_mb() #11
  %114 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i28.i = getelementptr i8, ptr %115, i32 1794052
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28.i, i32 50331648) #11, !srcloc !57
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  call void @arm_heavy_mb() #11
  %116 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i30.i = getelementptr i8, ptr %117, i32 1794056
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30.i, i32 17571840) #11, !srcloc !57
  %118 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i32.i = getelementptr i8, ptr %119, i32 1794048
  %120 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i32.i) #11, !srcloc !54
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !55
  %121 = or i32 %120, 50331648
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  call void @arm_heavy_mb() #11
  %122 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i34.i = getelementptr i8, ptr %123, i32 1794048
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34.i, i32 %121) #11, !srcloc !57
  %msr = getelementptr inbounds %struct.card_conf, ptr %info, i32 0, i32 2
  %124 = ptrtoint ptr %msr to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %msr, align 4
  %126 = zext i32 %125 to i64
  call void @__sanitizer_cov_trace_switch(i64 %126, ptr @__sancov_gen_cov_switch_values)
  switch i32 %125, label %if.end16.hw_daio_init.exit.thread_crit_edge [
    i32 1, label %if.then.i
    i32 2, label %if.then3.i109
    i32 4, label %land.lhs.true.i
  ]

if.end16.hw_daio_init.exit.thread_crit_edge:      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %hw_daio_init.exit.thread

if.then.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  call void @arm_heavy_mb() #11
  %127 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i.i108 = getelementptr i8, ptr %128, i32 1791488
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i108, i32 16843009) #11, !srcloc !57
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  call void @arm_heavy_mb() #11
  %129 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i87.i = getelementptr i8, ptr %130, i32 1791492
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i87.i, i32 16843009) #11, !srcloc !57
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  call void @arm_heavy_mb() #11
  %131 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i89.i = getelementptr i8, ptr %132, i32 1791496
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i89.i, i32 0) #11, !srcloc !57
  br label %if.end16.i

if.then3.i109:                                    ; preds = %if.end16
  %133 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %model, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %134)
  %cmp4.not.i = icmp eq i32 %134, 7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  call void @arm_heavy_mb() #11
  %135 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i93.i = getelementptr i8, ptr %136, i32 1791488
  br i1 %cmp4.not.i, label %if.else6.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.then3.i109
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i93.i, i32 286331153) #11, !srcloc !57
  br label %if.end.i110

if.else6.i:                                       ; preds = %if.then3.i109
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i93.i, i32 286327057) #11, !srcloc !57
  br label %if.end.i110

if.end.i110:                                      ; preds = %if.else6.i, %if.then5.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  call void @arm_heavy_mb() #11
  %137 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i95.i = getelementptr i8, ptr %138, i32 1791492
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i95.i, i32 286331153) #11, !srcloc !57
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  call void @arm_heavy_mb() #11
  %139 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i97.i = getelementptr i8, ptr %140, i32 1791496
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i97.i, i32 0) #11, !srcloc !57
  br label %if.end16.i

land.lhs.true.i:                                  ; preds = %if.end16
  %141 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %model, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %142)
  %cmp11.i = icmp eq i32 %142, 7
  br i1 %cmp11.i, label %if.then12.i, label %land.lhs.true.i.hw_daio_init.exit.thread_crit_edge

land.lhs.true.i.hw_daio_init.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hw_daio_init.exit.thread

if.then12.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  call void @arm_heavy_mb() #11
  %143 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i99.i = getelementptr i8, ptr %144, i32 1791488
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i99.i, i32 286327073) #11, !srcloc !57
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  call void @arm_heavy_mb() #11
  %145 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i101.i = getelementptr i8, ptr %146, i32 1791492
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i101.i, i32 555819297) #11, !srcloc !57
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  call void @arm_heavy_mb() #11
  %147 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i103.i = getelementptr i8, ptr %148, i32 1791496
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i103.i, i32 0) #11, !srcloc !57
  br label %if.end16.i

hw_daio_init.exit.thread:                         ; preds = %land.lhs.true.i.hw_daio_init.exit.thread_crit_edge, %if.end16.hw_daio_init.exit.thread_crit_edge
  %card.i111 = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 97
  %149 = ptrtoint ptr %card.i111 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %card.i111, align 4
  %dev.i112 = getelementptr inbounds %struct.snd_card, ptr %150, i32 0, i32 27
  %151 = ptrtoint ptr %dev.i112 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %dev.i112, align 8
  call void (ptr, ptr, ...) @_dev_alert(ptr noundef %152, ptr noundef nonnull @.str.12) #15
  br label %cleanup

if.end16.i:                                       ; preds = %if.then12.i, %if.end.i110, %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %125)
  %switch.selectcmp.i = icmp eq i32 %125, 4
  %switch.select.i = select i1 %switch.selectcmp.i, i32 8209, i32 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %125)
  %switch.selectcmp84.i = icmp eq i32 %125, 2
  %switch.select85.i = select i1 %switch.selectcmp84.i, i32 4113, i32 %switch.select.i
  %153 = call i32 @llvm.bswap.i32(i32 %switch.select85.i) #11
  br label %for.body.i114

for.body.i114:                                    ; preds = %for.inc.i.for.body.i114_crit_edge, %if.end16.i
  %i.0116.i = phi i32 [ 0, %if.end16.i ], [ %inc.i117, %for.inc.i.for.body.i114_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.0116.i)
  %cmp18.i = icmp ult i32 %i.0116.i, 4
  br i1 %cmp18.i, label %if.then19.i, label %if.else30.i

if.then19.i:                                      ; preds = %for.body.i114
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.0116.i)
  %cmp20.i = icmp eq i32 %i.0116.i, 3
  %..i = select i1 %cmp20.i, i32 16781313, i32 16777217
  %mul.i115 = shl nuw nsw i32 %i.0116.i, 6
  %add.i116 = add nuw nsw i32 %mul.i115, 1790976
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  call void @arm_heavy_mb() #11
  %154 = call i32 @llvm.bswap.i32(i32 %..i) #11
  %155 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i105.i = getelementptr i8, ptr %156, i32 %add.i116
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i105.i, i32 %154) #11, !srcloc !57
  %add25.i = add nuw nsw i32 %mul.i115, 1790992
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  call void @arm_heavy_mb() #11
  %157 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i107.i = getelementptr i8, ptr %158, i32 %add25.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i107.i, i32 %154) #11, !srcloc !57
  %add27.i = add nuw nsw i32 %mul.i115, 1790984
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  call void @arm_heavy_mb() #11
  %159 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i109.i = getelementptr i8, ptr %160, i32 %add27.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i109.i, i32 76681218) #11, !srcloc !57
  %add29.i = add nuw nsw i32 %mul.i115, 1790988
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  call void @arm_heavy_mb() #11
  %161 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i111.i = getelementptr i8, ptr %162, i32 %add29.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i111.i, i32 184549376) #11, !srcloc !57
  br label %for.inc.i

if.else30.i:                                      ; preds = %for.body.i114
  call void @__sanitizer_cov_trace_pc() #13
  %mul31.i = shl nuw nsw i32 %i.0116.i, 6
  %add32.i = add nuw nsw i32 %mul31.i, 1790992
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  call void @arm_heavy_mb() #11
  %163 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i113.i = getelementptr i8, ptr %164, i32 %add32.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i113.i, i32 285212672) #11, !srcloc !57
  %add44.i = add nuw nsw i32 %mul31.i, 1790976
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  call void @arm_heavy_mb() #11
  %165 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i115.i = getelementptr i8, ptr %166, i32 %add44.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i115.i, i32 %153) #11, !srcloc !57
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else30.i, %if.then19.i
  %inc.i117 = add nuw nsw i32 %i.0116.i, 1
  %exitcond.not.i118 = icmp eq i32 %inc.i117, 8
  br i1 %exitcond.not.i118, label %if.end21, label %for.inc.i.for.body.i114_crit_edge

for.inc.i.for.body.i114_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i114

if.end21:                                         ; preds = %for.inc.i
  %167 = ptrtoint ptr %msr to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %msr, align 4
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %cs_read.i) #11
  %169 = call ptr @memset(ptr %cs_read.i, i32 0, i32 68)
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %cs_def.i) #11
  %170 = getelementptr inbounds i8, ptr %cs_def.i, i32 4
  %171 = call ptr @memset(ptr %170, i32 0, i32 64)
  %172 = ptrtoint ptr %cs_def.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 1, ptr %cs_def.i, align 4
  %173 = getelementptr inbounds %struct.regs_cs4382, ptr %cs_def.i, i32 0, i32 2
  %174 = ptrtoint ptr %173 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 132, ptr %173, align 4
  %175 = getelementptr inbounds %struct.regs_cs4382, ptr %cs_def.i, i32 0, i32 5
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 36, ptr %175, align 4
  %177 = getelementptr inbounds %struct.regs_cs4382, ptr %cs_def.i, i32 0, i32 8
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 36, ptr %177, align 4
  %179 = getelementptr inbounds %struct.regs_cs4382, ptr %cs_def.i, i32 0, i32 11
  %180 = ptrtoint ptr %179 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 36, ptr %179, align 4
  %181 = getelementptr inbounds %struct.regs_cs4382, ptr %cs_def.i, i32 0, i32 14
  %182 = ptrtoint ptr %181 to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 36, ptr %181, align 4
  %183 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %model, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %184)
  %cmp.i121 = icmp eq i32 %184, 7
  %185 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %mem_base.i.i, align 4
  br i1 %cmp.i121, label %if.then.i123, label %if.end10.i

if.then.i123:                                     ; preds = %if.end21
  %add.ptr.i.i.i = getelementptr i8, ptr %186, i32 1798176
  %187 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #11, !srcloc !54
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !55
  %188 = and i32 %187, -33554433
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  call void @arm_heavy_mb() #11
  %189 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %190, i32 1798176
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %188) #11, !srcloc !57
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #11
  %191 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i.i122 = getelementptr i8, ptr %192, i32 1798176
  %193 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i122) #11, !srcloc !54
  %194 = call i32 @llvm.bswap.i32(i32 %193) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !55
  %and.i = and i32 %194, -1537
  %195 = zext i32 %168 to i64
  call void @__sanitizer_cov_trace_switch(i64 %195, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %168, label %if.else7.i [
    i32 1, label %if.then.i123.if.end9.i_crit_edge
    i32 2, label %if.then5.i124
  ]

if.then.i123.if.end9.i_crit_edge:                 ; preds = %if.then.i123
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

if.then5.i124:                                    ; preds = %if.then.i123
  call void @__sanitizer_cov_trace_pc() #13
  %or6.i = or i32 %and.i, 512
  br label %if.end9.i

if.else7.i:                                       ; preds = %if.then.i123
  call void @__sanitizer_cov_trace_pc() #13
  %or8.i = or i32 %194, 1536
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.else7.i, %if.then5.i124, %if.then.i123.if.end9.i_crit_edge
  %data.0.i = phi i32 [ %or6.i, %if.then5.i124 ], [ %or8.i, %if.else7.i ], [ %and.i, %if.then.i123.if.end9.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  call void @arm_heavy_mb() #11
  %196 = call i32 @llvm.bswap.i32(i32 %data.0.i) #11
  %197 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i175.i = getelementptr i8, ptr %198, i32 1798176
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i175.i, i32 %196) #11, !srcloc !57
  %199 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i.i177.i = getelementptr i8, ptr %200, i32 1798176
  %201 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i177.i) #11, !srcloc !54
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !55
  %202 = or i32 %201, 33554432
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  call void @arm_heavy_mb() #11
  %203 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i4.i178.i = getelementptr i8, ptr %204, i32 1798176
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i178.i, i32 %202) #11, !srcloc !57
  call void @msleep(i32 noundef 50) #11
  br label %if.end27

if.end10.i:                                       ; preds = %if.end21
  %add.ptr.i180.i = getelementptr i8, ptr %186, i32 1798180
  %205 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i180.i) #11, !srcloc !54
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !55
  %206 = or i32 %205, 33554432
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  call void @arm_heavy_mb() #11
  %207 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i182.i = getelementptr i8, ptr %208, i32 1798180
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i182.i, i32 %206) #11, !srcloc !57
  %call13.i = call fastcc i32 @hw20k2_i2c_init(ptr noundef %hw, i8 noundef zeroext 24) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp14.i = icmp slt i32 %call13.i, 0
  br i1 %cmp14.i, label %if.end10.i.hw_dac_init.exit_crit_edge, label %for.cond.preheader.i125

if.end10.i.hw_dac_init.exit_crit_edge:            ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hw_dac_init.exit

for.cond.preheader.i125:                          ; preds = %if.end10.i
  %mode_control_2.i = getelementptr inbounds %struct.regs_cs4382, ptr %cs_read.i, i32 0, i32 1
  %mode_control_3.i = getelementptr inbounds %struct.regs_cs4382, ptr %cs_read.i, i32 0, i32 2
  %filter_control.i = getelementptr inbounds %struct.regs_cs4382, ptr %cs_read.i, i32 0, i32 3
  %invert_control.i = getelementptr inbounds %struct.regs_cs4382, ptr %cs_read.i, i32 0, i32 4
  %mix_control_P1.i = getelementptr inbounds %struct.regs_cs4382, ptr %cs_read.i, i32 0, i32 5
  %vol_control_A1.i = getelementptr inbounds %struct.regs_cs4382, ptr %cs_read.i, i32 0, i32 6
  %vol_control_B1.i = getelementptr inbounds %struct.regs_cs4382, ptr %cs_read.i, i32 0, i32 7
  %mix_control_P2.i = getelementptr inbounds %struct.regs_cs4382, ptr %cs_read.i, i32 0, i32 8
  %vol_control_A2.i = getelementptr inbounds %struct.regs_cs4382, ptr %cs_read.i, i32 0, i32 9
  %vol_control_B2.i = getelementptr inbounds %struct.regs_cs4382, ptr %cs_read.i, i32 0, i32 10
  %mix_control_P3.i = getelementptr inbounds %struct.regs_cs4382, ptr %cs_read.i, i32 0, i32 11
  %vol_control_A3.i = getelementptr inbounds %struct.regs_cs4382, ptr %cs_read.i, i32 0, i32 12
  %vol_control_B3.i = getelementptr inbounds %struct.regs_cs4382, ptr %cs_read.i, i32 0, i32 13
  %mix_control_P4.i = getelementptr inbounds %struct.regs_cs4382, ptr %cs_read.i, i32 0, i32 14
  %vol_control_A4.i = getelementptr inbounds %struct.regs_cs4382, ptr %cs_read.i, i32 0, i32 15
  %vol_control_B4.i = getelementptr inbounds %struct.regs_cs4382, ptr %cs_read.i, i32 0, i32 16
  br label %for.body.i126

for.body.i126:                                    ; preds = %for.inc.i129.for.body.i126_crit_edge, %for.cond.preheader.i125
  %cmp17.i = phi i1 [ true, %for.cond.preheader.i125 ], [ false, %for.inc.i129.for.body.i126_crit_edge ]
  %209 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %210, i32 1798176
  %211 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #11, !srcloc !54
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !55
  %212 = and i32 %211, -33554433
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  call void @arm_heavy_mb() #11
  %213 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i4.i.i.i = getelementptr i8, ptr %214, i32 1798176
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i.i, i32 %212) #11, !srcloc !57
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #11
  %215 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i.i3.i.i = getelementptr i8, ptr %216, i32 1798176
  %217 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i3.i.i) #11, !srcloc !54
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !55
  %218 = or i32 %217, 33554432
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  call void @arm_heavy_mb() #11
  %219 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i4.i4.i.i = getelementptr i8, ptr %220, i32 1798176
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i4.i.i, i32 %218) #11, !srcloc !57
  call void @msleep(i32 noundef 50) #11
  %221 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i.i.i184.i = getelementptr i8, ptr %222, i32 1798176
  %223 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i184.i) #11, !srcloc !54
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !55
  %224 = and i32 %223, -33554433
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  call void @arm_heavy_mb() #11
  %225 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i4.i.i185.i = getelementptr i8, ptr %226, i32 1798176
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i185.i, i32 %224) #11, !srcloc !57
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #11
  %227 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i.i3.i186.i = getelementptr i8, ptr %228, i32 1798176
  %229 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i3.i186.i) #11, !srcloc !54
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !55
  %230 = or i32 %229, 33554432
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  call void @arm_heavy_mb() #11
  %231 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i4.i4.i187.i = getelementptr i8, ptr %232, i32 1798176
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i4.i187.i, i32 %230) #11, !srcloc !57
  call void @msleep(i32 noundef 50) #11
  %call18.i = call fastcc i32 @hw20k2_i2c_read(ptr noundef %hw, i16 noundef zeroext 1, ptr noundef nonnull %cs_read.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool.not.i, label %if.end20.i, label %for.body.i126.for.inc.i129_crit_edge

for.body.i126.for.inc.i129_crit_edge:             ; preds = %for.body.i126
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i129

if.end20.i:                                       ; preds = %for.body.i126
  %call21.i = call fastcc i32 @hw20k2_i2c_read(ptr noundef %hw, i16 noundef zeroext 2, ptr noundef %mode_control_2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %if.end24.i, label %if.end20.i.for.inc.i129_crit_edge

if.end20.i.for.inc.i129_crit_edge:                ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i129

if.end24.i:                                       ; preds = %if.end20.i
  %call25.i = call fastcc i32 @hw20k2_i2c_read(ptr noundef %hw, i16 noundef zeroext 3, ptr noundef %mode_control_3.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end28.i, label %if.end24.i.for.inc.i129_crit_edge

if.end24.i.for.inc.i129_crit_edge:                ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i129

if.end28.i:                                       ; preds = %if.end24.i
  %call29.i = call fastcc i32 @hw20k2_i2c_read(ptr noundef %hw, i16 noundef zeroext 4, ptr noundef %filter_control.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i127 = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i127, label %if.end32.i, label %if.end28.i.for.inc.i129_crit_edge

if.end28.i.for.inc.i129_crit_edge:                ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i129

if.end32.i:                                       ; preds = %if.end28.i
  %call33.i = call fastcc i32 @hw20k2_i2c_read(ptr noundef %hw, i16 noundef zeroext 5, ptr noundef %invert_control.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %if.end36.i, label %if.end32.i.for.inc.i129_crit_edge

if.end32.i.for.inc.i129_crit_edge:                ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i129

if.end36.i:                                       ; preds = %if.end32.i
  %call37.i = call fastcc i32 @hw20k2_i2c_read(ptr noundef %hw, i16 noundef zeroext 6, ptr noundef %mix_control_P1.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool38.not.i, label %if.end40.i, label %if.end36.i.for.inc.i129_crit_edge

if.end36.i.for.inc.i129_crit_edge:                ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i129

if.end40.i:                                       ; preds = %if.end36.i
  %call41.i = call fastcc i32 @hw20k2_i2c_read(ptr noundef %hw, i16 noundef zeroext 7, ptr noundef %vol_control_A1.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool42.not.i = icmp eq i32 %call41.i, 0
  br i1 %tobool42.not.i, label %if.end44.i, label %if.end40.i.for.inc.i129_crit_edge

if.end40.i.for.inc.i129_crit_edge:                ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i129

if.end44.i:                                       ; preds = %if.end40.i
  %call45.i = call fastcc i32 @hw20k2_i2c_read(ptr noundef %hw, i16 noundef zeroext 8, ptr noundef %vol_control_B1.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i)
  %tobool46.not.i = icmp eq i32 %call45.i, 0
  br i1 %tobool46.not.i, label %if.end48.i128, label %if.end44.i.for.inc.i129_crit_edge

if.end44.i.for.inc.i129_crit_edge:                ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i129

if.end48.i128:                                    ; preds = %if.end44.i
  %call49.i = call fastcc i32 @hw20k2_i2c_read(ptr noundef %hw, i16 noundef zeroext 9, ptr noundef %mix_control_P2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i)
  %tobool50.not.i = icmp eq i32 %call49.i, 0
  br i1 %tobool50.not.i, label %if.end52.i, label %if.end48.i128.for.inc.i129_crit_edge

if.end48.i128.for.inc.i129_crit_edge:             ; preds = %if.end48.i128
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i129

if.end52.i:                                       ; preds = %if.end48.i128
  %call53.i = call fastcc i32 @hw20k2_i2c_read(ptr noundef %hw, i16 noundef zeroext 10, ptr noundef %vol_control_A2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %tobool54.not.i = icmp eq i32 %call53.i, 0
  br i1 %tobool54.not.i, label %if.end56.i, label %if.end52.i.for.inc.i129_crit_edge

if.end52.i.for.inc.i129_crit_edge:                ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i129

if.end56.i:                                       ; preds = %if.end52.i
  %call57.i = call fastcc i32 @hw20k2_i2c_read(ptr noundef %hw, i16 noundef zeroext 11, ptr noundef %vol_control_B2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %tobool58.not.i = icmp eq i32 %call57.i, 0
  br i1 %tobool58.not.i, label %if.end60.i, label %if.end56.i.for.inc.i129_crit_edge

if.end56.i.for.inc.i129_crit_edge:                ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i129

if.end60.i:                                       ; preds = %if.end56.i
  %call61.i = call fastcc i32 @hw20k2_i2c_read(ptr noundef %hw, i16 noundef zeroext 12, ptr noundef %mix_control_P3.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i)
  %tobool62.not.i = icmp eq i32 %call61.i, 0
  br i1 %tobool62.not.i, label %if.end64.i, label %if.end60.i.for.inc.i129_crit_edge

if.end60.i.for.inc.i129_crit_edge:                ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i129

if.end64.i:                                       ; preds = %if.end60.i
  %call65.i = call fastcc i32 @hw20k2_i2c_read(ptr noundef %hw, i16 noundef zeroext 13, ptr noundef %vol_control_A3.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65.i)
  %tobool66.not.i = icmp eq i32 %call65.i, 0
  br i1 %tobool66.not.i, label %if.end68.i, label %if.end64.i.for.inc.i129_crit_edge

if.end64.i.for.inc.i129_crit_edge:                ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i129

if.end68.i:                                       ; preds = %if.end64.i
  %call69.i = call fastcc i32 @hw20k2_i2c_read(ptr noundef %hw, i16 noundef zeroext 14, ptr noundef %vol_control_B3.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69.i)
  %tobool70.not.i = icmp eq i32 %call69.i, 0
  br i1 %tobool70.not.i, label %if.end72.i, label %if.end68.i.for.inc.i129_crit_edge

if.end68.i.for.inc.i129_crit_edge:                ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i129

if.end72.i:                                       ; preds = %if.end68.i
  %call73.i = call fastcc i32 @hw20k2_i2c_read(ptr noundef %hw, i16 noundef zeroext 15, ptr noundef %mix_control_P4.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73.i)
  %tobool74.not.i = icmp eq i32 %call73.i, 0
  br i1 %tobool74.not.i, label %if.end76.i, label %if.end72.i.for.inc.i129_crit_edge

if.end72.i.for.inc.i129_crit_edge:                ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i129

if.end76.i:                                       ; preds = %if.end72.i
  %call77.i = call fastcc i32 @hw20k2_i2c_read(ptr noundef %hw, i16 noundef zeroext 16, ptr noundef %vol_control_A4.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77.i)
  %tobool78.not.i = icmp eq i32 %call77.i, 0
  br i1 %tobool78.not.i, label %if.end80.i, label %if.end76.i.for.inc.i129_crit_edge

if.end76.i.for.inc.i129_crit_edge:                ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i129

if.end80.i:                                       ; preds = %if.end76.i
  %call81.i = call fastcc i32 @hw20k2_i2c_read(ptr noundef %hw, i16 noundef zeroext 17, ptr noundef %vol_control_B4.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81.i)
  %tobool82.not.i = icmp eq i32 %call81.i, 0
  br i1 %tobool82.not.i, label %if.end84.i, label %if.end80.i.for.inc.i129_crit_edge

if.end80.i.for.inc.i129_crit_edge:                ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i129

if.end84.i:                                       ; preds = %if.end80.i
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(68) %cs_read.i, ptr noundef nonnull dereferenceable(68) %cs_def.i, i32 68) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool86.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool86.not.i, label %if.end91.i, label %if.end84.i.for.inc.i129_crit_edge

if.end84.i.for.inc.i129_crit_edge:                ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i129

for.inc.i129:                                     ; preds = %if.end84.i.for.inc.i129_crit_edge, %if.end80.i.for.inc.i129_crit_edge, %if.end76.i.for.inc.i129_crit_edge, %if.end72.i.for.inc.i129_crit_edge, %if.end68.i.for.inc.i129_crit_edge, %if.end64.i.for.inc.i129_crit_edge, %if.end60.i.for.inc.i129_crit_edge, %if.end56.i.for.inc.i129_crit_edge, %if.end52.i.for.inc.i129_crit_edge, %if.end48.i128.for.inc.i129_crit_edge, %if.end44.i.for.inc.i129_crit_edge, %if.end40.i.for.inc.i129_crit_edge, %if.end36.i.for.inc.i129_crit_edge, %if.end32.i.for.inc.i129_crit_edge, %if.end28.i.for.inc.i129_crit_edge, %if.end24.i.for.inc.i129_crit_edge, %if.end20.i.for.inc.i129_crit_edge, %for.body.i126.for.inc.i129_crit_edge
  br i1 %cmp17.i, label %for.inc.i129.for.body.i126_crit_edge, label %for.inc.i129.hw_dac_init.exit_crit_edge

for.inc.i129.hw_dac_init.exit_crit_edge:          ; preds = %for.inc.i129
  call void @__sanitizer_cov_trace_pc() #13
  br label %hw_dac_init.exit

for.inc.i129.for.body.i126_crit_edge:             ; preds = %for.inc.i129
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i126

if.end91.i:                                       ; preds = %if.end84.i
  call fastcc void @hw20k2_i2c_write(ptr noundef %hw, i16 noundef zeroext 1, i32 noundef 128) #11
  call fastcc void @hw20k2_i2c_write(ptr noundef %hw, i16 noundef zeroext 2, i32 noundef 16) #11
  %233 = zext i32 %168 to i64
  call void @__sanitizer_cov_trace_switch(i64 %233, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %168, label %if.else109.i [
    i32 1, label %if.then96.i
    i32 2, label %if.then104.i
  ]

if.then96.i:                                      ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @hw20k2_i2c_write(ptr noundef %hw, i16 noundef zeroext 6, i32 noundef 36) #11
  call fastcc void @hw20k2_i2c_write(ptr noundef %hw, i16 noundef zeroext 9, i32 noundef 36) #11
  call fastcc void @hw20k2_i2c_write(ptr noundef %hw, i16 noundef zeroext 12, i32 noundef 36) #11
  call fastcc void @hw20k2_i2c_write(ptr noundef %hw, i16 noundef zeroext 15, i32 noundef 36) #11
  br label %if.end27

if.then104.i:                                     ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @hw20k2_i2c_write(ptr noundef %hw, i16 noundef zeroext 6, i32 noundef 37) #11
  call fastcc void @hw20k2_i2c_write(ptr noundef %hw, i16 noundef zeroext 9, i32 noundef 37) #11
  call fastcc void @hw20k2_i2c_write(ptr noundef %hw, i16 noundef zeroext 12, i32 noundef 37) #11
  call fastcc void @hw20k2_i2c_write(ptr noundef %hw, i16 noundef zeroext 15, i32 noundef 37) #11
  br label %if.end27

if.else109.i:                                     ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @hw20k2_i2c_write(ptr noundef %hw, i16 noundef zeroext 6, i32 noundef 38) #11
  call fastcc void @hw20k2_i2c_write(ptr noundef %hw, i16 noundef zeroext 9, i32 noundef 38) #11
  call fastcc void @hw20k2_i2c_write(ptr noundef %hw, i16 noundef zeroext 12, i32 noundef 38) #11
  call fastcc void @hw20k2_i2c_write(ptr noundef %hw, i16 noundef zeroext 15, i32 noundef 38) #11
  br label %if.end27

hw_dac_init.exit:                                 ; preds = %for.inc.i129.hw_dac_init.exit_crit_edge, %if.end10.i.hw_dac_init.exit_crit_edge
  call fastcc void @hw20k2_i2c_uninit(ptr noundef %hw) #11
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %cs_def.i) #11
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %cs_read.i) #11
  br label %cleanup

if.end27:                                         ; preds = %if.else109.i, %if.then104.i, %if.then96.i, %if.end9.i
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %cs_def.i) #11
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %cs_read.i) #11
  %234 = ptrtoint ptr %msr to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %msr, align 4
  %236 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i.i132 = getelementptr i8, ptr %237, i32 1798180
  %238 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i132) #11, !srcloc !54
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !55
  %239 = or i32 %238, 8388608
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  call void @arm_heavy_mb() #11
  %240 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i88.i = getelementptr i8, ptr %241, i32 1798180
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i88.i, i32 %239) #11, !srcloc !57
  %call1.i = call fastcc i32 @hw20k2_i2c_init(ptr noundef %hw, i8 noundef zeroext 26) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i133 = icmp slt i32 %call1.i, 0
  br i1 %cmp.i133, label %do.end.i136, label %if.end.i140

do.end.i136:                                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  %card.i134 = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 97
  %242 = ptrtoint ptr %card.i134 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %card.i134, align 4
  %dev.i135 = getelementptr inbounds %struct.snd_card, ptr %243, i32 0, i32 27
  %244 = ptrtoint ptr %dev.i135 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %dev.i135, align 8
  call void (ptr, ptr, ...) @_dev_alert(ptr noundef %245, ptr noundef nonnull @.str.14) #15
  br label %hw_adc_init.exit

if.end.i140:                                      ; preds = %if.end27
  %246 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i90.i137 = getelementptr i8, ptr %247, i32 1798176
  %248 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i90.i137) #11, !srcloc !54
  %249 = call i32 @llvm.bswap.i32(i32 %248) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !55
  %and.i138 = and i32 %249, -32769
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  call void @arm_heavy_mb() #11
  %250 = call i32 @llvm.bswap.i32(i32 %and.i138) #11
  %251 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i92.i = getelementptr i8, ptr %252, i32 1798176
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i92.i, i32 %250) #11, !srcloc !57
  %253 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %model, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %254)
  %cmp3.i = icmp eq i32 %254, 7
  br i1 %cmp3.i, label %if.then4.i, label %if.end.i140.if.end17.i_crit_edge

if.end.i140.if.end17.i_crit_edge:                 ; preds = %if.end.i140
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.i

if.then4.i:                                       ; preds = %if.end.i140
  %and5.i = and i32 %249, -32781
  %255 = zext i32 %235 to i64
  call void @__sanitizer_cov_trace_switch(i64 %255, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %235, label %if.else13.i [
    i32 1, label %if.then4.i.if.end16.i142_crit_edge
    i32 2, label %if.then11.i
  ]

if.then4.i.if.end16.i142_crit_edge:               ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16.i142

if.then11.i:                                      ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #13
  %or12.i = or i32 %and5.i, 8
  br label %if.end16.i142

if.else13.i:                                      ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #13
  %or14.i = or i32 %and5.i, 4
  br label %if.end16.i142

if.end16.i142:                                    ; preds = %if.else13.i, %if.then11.i, %if.then4.i.if.end16.i142_crit_edge
  %data.0.i141 = phi i32 [ %or12.i, %if.then11.i ], [ %or14.i, %if.else13.i ], [ %and5.i, %if.then4.i.if.end16.i142_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  call void @arm_heavy_mb() #11
  %256 = call i32 @llvm.bswap.i32(i32 %data.0.i141) #11
  %257 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i94.i = getelementptr i8, ptr %258, i32 1798176
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i94.i, i32 %256) #11, !srcloc !57
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.end16.i142, %if.end.i140.if.end17.i_crit_edge
  %data.1.i = phi i32 [ %data.0.i141, %if.end16.i142 ], [ %and.i138, %if.end.i140.if.end17.i_crit_edge ]
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #11
  %or18.i = or i32 %data.1.i, 32768
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  call void @arm_heavy_mb() #11
  %259 = call i32 @llvm.bswap.i32(i32 %or18.i) #11
  %260 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i96.i = getelementptr i8, ptr %261, i32 1798176
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i96.i, i32 %259) #11, !srcloc !57
  call void @msleep(i32 noundef 50) #11
  call fastcc void @hw20k2_i2c_write(ptr noundef %hw, i16 noundef zeroext 22, i32 noundef 38) #11
  %262 = zext i32 %235 to i64
  call void @__sanitizer_cov_trace_switch(i64 %262, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %235, label %do.end34.i [
    i32 1, label %if.end17.i.if.end39.i_crit_edge
    i32 2, label %if.end17.i.if.then29.i_crit_edge
    i32 4, label %if.end17.i.if.then29.i_crit_edge165
  ]

if.end17.i.if.then29.i_crit_edge165:              ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then29.i

if.end17.i.if.then29.i_crit_edge:                 ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then29.i

if.end17.i.if.end39.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39.i

if.then29.i:                                      ; preds = %if.end17.i.if.then29.i_crit_edge, %if.end17.i.if.then29.i_crit_edge165
  br label %if.end39.i

do.end34.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  %card35.i = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 97
  %263 = ptrtoint ptr %card35.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %card35.i, align 4
  %dev36.i = getelementptr inbounds %struct.snd_card, ptr %264, i32 0, i32 27
  %265 = ptrtoint ptr %dev36.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %dev36.i, align 8
  call void (ptr, ptr, ...) @_dev_alert(ptr noundef %266, ptr noundef nonnull @.str.17, i32 noundef %235) #15
  br label %hw_adc_init.exit

if.end39.i:                                       ; preds = %if.then29.i, %if.end17.i.if.end39.i_crit_edge
  %.sink.i = phi i32 [ 10, %if.then29.i ], [ 2, %if.end17.i.if.end39.i_crit_edge ]
  call fastcc void @hw20k2_i2c_write(ptr noundef %hw, i16 noundef zeroext 24, i32 noundef %.sink.i) #11
  %267 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %model, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %268)
  %cmp41.not.i = icmp eq i32 %268, 7
  br i1 %cmp41.not.i, label %if.end39.i.if.end33_crit_edge, label %if.then42.i

if.end39.i.if.end33_crit_edge:                    ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then42.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #13
  %269 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i98.i = getelementptr i8, ptr %270, i32 1798180
  %271 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i98.i) #11, !srcloc !54
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !55
  %272 = or i32 %271, 4194304
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  call void @arm_heavy_mb() #11
  %273 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i100.i = getelementptr i8, ptr %274, i32 1798180
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i100.i, i32 %272) #11, !srcloc !57
  %275 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i.i.i143 = getelementptr i8, ptr %276, i32 1798176
  %277 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i143) #11, !srcloc !54
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !55
  %278 = and i32 %277, -4194305
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  call void @arm_heavy_mb() #11
  %279 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i12.i.i = getelementptr i8, ptr %280, i32 1798176
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i.i, i32 %278) #11, !srcloc !57
  br label %if.end33

hw_adc_init.exit:                                 ; preds = %do.end34.i, %do.end.i136
  %err.0.i144 = phi i32 [ %call1.i, %do.end.i136 ], [ -22, %do.end34.i ]
  call fastcc void @hw20k2_i2c_uninit(ptr noundef %hw) #11
  br label %cleanup

if.end33:                                         ; preds = %if.then42.i, %if.end39.i.if.end33_crit_edge
  %.sink = phi i32 [ 2, %if.then42.i ], [ 1, %if.end39.i.if.end33_crit_edge ]
  call fastcc void @hw20k2_i2c_write(ptr noundef %hw, i16 noundef zeroext 43, i32 noundef %.sink) #11
  call fastcc void @hw20k2_i2c_write(ptr noundef %hw, i16 noundef zeroext 28, i32 noundef 207) #11
  call fastcc void @hw20k2_i2c_write(ptr noundef %hw, i16 noundef zeroext 30, i32 noundef 207) #11
  %281 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i147 = getelementptr i8, ptr %282, i32 1704236
  %283 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i147) #11, !srcloc !54
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !55
  %284 = or i32 %283, 16777216
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  call void @arm_heavy_mb() #11
  %285 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i149 = getelementptr i8, ptr %286, i32 1704236
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i149, i32 %284) #11, !srcloc !57
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %hw_adc_init.exit, %hw_dac_init.exit, %hw_daio_init.exit.thread, %hw_trn_init.exit.thread, %hw_auto_init.exit.thread, %if.end.cleanup_crit_edge, %hw_card_start.exit.thread
  %retval.0 = phi i32 [ 0, %if.end33 ], [ %call1, %if.end.cleanup_crit_edge ], [ -1, %hw_dac_init.exit ], [ %err.0.i144, %hw_adc_init.exit ], [ %retval.0.i.ph, %hw_card_start.exit.thread ], [ -16, %hw_auto_init.exit.thread ], [ -1, %hw_trn_init.exit.thread ], [ -22, %hw_daio_init.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gctl) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_card_stop(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %mem_base.i = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 100
  %0 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1794052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #11, !srcloc !57
  %2 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mem_base.i, align 4
  %add.ptr.i4 = getelementptr i8, ptr %3, i32 1798280
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4) #11, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !55
  %5 = and i32 %4, -117440513
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %6 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mem_base.i, align 4
  %add.ptr.i6 = getelementptr i8, ptr %7, i32 1798280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6, i32 %5) #11, !srcloc !57
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_pll_init(ptr nocapture noundef readonly %hw, i32 noundef %rsr) #0 align 64 {
entry:
  %pllctl = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pllctl) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %mem_base.i = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 100
  %0 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1798280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 184549376) #11, !srcloc !57
  %2 = ptrtoint ptr %pllctl to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 549453824, ptr %pllctl, align 4
  call void @set_field(ptr noundef nonnull %pllctl, i32 noundef 524288, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %rsr)
  %cmp = icmp eq i32 %rsr, 48000
  %cond = select i1 %cmp, i32 12, i32 143
  call void @set_field(ptr noundef nonnull %pllctl, i32 noundef 130816, i32 noundef %cond) #11
  %cond2 = select i1 %cmp, i32 0, i32 9
  call void @set_field(ptr noundef nonnull %pllctl, i32 noundef 240, i32 noundef %cond2) #11
  %3 = ptrtoint ptr %pllctl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pllctl, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  call void @arm_heavy_mb() #11
  %5 = call i32 @llvm.bswap.i32(i32 %4) #11
  %6 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mem_base.i, align 4
  %add.ptr.i48 = getelementptr i8, ptr %7, i32 1798272
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48, i32 %5) #11, !srcloc !57
  call void @msleep(i32 noundef 40) #11
  %8 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mem_base.i, align 4
  %add.ptr.i50 = getelementptr i8, ptr %9, i32 1798272
  %10 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i50) #11, !srcloc !54
  %11 = call i32 @llvm.bswap.i32(i32 %10) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !55
  %12 = ptrtoint ptr %pllctl to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %pllctl, align 4
  %cond4 = select i1 %cmp, i32 14, i32 145
  call void @set_field(ptr noundef nonnull %pllctl, i32 noundef 130816, i32 noundef %cond4) #11
  %13 = ptrtoint ptr %pllctl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pllctl, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  call void @arm_heavy_mb() #11
  %15 = call i32 @llvm.bswap.i32(i32 %14) #11
  %16 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mem_base.i, align 4
  %add.ptr.i52 = getelementptr i8, ptr %17, i32 1798272
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52, i32 %15) #11, !srcloc !57
  call void @msleep(i32 noundef 40) #11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.056 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %18 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mem_base.i, align 4
  %add.ptr.i54 = getelementptr i8, ptr %19, i32 1798276
  %20 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i54) #11, !srcloc !54
  %21 = call i32 @llvm.bswap.i32(i32 %20) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !55
  %call7 = call i32 @get_field(i32 noundef %21, i32 noundef 1048576) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end:                                           ; preds = %for.body
  %call8 = call i32 @get_field(i32 noundef %21, i32 noundef 524288) #11
  %22 = ptrtoint ptr %pllctl to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pllctl, align 4
  %call9 = call i32 @get_field(i32 noundef %23, i32 noundef 524288) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call8, i32 %call9)
  %cmp10.not = icmp eq i32 %call8, %call9
  br i1 %cmp10.not, label %if.end12, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end12:                                         ; preds = %if.end
  %call13 = call i32 @get_field(i32 noundef %21, i32 noundef 7) #11
  %24 = ptrtoint ptr %pllctl to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pllctl, align 4
  %call14 = call i32 @get_field(i32 noundef %25, i32 noundef 7) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call13, i32 %call14)
  %cmp15.not = icmp eq i32 %call13, %call14
  br i1 %cmp15.not, label %if.end17, label %if.end12.for.inc_crit_edge

if.end12.for.inc_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end17:                                         ; preds = %if.end12
  %call18 = call i32 @get_field(i32 noundef %21, i32 noundef 240) #11
  %26 = ptrtoint ptr %pllctl to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pllctl, align 4
  %call19 = call i32 @get_field(i32 noundef %27, i32 noundef 240) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call18, i32 %call19)
  %cmp20.not = icmp eq i32 %call18, %call19
  br i1 %cmp20.not, label %if.end22, label %if.end17.for.inc_crit_edge

if.end17.for.inc_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end22:                                         ; preds = %if.end17
  %call23 = call i32 @get_field(i32 noundef %21, i32 noundef 130816) #11
  %28 = ptrtoint ptr %pllctl to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pllctl, align 4
  %call24 = call i32 @get_field(i32 noundef %29, i32 noundef 130816) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call23, i32 %call24)
  %cmp25.not = icmp eq i32 %call23, %call24
  br i1 %cmp25.not, label %if.end22.cleanup_crit_edge, label %if.end22.for.inc_crit_edge

if.end22.for.inc_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc:                                          ; preds = %if.end22.for.inc_crit_edge, %if.end17.for.inc_crit_edge, %if.end12.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.056, 1
  %exitcond.not = icmp eq i32 %inc, 1000
  br i1 %exitcond.not, label %do.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

do.end:                                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  %card = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 97
  %30 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %31, i32 0, i32 27
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_alert(ptr noundef %33, ptr noundef nonnull @.str.19) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end22.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end ], [ 0, %if.end22.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pllctl) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_suspend(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %mem_base.i.i = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 100
  %0 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 1794052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #11, !srcloc !57
  %2 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %3, i32 1798280
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4.i) #11, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !55
  %5 = and i32 %4, -117440513
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %6 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %7, i32 1798280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %5) #11, !srcloc !57
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_resume(ptr noundef %hw, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @hw_card_init(ptr noundef %hw, ptr noundef %info)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_is_adc_input_selected(ptr nocapture noundef readonly %hw, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %model = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 102
  %0 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %model, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %1)
  %cmp = icmp eq i32 %1, 7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %mem_base.i = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 100
  %2 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mem_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 1798176
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !54
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !55
  %6 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %type, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %and = lshr i32 %5, 14
  %and.lobit = and i32 %and, 1
  br label %cleanup

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %and2 = lshr i32 %5, 14
  %and2.lobit = and i32 %and2, 1
  %7 = xor i32 %and2.lobit, 1
  br label %cleanup

cleanup:                                          ; preds = %sw.bb1, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ %7, %sw.bb1 ], [ %and.lobit, %sw.bb ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_adc_input_select(ptr nocapture noundef readonly %hw, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mem_base.i = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 100
  %0 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1798176
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !54
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !55
  %4 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %type, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %or = or i32 %3, 16384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %5 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  %6 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mem_base.i, align 4
  %add.ptr.i10 = getelementptr i8, ptr %7, i32 1798176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 %5) #11, !srcloc !57
  br label %sw.epilog.sink.split

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %and = and i32 %3, -16385
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %8 = tail call i32 @llvm.bswap.i32(i32 %and) #11
  %9 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mem_base.i, align 4
  %add.ptr.i12 = getelementptr i8, ptr %10, i32 1798176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 %8) #11, !srcloc !57
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb1, %sw.bb
  %.sink14 = phi i32 [ 2, %sw.bb1 ], [ 1, %sw.bb ]
  %.sink13 = phi i32 [ 207, %sw.bb1 ], [ 247, %sw.bb ]
  tail call fastcc void @hw20k2_i2c_write(ptr noundef %hw, i16 noundef zeroext 43, i32 noundef %.sink14) #11
  tail call fastcc void @hw20k2_i2c_write(ptr noundef %hw, i16 noundef zeroext 28, i32 noundef %.sink13) #11
  tail call fastcc void @hw20k2_i2c_write(ptr noundef %hw, i16 noundef zeroext 30, i32 noundef %.sink13) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hw_capabilities(ptr nocapture noundef readonly %hw) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %model = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 102
  %0 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %model, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %1)
  %cmp = icmp eq i32 %1, 7
  %retval.sroa.0.0.insert.insert = select i1 %cmp, i32 2147483647, i32 268435455
  ret i32 %retval.sroa.0.0.insert.insert
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_output_switch_get(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mem_base.i = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 100
  %0 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1798304
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !54
  %3 = lshr i32 %2, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !55
  %and = and i32 %3, 48
  %4 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %and, label %sw.default [
    i32 0, label %entry.cleanup_crit_edge
    i32 16, label %sw.bb1
    i32 32, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb2, %sw.bb1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 3, %sw.default ], [ 2, %sw.bb2 ], [ 1, %sw.bb1 ], [ %and, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_output_switch_put(ptr nocapture noundef readonly %hw, i32 noundef %position) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mem_base.i.i = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 100
  %0 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 1798304
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !54
  %3 = lshr i32 %2, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !55
  %and.i = and i32 %3, 48
  %4 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %and.i, label %sw.default.i [
    i32 0, label %entry.hw_output_switch_get.exit_crit_edge
    i32 16, label %sw.bb1.i
    i32 32, label %sw.bb2.i
  ]

entry.hw_output_switch_get.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %hw_output_switch_get.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %hw_output_switch_get.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %hw_output_switch_get.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %hw_output_switch_get.exit

hw_output_switch_get.exit:                        ; preds = %sw.default.i, %sw.bb2.i, %sw.bb1.i, %entry.hw_output_switch_get.exit_crit_edge
  %retval.0.i = phi i32 [ 3, %sw.default.i ], [ 2, %sw.bb2.i ], [ 1, %sw.bb1.i ], [ %and.i, %entry.hw_output_switch_get.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %position)
  %cmp = icmp eq i32 %retval.0.i, %position
  br i1 %cmp, label %hw_output_switch_get.exit.cleanup_crit_edge, label %if.end

hw_output_switch_get.exit.cleanup_crit_edge:      ; preds = %hw_output_switch_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %hw_output_switch_get.exit
  %5 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 1798176
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !55
  %8 = or i32 %7, 1572864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %9 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i21 = getelementptr i8, ptr %10, i32 1798176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21, i32 %8) #11, !srcloc !57
  %11 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i23 = getelementptr i8, ptr %12, i32 1798304
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23) #11, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !55
  %14 = and i32 %13, -805306369
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %16 = zext i32 %position to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %position, label %sw.default [
    i32 0, label %if.end.sw.epilog_crit_edge
    i32 1, label %sw.bb
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %or3 = or i32 %15, 16
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %or4 = or i32 %15, 32
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb, %if.end.sw.epilog_crit_edge
  %data.0 = phi i32 [ %or4, %sw.default ], [ %or3, %sw.bb ], [ %15, %if.end.sw.epilog_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %17 = tail call i32 @llvm.bswap.i32(i32 %data.0) #11
  %18 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i25 = getelementptr i8, ptr %19, i32 1798304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 %17) #11, !srcloc !57
  %20 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i27 = getelementptr i8, ptr %21, i32 1798176
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27) #11, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !55
  %23 = and i32 %22, -1572865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %24 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i29 = getelementptr i8, ptr %25, i32 1798176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29, i32 %23) #11, !srcloc !57
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %hw_output_switch_get.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.epilog ], [ 0, %hw_output_switch_get.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hw_mic_source_switch_get(ptr nocapture noundef readonly %hw) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mic_source = getelementptr inbounds %struct.hw20k2, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %mic_source to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mic_source, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_mic_source_switch_put(ptr nocapture noundef %hw, i32 noundef %position) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mic_source = getelementptr inbounds %struct.hw20k2, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %mic_source to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mic_source, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %position)
  %cmp = icmp ne i32 %1, %position
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %position)
  %2 = icmp ult i32 %position, 3
  %or.cond = and i1 %cmp, %2
  br i1 %or.cond, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.hw_mic_source_switch_put, i32 0, i32 %position
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  tail call fastcc void @hw20k2_i2c_write(ptr noundef %hw, i16 noundef zeroext 43, i32 noundef %switch.load) #11
  tail call fastcc void @hw20k2_i2c_write(ptr noundef %hw, i16 noundef zeroext 28, i32 noundef 207) #11
  tail call fastcc void @hw20k2_i2c_write(ptr noundef %hw, i16 noundef zeroext 30, i32 noundef 207) #11
  %4 = ptrtoint ptr %mic_source to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %position, ptr %mic_source, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %switch.lookup ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @src_get_rsc_ctrl_blk(ptr nocapture noundef writeonly %rblk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rblk to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %rblk, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 28) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %rblk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %rblk, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @src_put_rsc_ctrl_blk(ptr noundef %blk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %blk) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @src_set_state(ptr noundef %blk, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @set_field(ptr noundef %blk, i32 noundef 7, i32 noundef %state) #11
  %dirty = getelementptr inbounds %struct.src_rsc_ctrl_blk, ptr %blk, i32 0, i32 6
  %0 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %dirty, align 4
  %bf.set = or i16 %bf.load, -32768
  store i16 %bf.set, ptr %dirty, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @src_set_bm(ptr noundef %blk, i32 noundef %bm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @set_field(ptr noundef %blk, i32 noundef 8, i32 noundef %bm) #11
  %dirty = getelementptr inbounds %struct.src_rsc_ctrl_blk, ptr %blk, i32 0, i32 6
  %0 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %dirty, align 4
  %bf.set = or i16 %bf.load, -32768
  store i16 %bf.set, ptr %dirty, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @src_set_rsr(ptr noundef %blk, i32 noundef %rsr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @set_field(ptr noundef %blk, i32 noundef 48, i32 noundef %rsr) #11
  %dirty = getelementptr inbounds %struct.src_rsc_ctrl_blk, ptr %blk, i32 0, i32 6
  %0 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %dirty, align 4
  %bf.set = or i16 %bf.load, -32768
  store i16 %bf.set, ptr %dirty, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @src_set_sf(ptr noundef %blk, i32 noundef %sf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @set_field(ptr noundef %blk, i32 noundef 448, i32 noundef %sf) #11
  %dirty = getelementptr inbounds %struct.src_rsc_ctrl_blk, ptr %blk, i32 0, i32 6
  %0 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %dirty, align 4
  %bf.set = or i16 %bf.load, -32768
  store i16 %bf.set, ptr %dirty, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @src_set_wr(ptr noundef %blk, i32 noundef %wr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @set_field(ptr noundef %blk, i32 noundef 512, i32 noundef %wr) #11
  %dirty = getelementptr inbounds %struct.src_rsc_ctrl_blk, ptr %blk, i32 0, i32 6
  %0 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %dirty, align 4
  %bf.set = or i16 %bf.load, -32768
  store i16 %bf.set, ptr %dirty, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @src_set_pm(ptr noundef %blk, i32 noundef %pm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @set_field(ptr noundef %blk, i32 noundef 1024, i32 noundef %pm) #11
  %dirty = getelementptr inbounds %struct.src_rsc_ctrl_blk, ptr %blk, i32 0, i32 6
  %0 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %dirty, align 4
  %bf.set = or i16 %bf.load, -32768
  store i16 %bf.set, ptr %dirty, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @src_set_rom(ptr noundef %blk, i32 noundef %rom) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @set_field(ptr noundef %blk, i32 noundef 6144, i32 noundef %rom) #11
  %dirty = getelementptr inbounds %struct.src_rsc_ctrl_blk, ptr %blk, i32 0, i32 6
  %0 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %dirty, align 4
  %bf.set = or i16 %bf.load, -32768
  store i16 %bf.set, ptr %dirty, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @src_set_vo(ptr noundef %blk, i32 noundef %vo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @set_field(ptr noundef %blk, i32 noundef 8192, i32 noundef %vo) #11
  %dirty = getelementptr inbounds %struct.src_rsc_ctrl_blk, ptr %blk, i32 0, i32 6
  %0 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %dirty, align 4
  %bf.set = or i16 %bf.load, -32768
  store i16 %bf.set, ptr %dirty, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @src_set_st(ptr noundef %blk, i32 noundef %st) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @set_field(ptr noundef %blk, i32 noundef 16384, i32 noundef %st) #11
  %dirty = getelementptr inbounds %struct.src_rsc_ctrl_blk, ptr %blk, i32 0, i32 6
  %0 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %dirty, align 4
  %bf.set = or i16 %bf.load, -32768
  store i16 %bf.set, ptr %dirty, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @src_set_ie(ptr noundef %blk, i32 noundef %ie) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @set_field(ptr noundef %blk, i32 noundef 32768, i32 noundef %ie) #11
  %dirty = getelementptr inbounds %struct.src_rsc_ctrl_blk, ptr %blk, i32 0, i32 6
  %0 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %dirty, align 4
  %bf.set = or i16 %bf.load, -32768
  store i16 %bf.set, ptr %dirty, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @src_set_ilsz(ptr noundef %blk, i32 noundef %ilsz) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @set_field(ptr noundef %blk, i32 noundef 983040, i32 noundef %ilsz) #11
  %dirty = getelementptr inbounds %struct.src_rsc_ctrl_blk, ptr %blk, i32 0, i32 6
  %0 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %dirty, align 4
  %bf.set = or i16 %bf.load, -32768
  store i16 %bf.set, ptr %dirty, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @src_set_bp(ptr noundef %blk, i32 noundef %bp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @set_field(ptr noundef %blk, i32 noundef 1048576, i32 noundef %bp) #11
  %dirty = getelementptr inbounds %struct.src_rsc_ctrl_blk, ptr %blk, i32 0, i32 6
  %0 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %dirty, align 4
  %bf.set = or i16 %bf.load, -32768
  store i16 %bf.set, ptr %dirty, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @src_set_cisz(ptr noundef %blk, i32 noundef %cisz) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ccr = getelementptr inbounds %struct.src_rsc_ctrl_blk, ptr %blk, i32 0, i32 1
  tail call void @set_field(ptr noundef %ccr, i32 noundef 2047, i32 noundef %cisz) #11
  %dirty = getelementptr inbounds %struct.src_rsc_ctrl_blk, ptr %blk, i32 0, i32 6
  %0 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %dirty, align 4
  %bf.set = or i16 %bf.load, 16384
  store i16 %bf.set, ptr %dirty, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @src_set_ca(ptr noundef %blk, i32 noundef %ca) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ca1 = getelementptr inbounds %struct.src_rsc_ctrl_blk, ptr %blk, i32 0, i32 2
  tail call void @set_field(ptr noundef %ca1, i32 noundef 268435455, i32 noundef %ca) #11
  %dirty = getelementptr inbounds %struct.src_rsc_ctrl_blk, ptr %blk, i32 0, i32 6
  %0 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %dirty, align 4
  %bf.set = or i16 %bf.load, 2048
  store i16 %bf.set, ptr %dirty, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @src_set_sa(ptr noundef %blk, i32 noundef %sa) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sa1 = getelementptr inbounds %struct.src_rsc_ctrl_blk, ptr %blk, i32 0, i32 3
  tail call void @set_field(ptr noundef %sa1, i32 noundef 268435455, i32 noundef %sa) #11
  %dirty = getelementptr inbounds %struct.src_rsc_ctrl_blk, ptr %blk, i32 0, i32 6
  %0 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %dirty, align 4
  %bf.set = or i16 %bf.load, 8192
  store i16 %bf.set, ptr %dirty, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @src_set_la(ptr noundef %blk, i32 noundef %la) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %la1 = getelementptr inbounds %struct.src_rsc_ctrl_blk, ptr %blk, i32 0, i32 4
  tail call void @set_field(ptr noundef %la1, i32 noundef 268435455, i32 noundef %la) #11
  %dirty = getelementptr inbounds %struct.src_rsc_ctrl_blk, ptr %blk, i32 0, i32 6
  %0 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %dirty, align 4
  %bf.set = or i16 %bf.load, 4096
  store i16 %bf.set, ptr %dirty, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @src_set_pitch(ptr noundef %blk, i32 noundef %pitch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mpr = getelementptr inbounds %struct.src_rsc_ctrl_blk, ptr %blk, i32 0, i32 5
  tail call void @set_field(ptr noundef %mpr, i32 noundef -1, i32 noundef %pitch) #11
  %dirty = getelementptr inbounds %struct.src_rsc_ctrl_blk, ptr %blk, i32 0, i32 6
  %0 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %dirty, align 4
  %bf.set = or i16 %bf.load, 1024
  store i16 %bf.set, ptr %dirty, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @src_set_clear_zbufs(ptr nocapture noundef %blk, i32 noundef %clear) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clear)
  %tobool.not.not = icmp eq i32 %clear, 0
  %dirty = getelementptr inbounds %struct.src_rsc_ctrl_blk, ptr %blk, i32 0, i32 6
  %0 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %dirty, align 4
  %bf.shl = select i1 %tobool.not.not, i16 0, i16 512
  %bf.clear = and i16 %bf.load, -513
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %dirty, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @src_set_dirty(ptr nocapture noundef writeonly %blk, i32 noundef %flags) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %flags to i16
  %dirty = getelementptr inbounds %struct.src_rsc_ctrl_blk, ptr %blk, i32 0, i32 6
  %0 = ptrtoint ptr %dirty to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %conv, ptr %dirty, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @src_set_dirty_all(ptr nocapture noundef writeonly %blk) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dirty = getelementptr inbounds %struct.src_rsc_ctrl_blk, ptr %blk, i32 0, i32 6
  %0 = ptrtoint ptr %dirty to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %dirty, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @src_commit_write(ptr nocapture noundef readonly %hw, i32 noundef %idx, ptr noundef %blk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dirty = getelementptr inbounds %struct.src_rsc_ctrl_blk, ptr %blk, i32 0, i32 6
  %0 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %dirty, align 4
  %1 = and i16 %bf.load, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %for.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %mul = shl i32 %idx, 8
  %add = add i32 %mul, 1704032
  %mem_base.i = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %2 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mem_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #11, !srcloc !57
  %add2.1 = add i32 %mul, 1704036
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %4 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mem_base.i, align 4
  %add.ptr.i.1 = getelementptr i8, ptr %5, i32 %add2.1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1, i32 0) #11, !srcloc !57
  %add2.2 = add i32 %mul, 1704040
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %6 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mem_base.i, align 4
  %add.ptr.i.2 = getelementptr i8, ptr %7, i32 %add2.2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.2, i32 0) #11, !srcloc !57
  %add2.3 = add i32 %mul, 1704044
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %8 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mem_base.i, align 4
  %add.ptr.i.3 = getelementptr i8, ptr %9, i32 %add2.3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.3, i32 0) #11, !srcloc !57
  %add2.4 = add i32 %mul, 1704048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %10 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mem_base.i, align 4
  %add.ptr.i.4 = getelementptr i8, ptr %11, i32 %add2.4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.4, i32 0) #11, !srcloc !57
  %add2.5 = add i32 %mul, 1704052
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %12 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mem_base.i, align 4
  %add.ptr.i.5 = getelementptr i8, ptr %13, i32 %add2.5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.5, i32 0) #11, !srcloc !57
  %add2.6 = add i32 %mul, 1704056
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %14 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mem_base.i, align 4
  %add.ptr.i.6 = getelementptr i8, ptr %15, i32 %add2.6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.6, i32 0) #11, !srcloc !57
  %add2.7 = add i32 %mul, 1704060
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %16 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mem_base.i, align 4
  %add.ptr.i.7 = getelementptr i8, ptr %17, i32 %add2.7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.7, i32 0) #11, !srcloc !57
  %add7 = add i32 %mul, 1703984
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %18 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mem_base.i, align 4
  %add.ptr.i160 = getelementptr i8, ptr %19, i32 %add7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i160, i32 0) #11, !srcloc !57
  %add9.1 = add i32 %mul, 1703988
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %20 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mem_base.i, align 4
  %add.ptr.i160.1 = getelementptr i8, ptr %21, i32 %add9.1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i160.1, i32 0) #11, !srcloc !57
  %add9.2 = add i32 %mul, 1703992
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %22 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mem_base.i, align 4
  %add.ptr.i160.2 = getelementptr i8, ptr %23, i32 %add9.2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i160.2, i32 0) #11, !srcloc !57
  %add9.3 = add i32 %mul, 1703996
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %24 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mem_base.i, align 4
  %add.ptr.i160.3 = getelementptr i8, ptr %25, i32 %add9.3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i160.3, i32 0) #11, !srcloc !57
  %add17 = add i32 %mul, 1704000
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %26 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mem_base.i, align 4
  %add.ptr.i162 = getelementptr i8, ptr %27, i32 %add17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i162, i32 0) #11, !srcloc !57
  %add19.1 = add i32 %mul, 1704004
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %28 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mem_base.i, align 4
  %add.ptr.i162.1 = getelementptr i8, ptr %29, i32 %add19.1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i162.1, i32 0) #11, !srcloc !57
  %add19.2 = add i32 %mul, 1704008
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %30 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mem_base.i, align 4
  %add.ptr.i162.2 = getelementptr i8, ptr %31, i32 %add19.2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i162.2, i32 0) #11, !srcloc !57
  %add19.3 = add i32 %mul, 1704012
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %32 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mem_base.i, align 4
  %add.ptr.i162.3 = getelementptr i8, ptr %33, i32 %add19.3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i162.3, i32 0) #11, !srcloc !57
  %add19.4 = add i32 %mul, 1704016
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %34 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mem_base.i, align 4
  %add.ptr.i162.4 = getelementptr i8, ptr %35, i32 %add19.4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i162.4, i32 0) #11, !srcloc !57
  %add19.5 = add i32 %mul, 1704020
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %36 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mem_base.i, align 4
  %add.ptr.i162.5 = getelementptr i8, ptr %37, i32 %add19.5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i162.5, i32 0) #11, !srcloc !57
  %add19.6 = add i32 %mul, 1704024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %38 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mem_base.i, align 4
  %add.ptr.i162.6 = getelementptr i8, ptr %39, i32 %add19.6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i162.6, i32 0) #11, !srcloc !57
  %add19.7 = add i32 %mul, 1704028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %40 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mem_base.i, align 4
  %add.ptr.i162.7 = getelementptr i8, ptr %41, i32 %add19.7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i162.7, i32 0) #11, !srcloc !57
  %42 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %42)
  %bf.load24 = load i16, ptr %dirty, align 4
  %bf.clear25 = and i16 %bf.load24, -513
  store i16 %bf.clear25, ptr %dirty, align 4
  br label %if.end

if.end:                                           ; preds = %for.cond.preheader, %entry.if.end_crit_edge
  %43 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %43)
  %bf.load27 = load i16, ptr %dirty, align 4
  %44 = and i16 %bf.load27, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %tobool30.not = icmp eq i16 %44, 0
  br i1 %tobool30.not, label %if.end.if.end42_crit_edge, label %if.then31

if.end.if.end42_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

if.then31:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %shl.i = shl i32 %idx, 4
  %sub.i = add i32 %shl.i, 4006
  %rem.i = and i32 %sub.i, 4086
  %mul32 = shl nuw nsw i32 %rem.i, 2
  %add33 = or i32 %mul32, 1605632
  %mpr = getelementptr inbounds %struct.src_rsc_ctrl_blk, ptr %blk, i32 0, i32 5
  %45 = ptrtoint ptr %mpr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %mpr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #11
  %mem_base.i163 = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 100
  %48 = ptrtoint ptr %mem_base.i163 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mem_base.i163, align 4
  %add.ptr.i164 = getelementptr i8, ptr %49, i32 %add33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i164, i32 %47) #11, !srcloc !57
  %mul34 = shl nuw nsw i32 %rem.i, 3
  %add35 = or i32 %mul34, 1277952
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %50 = ptrtoint ptr %mem_base.i163 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mem_base.i163, align 4
  %add.ptr.i166 = getelementptr i8, ptr %51, i32 %add35
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i166, i32 50331648) #11, !srcloc !57
  %add37 = or i32 %mul34, 1277956
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %52 = ptrtoint ptr %mem_base.i163 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mem_base.i163, align 4
  %add.ptr.i168 = getelementptr i8, ptr %53, i32 %add37
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i168, i32 0) #11, !srcloc !57
  %54 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %54)
  %bf.load39 = load i16, ptr %dirty, align 4
  %bf.clear40 = and i16 %bf.load39, -1025
  store i16 %bf.clear40, ptr %dirty, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then31, %if.end.if.end42_crit_edge
  %55 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %55)
  %bf.load44 = load i16, ptr %dirty, align 4
  %56 = and i16 %bf.load44, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %tobool47.not = icmp eq i16 %56, 0
  br i1 %tobool47.not, label %if.end42.if.end55_crit_edge, label %if.then48

if.end42.if.end55_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55

if.then48:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  %mul49 = shl i32 %idx, 8
  %add50 = add i32 %mul49, 1703960
  %sa = getelementptr inbounds %struct.src_rsc_ctrl_blk, ptr %blk, i32 0, i32 3
  %57 = ptrtoint ptr %sa to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %sa, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #11
  %mem_base.i169 = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 100
  %60 = ptrtoint ptr %mem_base.i169 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mem_base.i169, align 4
  %add.ptr.i170 = getelementptr i8, ptr %61, i32 %add50
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i170, i32 %59) #11, !srcloc !57
  %62 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %62)
  %bf.load52 = load i16, ptr %dirty, align 4
  %bf.clear53 = and i16 %bf.load52, -8193
  store i16 %bf.clear53, ptr %dirty, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then48, %if.end42.if.end55_crit_edge
  %63 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %63)
  %bf.load57 = load i16, ptr %dirty, align 4
  %64 = and i16 %bf.load57, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %64)
  %tobool60.not = icmp eq i16 %64, 0
  br i1 %tobool60.not, label %if.end55.if.end68_crit_edge, label %if.then61

if.end55.if.end68_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68

if.then61:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  %mul62 = shl i32 %idx, 8
  %add63 = add i32 %mul62, 1703964
  %la = getelementptr inbounds %struct.src_rsc_ctrl_blk, ptr %blk, i32 0, i32 4
  %65 = ptrtoint ptr %la to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %la, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #11
  %mem_base.i171 = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 100
  %68 = ptrtoint ptr %mem_base.i171 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mem_base.i171, align 4
  %add.ptr.i172 = getelementptr i8, ptr %69, i32 %add63
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i172, i32 %67) #11, !srcloc !57
  %70 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %70)
  %bf.load65 = load i16, ptr %dirty, align 4
  %bf.clear66 = and i16 %bf.load65, -4097
  store i16 %bf.clear66, ptr %dirty, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.then61, %if.end55.if.end68_crit_edge
  %71 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %71)
  %bf.load70 = load i16, ptr %dirty, align 4
  %72 = and i16 %bf.load70, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %72)
  %tobool73.not = icmp eq i16 %72, 0
  %.pre = shl i32 %idx, 8
  br i1 %tobool73.not, label %if.end68.if.end81_crit_edge, label %if.then74

if.end68.if.end81_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81

if.then74:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  %add76 = add i32 %.pre, 1703952
  %ca = getelementptr inbounds %struct.src_rsc_ctrl_blk, ptr %blk, i32 0, i32 2
  %73 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %ca, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %75 = tail call i32 @llvm.bswap.i32(i32 %74) #11
  %mem_base.i173 = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 100
  %76 = ptrtoint ptr %mem_base.i173 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %mem_base.i173, align 4
  %add.ptr.i174 = getelementptr i8, ptr %77, i32 %add76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i174, i32 %75) #11, !srcloc !57
  %78 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %78)
  %bf.load78 = load i16, ptr %dirty, align 4
  %bf.clear79 = and i16 %bf.load78, -2049
  store i16 %bf.clear79, ptr %dirty, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.then74, %if.end68.if.end81_crit_edge
  %add83 = add i32 %.pre, 1703956
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %mem_base.i175 = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 100
  %79 = ptrtoint ptr %mem_base.i175 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %mem_base.i175, align 4
  %add.ptr.i176 = getelementptr i8, ptr %80, i32 %add83
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i176, i32 0) #11, !srcloc !57
  %81 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %81)
  %bf.load85 = load i16, ptr %dirty, align 4
  %82 = and i16 %bf.load85, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %82)
  %tobool88.not = icmp eq i16 %82, 0
  br i1 %tobool88.not, label %if.end81.if.end96_crit_edge, label %if.then89

if.end81.if.end96_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end96

if.then89:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #13
  %add91 = add i32 %.pre, 1703940
  %ccr = getelementptr inbounds %struct.src_rsc_ctrl_blk, ptr %blk, i32 0, i32 1
  %83 = ptrtoint ptr %ccr to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %ccr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #11
  %86 = ptrtoint ptr %mem_base.i175 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %mem_base.i175, align 4
  %add.ptr.i178 = getelementptr i8, ptr %87, i32 %add91
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i178, i32 %85) #11, !srcloc !57
  %88 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %88)
  %bf.load93 = load i16, ptr %dirty, align 4
  %bf.clear94 = and i16 %bf.load93, -16385
  store i16 %bf.clear94, ptr %dirty, align 4
  br label %if.end96

if.end96:                                         ; preds = %if.then89, %if.end81.if.end96_crit_edge
  %bf.load98 = phi i16 [ %bf.clear94, %if.then89 ], [ %bf.load85, %if.end81.if.end96_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load98)
  %tobool100.not = icmp sgt i16 %bf.load98, -1
  br i1 %tobool100.not, label %if.end96.if.end109_crit_edge, label %if.then101

if.end96.if.end109_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end109

if.then101:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #13
  %add103 = add i32 %.pre, 1703936
  %89 = ptrtoint ptr %blk to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %blk, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #11
  %92 = ptrtoint ptr %mem_base.i175 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %mem_base.i175, align 4
  %add.ptr.i180 = getelementptr i8, ptr %93, i32 %add103
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i180, i32 %91) #11, !srcloc !57
  %94 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %94)
  %bf.load106 = load i16, ptr %dirty, align 4
  %bf.clear107 = and i16 %bf.load106, 32767
  store i16 %bf.clear107, ptr %dirty, align 4
  br label %if.end109

if.end109:                                        ; preds = %if.then101, %if.end96.if.end109_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @src_get_ca(ptr nocapture noundef readonly %hw, i32 noundef %idx, ptr nocapture noundef %blk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %idx, 8
  %add = add i32 %mul, 1703952
  %mem_base.i = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 100
  %0 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %add
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !54
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !55
  %ca = getelementptr inbounds %struct.src_rsc_ctrl_blk, ptr %blk, i32 0, i32 2
  %4 = ptrtoint ptr %ca to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %ca, align 4
  %dirty = getelementptr inbounds %struct.src_rsc_ctrl_blk, ptr %blk, i32 0, i32 6
  %5 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load = load i16, ptr %dirty, align 4
  %bf.clear = and i16 %bf.load, -2049
  store i16 %bf.clear, ptr %dirty, align 4
  %call2 = tail call i32 @get_field(i32 noundef %3, i32 noundef 268435455) #11
  ret i32 %call2
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @src_get_dirty(ptr nocapture noundef readonly %blk) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dirty = getelementptr inbounds %struct.src_rsc_ctrl_blk, ptr %blk, i32 0, i32 6
  %0 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %dirty, align 4
  %conv = zext i16 %1 to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @src_dirty_conj_mask() #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 32
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @src_mgr_get_ctrl_blk(ptr nocapture noundef writeonly %rblk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rblk to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %rblk, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 40) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %rblk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %rblk, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @src_mgr_put_ctrl_blk(ptr noundef %blk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %blk) #11
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @src_mgr_enbs_src(ptr nocapture noundef %blk, i32 noundef %idx) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rem = lshr i32 %idx, 2
  %div9 = and i32 %rem, 31
  %shl = shl nuw i32 1, %div9
  %0 = ptrtoint ptr %blk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %blk, align 4
  %or = or i32 %1, %shl
  store i32 %or, ptr %blk, align 4
  %dirty = getelementptr inbounds %struct.src_mgr_ctrl_blk, ptr %blk, i32 0, i32 2
  %2 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %dirty, align 4
  %bf.set = or i16 %bf.load, 128
  store i16 %bf.set, ptr %dirty, align 4
  %rem1 = and i32 %idx, 31
  %shl2 = shl nuw i32 1, %rem1
  %div310 = lshr i32 %idx, 5
  %arrayidx = getelementptr %struct.src_mgr_ctrl_blk, ptr %blk, i32 0, i32 1, i32 %div310
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %or4 = or i32 %4, %shl2
  store i32 %or4, ptr %arrayidx, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @src_mgr_enb_src(ptr nocapture noundef %blk, i32 noundef %idx) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rem = and i32 %idx, 31
  %shl = shl nuw i32 1, %rem
  %div8 = lshr i32 %idx, 5
  %arrayidx = getelementptr %struct.src_mgr_ctrl_blk, ptr %blk, i32 0, i32 1, i32 %div8
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %or = or i32 %1, %shl
  store i32 %or, ptr %arrayidx, align 4
  %shl2 = shl nuw i32 1, %div8
  %dirty = getelementptr inbounds %struct.src_mgr_ctrl_blk, ptr %blk, i32 0, i32 2
  %2 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %dirty, align 4
  %4 = trunc i32 %shl2 to i16
  %conv4 = or i16 %3, %4
  store i16 %conv4, ptr %dirty, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @src_mgr_dsb_src(ptr nocapture noundef %blk, i32 noundef %idx) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rem = and i32 %idx, 31
  %shl = shl nuw i32 1, %rem
  %neg = xor i32 %shl, -1
  %div7 = lshr i32 %idx, 5
  %arrayidx = getelementptr %struct.src_mgr_ctrl_blk, ptr %blk, i32 0, i32 1, i32 %div7
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %and = and i32 %1, %neg
  store i32 %and, ptr %arrayidx, align 4
  %shl2 = shl nuw i32 1, %div7
  %dirty = getelementptr inbounds %struct.src_mgr_ctrl_blk, ptr %blk, i32 0, i32 2
  %2 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %dirty, align 4
  %4 = trunc i32 %shl2 to i16
  %conv3 = or i16 %3, %4
  store i16 %conv3, ptr %dirty, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @src_mgr_commit_write(ptr nocapture noundef readonly %hw, ptr nocapture noundef %blk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dirty = getelementptr inbounds %struct.src_mgr_ctrl_blk, ptr %blk, i32 0, i32 2
  %0 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %dirty, align 4
  %1 = and i16 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.body.preheader:                                ; preds = %entry
  %mem_base.i = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 100
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.preheader
  %2 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mem_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 1712172
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !55
  %5 = and i32 %4, 16777216
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %blk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %blk, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #11
  %9 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mem_base.i, align 4
  %add.ptr.i28 = getelementptr i8, ptr %10, i32 1712940
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28, i32 %8) #11, !srcloc !57
  %11 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load3 = load i16, ptr %dirty, align 4
  %bf.clear4 = and i16 %bf.load3, -129
  store i16 %bf.clear4, ptr %dirty, align 4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %mem_base.i29 = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 100
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %i.031 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %12 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %dirty, align 4
  %conv = zext i16 %13 to i32
  %shl = shl nuw nsw i32 1, %i.031
  %and6 = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %for.body.for.inc_crit_edge, label %if.then8

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then8:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %mul = shl i32 %i.031, 8
  %add = add nuw nsw i32 %mul, 1714220
  %arrayidx = getelementptr %struct.src_mgr_ctrl_blk, ptr %blk, i32 0, i32 1, i32 %i.031
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #11
  %17 = ptrtoint ptr %mem_base.i29 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mem_base.i29, align 4
  %add.ptr.i30 = getelementptr i8, ptr %18, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 %16) #11, !srcloc !57
  %19 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %dirty, align 4
  %21 = trunc i32 %shl to i16
  %22 = xor i16 %21, -1
  %conv13 = and i16 %20, %22
  store i16 %conv13, ptr %dirty, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then8, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.031, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @srcimp_mgr_get_ctrl_blk(ptr nocapture noundef writeonly %rblk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rblk to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %rblk, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 12) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %rblk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %rblk, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @srcimp_mgr_put_ctrl_blk(ptr noundef %blk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %blk) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @srcimp_mgr_set_imaparc(ptr noundef %blk, i32 noundef %slot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @set_field(ptr noundef %blk, i32 noundef 4095, i32 noundef %slot) #11
  %dirty = getelementptr inbounds %struct.srcimp_mgr_ctrl_blk, ptr %blk, i32 0, i32 1
  %0 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %dirty, align 4
  %bf.set = or i16 %bf.load, -32768
  store i16 %bf.set, ptr %dirty, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @srcimp_mgr_set_imapuser(ptr noundef %blk, i32 noundef %user) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @set_field(ptr noundef %blk, i32 noundef -16777216, i32 noundef %user) #11
  %dirty = getelementptr inbounds %struct.srcimp_mgr_ctrl_blk, ptr %blk, i32 0, i32 1
  %0 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %dirty, align 4
  %bf.set = or i16 %bf.load, -32768
  store i16 %bf.set, ptr %dirty, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @srcimp_mgr_set_imapnxt(ptr noundef %blk, i32 noundef %next) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @set_field(ptr noundef %blk, i32 noundef 16711680, i32 noundef %next) #11
  %dirty = getelementptr inbounds %struct.srcimp_mgr_ctrl_blk, ptr %blk, i32 0, i32 1
  %0 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %dirty, align 4
  %bf.set = or i16 %bf.load, -32768
  store i16 %bf.set, ptr %dirty, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @srcimp_mgr_set_imapaddr(ptr nocapture noundef %blk, i32 noundef %addr) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %idx = getelementptr inbounds %struct.srcimap, ptr %blk, i32 0, i32 1
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %addr, ptr %idx, align 4
  %dirty = getelementptr inbounds %struct.srcimp_mgr_ctrl_blk, ptr %blk, i32 0, i32 1
  %1 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %1)
  %bf.load = load i16, ptr %dirty, align 4
  %bf.set = or i16 %bf.load, -32768
  store i16 %bf.set, ptr %dirty, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @srcimp_mgr_commit_write(ptr nocapture noundef readonly %hw, ptr nocapture noundef %blk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dirty = getelementptr inbounds %struct.srcimp_mgr_ctrl_blk, ptr %blk, i32 0, i32 1
  %0 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %dirty, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %idx = getelementptr inbounds %struct.srcimap, ptr %blk, i32 0, i32 1
  %1 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %idx, align 4
  %mul = shl i32 %2, 8
  %add = add i32 %mul, 1703944
  %3 = ptrtoint ptr %blk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %blk, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #11
  %mem_base.i = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 100
  %6 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mem_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %5) #11, !srcloc !57
  %8 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load3 = load i16, ptr %dirty, align 4
  %bf.clear = and i16 %bf.load3, 32767
  store i16 %bf.clear, ptr %dirty, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amixer_rsc_get_ctrl_blk(ptr nocapture noundef writeonly %rblk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rblk to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %rblk, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 12) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %rblk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %rblk, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amixer_rsc_put_ctrl_blk(ptr noundef %blk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %blk) #11
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @amixer_mgr_get_ctrl_blk(ptr nocapture noundef writeonly %rblk) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rblk to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %rblk, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @amixer_mgr_put_ctrl_blk(ptr nocapture noundef readnone %blk) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amixer_set_mode(ptr noundef %blk, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @set_field(ptr noundef %blk, i32 noundef 3, i32 noundef %mode) #11
  %dirty = getelementptr inbounds %struct.amixer_rsc_ctrl_blk, ptr %blk, i32 0, i32 2
  %0 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %dirty, align 4
  %bf.set = or i16 %bf.load, -32768
  store i16 %bf.set, ptr %dirty, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amixer_set_iv(ptr noundef %blk, i32 noundef %iv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @set_field(ptr noundef %blk, i32 noundef 4, i32 noundef %iv) #11
  %dirty = getelementptr inbounds %struct.amixer_rsc_ctrl_blk, ptr %blk, i32 0, i32 2
  %0 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %dirty, align 4
  %bf.set = or i16 %bf.load, -32768
  store i16 %bf.set, ptr %dirty, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amixer_set_x(ptr noundef %blk, i32 noundef %x) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @set_field(ptr noundef %blk, i32 noundef 262128, i32 noundef %x) #11
  %dirty = getelementptr inbounds %struct.amixer_rsc_ctrl_blk, ptr %blk, i32 0, i32 2
  %0 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %dirty, align 4
  %bf.set = or i16 %bf.load, -32768
  store i16 %bf.set, ptr %dirty, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amixer_set_y(ptr noundef %blk, i32 noundef %y) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @set_field(ptr noundef %blk, i32 noundef -262144, i32 noundef %y) #11
  %dirty = getelementptr inbounds %struct.amixer_rsc_ctrl_blk, ptr %blk, i32 0, i32 2
  %0 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %dirty, align 4
  %bf.set = or i16 %bf.load, -32768
  store i16 %bf.set, ptr %dirty, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amixer_set_sadr(ptr noundef %blk, i32 noundef %sadr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %amophi = getelementptr inbounds %struct.amixer_rsc_ctrl_blk, ptr %blk, i32 0, i32 1
  tail call void @set_field(ptr noundef %amophi, i32 noundef 255, i32 noundef %sadr) #11
  %dirty = getelementptr inbounds %struct.amixer_rsc_ctrl_blk, ptr %blk, i32 0, i32 2
  %0 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %dirty, align 4
  %bf.set = or i16 %bf.load, 16384
  store i16 %bf.set, ptr %dirty, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amixer_set_se(ptr noundef %blk, i32 noundef %se) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %amophi = getelementptr inbounds %struct.amixer_rsc_ctrl_blk, ptr %blk, i32 0, i32 1
  tail call void @set_field(ptr noundef %amophi, i32 noundef -2147483648, i32 noundef %se) #11
  %dirty = getelementptr inbounds %struct.amixer_rsc_ctrl_blk, ptr %blk, i32 0, i32 2
  %0 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %dirty, align 4
  %bf.set = or i16 %bf.load, 16384
  store i16 %bf.set, ptr %dirty, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @amixer_set_dirty(ptr nocapture noundef writeonly %blk, i32 noundef %flags) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %flags to i16
  %dirty = getelementptr inbounds %struct.amixer_rsc_ctrl_blk, ptr %blk, i32 0, i32 2
  %0 = ptrtoint ptr %dirty to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %conv, ptr %dirty, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @amixer_set_dirty_all(ptr nocapture noundef writeonly %blk) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dirty = getelementptr inbounds %struct.amixer_rsc_ctrl_blk, ptr %blk, i32 0, i32 2
  %0 = ptrtoint ptr %dirty to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %dirty, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amixer_commit_write(ptr nocapture noundef readonly %hw, i32 noundef %idx, ptr nocapture noundef %blk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dirty = getelementptr inbounds %struct.amixer_rsc_ctrl_blk, ptr %blk, i32 0, i32 2
  %0 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %dirty, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %bf.load)
  %1 = icmp ult i16 %bf.load, 16384
  br i1 %1, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %mul = shl i32 %idx, 3
  %add = add i32 %mul, 1245184
  %2 = ptrtoint ptr %blk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %blk, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #11
  %mem_base.i = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 100
  %5 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mem_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #11, !srcloc !57
  %7 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load7 = load i16, ptr %dirty, align 4
  %bf.clear8 = and i16 %bf.load7, 32767
  store i16 %bf.clear8, ptr %dirty, align 4
  %add10 = add i32 %mul, 1245188
  %amophi = getelementptr inbounds %struct.amixer_rsc_ctrl_blk, ptr %blk, i32 0, i32 1
  %8 = ptrtoint ptr %amophi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %amophi, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #11
  %11 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mem_base.i, align 4
  %add.ptr.i23 = getelementptr i8, ptr %12, i32 %add10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23, i32 %10) #11, !srcloc !57
  %13 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load12 = load i16, ptr %dirty, align 4
  %bf.clear13 = and i16 %bf.load12, -16385
  store i16 %bf.clear13, ptr %dirty, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amixer_get_y(ptr nocapture noundef readonly %blk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %blk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %blk, align 4
  %call = tail call i32 @get_field(i32 noundef %1, i32 noundef -262144) #11
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @amixer_get_dirty(ptr nocapture noundef readonly %blk) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dirty = getelementptr inbounds %struct.amixer_rsc_ctrl_blk, ptr %blk, i32 0, i32 2
  %0 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %dirty, align 4
  %conv = zext i16 %1 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dai_get_ctrl_blk(ptr nocapture noundef writeonly %rblk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rblk to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %rblk, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 8) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %rblk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %rblk, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dai_put_ctrl_blk(ptr noundef %blk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %blk) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dai_srt_set_srco(ptr noundef %blk, i32 noundef %src) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @set_field(ptr noundef %blk, i32 noundef 255, i32 noundef %src) #11
  %dirty = getelementptr inbounds %struct.dai_ctrl_blk, ptr %blk, i32 0, i32 1
  %0 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %dirty, align 4
  %bf.set = or i16 %bf.load, -32768
  store i16 %bf.set, ptr %dirty, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dai_srt_set_srcm(ptr noundef %blk, i32 noundef %src) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @set_field(ptr noundef %blk, i32 noundef 65280, i32 noundef %src) #11
  %dirty = getelementptr inbounds %struct.dai_ctrl_blk, ptr %blk, i32 0, i32 1
  %0 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %dirty, align 4
  %bf.set = or i16 %bf.load, -32768
  store i16 %bf.set, ptr %dirty, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dai_srt_set_rsr(ptr noundef %blk, i32 noundef %rsr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @set_field(ptr noundef %blk, i32 noundef 196608, i32 noundef %rsr) #11
  %dirty = getelementptr inbounds %struct.dai_ctrl_blk, ptr %blk, i32 0, i32 1
  %0 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %dirty, align 4
  %bf.set = or i16 %bf.load, -32768
  store i16 %bf.set, ptr %dirty, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dai_srt_set_drat(ptr noundef %blk, i32 noundef %drat) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @set_field(ptr noundef %blk, i32 noundef 3145728, i32 noundef %drat) #11
  %dirty = getelementptr inbounds %struct.dai_ctrl_blk, ptr %blk, i32 0, i32 1
  %0 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %dirty, align 4
  %bf.set = or i16 %bf.load, -32768
  store i16 %bf.set, ptr %dirty, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dai_srt_set_ec(ptr noundef %blk, i32 noundef %ec) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ec)
  %tobool.not = icmp ne i32 %ec, 0
  %cond = zext i1 %tobool.not to i32
  tail call void @set_field(ptr noundef %blk, i32 noundef 16777216, i32 noundef %cond) #11
  %dirty = getelementptr inbounds %struct.dai_ctrl_blk, ptr %blk, i32 0, i32 1
  %0 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %dirty, align 4
  %bf.set = or i16 %bf.load, -32768
  store i16 %bf.set, ptr %dirty, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dai_srt_set_et(ptr noundef %blk, i32 noundef %et) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %et)
  %tobool.not = icmp ne i32 %et, 0
  %cond = zext i1 %tobool.not to i32
  tail call void @set_field(ptr noundef %blk, i32 noundef 268435456, i32 noundef %cond) #11
  %dirty = getelementptr inbounds %struct.dai_ctrl_blk, ptr %blk, i32 0, i32 1
  %0 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %dirty, align 4
  %bf.set = or i16 %bf.load, -32768
  store i16 %bf.set, ptr %dirty, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dai_commit_write(ptr nocapture noundef readonly %hw, i32 noundef %idx, ptr nocapture noundef %blk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dirty = getelementptr inbounds %struct.dai_ctrl_blk, ptr %blk, i32 0, i32 1
  %0 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %dirty, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %mul = shl i32 %idx, 6
  %add = add i32 %mul, 1791008
  %1 = ptrtoint ptr %blk to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %blk, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #11
  %mem_base.i = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 100
  %4 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mem_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %3) #11, !srcloc !57
  %6 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load2 = load i16, ptr %dirty, align 4
  %bf.clear = and i16 %bf.load2, 32767
  store i16 %bf.clear, ptr %dirty, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dao_get_ctrl_blk(ptr nocapture noundef writeonly %rblk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rblk to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %rblk, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 8) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %rblk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %rblk, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dao_put_ctrl_blk(ptr noundef %blk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %blk) #11
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dao_set_spos(ptr nocapture noundef %blk, i32 noundef %spos) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %blk to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %spos, ptr %blk, align 4
  %dirty = getelementptr inbounds %struct.dao_ctrl_blk, ptr %blk, i32 0, i32 1
  %1 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %1)
  %bf.load = load i16, ptr %dirty, align 4
  %bf.set = or i16 %bf.load, -32768
  store i16 %bf.set, ptr %dirty, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dao_commit_write(ptr nocapture noundef readonly %hw, i32 noundef %idx, ptr nocapture noundef %blk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dirty = getelementptr inbounds %struct.dao_ctrl_blk, ptr %blk, i32 0, i32 1
  %0 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %dirty, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %idx)
  %cmp = icmp ult i32 %idx, 4
  br i1 %cmp, label %if.then1, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %mul = shl nuw nsw i32 %idx, 6
  %add = add nuw nsw i32 %mul, 1790984
  %1 = ptrtoint ptr %blk to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %blk, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #11
  %mem_base.i = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 100
  %4 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mem_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %3) #11, !srcloc !57
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then.if.end_crit_edge
  %6 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load3 = load i16, ptr %dirty, align 4
  %bf.clear = and i16 %bf.load3, 32767
  store i16 %bf.clear, ptr %dirty, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry.if.end4_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dao_get_spos(ptr nocapture noundef readonly %blk, ptr nocapture noundef writeonly %spos) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %blk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %blk, align 4
  %2 = ptrtoint ptr %spos to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %spos, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @daio_mgr_get_ctrl_blk(ptr nocapture noundef readonly %hw, ptr nocapture noundef writeonly %rblk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rblk to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %rblk, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 76) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %mem_base.i = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 100
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader
  %i.019 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.body.for.body_crit_edge ]
  %mul = shl i32 %i.019, 6
  %add = add nuw nsw i32 %mul, 1790976
  %2 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mem_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %add
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !54
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !55
  %arrayidx = getelementptr %struct.daio_mgr_ctrl_blk, ptr %call7.i.i, i32 0, i32 1, i32 %i.019
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %arrayidx, align 4
  %add3 = add nuw nsw i32 %mul, 1790992
  %7 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mem_base.i, align 4
  %add.ptr.i18 = getelementptr i8, ptr %8, i32 %add3
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18) #11, !srcloc !54
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !55
  %arrayidx5 = getelementptr %struct.daio_mgr_ctrl_blk, ptr %call7.i.i, i32 0, i32 2, i32 %i.019
  %11 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx5, align 4
  %inc = add nuw nsw i32 %i.019, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %rblk to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i, ptr %rblk, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @daio_mgr_put_ctrl_blk(ptr noundef %blk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %blk) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @daio_mgr_enb_dai(ptr noundef %blk, i32 noundef %idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.daio_mgr_ctrl_blk, ptr %blk, i32 0, i32 2, i32 %idx
  tail call void @set_field(ptr noundef %arrayidx, i32 noundef 1, i32 noundef 1) #11
  %dirty = getelementptr inbounds %struct.daio_mgr_ctrl_blk, ptr %blk, i32 0, i32 3
  %0 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %dirty, align 4
  %or5 = shl i32 65536, %idx
  %1 = and i32 %or5, 16711680
  %bf.set = or i32 %bf.load, %1
  store i32 %bf.set, ptr %dirty, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @daio_mgr_dsb_dai(ptr noundef %blk, i32 noundef %idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.daio_mgr_ctrl_blk, ptr %blk, i32 0, i32 2, i32 %idx
  tail call void @set_field(ptr noundef %arrayidx, i32 noundef 1, i32 noundef 0) #11
  %dirty = getelementptr inbounds %struct.daio_mgr_ctrl_blk, ptr %blk, i32 0, i32 3
  %0 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %dirty, align 4
  %or5 = shl i32 65536, %idx
  %1 = and i32 %or5, 16711680
  %bf.set = or i32 %bf.load, %1
  store i32 %bf.set, ptr %dirty, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @daio_mgr_enb_dao(ptr noundef %blk, i32 noundef %idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.daio_mgr_ctrl_blk, ptr %blk, i32 0, i32 1, i32 %idx
  tail call void @set_field(ptr noundef %arrayidx, i32 noundef 1, i32 noundef 1) #11
  %dirty = getelementptr inbounds %struct.daio_mgr_ctrl_blk, ptr %blk, i32 0, i32 3
  %0 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %dirty, align 4
  %bf.value4 = shl i32 16777216, %idx
  %bf.load.masked = and i32 %bf.load, -16777216
  %bf.shl = or i32 %bf.load.masked, %bf.value4
  %bf.clear = and i32 %bf.load, 16777215
  %bf.set = or i32 %bf.shl, %bf.clear
  store i32 %bf.set, ptr %dirty, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @daio_mgr_dsb_dao(ptr noundef %blk, i32 noundef %idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.daio_mgr_ctrl_blk, ptr %blk, i32 0, i32 1, i32 %idx
  tail call void @set_field(ptr noundef %arrayidx, i32 noundef 1, i32 noundef 0) #11
  %dirty = getelementptr inbounds %struct.daio_mgr_ctrl_blk, ptr %blk, i32 0, i32 3
  %0 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %dirty, align 4
  %bf.value4 = shl i32 16777216, %idx
  %bf.load.masked = and i32 %bf.load, -16777216
  %bf.shl = or i32 %bf.load.masked, %bf.value4
  %bf.clear = and i32 %bf.load, 16777215
  %bf.set = or i32 %bf.shl, %bf.clear
  store i32 %bf.set, ptr %dirty, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @daio_mgr_dao_init(ptr noundef %blk, i32 noundef %idx, i32 noundef %conf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %idx)
  %cmp = icmp ult i32 %idx, 4
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %and = and i32 %conf, 15
  %switch.tableidx = add nsw i32 %and, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 8
  br i1 %0, label %switch.hole_check, label %if.then.sw.epilog_crit_edge

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

switch.hole_check:                                ; preds = %if.then
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -117, %switch.maskindex
  %1 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %switch.lobit.not = icmp eq i8 %1, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.epilog_crit_edge, label %switch.lookup

switch.hole_check.sw.epilog_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.daio_mgr_dao_init, i32 0, i32 %switch.tableidx
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %2)
  %switch.load = load i32, ptr %switch.gep, align 4
  %arrayidx9 = getelementptr %struct.daio_mgr_ctrl_blk, ptr %blk, i32 0, i32 1, i32 %idx
  tail call void @set_field(ptr noundef %arrayidx9, i32 noundef 12288, i32 noundef %switch.load) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %switch.hole_check.sw.epilog_crit_edge, %if.then.sw.epilog_crit_edge
  %arrayidx11 = getelementptr %struct.daio_mgr_ctrl_blk, ptr %blk, i32 0, i32 1, i32 %idx
  %and12 = and i32 %conf, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool.not = icmp eq i32 %and12, 0
  %lnot.ext = zext i1 %tobool.not to i32
  tail call void @set_field(ptr noundef %arrayidx11, i32 noundef 32, i32 noundef %lnot.ext) #11
  %shr = lshr i32 %conf, 4
  %and15 = and i32 %shr, 1
  tail call void @set_field(ptr noundef %arrayidx11, i32 noundef 536870912, i32 noundef %and15) #11
  tail call void @set_field(ptr noundef %arrayidx11, i32 noundef 268435456, i32 noundef %and15) #11
  tail call void @set_field(ptr noundef %arrayidx11, i32 noundef 256, i32 noundef 0) #11
  %dirty = getelementptr inbounds %struct.daio_mgr_ctrl_blk, ptr %blk, i32 0, i32 3
  %3 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %3)
  %bf.load = load i32, ptr %dirty, align 4
  %bf.value47 = shl nuw nsw i32 16777216, %idx
  %bf.load.masked = and i32 %bf.load, -16777216
  %bf.shl = or i32 %bf.load.masked, %bf.value47
  %bf.clear = and i32 %bf.load, 16777215
  %bf.set = or i32 %bf.shl, %bf.clear
  store i32 %bf.set, ptr %dirty, align 4
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @daio_mgr_set_imaparc(ptr noundef %blk, i32 noundef %slot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @set_field(ptr noundef %blk, i32 noundef 4095, i32 noundef %slot) #11
  %dirty = getelementptr inbounds %struct.daio_mgr_ctrl_blk, ptr %blk, i32 0, i32 3
  %0 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %dirty, align 4
  %bf.set = or i32 %bf.load, 32768
  store i32 %bf.set, ptr %dirty, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @daio_mgr_set_imapnxt(ptr noundef %blk, i32 noundef %next) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @set_field(ptr noundef %blk, i32 noundef 8323072, i32 noundef %next) #11
  %dirty = getelementptr inbounds %struct.daio_mgr_ctrl_blk, ptr %blk, i32 0, i32 3
  %0 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %dirty, align 4
  %bf.set = or i32 %bf.load, 32768
  store i32 %bf.set, ptr %dirty, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @daio_mgr_set_imapaddr(ptr nocapture noundef %blk, i32 noundef %addr) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %idx = getelementptr inbounds %struct.daoimap, ptr %blk, i32 0, i32 1
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %addr, ptr %idx, align 4
  %dirty = getelementptr inbounds %struct.daio_mgr_ctrl_blk, ptr %blk, i32 0, i32 3
  %1 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %1)
  %bf.load = load i32, ptr %dirty, align 4
  %bf.set = or i32 %bf.load, 32768
  store i32 %bf.set, ptr %dirty, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @daio_mgr_commit_write(ptr nocapture noundef readonly %hw, ptr nocapture noundef %blk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dirty = getelementptr inbounds %struct.daio_mgr_ctrl_blk, ptr %blk, i32 0, i32 3
  %mem_base.i = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 100
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.074 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %0 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %dirty, align 4
  %bf.lshr = lshr i32 %bf.load, 24
  %shl = shl nuw nsw i32 1, %i.074
  %and = and i32 %bf.lshr, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr %struct.daio_mgr_ctrl_blk, ptr %blk, i32 0, i32 1, i32 %i.074
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %mul = shl i32 %i.074, 6
  %add = add nuw nsw i32 %mul, 1790976
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #11
  %4 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mem_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %3) #11, !srcloc !57
  %neg = xor i32 %shl, -1
  %6 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load3 = load i32, ptr %dirty, align 4
  %and567 = shl i32 %neg, 24
  %bf.lshr46869 = or i32 %and567, 16777215
  %bf.set = and i32 %bf.load3, %bf.lshr46869
  store i32 %bf.set, ptr %dirty, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %8 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load8 = load i32, ptr %dirty, align 4
  %bf.lshr9 = lshr i32 %bf.load8, 16
  %bf.clear10 = and i32 %shl, 255
  %and12 = and i32 %bf.clear10, %bf.lshr9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end.for.inc_crit_edge, label %if.then14

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx15 = getelementptr %struct.daio_mgr_ctrl_blk, ptr %blk, i32 0, i32 2, i32 %i.074
  %9 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx15, align 4
  %mul16 = shl i32 %i.074, 6
  %add17 = add nuw nsw i32 %mul16, 1790992
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #11
  %12 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mem_base.i, align 4
  %add.ptr.i71 = getelementptr i8, ptr %13, i32 %add17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i71, i32 %11) #11, !srcloc !57
  %neg19 = xor i32 %shl, -1
  %14 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %14)
  %bf.load21 = load i32, ptr %dirty, align 4
  %and2466 = shl i32 %neg19, 16
  %bf.shl2776 = or i32 %and2466, -16711681
  %bf.set29 = and i32 %bf.shl2776, %bf.load21
  store i32 %bf.set29, ptr %dirty, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then14, %if.end.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.074, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  %16 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %16)
  %bf.load32 = load i32, ptr %dirty, align 4
  %17 = and i32 %bf.load32, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool35.not = icmp eq i32 %17, 0
  br i1 %tobool35.not, label %for.end.if.end44_crit_edge, label %if.then36

for.end.if.end44_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

if.then36:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %idx = getelementptr inbounds %struct.daoimap, ptr %blk, i32 0, i32 1
  %18 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %idx, align 4
  %mul37 = shl i32 %19, 2
  %add38 = add i32 %mul37, 1789952
  %20 = ptrtoint ptr %blk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %blk, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #11
  %23 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mem_base.i, align 4
  %add.ptr.i73 = getelementptr i8, ptr %24, i32 %add38
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i73, i32 %22) #11, !srcloc !57
  %25 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %25)
  %bf.load41 = load i32, ptr %dirty, align 4
  %bf.clear42 = and i32 %bf.load41, -32769
  store i32 %bf.clear42, ptr %dirty, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then36, %for.end.if.end44_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_timer_irq(ptr nocapture noundef readonly %hw, i32 noundef %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %cond = select i1 %tobool.not, i32 0, i32 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %mem_base.i = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 100
  %0 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1798164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %cond) #11, !srcloc !57
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_timer_tick(ptr nocapture noundef readonly %hw, i32 noundef %ticks) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ticks)
  %tobool.not = icmp eq i32 %ticks, 0
  %or = or i32 %ticks, 49152
  %spec.select = select i1 %tobool.not, i32 0, i32 %or
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %0 = tail call i32 @llvm.bswap.i32(i32 %spec.select) #11
  %mem_base.i = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 100
  %1 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mem_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 1798148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %0) #11, !srcloc !57
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_wc(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mem_base.i = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 100
  %0 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1798144
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !54
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !55
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_field(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ct_20k2_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mem_base.i = getelementptr inbounds %struct.hw, ptr %dev_id, i32 0, i32 100
  %0 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1798160
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !54
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %irq_callback = getelementptr inbounds %struct.hw, ptr %dev_id, i32 0, i32 94
  %4 = ptrtoint ptr %irq_callback to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_callback, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %irq_callback_data = getelementptr inbounds %struct.hw, ptr %dev_id, i32 0, i32 95
  %6 = ptrtoint ptr %irq_callback_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_callback_data, align 4
  tail call void %5(ptr noundef %7, i32 noundef %3) #11
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %8 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mem_base.i, align 4
  %add.ptr.i13 = getelementptr i8, ptr %9, i32 1798160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 %2) #11, !srcloc !57
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end4 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_field(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_alert(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hw20k2_i2c_init(ptr nocapture noundef %hw, i8 noundef zeroext %dev_id) unnamed_addr #0 align 64 {
entry:
  %i2c_status = alloca i32, align 4
  %i2c_addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i2c_status) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i2c_addr) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %mem_base.i.i = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 100
  %0 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 1806352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -1291845632) #11, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %2 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %3, i32 1806352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 -738197504) #11, !srcloc !57
  %4 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %5, i32 1806352
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i) #11, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !55
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1442840576, i32 %6)
  %cmp.i.not = icmp eq i32 %6, -1442840576
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %addr_size1 = getelementptr inbounds %struct.hw20k2, ptr %hw, i32 0, i32 2
  %7 = ptrtoint ptr %addr_size1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %addr_size1, align 1
  %data_size2 = getelementptr inbounds %struct.hw20k2, ptr %hw, i32 0, i32 3
  %8 = ptrtoint ptr %data_size2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %data_size2, align 2
  %dev_id3 = getelementptr inbounds %struct.hw20k2, ptr %hw, i32 0, i32 1
  %9 = ptrtoint ptr %dev_id3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %dev_id, ptr %dev_id3, align 4
  %10 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %i2c_addr, align 4
  %conv = zext i8 %dev_id to i32
  call void @set_field(ptr noundef nonnull %i2c_addr, i32 noundef 8323072, i32 noundef %conv) #11
  %11 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i2c_addr, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  call void @arm_heavy_mb() #11
  %13 = call i32 @llvm.bswap.i32(i32 %12) #11
  %14 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 1806336
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %13) #11, !srcloc !57
  %16 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i2 = getelementptr i8, ptr %17, i32 1806348
  %18 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2) #11, !srcloc !54
  %19 = call i32 @llvm.bswap.i32(i32 %18) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !55
  %20 = ptrtoint ptr %i2c_status to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %i2c_status, align 4
  call void @set_field(ptr noundef nonnull %i2c_status, i32 noundef 1, i32 noundef 1) #11
  %21 = ptrtoint ptr %i2c_status to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %i2c_status, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  call void @arm_heavy_mb() #11
  %23 = call i32 @llvm.bswap.i32(i32 %22) #11
  %24 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mem_base.i.i, align 4
  %add.ptr.i4 = getelementptr i8, ptr %25, i32 1806348
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 %23) #11, !srcloc !57
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i2c_addr) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i2c_status) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hw20k2_i2c_read(ptr nocapture noundef readonly %hw, i16 noundef zeroext %addr, ptr nocapture noundef writeonly %datap) unnamed_addr #0 align 64 {
entry:
  %i2c_status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i2c_status) #11
  %mem_base.i = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 100
  %0 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1806348
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !54
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !55
  %4 = ptrtoint ptr %i2c_status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %i2c_status, align 4
  %addr_size = getelementptr inbounds %struct.hw20k2, ptr %hw, i32 0, i32 2
  %5 = ptrtoint ptr %addr_size to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %addr_size, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %6)
  %cmp = icmp eq i8 %6, 4
  %narrow = select i1 %cmp, i8 0, i8 %6
  %spec.select = zext i8 %narrow to i32
  call void @set_field(ptr noundef nonnull %i2c_status, i32 noundef 6, i32 noundef %spec.select) #11
  %7 = ptrtoint ptr %i2c_status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i2c_status, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  call void @arm_heavy_mb() #11
  %9 = call i32 @llvm.bswap.i32(i32 %8) #11
  %10 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mem_base.i, align 4
  %add.ptr.i26 = getelementptr i8, ptr %11, i32 1806348
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26, i32 %9) #11, !srcloc !57
  br label %do.body.i

do.body.i:                                        ; preds = %land.rhs.i.do.body.i_crit_edge, %entry
  %i.0.i = phi i32 [ 4194304, %entry ], [ %dec.i, %land.rhs.i.do.body.i_crit_edge ]
  %12 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mem_base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 1806348
  %14 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !54
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !55
  %15 = and i32 %14, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %hw20k2_i2c_wait_data_ready.exit

land.rhs.i:                                       ; preds = %do.body.i
  %dec.i = add nsw i32 %i.0.i, -1
  %tobool1.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i.cleanup_crit_edge, label %land.rhs.i.do.body.i_crit_edge

land.rhs.i.do.body.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

land.rhs.i.cleanup_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

hw20k2_i2c_wait_data_ready.exit:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.i)
  %tobool.not = icmp eq i32 %i.0.i, 0
  br i1 %tobool.not, label %hw20k2_i2c_wait_data_ready.exit.cleanup_crit_edge, label %if.end

hw20k2_i2c_wait_data_ready.exit.cleanup_crit_edge: ; preds = %hw20k2_i2c_wait_data_ready.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %hw20k2_i2c_wait_data_ready.exit
  %conv5 = zext i16 %addr to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  call void @arm_heavy_mb() #11
  %16 = call i32 @llvm.bswap.i32(i32 %conv5) #11
  %17 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mem_base.i, align 4
  %add.ptr.i28 = getelementptr i8, ptr %18, i32 1806340
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28, i32 %16) #11, !srcloc !57
  br label %do.body.i33

do.body.i33:                                      ; preds = %land.rhs.i36.do.body.i33_crit_edge, %if.end
  %i.0.i30 = phi i32 [ 4194304, %if.end ], [ %dec.i34, %land.rhs.i36.do.body.i33_crit_edge ]
  %19 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mem_base.i, align 4
  %add.ptr.i.i31 = getelementptr i8, ptr %20, i32 1806348
  %21 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i31) #11, !srcloc !54
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !55
  %22 = and i32 %21, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i32 = icmp eq i32 %22, 0
  br i1 %tobool.not.i32, label %land.rhs.i36, label %hw20k2_i2c_wait_data_ready.exit38

land.rhs.i36:                                     ; preds = %do.body.i33
  %dec.i34 = add nsw i32 %i.0.i30, -1
  %tobool1.not.i35 = icmp eq i32 %dec.i34, 0
  br i1 %tobool1.not.i35, label %land.rhs.i36.cleanup_crit_edge, label %land.rhs.i36.do.body.i33_crit_edge

land.rhs.i36.do.body.i33_crit_edge:               ; preds = %land.rhs.i36
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i33

land.rhs.i36.cleanup_crit_edge:                   ; preds = %land.rhs.i36
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

hw20k2_i2c_wait_data_ready.exit38:                ; preds = %do.body.i33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.i30)
  %tobool7.not = icmp eq i32 %i.0.i30, 0
  br i1 %tobool7.not, label %hw20k2_i2c_wait_data_ready.exit38.cleanup_crit_edge, label %if.end9

hw20k2_i2c_wait_data_ready.exit38.cleanup_crit_edge: ; preds = %hw20k2_i2c_wait_data_ready.exit38
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %hw20k2_i2c_wait_data_ready.exit38
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  call void @arm_heavy_mb() #11
  %23 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mem_base.i, align 4
  %add.ptr.i40 = getelementptr i8, ptr %24, i32 1806344
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40, i32 0) #11, !srcloc !57
  br label %do.body.i45

do.body.i45:                                      ; preds = %land.rhs.i48.do.body.i45_crit_edge, %if.end9
  %i.0.i42 = phi i32 [ 4194304, %if.end9 ], [ %dec.i46, %land.rhs.i48.do.body.i45_crit_edge ]
  %25 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mem_base.i, align 4
  %add.ptr.i.i43 = getelementptr i8, ptr %26, i32 1806348
  %27 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i43) #11, !srcloc !54
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !55
  %28 = and i32 %27, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i44 = icmp eq i32 %28, 0
  br i1 %tobool.not.i44, label %land.rhs.i48, label %hw20k2_i2c_wait_data_ready.exit50

land.rhs.i48:                                     ; preds = %do.body.i45
  %dec.i46 = add nsw i32 %i.0.i42, -1
  %tobool1.not.i47 = icmp eq i32 %dec.i46, 0
  br i1 %tobool1.not.i47, label %land.rhs.i48.cleanup_crit_edge, label %land.rhs.i48.do.body.i45_crit_edge

land.rhs.i48.do.body.i45_crit_edge:               ; preds = %land.rhs.i48
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i45

land.rhs.i48.cleanup_crit_edge:                   ; preds = %land.rhs.i48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

hw20k2_i2c_wait_data_ready.exit50:                ; preds = %do.body.i45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.i42)
  %tobool11.not = icmp eq i32 %i.0.i42, 0
  br i1 %tobool11.not, label %hw20k2_i2c_wait_data_ready.exit50.cleanup_crit_edge, label %if.end13

hw20k2_i2c_wait_data_ready.exit50.cleanup_crit_edge: ; preds = %hw20k2_i2c_wait_data_ready.exit50
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end13:                                         ; preds = %hw20k2_i2c_wait_data_ready.exit50
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mem_base.i, align 4
  %add.ptr.i52 = getelementptr i8, ptr %30, i32 1806344
  %31 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i52) #11, !srcloc !54
  %32 = call i32 @llvm.bswap.i32(i32 %31) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !55
  %33 = ptrtoint ptr %datap to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %datap, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %hw20k2_i2c_wait_data_ready.exit50.cleanup_crit_edge, %land.rhs.i48.cleanup_crit_edge, %hw20k2_i2c_wait_data_ready.exit38.cleanup_crit_edge, %land.rhs.i36.cleanup_crit_edge, %hw20k2_i2c_wait_data_ready.exit.cleanup_crit_edge, %land.rhs.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13 ], [ -1, %hw20k2_i2c_wait_data_ready.exit.cleanup_crit_edge ], [ -1, %hw20k2_i2c_wait_data_ready.exit38.cleanup_crit_edge ], [ -1, %hw20k2_i2c_wait_data_ready.exit50.cleanup_crit_edge ], [ -1, %land.rhs.i48.cleanup_crit_edge ], [ -1, %land.rhs.i36.cleanup_crit_edge ], [ -1, %land.rhs.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i2c_status) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hw20k2_i2c_write(ptr nocapture noundef readonly %hw, i16 noundef zeroext %addr, i32 noundef %data) unnamed_addr #0 align 64 {
entry:
  %i2c_status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %addr_size = getelementptr inbounds %struct.hw20k2, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %addr_size to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %addr_size, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i2c_status) #11
  %mem_base.i = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 100
  %2 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mem_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 1806348
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !54
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !55
  %6 = ptrtoint ptr %i2c_status to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %i2c_status, align 4
  %7 = ptrtoint ptr %addr_size to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %addr_size, align 1
  %conv3 = zext i8 %8 to i32
  %data_size = getelementptr inbounds %struct.hw20k2, ptr %hw, i32 0, i32 3
  %9 = ptrtoint ptr %data_size to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %data_size, align 2
  %conv4 = zext i8 %10 to i32
  %add = add nuw nsw i32 %conv4, %conv3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add)
  %cmp = icmp eq i32 %add, 4
  %spec.select = select i1 %cmp, i32 0, i32 %add
  %conv = zext i8 %1 to i32
  %mul = shl nuw nsw i32 %conv, 3
  %conv1 = zext i16 %addr to i32
  call void @set_field(ptr noundef nonnull %i2c_status, i32 noundef 6, i32 noundef %spec.select) #11
  %11 = ptrtoint ptr %i2c_status to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i2c_status, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  call void @arm_heavy_mb() #11
  %13 = call i32 @llvm.bswap.i32(i32 %12) #11
  %14 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mem_base.i, align 4
  %add.ptr.i2 = getelementptr i8, ptr %15, i32 1806348
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2, i32 %13) #11, !srcloc !57
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %entry
  %i.0.i = phi i32 [ 4194304, %entry ], [ %dec.i, %do.body.i.do.body.i_crit_edge ]
  %16 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mem_base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 1806348
  %18 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !54
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !55
  %19 = and i32 %18, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp ne i32 %19, 0
  %dec.i = add nsw i32 %i.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool1.not.i = icmp eq i32 %dec.i, 0
  %or.cond = select i1 %tobool.not.i, i1 true, i1 %tobool1.not.i
  br i1 %or.cond, label %hw20k2_i2c_wait_data_ready.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

hw20k2_i2c_wait_data_ready.exit:                  ; preds = %do.body.i
  %shl = shl i32 %data, %mul
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  call void @arm_heavy_mb() #11
  %20 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mem_base.i, align 4
  %add.ptr.i4 = getelementptr i8, ptr %21, i32 1806340
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 0) #11, !srcloc !57
  br label %do.body.i9

do.body.i9:                                       ; preds = %do.body.i9.do.body.i9_crit_edge, %hw20k2_i2c_wait_data_ready.exit
  %i.0.i6 = phi i32 [ 4194304, %hw20k2_i2c_wait_data_ready.exit ], [ %dec.i10, %do.body.i9.do.body.i9_crit_edge ]
  %22 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mem_base.i, align 4
  %add.ptr.i.i7 = getelementptr i8, ptr %23, i32 1806348
  %24 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i7) #11, !srcloc !54
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !55
  %25 = and i32 %24, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i8 = icmp ne i32 %25, 0
  %dec.i10 = add nsw i32 %i.0.i6, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i10)
  %tobool1.not.i11 = icmp eq i32 %dec.i10, 0
  %or.cond27 = select i1 %tobool.not.i8, i1 true, i1 %tobool1.not.i11
  br i1 %or.cond27, label %hw20k2_i2c_wait_data_ready.exit14, label %do.body.i9.do.body.i9_crit_edge

do.body.i9.do.body.i9_crit_edge:                  ; preds = %do.body.i9
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i9

hw20k2_i2c_wait_data_ready.exit14:                ; preds = %do.body.i9
  %or = or i32 %shl, %conv1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  call void @arm_heavy_mb() #11
  %26 = call i32 @llvm.bswap.i32(i32 %or) #11
  %27 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mem_base.i, align 4
  %add.ptr.i16 = getelementptr i8, ptr %28, i32 1806340
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 %26) #11, !srcloc !57
  br label %do.body.i21

do.body.i21:                                      ; preds = %do.body.i21.do.body.i21_crit_edge, %hw20k2_i2c_wait_data_ready.exit14
  %i.0.i18 = phi i32 [ 4194304, %hw20k2_i2c_wait_data_ready.exit14 ], [ %dec.i22, %do.body.i21.do.body.i21_crit_edge ]
  %29 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mem_base.i, align 4
  %add.ptr.i.i19 = getelementptr i8, ptr %30, i32 1806348
  %31 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i19) #11, !srcloc !54
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !55
  %32 = and i32 %31, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i20 = icmp ne i32 %32, 0
  %dec.i22 = add nsw i32 %i.0.i18, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i22)
  %tobool1.not.i23 = icmp eq i32 %dec.i22, 0
  %or.cond28 = select i1 %tobool.not.i20, i1 true, i1 %tobool1.not.i23
  br i1 %or.cond28, label %hw20k2_i2c_wait_data_ready.exit26, label %do.body.i21.do.body.i21_crit_edge

do.body.i21.do.body.i21_crit_edge:                ; preds = %do.body.i21
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i21

hw20k2_i2c_wait_data_ready.exit26:                ; preds = %do.body.i21
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i2c_status) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hw20k2_i2c_uninit(ptr nocapture noundef readonly %hw) unnamed_addr #0 align 64 {
entry:
  %i2c_status = alloca i32, align 4
  %i2c_addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i2c_status) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i2c_addr) #11
  %0 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %i2c_addr, align 4
  call void @set_field(ptr noundef nonnull %i2c_addr, i32 noundef 8323072, i32 noundef 87) #11
  %1 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %i2c_addr, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  call void @arm_heavy_mb() #11
  %3 = call i32 @llvm.bswap.i32(i32 %2) #11
  %mem_base.i = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 100
  %4 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mem_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 1806336
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %3) #11, !srcloc !57
  %6 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mem_base.i, align 4
  %add.ptr.i2 = getelementptr i8, ptr %7, i32 1806348
  %8 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2) #11, !srcloc !54
  %9 = call i32 @llvm.bswap.i32(i32 %8) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !55
  %10 = ptrtoint ptr %i2c_status to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %i2c_status, align 4
  call void @set_field(ptr noundef nonnull %i2c_status, i32 noundef 1, i32 noundef 0) #11
  %11 = ptrtoint ptr %i2c_status to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i2c_status, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  call void @arm_heavy_mb() #11
  %13 = call i32 @llvm.bswap.i32(i32 %12) #11
  %14 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mem_base.i, align 4
  %add.ptr.i4 = getelementptr i8, ptr %15, i32 1806348
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 %13) #11, !srcloc !57
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  call void @arm_heavy_mb() #11
  %16 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mem_base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 1806352
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #11, !srcloc !57
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !56
  call void @arm_heavy_mb() #11
  %18 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mem_base.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %19, i32 1806352
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 0) #11, !srcloc !57
  %20 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mem_base.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %21, i32 1806352
  %22 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4.i) #11, !srcloc !54
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !55
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i2c_addr) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i2c_status) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }
attributes #16 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !19, !20, !22, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @ct20k2_preset, !1, !"ct20k2_preset", i1 false, i1 false}
!1 = !{!"../sound/pci/ctxfi/cthw20k2.c", i32 2216, i32 24}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/pci/ctxfi/cthw20k2.c", i32 2033, i32 34}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/pci/ctxfi/cthw20k2.c", i32 2053, i32 7}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/pci/ctxfi/cthw20k2.c", i32 2055, i32 4}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @hw_card_start._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @hw_card_start._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/pci/ctxfi/cthw20k2.c", i32 1371, i32 3}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @hw_auto_init._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @hw_auto_init._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/pci/ctxfi/cthw20k2.c", i32 1240, i32 3}
!22 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @hw_trn_init._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @hw_trn_init._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/pci/ctxfi/cthw20k2.c", i32 1180, i32 3}
!27 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @hw_daio_init._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @hw_daio_init._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/pci/ctxfi/cthw20k2.c", i32 1842, i32 3}
!32 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @hw_adc_init._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @hw_adc_init._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/pci/ctxfi/cthw20k2.c", i32 1885, i32 3}
!37 = !{ptr @hw_adc_init._entry.16, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @hw_adc_init._entry_ptr.18, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/pci/ctxfi/cthw20k2.c", i32 1346, i32 3}
!41 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @hw_pll_init._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @hw_pll_init._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{!"auto-init"}
!54 = !{i64 5423076}
!55 = !{i64 2154530122}
!56 = !{i64 2154530338}
!57 = !{i64 5422658}
