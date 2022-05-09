; ModuleID = '/llk/IR_all_yes/sound/pci/ctxfi/cthw20k1.c_pt.bc'
source_filename = "../sound/pci/ctxfi/cthw20k1.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.hw = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hw20k1 = type { %struct.hw, %struct.spinlock, %struct.spinlock }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.card_conf = type { i32, i32, i32 }
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
%struct.daio_mgr_ctrl_blk = type { i32, i32, i32, %struct.daoimap, %union.daio_mgr_dirty }
%struct.daoimap = type { i32, i32 }
%union.daio_mgr_dirty = type { %struct.anon.78 }
%struct.anon.78 = type { i32 }

@create_20k1_hw_obj.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&hw20k1->reg_20k1_lock\00", [41 x i8] zeroinitializer }, align 32
@create_20k1_hw_obj.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&hw20k1->reg_pci_lock\00", [42 x i8] zeroinitializer }, align 32
@ct20k1_preset = internal constant { %struct.hw, [100 x i8] } { %struct.hw { ptr @hw_card_init, ptr @hw_card_stop, ptr @hw_pll_init, ptr @hw_suspend, ptr @hw_resume, ptr @hw_is_adc_input_selected, ptr @hw_adc_input_select, ptr @hw_capabilities, ptr null, ptr null, ptr null, ptr null, ptr @src_get_rsc_ctrl_blk, ptr @src_put_rsc_ctrl_blk, ptr @src_set_state, ptr @src_set_bm, ptr @src_set_rsr, ptr @src_set_sf, ptr @src_set_wr, ptr @src_set_pm, ptr @src_set_rom, ptr @src_set_vo, ptr @src_set_st, ptr @src_set_ie, ptr @src_set_ilsz, ptr @src_set_bp, ptr @src_set_cisz, ptr @src_set_ca, ptr @src_set_sa, ptr @src_set_la, ptr @src_set_pitch, ptr @src_set_clear_zbufs, ptr @src_set_dirty, ptr @src_set_dirty_all, ptr @src_commit_write, ptr @src_get_ca, ptr @src_get_dirty, ptr @src_dirty_conj_mask, ptr @src_mgr_get_ctrl_blk, ptr @src_mgr_put_ctrl_blk, ptr @src_mgr_enbs_src, ptr @src_mgr_enb_src, ptr @src_mgr_dsb_src, ptr @src_mgr_commit_write, ptr @srcimp_mgr_get_ctrl_blk, ptr @srcimp_mgr_put_ctrl_blk, ptr @srcimp_mgr_set_imaparc, ptr @srcimp_mgr_set_imapuser, ptr @srcimp_mgr_set_imapnxt, ptr @srcimp_mgr_set_imapaddr, ptr @srcimp_mgr_commit_write, ptr @amixer_rsc_get_ctrl_blk, ptr @amixer_rsc_put_ctrl_blk, ptr @amixer_mgr_get_ctrl_blk, ptr @amixer_mgr_put_ctrl_blk, ptr @amixer_set_mode, ptr @amixer_set_iv, ptr @amixer_set_x, ptr @amixer_set_y, ptr @amixer_set_sadr, ptr @amixer_set_se, ptr @amixer_set_dirty, ptr @amixer_set_dirty_all, ptr @amixer_commit_write, ptr @amixer_get_y, ptr @amixer_get_dirty, ptr @dai_get_ctrl_blk, ptr @dai_put_ctrl_blk, ptr @dai_srt_set_srcr, ptr @dai_srt_set_srcl, ptr @dai_srt_set_rsr, ptr @dai_srt_set_drat, ptr @dai_srt_set_ec, ptr @dai_srt_set_et, ptr @dai_commit_write, ptr @dao_get_ctrl_blk, ptr @dao_put_ctrl_blk, ptr @dao_set_spos, ptr @dao_commit_write, ptr @dao_get_spos, ptr @daio_mgr_get_ctrl_blk, ptr @daio_mgr_put_ctrl_blk, ptr @daio_mgr_enb_dai, ptr @daio_mgr_dsb_dai, ptr @daio_mgr_enb_dao, ptr @daio_mgr_dsb_dao, ptr @daio_mgr_dao_init, ptr @daio_mgr_set_imaparc, ptr @daio_mgr_set_imapnxt, ptr @daio_mgr_set_imapaddr, ptr @daio_mgr_commit_write, ptr @set_timer_irq, ptr @set_timer_tick, ptr @get_wc, ptr null, ptr null, ptr null, ptr null, i32 -1, i32 0, ptr null, i32 0, i32 0 }, [100 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"XFi\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"snd_ctxfi\00", [22 x i8] zeroinitializer }, align 32
@hw_card_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 1932, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"XFi: Cannot get irq %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hw_card_start\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sound/pci/ctxfi/cthw20k1.c\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hw_card_start._entry_ptr = internal global ptr @hw_card_start._entry, section ".printk_index", align 4
@hw_auto_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.7, i32 1345, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Card Auto-init failed!!!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hw_auto_init\00", [19 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\011\00", [29 x i8] zeroinitializer }, align 32
@hw_auto_init._entry_ptr = internal global ptr @hw_auto_init._entry, section ".printk_index", align 4
@hw_trn_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.7, i32 1262, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Wrong device page table page address!\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hw_trn_init\00", [20 x i8] zeroinitializer }, align 32
@hw_trn_init._entry_ptr = internal global ptr @hw_trn_init._entry, section ".printk_index", align 4
@hw_pll_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.7, i32 1321, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"PLL initialization failed!!!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hw_pll_init\00", [20 x i8] zeroinitializer }, align 32
@hw_pll_init._entry_ptr = internal global ptr @hw_pll_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1129598017, i64 1129598028, i64 1129598042]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 1129598017, i64 1129598042]
@__sancov_gen_cov_switch_values.18 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.20 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.23 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 4]
@__sancov_gen_cov_switch_values.24 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.25 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 4]
@__sancov_gen_cov_switch_values.26 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.27 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 2260, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 2261, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant [14 x i8] c"ct20k1_preset\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 2147, i32 24 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 1908, i32 34 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 1929, i32 7 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 1931, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 1345, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 1261, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.96 = private constant [30 x i8] c"../sound/pci/ctxfi/cthw20k1.c\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 1321, i32 3 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @hw_auto_init._entry, ptr @hw_auto_init._entry_ptr, ptr @hw_card_start._entry, ptr @hw_card_start._entry_ptr, ptr @hw_pll_init._entry, ptr @hw_pll_init._entry_ptr, ptr @hw_trn_init._entry, ptr @hw_trn_init._entry_ptr, ptr @create_20k1_hw_obj.__key, ptr @.str, ptr @create_20k1_hw_obj.__key.1, ptr @.str.2, ptr @ct20k1_preset, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_20k1_hw_obj.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_20k1_hw_obj.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ct20k1_preset to i32), i32 412, i32 512, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_card_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_auto_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_trn_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_pll_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @create_20k1_hw_obj(ptr nocapture noundef writeonly %rhw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rhw to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %rhw, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 500) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %reg_20k1_lock = getelementptr inbounds %struct.hw20k1, ptr %call7.i.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %reg_20k1_lock, ptr noundef nonnull @.str, ptr noundef nonnull @create_20k1_hw_obj.__key, i16 noundef signext 3) #10
  %reg_pci_lock = getelementptr inbounds %struct.hw20k1, ptr %call7.i.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %reg_pci_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @create_20k1_hw_obj.__key.1, i16 noundef signext 3) #10
  %2 = call ptr @memcpy(ptr %call7.i.i, ptr @ct20k1_preset, i32 412)
  %3 = ptrtoint ptr %rhw to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %rhw, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @destroy_20k1_hw_obj(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %io_base = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 99
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %io_base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call ptr @free_irq(i32 noundef %3, ptr noundef %hw) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %4 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %irq.i, align 4
  %mem_base.i = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 100
  %5 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mem_base.i, align 4
  tail call void @iounmap(ptr noundef %6) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %hw_card_shutdown.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %pci.i = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 96
  %10 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci.i, align 4
  tail call void @pci_release_regions(ptr noundef %11) #10
  br label %hw_card_shutdown.exit

hw_card_shutdown.exit:                            ; preds = %if.then4.i, %if.end.i.hw_card_shutdown.exit_crit_edge
  %12 = ptrtoint ptr %io_base to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %io_base, align 4
  %pci7.i = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 96
  %13 = ptrtoint ptr %pci7.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pci7.i, align 4
  tail call void @pci_disable_device(ptr noundef %14) #10
  br label %if.end

if.end:                                           ; preds = %hw_card_shutdown.exit, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %hw) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_card_init(ptr noundef %hw, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  %gctl.i = alloca i32, align 4
  %bar0.i.i = alloca i32, align 4
  %bar1.i.i = alloca i32, align 4
  %bar2.i.i = alloca i32, align 4
  %bar3.i.i = alloca i32, align 4
  %bar4.i.i = alloca i32, align 4
  %bar5.i.i = alloca i32, align 4
  %cmd.i.i = alloca i32, align 4
  %irq.i.i = alloca i32, align 4
  %cl_size.i.i = alloca i32, align 4
  %l_timer.i.i = alloca i32, align 4
  %pwr.i.i = alloca i32, align 4
  %gctl = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gctl) #10
  %0 = ptrtoint ptr %gctl to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %gctl, align 4, !annotation !45
  %pci1.i = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 96
  %1 = ptrtoint ptr %pci1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pci1.i, align 4
  %call.i = tail call i32 @pci_enable_device(ptr noundef %2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  %call.i.i = tail call i32 @dma_set_mask(ptr noundef %dev.i, i64 noundef 4294967295) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.if.end6.sink.split.i_crit_edge, label %if.then3.i

if.end.i.if.end6.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.sink.split.i

if.then3.i:                                       ; preds = %if.end.i
  %call.i76.i = tail call i32 @dma_set_mask(ptr noundef %dev.i, i64 noundef 4294967295) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76.i)
  %cmp.i77.i = icmp eq i32 %call.i76.i, 0
  br i1 %cmp.i77.i, label %if.then3.i.if.end6.sink.split.i_crit_edge, label %if.then3.i.if.end6.i_crit_edge

if.then3.i.if.end6.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i

if.then3.i.if.end6.sink.split.i_crit_edge:        ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.sink.split.i

if.end6.sink.split.i:                             ; preds = %if.then3.i.if.end6.sink.split.i_crit_edge, %if.end.i.if.end6.sink.split.i_crit_edge
  %call1.i78.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev.i, i64 noundef 4294967295) #10
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.end6.sink.split.i, %if.then3.i.if.end6.i_crit_edge
  %io_base.i = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 99
  %3 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %io_base.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool7.not.i = icmp eq i32 %4, 0
  br i1 %tobool7.not.i, label %if.then8.i, label %if.end6.i.if.end21.i_crit_edge

if.end6.i.if.end21.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

if.then8.i:                                       ; preds = %if.end6.i
  %call9.i = tail call i32 @pci_request_regions(ptr noundef %2, ptr noundef nonnull @.str.3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp slt i32 %call9.i, 0
  br i1 %cmp10.i, label %if.then8.i.error1.i_crit_edge, label %if.end12.i

if.then8.i.error1.i_crit_edge:                    ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %error1.i

if.end12.i:                                       ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #12
  %model.i = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 102
  %5 = ptrtoint ptr %model.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %model.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp13.i = icmp eq i32 %6, 2
  %arrayidx.i = getelementptr %struct.pci_dev, ptr %2, i32 0, i32 47, i32 5
  %resource16.i = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 47
  %arrayidx.sink.i = select i1 %cmp13.i, ptr %arrayidx.i, ptr %resource16.i
  %7 = ptrtoint ptr %arrayidx.sink.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.sink.i, align 8
  %9 = ptrtoint ptr %io_base.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %io_base.i, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.end12.i, %if.end6.i.if.end21.i_crit_edge
  %model22.i = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 102
  %10 = ptrtoint ptr %model22.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %model22.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp23.i = icmp eq i32 %11, 2
  br i1 %cmp23.i, label %if.then24.i, label %if.end21.i.if.end29.i_crit_edge

if.end21.i.if.end29.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.i

if.then24.i:                                      ; preds = %if.end21.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bar0.i.i) #10
  %12 = ptrtoint ptr %bar0.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %bar0.i.i, align 4, !annotation !45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bar1.i.i) #10
  %13 = ptrtoint ptr %bar1.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %bar1.i.i, align 4, !annotation !45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bar2.i.i) #10
  %14 = ptrtoint ptr %bar2.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %bar2.i.i, align 4, !annotation !45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bar3.i.i) #10
  %15 = ptrtoint ptr %bar3.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %bar3.i.i, align 4, !annotation !45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bar4.i.i) #10
  %16 = ptrtoint ptr %bar4.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %bar4.i.i, align 4, !annotation !45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bar5.i.i) #10
  %17 = ptrtoint ptr %bar5.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %bar5.i.i, align 4, !annotation !45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd.i.i) #10
  %18 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %cmd.i.i, align 4, !annotation !45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i.i) #10
  %19 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %irq.i.i, align 4, !annotation !45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cl_size.i.i) #10
  %20 = ptrtoint ptr %cl_size.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %cl_size.i.i, align 4, !annotation !45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %l_timer.i.i) #10
  %21 = ptrtoint ptr %l_timer.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %l_timer.i.i, align 4, !annotation !45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pwr.i.i) #10
  %22 = ptrtoint ptr %pwr.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %pwr.i.i, align 4, !annotation !45
  %resource.i.i = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 47
  %23 = ptrtoint ptr %resource.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %resource.i.i, align 8
  %end.i.i = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 47, i32 0, i32 1
  %25 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %end.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.i81.i = icmp eq i32 %26, 0
  %sub.i.i = sub i32 1, %24
  %add.i.i = add i32 %sub.i.i, %26
  %cond.i.i = select i1 %cmp.i81.i, i32 0, i32 %add.i.i
  %call.i82.i = tail call ptr @ioremap(i32 noundef %24, i32 noundef %cond.i.i) #10
  %tobool.not.i.i = icmp eq ptr %call.i82.i, null
  br i1 %tobool.not.i.i, label %uaa_to_xfi.exit.i, label %for.cond.preheader.i.i

for.cond.preheader.i.i:                           ; preds = %if.then24.i
  %add.ptr.i.i = getelementptr i8, ptr %call.i82.i, i32 16380
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !46
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !47
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !47
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !47
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !47
  %32 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values)
  switch i32 %28, label %for.cond.preheader.i.i.if.then61.i.i_crit_edge [
    i32 1129598017, label %if.then15.i.i
    i32 1129598042, label %if.then32.i.i
    i32 1129598028, label %if.then45.i.i
  ]

for.cond.preheader.i.i.if.then61.i.i_crit_edge:   ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then61.i.i

if.then15.i.i:                                    ; preds = %for.cond.preheader.i.i
  %33 = tail call i32 @llvm.bswap.i32(i32 %29) #10
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %33, label %if.then15.i.i.if.then61.i.i_crit_edge [
    i32 1129598042, label %land.lhs.true.i.i
    i32 1129598017, label %land.lhs.true25.i.i
  ]

if.then15.i.i.if.then61.i.i_crit_edge:            ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then61.i.i

land.lhs.true.i.i:                                ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1280070723, i32 %30)
  %cmp19.i.i = icmp eq i32 %30, 1280070723
  call void @__sanitizer_cov_trace_const_cmp4(i32 1095521347, i32 %31)
  %cmp22.i.i = icmp eq i32 %31, 1095521347
  %or.cond.i.i = select i1 %cmp19.i.i, i1 %cmp22.i.i, i1 false
  br i1 %or.cond.i.i, label %land.lhs.true.i.i.if.end62.i.i_crit_edge, label %land.lhs.true.i.i.if.then61.i.i_crit_edge

land.lhs.true.i.i.if.then61.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then61.i.i

land.lhs.true.i.i.if.end62.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62.i.i

land.lhs.true25.i.i:                              ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1514951747, i32 %30)
  %cmp27.i.i = icmp eq i32 %30, 1514951747
  call void @__sanitizer_cov_trace_const_cmp4(i32 1280070723, i32 %31)
  %cmp29.i.i = icmp eq i32 %31, 1280070723
  %or.cond178.i.i = select i1 %cmp27.i.i, i1 %cmp29.i.i, i1 false
  br i1 %or.cond178.i.i, label %land.lhs.true25.i.i.if.end62.i.i_crit_edge, label %land.lhs.true25.i.i.if.then61.i.i_crit_edge

land.lhs.true25.i.i.if.then61.i.i_crit_edge:      ; preds = %land.lhs.true25.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then61.i.i

land.lhs.true25.i.i.if.end62.i.i_crit_edge:       ; preds = %land.lhs.true25.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62.i.i

if.then32.i.i:                                    ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1280070723, i32 %29)
  %cmp34.i.i = icmp eq i32 %29, 1280070723
  call void @__sanitizer_cov_trace_const_cmp4(i32 1095521347, i32 %30)
  %cmp37.i.i = icmp eq i32 %30, 1095521347
  %or.cond179.i.i = select i1 %cmp34.i.i, i1 %cmp37.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 1095521347, i32 %31)
  %cmp40.i.i = icmp eq i32 %31, 1095521347
  %or.cond180.i.i = select i1 %or.cond179.i.i, i1 %cmp40.i.i, i1 false
  br i1 %or.cond180.i.i, label %if.then32.i.i.if.end62.i.i_crit_edge, label %if.then32.i.i.if.then61.i.i_crit_edge

if.then32.i.i.if.then61.i.i_crit_edge:            ; preds = %if.then32.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then61.i.i

if.then32.i.i.if.end62.i.i_crit_edge:             ; preds = %if.then32.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62.i.i

if.then45.i.i:                                    ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1095521347, i32 %29)
  %cmp47.i.i = icmp eq i32 %29, 1095521347
  call void @__sanitizer_cov_trace_const_cmp4(i32 1095521347, i32 %30)
  %cmp50.i.i = icmp eq i32 %30, 1095521347
  %or.cond181.i.i = select i1 %cmp47.i.i, i1 %cmp50.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 1514951747, i32 %31)
  %cmp53.i.i = icmp eq i32 %31, 1514951747
  %or.cond182.i.i = select i1 %or.cond181.i.i, i1 %cmp53.i.i, i1 false
  br i1 %or.cond182.i.i, label %if.then45.i.i.if.end62.i.i_crit_edge, label %if.then45.i.i.if.then61.i.i_crit_edge

if.then45.i.i.if.then61.i.i_crit_edge:            ; preds = %if.then45.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then61.i.i

if.then45.i.i.if.end62.i.i_crit_edge:             ; preds = %if.then45.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62.i.i

if.then61.i.i:                                    ; preds = %if.then45.i.i.if.then61.i.i_crit_edge, %if.then32.i.i.if.then61.i.i_crit_edge, %land.lhs.true25.i.i.if.then61.i.i_crit_edge, %land.lhs.true.i.i.if.then61.i.i_crit_edge, %if.then15.i.i.if.then61.i.i_crit_edge, %for.cond.preheader.i.i.if.then61.i.i_crit_edge
  tail call void @iounmap(ptr noundef nonnull %call.i82.i) #10
  br label %uaa_to_xfi.exit.thread.i

if.end62.i.i:                                     ; preds = %if.then45.i.i.if.end62.i.i_crit_edge, %if.then32.i.i.if.end62.i.i_crit_edge, %land.lhs.true25.i.i.if.end62.i.i_crit_edge, %land.lhs.true.i.i.if.end62.i.i_crit_edge
  %call63.i.i = call i32 @pci_read_config_dword(ptr noundef %2, i32 noundef 16, ptr noundef nonnull %bar0.i.i) #10
  %call64.i.i = call i32 @pci_read_config_dword(ptr noundef %2, i32 noundef 20, ptr noundef nonnull %bar1.i.i) #10
  %call65.i.i = call i32 @pci_read_config_dword(ptr noundef %2, i32 noundef 24, ptr noundef nonnull %bar2.i.i) #10
  %call66.i.i = call i32 @pci_read_config_dword(ptr noundef %2, i32 noundef 28, ptr noundef nonnull %bar3.i.i) #10
  %call67.i.i = call i32 @pci_read_config_dword(ptr noundef %2, i32 noundef 32, ptr noundef nonnull %bar4.i.i) #10
  %call68.i.i = call i32 @pci_read_config_dword(ptr noundef %2, i32 noundef 36, ptr noundef nonnull %bar5.i.i) #10
  %call69.i.i = call i32 @pci_read_config_dword(ptr noundef %2, i32 noundef 60, ptr noundef nonnull %irq.i.i) #10
  %call70.i.i = call i32 @pci_read_config_dword(ptr noundef %2, i32 noundef 12, ptr noundef nonnull %cl_size.i.i) #10
  %call71.i.i = call i32 @pci_read_config_dword(ptr noundef %2, i32 noundef 13, ptr noundef nonnull %l_timer.i.i) #10
  %call72.i.i = call i32 @pci_read_config_dword(ptr noundef %2, i32 noundef 68, ptr noundef nonnull %pwr.i.i) #10
  %call73.i.i = call i32 @pci_read_config_dword(ptr noundef %2, i32 noundef 4, ptr noundef nonnull %cmd.i.i) #10
  %call74.i.i = call i32 @pci_write_config_dword(ptr noundef %2, i32 noundef 160, i32 noundef -2023406815) #10
  %35 = ptrtoint ptr %bar5.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bar5.i.i, align 4
  %call75.i.i = call i32 @pci_write_config_dword(ptr noundef %2, i32 noundef 16, i32 noundef %36) #10
  %call76.i.i = call i32 @pci_write_config_dword(ptr noundef %2, i32 noundef 160, i32 noundef 305419896) #10
  %37 = ptrtoint ptr %bar1.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bar1.i.i, align 4
  %call77.i.i = call i32 @pci_write_config_dword(ptr noundef %2, i32 noundef 20, i32 noundef %38) #10
  %39 = ptrtoint ptr %bar2.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bar2.i.i, align 4
  %call78.i.i = call i32 @pci_write_config_dword(ptr noundef %2, i32 noundef 24, i32 noundef %40) #10
  %41 = ptrtoint ptr %bar3.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bar3.i.i, align 4
  %call79.i.i = call i32 @pci_write_config_dword(ptr noundef %2, i32 noundef 28, i32 noundef %42) #10
  %43 = ptrtoint ptr %bar4.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bar4.i.i, align 4
  %call80.i.i = call i32 @pci_write_config_dword(ptr noundef %2, i32 noundef 32, i32 noundef %44) #10
  %45 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %irq.i.i, align 4
  %call81.i.i = call i32 @pci_write_config_dword(ptr noundef %2, i32 noundef 60, i32 noundef %46) #10
  %47 = ptrtoint ptr %cl_size.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cl_size.i.i, align 4
  %call82.i.i = call i32 @pci_write_config_dword(ptr noundef %2, i32 noundef 12, i32 noundef %48) #10
  %49 = ptrtoint ptr %l_timer.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %l_timer.i.i, align 4
  %call83.i.i = call i32 @pci_write_config_dword(ptr noundef %2, i32 noundef 13, i32 noundef %50) #10
  %51 = ptrtoint ptr %pwr.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pwr.i.i, align 4
  %call84.i.i = call i32 @pci_write_config_dword(ptr noundef %2, i32 noundef 68, i32 noundef %52) #10
  %53 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cmd.i.i, align 4
  %call85.i.i = call i32 @pci_write_config_dword(ptr noundef %2, i32 noundef 4, i32 noundef %54) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !48
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 1481397315) #10, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !50
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 759977027) #10, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !51
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 1179407427) #10, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !52
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 1766609987) #10, !srcloc !49
  call void @iounmap(ptr noundef nonnull %call.i82.i) #10
  br label %uaa_to_xfi.exit.thread.i

uaa_to_xfi.exit.thread.i:                         ; preds = %if.end62.i.i, %if.then61.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pwr.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %l_timer.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cl_size.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bar5.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bar4.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bar3.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bar2.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bar1.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bar0.i.i) #10
  br label %if.end29.i

uaa_to_xfi.exit.i:                                ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pwr.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %l_timer.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cl_size.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bar5.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bar4.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bar3.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bar2.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bar1.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bar0.i.i) #10
  br label %error2.i

if.end29.i:                                       ; preds = %uaa_to_xfi.exit.thread.i, %if.end21.i.if.end29.i_crit_edge
  %irq.i = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 98
  %55 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp30.i = icmp slt i32 %56, 0
  br i1 %cmp30.i, label %if.then31.i, label %if.end29.i.if.end_crit_edge

if.end29.i.if.end_crit_edge:                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then31.i:                                      ; preds = %if.end29.i
  %irq32.i = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 46
  %57 = ptrtoint ptr %irq32.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %irq32.i, align 4
  %call.i83.i = call i32 @request_threaded_irq(i32 noundef %58, ptr noundef nonnull @ct_20k1_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.4, ptr noundef %hw) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83.i)
  %cmp34.i = icmp slt i32 %call.i83.i, 0
  br i1 %cmp34.i, label %do.end.i, label %if.end38.i

do.end.i:                                         ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #12
  %card.i = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 97
  %59 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %card.i, align 4
  %dev36.i = getelementptr inbounds %struct.snd_card, ptr %60, i32 0, i32 27
  %61 = ptrtoint ptr %dev36.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev36.i, align 8
  %63 = ptrtoint ptr %irq32.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %irq32.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.5, i32 noundef %64) #14
  br label %error2.i

if.end38.i:                                       ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #12
  %65 = ptrtoint ptr %irq32.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %irq32.i, align 4
  %67 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %irq.i, align 4
  %card42.i = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 97
  %68 = ptrtoint ptr %card42.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %card42.i, align 4
  %sync_irq.i = getelementptr inbounds %struct.snd_card, ptr %69, i32 0, i32 33
  %70 = ptrtoint ptr %sync_irq.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %66, ptr %sync_irq.i, align 4
  br label %if.end

error2.i:                                         ; preds = %do.end.i, %uaa_to_xfi.exit.i
  %err.0.i = phi i32 [ -2, %uaa_to_xfi.exit.i ], [ %call.i83.i, %do.end.i ]
  call void @pci_release_regions(ptr noundef %2) #10
  %71 = ptrtoint ptr %io_base.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %io_base.i, align 4
  br label %error1.i

error1.i:                                         ; preds = %error2.i, %if.then8.i.error1.i_crit_edge
  %err.1.i = phi i32 [ %err.0.i, %error2.i ], [ %call9.i, %if.then8.i.error1.i_crit_edge ]
  call void @pci_disable_device(ptr noundef %2) #10
  br label %cleanup

if.end:                                           ; preds = %if.end38.i, %if.end29.i.if.end_crit_edge
  call void @pci_set_master(ptr noundef %2) #10
  %rsr = getelementptr inbounds %struct.card_conf, ptr %info, i32 0, i32 1
  %72 = ptrtoint ptr %rsr to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %rsr, align 4
  %call1 = call i32 @hw_pll_init(ptr noundef %hw, i32 noundef %73)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gctl.i) #10
  %reg_20k1_lock.i.i = getelementptr inbounds %struct.hw20k1, ptr %hw, i32 0, i32 1
  %call3.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !53
  call void @arm_heavy_mb() #10
  %74 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %io_base.i, align 4
  %and.i.i = and i32 %75, 1048575
  %add9.i.i = or i32 %and.i.i, -18874368
  %76 = inttoptr i32 %add9.i.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %76, i32 1885346816) #10, !srcloc !49
  %77 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %io_base.i, align 4
  %add12.i.i = add i32 %78, 4
  %and13.i.i = and i32 %add12.i.i, 1048575
  %add14.i.i = or i32 %and13.i.i, -18874368
  %79 = inttoptr i32 %add14.i.i to ptr
  %80 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %79) #10, !srcloc !46
  %81 = call i32 @llvm.bswap.i32(i32 %80) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !54
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i.i, i32 noundef %call3.i.i) #10
  %82 = ptrtoint ptr %gctl.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %gctl.i, align 4
  call void @set_field(ptr noundef nonnull %gctl.i, i32 noundef 2, i32 noundef 0) #10
  %83 = ptrtoint ptr %gctl.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %gctl.i, align 4
  %call3.i15.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !55
  call void @arm_heavy_mb() #10
  %85 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %io_base.i, align 4
  %and.i17.i = and i32 %86, 1048575
  %add9.i18.i = or i32 %and.i17.i, -18874368
  %87 = inttoptr i32 %add9.i18.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %87, i32 1885346816) #10, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  call void @arm_heavy_mb() #10
  %88 = call i32 @llvm.bswap.i32(i32 %84) #10
  %89 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %io_base.i, align 4
  %add15.i.i = add i32 %90, 4
  %and16.i.i = and i32 %add15.i.i, 1048575
  %add17.i.i = or i32 %and16.i.i, -18874368
  %91 = inttoptr i32 %add17.i.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %91, i32 %88) #10, !srcloc !49
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i.i, i32 noundef %call3.i15.i) #10
  call void @set_field(ptr noundef nonnull %gctl.i, i32 noundef 2, i32 noundef 1) #10
  %92 = ptrtoint ptr %gctl.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %gctl.i, align 4
  %call3.i20.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !55
  call void @arm_heavy_mb() #10
  %94 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %io_base.i, align 4
  %and.i22.i = and i32 %95, 1048575
  %add9.i23.i = or i32 %and.i22.i, -18874368
  %96 = inttoptr i32 %add9.i23.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %96, i32 1885346816) #10, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  call void @arm_heavy_mb() #10
  %97 = call i32 @llvm.bswap.i32(i32 %93) #10
  %98 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %io_base.i, align 4
  %add15.i24.i = add i32 %99, 4
  %and16.i25.i = and i32 %add15.i24.i, 1048575
  %add17.i26.i = or i32 %and16.i25.i, -18874368
  %100 = inttoptr i32 %add17.i26.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %100, i32 %97) #10, !srcloc !49
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i.i, i32 noundef %call3.i20.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %101 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %101(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %102 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %102(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %103 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %103(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %104 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %104(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %105 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %105(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %106 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %106(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %107 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %107(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %108 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %108(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %109 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %109(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %110 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %110(i32 noundef 214748000) #10
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end3
  %i.036.i = phi i32 [ 0, %if.end3 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %call3.i28.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !53
  call void @arm_heavy_mb() #10
  %111 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %io_base.i, align 4
  %and.i30.i = and i32 %112, 1048575
  %add9.i31.i = or i32 %and.i30.i, -18874368
  %113 = inttoptr i32 %add9.i31.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %113, i32 1885346816) #10, !srcloc !49
  %114 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %io_base.i, align 4
  %add12.i32.i = add i32 %115, 4
  %and13.i33.i = and i32 %add12.i32.i, 1048575
  %add14.i34.i = or i32 %and13.i33.i, -18874368
  %116 = inttoptr i32 %add14.i34.i to ptr
  %117 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %116) #10, !srcloc !46
  %118 = call i32 @llvm.bswap.i32(i32 %117) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !54
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i.i, i32 noundef %call3.i28.i) #10
  %119 = ptrtoint ptr %gctl.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %gctl.i, align 4
  %call2.i = call i32 @get_field(i32 noundef %118, i32 noundef 1048576) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp ne i32 %call2.i, 0
  %inc.i = add nuw nsw i32 %i.036.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 400000, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 400000
  %or.cond.i = select i1 %tobool3.not.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %120 = ptrtoint ptr %gctl.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %gctl.i, align 4
  %call4.i = call i32 @get_field(i32 noundef %121, i32 noundef 1048576) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %hw_auto_init.exit.thread, label %if.end7

hw_auto_init.exit.thread:                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %card.i76 = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 97
  %122 = ptrtoint ptr %card.i76 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %card.i76, align 4
  %dev.i77 = getelementptr inbounds %struct.snd_card, ptr %123, i32 0, i32 27
  %124 = ptrtoint ptr %dev.i77 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dev.i77, align 8
  call void (ptr, ptr, ...) @_dev_alert(ptr noundef %125, ptr noundef nonnull @.str.10) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gctl.i) #10
  br label %cleanup

if.end7:                                          ; preds = %for.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gctl.i) #10
  %call3.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !53
  call void @arm_heavy_mb() #10
  %126 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %io_base.i, align 4
  %and.i = and i32 %127, 1048575
  %add9.i = or i32 %and.i, -18874368
  %128 = inttoptr i32 %add9.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %128, i32 1885346816) #10, !srcloc !49
  %129 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %io_base.i, align 4
  %add12.i = add i32 %130, 4
  %and13.i = and i32 %add12.i, 1048575
  %add14.i = or i32 %and13.i, -18874368
  %131 = inttoptr i32 %add14.i to ptr
  %132 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %131) #10, !srcloc !46
  %133 = call i32 @llvm.bswap.i32(i32 %132) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !54
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i.i, i32 noundef %call3.i) #10
  %134 = ptrtoint ptr %gctl to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %133, ptr %gctl, align 4
  call void @set_field(ptr noundef nonnull %gctl, i32 noundef 1, i32 noundef 1) #10
  call void @set_field(ptr noundef nonnull %gctl, i32 noundef 32, i32 noundef 1) #10
  call void @set_field(ptr noundef nonnull %gctl, i32 noundef 128, i32 noundef 1) #10
  call void @set_field(ptr noundef nonnull %gctl, i32 noundef 512, i32 noundef 1) #10
  call void @set_field(ptr noundef nonnull %gctl, i32 noundef 2048, i32 noundef 1) #10
  %135 = ptrtoint ptr %gctl to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %gctl, align 4
  %call3.i82 = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !55
  call void @arm_heavy_mb() #10
  %137 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %io_base.i, align 4
  %and.i84 = and i32 %138, 1048575
  %add9.i85 = or i32 %and.i84, -18874368
  %139 = inttoptr i32 %add9.i85 to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %139, i32 1885346816) #10, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  call void @arm_heavy_mb() #10
  %140 = call i32 @llvm.bswap.i32(i32 %136) #10
  %141 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %io_base.i, align 4
  %add15.i = add i32 %142, 4
  %and16.i = and i32 %add15.i, 1048575
  %add17.i = or i32 %and16.i, -18874368
  %143 = inttoptr i32 %add17.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %143, i32 %140) #10, !srcloc !49
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i.i, i32 noundef %call3.i82) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %144 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %144(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %145 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %145(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %146 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %146(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %147 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %147(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %148 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %148(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %149 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %149(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %150 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %150(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %151 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %151(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %152 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %152(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %153 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %153(i32 noundef 214748000) #10
  %call3.i87 = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !55
  call void @arm_heavy_mb() #10
  %154 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %io_base.i, align 4
  %and.i89 = and i32 %155, 1048575
  %add9.i90 = or i32 %and.i89, -18874368
  %156 = inttoptr i32 %add9.i90 to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %156, i32 341842944) #10, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  call void @arm_heavy_mb() #10
  %157 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %io_base.i, align 4
  %add15.i91 = add i32 %158, 4
  %and16.i92 = and i32 %add15.i91, 1048575
  %add17.i93 = or i32 %and16.i92, -18874368
  %159 = inttoptr i32 %add17.i93 to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %159, i32 0) #10, !srcloc !49
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i.i, i32 noundef %call3.i87) #10
  %call3.i95 = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !55
  call void @arm_heavy_mb() #10
  %160 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %io_base.i, align 4
  %and.i97 = and i32 %161, 1048575
  %add9.i98 = or i32 %and.i97, -18874368
  %162 = inttoptr i32 %add9.i98 to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %162, i32 739252992) #10, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  call void @arm_heavy_mb() #10
  %163 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %io_base.i, align 4
  %add15.i99 = add i32 %164, 4
  %and16.i100 = and i32 %add15.i99, 1048575
  %add17.i101 = or i32 %and16.i100, -18874368
  %165 = inttoptr i32 %add17.i101 to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %165, i32 0) #10, !srcloc !49
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i.i, i32 noundef %call3.i95) #10
  call void @msleep(i32 noundef 30) #10
  %166 = ptrtoint ptr %model22.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %model22.i, align 4
  %168 = zext i32 %167 to i64
  call void @__sanitizer_cov_trace_switch(i64 %168, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %167, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb10
    i32 2, label %sw.bb11
  ]

sw.bb:                                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i103 = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !55
  call void @arm_heavy_mb() #10
  %169 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %io_base.i, align 4
  %and.i105 = and i32 %170, 1048575
  %add9.i106 = or i32 %and.i105, -18874368
  %171 = inttoptr i32 %add9.i106 to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %171, i32 610278400) #10, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  call void @arm_heavy_mb() #10
  %172 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %io_base.i, align 4
  %add15.i107 = add i32 %173, 4
  %and16.i108 = and i32 %add15.i107, 1048575
  %add17.i109 = or i32 %and16.i108, -18874368
  %174 = inttoptr i32 %add17.i109 to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %174, i32 -32309248) #10, !srcloc !49
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i111 = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !55
  call void @arm_heavy_mb() #10
  %175 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %io_base.i, align 4
  %and.i113 = and i32 %176, 1048575
  %add9.i114 = or i32 %and.i113, -18874368
  %177 = inttoptr i32 %add9.i114 to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %177, i32 610278400) #10, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  call void @arm_heavy_mb() #10
  %178 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %io_base.i, align 4
  %add15.i115 = add i32 %179, 4
  %and16.i116 = and i32 %add15.i115, 1048575
  %add17.i117 = or i32 %and16.i116, -18874368
  %180 = inttoptr i32 %add17.i117 to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %180, i32 -436207616) #10, !srcloc !49
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i119 = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !55
  call void @arm_heavy_mb() #10
  %181 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %io_base.i, align 4
  %and.i121 = and i32 %182, 1048575
  %add9.i122 = or i32 %and.i121, -18874368
  %183 = inttoptr i32 %add9.i122 to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %183, i32 610278400) #10, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  call void @arm_heavy_mb() #10
  %184 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %io_base.i, align 4
  %add15.i123 = add i32 %185, 4
  %and16.i124 = and i32 %add15.i123, 1048575
  %add17.i125 = or i32 %and16.i124, -18874368
  %186 = inttoptr i32 %add17.i125 to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %186, i32 -1040187392) #10, !srcloc !49
  br label %sw.epilog

sw.default:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i127 = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !55
  call void @arm_heavy_mb() #10
  %187 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %io_base.i, align 4
  %and.i129 = and i32 %188, 1048575
  %add9.i130 = or i32 %and.i129, -18874368
  %189 = inttoptr i32 %add9.i130 to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %189, i32 610278400) #10, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  call void @arm_heavy_mb() #10
  %190 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %io_base.i, align 4
  %add15.i131 = add i32 %191, 4
  %and16.i132 = and i32 %add15.i131, 1048575
  %add17.i133 = or i32 %and16.i132, -18874368
  %192 = inttoptr i32 %add17.i133 to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %192, i32 -436142080) #10, !srcloc !49
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb11, %sw.bb10, %sw.bb
  %call3.i127.sink = phi i32 [ %call3.i127, %sw.default ], [ %call3.i119, %sw.bb11 ], [ %call3.i111, %sw.bb10 ], [ %call3.i103, %sw.bb ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i.i, i32 noundef %call3.i127.sink) #10
  %193 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %194)
  %cmp.i134 = icmp eq i32 %194, -1
  br i1 %cmp.i134, label %hw_trn_init.exit.thread, label %if.end16

hw_trn_init.exit.thread:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %card.i135 = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 97
  %195 = ptrtoint ptr %card.i135 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %card.i135, align 4
  %dev.i136 = getelementptr inbounds %struct.snd_card, ptr %196, i32 0, i32 27
  %197 = ptrtoint ptr %dev.i136 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %dev.i136, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %198, ptr noundef nonnull @.str.13) #14
  br label %cleanup

if.end16:                                         ; preds = %sw.epilog
  %call3.i.i139 = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !55
  call void @arm_heavy_mb() #10
  %199 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %io_base.i, align 4
  %and.i.i141 = and i32 %200, 1048575
  %add9.i.i142 = or i32 %and.i.i141, -18874368
  %201 = inttoptr i32 %add9.i.i142 to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %201, i32 78648064) #10, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  call void @arm_heavy_mb() #10
  %202 = call i32 @llvm.bswap.i32(i32 %194) #10
  %203 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %io_base.i, align 4
  %add15.i.i143 = add i32 %204, 4
  %and16.i.i144 = and i32 %add15.i.i143, 1048575
  %add17.i.i145 = or i32 %and16.i.i144, -18874368
  %205 = inttoptr i32 %add17.i.i145 to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %205, i32 %202) #10, !srcloc !49
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i.i, i32 noundef %call3.i.i139) #10
  %call3.i13.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !55
  call void @arm_heavy_mb() #10
  %206 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %io_base.i, align 4
  %and.i15.i = and i32 %207, 1048575
  %add9.i16.i = or i32 %and.i15.i, -18874368
  %208 = inttoptr i32 %add9.i16.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %208, i32 11539200) #10, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  call void @arm_heavy_mb() #10
  %209 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %io_base.i, align 4
  %add15.i17.i = add i32 %210, 4
  %and16.i18.i = and i32 %add15.i17.i, 1048575
  %add17.i19.i = or i32 %and16.i18.i, -18874368
  %211 = inttoptr i32 %add17.i19.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %211, i32 0) #10, !srcloc !49
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i.i, i32 noundef %call3.i13.i) #10
  %call3.i21.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !55
  call void @arm_heavy_mb() #10
  %212 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %io_base.i, align 4
  %and.i23.i = and i32 %213, 1048575
  %add9.i24.i = or i32 %and.i23.i, -18874368
  %214 = inttoptr i32 %add9.i24.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %214, i32 78910208) #10, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  call void @arm_heavy_mb() #10
  %215 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %io_base.i, align 4
  %add15.i25.i = add i32 %216, 4
  %and16.i26.i = and i32 %add15.i25.i, 1048575
  %add17.i27.i = or i32 %and16.i26.i, -18874368
  %217 = inttoptr i32 %add17.i27.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %217, i32 318767104) #10, !srcloc !49
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i.i, i32 noundef %call3.i21.i) #10
  %call3.i29.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !55
  call void @arm_heavy_mb() #10
  %218 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %io_base.i, align 4
  %and.i31.i = and i32 %219, 1048575
  %add9.i32.i = or i32 %and.i31.i, -18874368
  %220 = inttoptr i32 %add9.i32.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %220, i32 146019072) #10, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  call void @arm_heavy_mb() #10
  %221 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %io_base.i, align 4
  %add15.i33.i = add i32 %222, 4
  %and16.i34.i = and i32 %add15.i33.i, 1048575
  %add17.i35.i = or i32 %and16.i34.i, -18874368
  %223 = inttoptr i32 %add17.i35.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %223, i32 17571840) #10, !srcloc !49
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i.i, i32 noundef %call3.i29.i) #10
  %msr = getelementptr inbounds %struct.card_conf, ptr %info, i32 0, i32 2
  %224 = ptrtoint ptr %msr to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %msr, align 4
  %call3.i.i149 = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !55
  call void @arm_heavy_mb() #10
  %226 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %io_base.i, align 4
  %and.i.i151 = and i32 %227, 1048575
  %add9.i.i152 = or i32 %and.i.i151, -18874368
  %228 = inttoptr i32 %add9.i.i152 to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %228, i32 -2141971456) #10, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  call void @arm_heavy_mb() #10
  %229 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %io_base.i, align 4
  %add15.i.i153 = add i32 %230, 4
  %and16.i.i154 = and i32 %add15.i.i153, 1048575
  %add17.i.i155 = or i32 %and16.i.i154, -18874368
  %231 = inttoptr i32 %add17.i.i155 to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %231, i32 0) #10, !srcloc !49
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i.i, i32 noundef %call3.i.i149) #10
  %232 = zext i32 %225 to i64
  call void @__sanitizer_cov_trace_switch(i64 %232, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %225, label %if.end16.hw_daio_init.exit_crit_edge [
    i32 4, label %sw.bb5.i
    i32 2, label %sw.bb2.i
  ]

if.end16.hw_daio_init.exit_crit_edge:             ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %hw_daio_init.exit

sw.bb2.i:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %hw_daio_init.exit

sw.bb5.i:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %hw_daio_init.exit

hw_daio_init.exit:                                ; preds = %sw.bb5.i, %sw.bb2.i, %if.end16.hw_daio_init.exit_crit_edge
  %i2sorg.0.i = phi i32 [ -1811676153, %sw.bb5.i ], [ -1811676154, %sw.bb2.i ], [ -1811676155, %if.end16.hw_daio_init.exit_crit_edge ]
  %spdorg.0.i = phi i32 [ -2063597568, %sw.bb5.i ], [ 1157627904, %sw.bb2.i ], [ 83886080, %if.end16.hw_daio_init.exit_crit_edge ]
  %call3.i2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !55
  call void @arm_heavy_mb() #10
  %233 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %io_base.i, align 4
  %and.i4.i = and i32 %234, 1048575
  %add9.i5.i = or i32 %and.i4.i, -18874368
  %235 = inttoptr i32 %add9.i5.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %235, i32 542383104) #10, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  call void @arm_heavy_mb() #10
  %236 = call i32 @llvm.bswap.i32(i32 %i2sorg.0.i) #10
  %237 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %io_base.i, align 4
  %add15.i6.i = add i32 %238, 4
  %and16.i7.i = and i32 %add15.i6.i, 1048575
  %add17.i8.i = or i32 %and16.i7.i, -18874368
  %239 = inttoptr i32 %add17.i8.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %239, i32 %236) #10, !srcloc !49
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i.i, i32 noundef %call3.i2.i) #10
  %call3.i10.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !55
  call void @arm_heavy_mb() #10
  %240 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %io_base.i, align 4
  %and.i12.i = and i32 %241, 1048575
  %add9.i13.i = or i32 %and.i12.i, -18874368
  %242 = inttoptr i32 %add9.i13.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %242, i32 -2141971456) #10, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  call void @arm_heavy_mb() #10
  %243 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %io_base.i, align 4
  %add15.i14.i = add i32 %244, 4
  %and16.i15.i = and i32 %add15.i14.i, 1048575
  %add17.i16.i = or i32 %and16.i15.i, -18874368
  %245 = inttoptr i32 %add17.i16.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %245, i32 %spdorg.0.i) #10, !srcloc !49
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i.i, i32 noundef %call3.i10.i) #10
  %call3.i18.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !55
  call void @arm_heavy_mb() #10
  %246 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %io_base.i, align 4
  %and.i20.i = and i32 %247, 1048575
  %add9.i21.i = or i32 %and.i20.i, -18874368
  %248 = inttoptr i32 %add9.i21.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %248, i32 -2074862592) #10, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  call void @arm_heavy_mb() #10
  %249 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %io_base.i, align 4
  %add15.i22.i = add i32 %250, 4
  %and16.i23.i = and i32 %add15.i22.i, 1048575
  %add17.i24.i = or i32 %and16.i23.i, -18874368
  %251 = inttoptr i32 %add17.i24.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %251, i32 0) #10, !srcloc !49
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i.i, i32 noundef %call3.i18.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %252 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %252(i32 noundef 214748000) #10
  %call3.i26.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !55
  call void @arm_heavy_mb() #10
  %253 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %io_base.i, align 4
  %and.i28.i = and i32 %254, 1048575
  %add9.i29.i = or i32 %and.i28.i, -18874368
  %255 = inttoptr i32 %add9.i29.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %255, i32 -2074862592) #10, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  call void @arm_heavy_mb() #10
  %256 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %io_base.i, align 4
  %add15.i30.i = add i32 %257, 4
  %and16.i31.i = and i32 %add15.i30.i, 1048575
  %add17.i32.i = or i32 %and16.i31.i, -18874368
  %258 = inttoptr i32 %add17.i32.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %258, i32 168430090) #10, !srcloc !49
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i.i, i32 noundef %call3.i26.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %259 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %259(i32 noundef 214748000) #10
  %260 = ptrtoint ptr %msr to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %msr, align 4
  %262 = ptrtoint ptr %model22.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %model22.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %263)
  %cmp.i157 = icmp eq i32 %263, 0
  %call3.i.i159 = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  call void @arm_heavy_mb() #10
  %264 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %io_base.i, align 4
  %and.i.i161 = and i32 %265, 1048575
  %add9.i.i162 = or i32 %and.i.i161, -18874368
  %266 = inttoptr i32 %add9.i.i162 to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %266, i32 543169536) #10
  %267 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %io_base.i, align 4
  %add12.i.i163 = add i32 %268, 4
  %and13.i.i164 = and i32 %add12.i.i163, 1048575
  %add14.i.i165 = or i32 %and13.i.i164, -18874368
  %269 = inttoptr i32 %add14.i.i165 to ptr
  %270 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %269) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i.i, i32 noundef %call3.i.i159) #10
  br i1 %cmp.i157, label %if.then.i, label %if.end.i171

if.then.i:                                        ; preds = %hw_daio_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  %271 = and i32 %270, -1107361792
  %272 = or i32 %271, 33554432
  %call3.i56.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !55
  call void @arm_heavy_mb() #10
  %273 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %io_base.i, align 4
  %and.i58.i = and i32 %274, 1048575
  %add9.i59.i = or i32 %and.i58.i, -18874368
  %275 = inttoptr i32 %add9.i59.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %275, i32 543169536) #10, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  call void @arm_heavy_mb() #10
  %276 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %io_base.i, align 4
  %add15.i.i166 = add i32 %277, 4
  %and16.i.i167 = and i32 %add15.i.i166, 1048575
  %add17.i.i168 = or i32 %and16.i.i167, -18874368
  %278 = inttoptr i32 %add17.i.i168 to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %278, i32 %272) #10, !srcloc !49
  br label %if.end27

if.end.i171:                                      ; preds = %hw_daio_init.exit
  %279 = and i32 %270, -1073807360
  %call3.i69.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !55
  call void @arm_heavy_mb() #10
  %280 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %io_base.i, align 4
  %and.i71.i = and i32 %281, 1048575
  %add9.i72.i = or i32 %and.i71.i, -18874368
  %282 = inttoptr i32 %add9.i72.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %282, i32 543169536) #10, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  call void @arm_heavy_mb() #10
  %283 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %io_base.i, align 4
  %add15.i73.i = add i32 %284, 4
  %and16.i74.i = and i32 %add15.i73.i, 1048575
  %add17.i75.i = or i32 %and16.i74.i, -18874368
  %285 = inttoptr i32 %add17.i75.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %285, i32 %279) #10, !srcloc !49
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i.i, i32 noundef %call3.i69.i) #10
  %call.i.i169 = call fastcc i32 @i2c_unlock(ptr noundef %hw) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i169)
  %tobool.not.i.i170 = icmp eq i32 %call.i.i169, 0
  br i1 %tobool.not.i.i170, label %do.body.preheader.i.i, label %if.end.i171.hw_reset_dac.exit.i_crit_edge

if.end.i171.hw_reset_dac.exit.i_crit_edge:        ; preds = %if.end.i171
  call void @__sanitizer_cov_trace_pc() #12
  br label %hw_reset_dac.exit.i

do.body.preheader.i.i:                            ; preds = %if.end.i171
  %reg_pci_lock.i.i.i = getelementptr inbounds %struct.hw20k1, ptr %hw, i32 0, i32 2
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %do.body.preheader.i.i
  %call3.i.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_pci_lock.i.i.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !57
  call void @arm_heavy_mb() #10
  %286 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %io_base.i, align 4
  %add.i.i.i = add i32 %287, 16
  %and.i.i.i = and i32 %add.i.i.i, 1048575
  %add9.i.i.i = or i32 %and.i.i.i, -18874368
  %288 = inttoptr i32 %add9.i.i.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %288, i32 -335544320) #10, !srcloc !49
  %289 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %io_base.i, align 4
  %add12.i.i.i = add i32 %290, 20
  %and13.i.i.i = and i32 %add12.i.i.i, 1048575
  %add14.i.i.i = or i32 %and13.i.i.i, -18874368
  %291 = inttoptr i32 %add14.i.i.i to ptr
  %292 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %291) #10, !srcloc !46
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !58
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_pci_lock.i.i.i, i32 noundef %call3.i.i.i) #10
  %293 = and i32 %292, 32768
  %tobool2.not.i.i = icmp eq i32 %293, 0
  br i1 %tobool2.not.i.i, label %do.body.i.i.do.body.i.i_crit_edge, label %do.end.i.i

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i

do.end.i.i:                                       ; preds = %do.body.i.i
  %call3.i2.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_pci_lock.i.i.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !59
  call void @arm_heavy_mb() #10
  %294 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %io_base.i, align 4
  %add.i4.i.i = add i32 %295, 16
  %and.i5.i.i = and i32 %add.i4.i.i, 1048575
  %add9.i6.i.i = or i32 %and.i5.i.i, -18874368
  %296 = inttoptr i32 %add9.i6.i.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %296, i32 -335544320) #10, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !60
  call void @arm_heavy_mb() #10
  %297 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %io_base.i, align 4
  %add15.i.i.i = add i32 %298, 20
  %and16.i.i.i = and i32 %add15.i.i.i, 1048575
  %add17.i.i.i = or i32 %and16.i.i.i, -18874368
  %299 = inttoptr i32 %add17.i.i.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %299, i32 83886080) #10, !srcloc !49
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_pci_lock.i.i.i, i32 noundef %call3.i2.i.i) #10
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %do.end.i.i
  %cmp.i.i172 = phi i1 [ true, %do.end.i.i ], [ false, %for.body.i.i.for.body.i.i_crit_edge ]
  call void @msleep(i32 noundef 100) #10
  %call3.i7.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !53
  call void @arm_heavy_mb() #10
  %300 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %io_base.i, align 4
  %and.i9.i.i = and i32 %301, 1048575
  %add9.i10.i.i = or i32 %and.i9.i.i, -18874368
  %302 = inttoptr i32 %add9.i10.i.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %302, i32 543169536) #10, !srcloc !49
  %303 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %io_base.i, align 4
  %add12.i11.i.i = add i32 %304, 4
  %and13.i12.i.i = and i32 %add12.i11.i.i, 1048575
  %add14.i13.i.i = or i32 %and13.i12.i.i, -18874368
  %305 = inttoptr i32 %add14.i13.i.i to ptr
  %306 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %305) #10, !srcloc !46
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !54
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i.i, i32 noundef %call3.i7.i.i) #10
  %307 = and i32 %306, -33619968
  %call3.i15.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !55
  call void @arm_heavy_mb() #10
  %308 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %io_base.i, align 4
  %and.i17.i.i = and i32 %309, 1048575
  %add9.i18.i.i = or i32 %and.i17.i.i, -18874368
  %310 = inttoptr i32 %add9.i18.i.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %310, i32 543169536) #10, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  call void @arm_heavy_mb() #10
  %311 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %io_base.i, align 4
  %add15.i19.i.i = add i32 %312, 4
  %and16.i20.i.i = and i32 %add15.i19.i.i, 1048575
  %add17.i21.i.i = or i32 %and16.i20.i.i, -18874368
  %313 = inttoptr i32 %add17.i21.i.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %313, i32 %307) #10, !srcloc !49
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i.i, i32 noundef %call3.i15.i.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %314 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %314(i32 noundef 214748000) #10
  %315 = or i32 %307, 33554432
  %call3.i23.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !55
  call void @arm_heavy_mb() #10
  %316 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %io_base.i, align 4
  %and.i25.i.i = and i32 %317, 1048575
  %add9.i26.i.i = or i32 %and.i25.i.i, -18874368
  %318 = inttoptr i32 %add9.i26.i.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %318, i32 543169536) #10, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  call void @arm_heavy_mb() #10
  %319 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %io_base.i, align 4
  %add15.i27.i.i = add i32 %320, 4
  %and16.i28.i.i = and i32 %add15.i27.i.i, 1048575
  %add17.i29.i.i = or i32 %and16.i28.i.i, -18874368
  %321 = inttoptr i32 %add17.i29.i.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %321, i32 %315) #10, !srcloc !49
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i.i, i32 noundef %call3.i23.i.i) #10
  br i1 %cmp.i.i172, label %for.body.i.i.for.body.i.i_crit_edge, label %for.end.i.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @i2c_write(ptr noundef %hw, i32 noundef 1572992, i32 noundef 1, i32 noundef 128) #10
  call fastcc void @i2c_write(ptr noundef %hw, i32 noundef 1572992, i32 noundef 2, i32 noundef 16) #10
  call fastcc void @i2c_lock(ptr noundef %hw) #10
  br label %hw_reset_dac.exit.i

hw_reset_dac.exit.i:                              ; preds = %for.end.i.i, %if.end.i171.hw_reset_dac.exit.i_crit_edge
  %call13.i = call fastcc i32 @i2c_unlock(ptr noundef %hw) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool.not.i, label %if.end15.i, label %hw_reset_dac.exit.i.cleanup_crit_edge

hw_reset_dac.exit.i.cleanup_crit_edge:            ; preds = %hw_reset_dac.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15.i:                                       ; preds = %hw_reset_dac.exit.i
  %reg_pci_lock.i.i = getelementptr inbounds %struct.hw20k1, ptr %hw, i32 0, i32 2
  %call3.i76.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_pci_lock.i.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !59
  call void @arm_heavy_mb() #10
  %322 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %io_base.i, align 4
  %add.i.i173 = add i32 %323, 16
  %and.i78.i = and i32 %add.i.i173, 1048575
  %add9.i79.i = or i32 %and.i78.i, -18874368
  %324 = inttoptr i32 %add9.i79.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %324, i32 -335544320) #10, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !60
  call void @arm_heavy_mb() #10
  %325 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %io_base.i, align 4
  %add15.i80.i = add i32 %326, 20
  %and16.i81.i = and i32 %add15.i80.i, 1048575
  %add17.i82.i = or i32 %and16.i81.i, -18874368
  %327 = inttoptr i32 %add17.i82.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %327, i32 83886080) #10, !srcloc !49
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_pci_lock.i.i, i32 noundef %call3.i76.i) #10
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end15.i
  %call3.i84.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_pci_lock.i.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !57
  call void @arm_heavy_mb() #10
  %328 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %io_base.i, align 4
  %add.i86.i = add i32 %329, 16
  %and.i87.i = and i32 %add.i86.i, 1048575
  %add9.i88.i = or i32 %and.i87.i, -18874368
  %330 = inttoptr i32 %add9.i88.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %330, i32 -335544320) #10, !srcloc !49
  %331 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %io_base.i, align 4
  %add12.i89.i = add i32 %332, 20
  %and13.i90.i = and i32 %add12.i89.i, 1048575
  %add14.i91.i = or i32 %and13.i90.i, -18874368
  %333 = inttoptr i32 %add14.i91.i to ptr
  %334 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %333) #10, !srcloc !46
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !58
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_pci_lock.i.i, i32 noundef %call3.i84.i) #10
  %335 = and i32 %334, 32768
  %tobool18.not.i = icmp eq i32 %335, 0
  br i1 %tobool18.not.i, label %do.body.i.do.body.i_crit_edge, label %do.end.i174

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

do.end.i174:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %261)
  %switch.selectcmp.i = icmp eq i32 %261, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 37, i32 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %261)
  %switch.selectcmp53.i = icmp eq i32 %261, 4
  %switch.select54.i = select i1 %switch.selectcmp53.i, i32 38, i32 %switch.select.i
  call fastcc void @i2c_write(ptr noundef %hw, i32 noundef 1572992, i32 noundef 6, i32 noundef %switch.select54.i) #10
  call fastcc void @i2c_write(ptr noundef %hw, i32 noundef 1572992, i32 noundef 9, i32 noundef %switch.select54.i) #10
  call fastcc void @i2c_write(ptr noundef %hw, i32 noundef 1572992, i32 noundef 12, i32 noundef %switch.select54.i) #10
  call fastcc void @i2c_write(ptr noundef %hw, i32 noundef 1572992, i32 noundef 15, i32 noundef %switch.select54.i) #10
  call fastcc void @i2c_lock(ptr noundef %hw) #10
  %call3.i93.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !53
  call void @arm_heavy_mb() #10
  %336 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %io_base.i, align 4
  %and.i95.i = and i32 %337, 1048575
  %add9.i96.i = or i32 %and.i95.i, -18874368
  %338 = inttoptr i32 %add9.i96.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %338, i32 543169536) #10, !srcloc !49
  %339 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %io_base.i, align 4
  %add12.i97.i = add i32 %340, 4
  %and13.i98.i = and i32 %add12.i97.i, 1048575
  %add14.i99.i = or i32 %and13.i98.i, -18874368
  %341 = inttoptr i32 %add14.i99.i to ptr
  %342 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %341) #10, !srcloc !46
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !54
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i.i, i32 noundef %call3.i93.i) #10
  %343 = and i32 %342, -1073807360
  %344 = or i32 %343, 1073741824
  %call3.i101.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !55
  call void @arm_heavy_mb() #10
  %345 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %io_base.i, align 4
  %and.i103.i = and i32 %346, 1048575
  %add9.i104.i = or i32 %and.i103.i, -18874368
  %347 = inttoptr i32 %add9.i104.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %347, i32 543169536) #10, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  call void @arm_heavy_mb() #10
  %348 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %io_base.i, align 4
  %add15.i105.i = add i32 %349, 4
  %and16.i106.i = and i32 %add15.i105.i, 1048575
  %add17.i107.i = or i32 %and16.i106.i, -18874368
  %350 = inttoptr i32 %add17.i107.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %350, i32 %344) #10, !srcloc !49
  br label %if.end27

if.end27:                                         ; preds = %do.end.i174, %if.then.i
  %call3.i101.sink.i = phi i32 [ %call3.i101.i, %do.end.i174 ], [ %call3.i56.i, %if.then.i ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i.i, i32 noundef %call3.i101.sink.i) #10
  %351 = ptrtoint ptr %model22.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %model22.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %352)
  %cmp.i177 = icmp eq i32 %352, 0
  br i1 %cmp.i177, label %hw_adc_init.exit, label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %if.end27
  %call.i12.i = call fastcc i32 @i2c_unlock(ptr noundef %hw) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i)
  %tobool.not.i.i180 = icmp eq i32 %call.i12.i, 0
  br i1 %tobool.not.i.i180, label %do.body.preheader.i.i182, label %sw.epilog.i.i.cleanup_crit_edge

sw.epilog.i.i.cleanup_crit_edge:                  ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body.preheader.i.i182:                         ; preds = %sw.epilog.i.i
  %reg_pci_lock.i.i.i181 = getelementptr inbounds %struct.hw20k1, ptr %hw, i32 0, i32 2
  br label %do.body.i.i190

do.body.i.i190:                                   ; preds = %do.body.i.i190.do.body.i.i190_crit_edge, %do.body.preheader.i.i182
  %call3.i.i.i183 = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_pci_lock.i.i.i181) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !57
  call void @arm_heavy_mb() #10
  %353 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %io_base.i, align 4
  %add.i.i.i184 = add i32 %354, 16
  %and.i.i.i185 = and i32 %add.i.i.i184, 1048575
  %add9.i.i.i186 = or i32 %and.i.i.i185, -18874368
  %355 = inttoptr i32 %add9.i.i.i186 to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %355, i32 -335544320) #10, !srcloc !49
  %356 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %io_base.i, align 4
  %add12.i.i.i187 = add i32 %357, 20
  %and13.i.i.i188 = and i32 %add12.i.i.i187, 1048575
  %add14.i.i.i189 = or i32 %and13.i.i.i188, -18874368
  %358 = inttoptr i32 %add14.i.i.i189 to ptr
  %359 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %358) #10, !srcloc !46
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !58
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_pci_lock.i.i.i181, i32 noundef %call3.i.i.i183) #10
  %360 = and i32 %359, 32768
  %tobool6.not.i.i = icmp eq i32 %360, 0
  br i1 %tobool6.not.i.i, label %do.body.i.i190.do.body.i.i190_crit_edge, label %do.end.i.i194

do.body.i.i190.do.body.i.i190_crit_edge:          ; preds = %do.body.i.i190
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i190

do.end.i.i194:                                    ; preds = %do.body.i.i190
  %call3.i44.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_pci_lock.i.i.i181) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !59
  call void @arm_heavy_mb() #10
  %361 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load i32, ptr %io_base.i, align 4
  %add.i46.i.i = add i32 %362, 16
  %and.i47.i.i = and i32 %add.i46.i.i, 1048575
  %add9.i48.i.i = or i32 %and.i47.i.i, -18874368
  %363 = inttoptr i32 %add9.i48.i.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %363, i32 -335544320) #10, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !60
  call void @arm_heavy_mb() #10
  %364 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %io_base.i, align 4
  %add15.i.i.i191 = add i32 %365, 20
  %and16.i.i.i192 = and i32 %add15.i.i.i191, 1048575
  %add17.i.i.i193 = or i32 %and16.i.i.i192, -18874368
  %366 = inttoptr i32 %add17.i.i.i193 to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %366, i32 83886080) #10, !srcloc !49
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_pci_lock.i.i.i181, i32 noundef %call3.i44.i.i) #10
  call fastcc void @i2c_write(ptr noundef %hw, i32 noundef 1704064, i32 noundef 14, i32 noundef 8) #10
  call fastcc void @i2c_write(ptr noundef %hw, i32 noundef 1704064, i32 noundef 24, i32 noundef 10) #10
  call fastcc void @i2c_write(ptr noundef %hw, i32 noundef 1704064, i32 noundef 40, i32 noundef 134) #10
  call fastcc void @i2c_write(ptr noundef %hw, i32 noundef 1704064, i32 noundef 42, i32 noundef 2) #10
  call fastcc void @i2c_write(ptr noundef %hw, i32 noundef 1704064, i32 noundef 28, i32 noundef 207) #10
  call fastcc void @i2c_write(ptr noundef %hw, i32 noundef 1704064, i32 noundef 30, i32 noundef 207) #10
  %call3.i49.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !53
  call void @arm_heavy_mb() #10
  %367 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %io_base.i, align 4
  %and.i51.i.i = and i32 %368, 1048575
  %add9.i52.i.i = or i32 %and.i51.i.i, -18874368
  %369 = inttoptr i32 %add9.i52.i.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %369, i32 -2141185024) #10, !srcloc !49
  %370 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %io_base.i, align 4
  %add12.i53.i.i = add i32 %371, 4
  %and13.i54.i.i = and i32 %add12.i53.i.i, 1048575
  %add14.i55.i.i = or i32 %and13.i54.i.i, -18874368
  %372 = inttoptr i32 %add14.i55.i.i to ptr
  %373 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %372) #10, !srcloc !46
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !54
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i.i, i32 noundef %call3.i49.i.i) #10
  %374 = and i32 %373, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %374)
  %tobool12.not.i.i = icmp eq i32 %374, 0
  br i1 %tobool12.not.i.i, label %if.then13.i.i, label %do.end.i.i194.hw_adc_init.exit.thread223_crit_edge

do.end.i.i194.hw_adc_init.exit.thread223_crit_edge: ; preds = %do.end.i.i194
  call void @__sanitizer_cov_trace_pc() #12
  br label %hw_adc_init.exit.thread223

if.then13.i.i:                                    ; preds = %do.end.i.i194
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @i2c_write(ptr noundef %hw, i32 noundef 1704064, i32 noundef 22, i32 noundef 38) #10
  br label %hw_adc_init.exit.thread223

hw_adc_init.exit.thread223:                       ; preds = %if.then13.i.i, %do.end.i.i194.hw_adc_init.exit.thread223_crit_edge
  call fastcc void @i2c_lock(ptr noundef %hw) #10
  %call3.i57.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !53
  call void @arm_heavy_mb() #10
  %375 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %io_base.i, align 4
  %and.i59.i.i = and i32 %376, 1048575
  %add9.i60.i.i = or i32 %and.i59.i.i, -18874368
  %377 = inttoptr i32 %add9.i60.i.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %377, i32 543169536) #10, !srcloc !49
  %378 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %io_base.i, align 4
  %add12.i61.i.i = add i32 %379, 4
  %and13.i62.i.i = and i32 %add12.i61.i.i, 1048575
  %add14.i63.i.i = or i32 %and13.i62.i.i, -18874368
  %380 = inttoptr i32 %add14.i63.i.i to ptr
  %381 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %380) #10, !srcloc !46
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !54
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i.i, i32 noundef %call3.i57.i.i) #10
  %382 = and i32 %381, 2147352576
  %383 = or i32 %382, 65536
  %call3.i65.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !55
  call void @arm_heavy_mb() #10
  %384 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %io_base.i, align 4
  %and.i67.i.i = and i32 %385, 1048575
  %add9.i68.i.i = or i32 %and.i67.i.i, -18874368
  %386 = inttoptr i32 %add9.i68.i.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %386, i32 543169536) #10, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  call void @arm_heavy_mb() #10
  %387 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load i32, ptr %io_base.i, align 4
  %add15.i69.i.i = add i32 %388, 4
  %and16.i70.i.i = and i32 %add15.i69.i.i, 1048575
  %add17.i71.i.i = or i32 %and16.i70.i.i, -18874368
  %389 = inttoptr i32 %add17.i71.i.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %389, i32 %383) #10, !srcloc !49
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i.i, i32 noundef %call3.i65.i.i) #10
  br label %if.end33

hw_adc_init.exit:                                 ; preds = %if.end27
  %call.i.i178 = call fastcc i32 @adc_input_select_SB055x(ptr noundef %hw, i32 noundef 1, i8 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i178)
  %cmp31 = icmp slt i32 %call.i.i178, 0
  br i1 %cmp31, label %hw_adc_init.exit.cleanup_crit_edge, label %hw_adc_init.exit.if.end33_crit_edge

hw_adc_init.exit.if.end33_crit_edge:              ; preds = %hw_adc_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

hw_adc_init.exit.cleanup_crit_edge:               ; preds = %hw_adc_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end33:                                         ; preds = %hw_adc_init.exit.if.end33_crit_edge, %hw_adc_init.exit.thread223
  %call3.i197 = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !53
  call void @arm_heavy_mb() #10
  %390 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load i32, ptr %io_base.i, align 4
  %and.i199 = and i32 %391, 1048575
  %add9.i200 = or i32 %and.i199, -18874368
  %392 = inttoptr i32 %add9.i200 to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %392, i32 738269952) #10, !srcloc !49
  %393 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %io_base.i, align 4
  %add12.i201 = add i32 %394, 4
  %and13.i202 = and i32 %add12.i201, 1048575
  %add14.i203 = or i32 %and13.i202, -18874368
  %395 = inttoptr i32 %add14.i203 to ptr
  %396 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %395) #10, !srcloc !46
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !54
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i.i, i32 noundef %call3.i197) #10
  %397 = or i32 %396, 16777216
  %call3.i205 = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !55
  call void @arm_heavy_mb() #10
  %398 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load i32, ptr %io_base.i, align 4
  %and.i207 = and i32 %399, 1048575
  %add9.i208 = or i32 %and.i207, -18874368
  %400 = inttoptr i32 %add9.i208 to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %400, i32 738269952) #10, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  call void @arm_heavy_mb() #10
  %401 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load i32, ptr %io_base.i, align 4
  %add15.i209 = add i32 %402, 4
  %and16.i210 = and i32 %add15.i209, 1048575
  %add17.i211 = or i32 %and16.i210, -18874368
  %403 = inttoptr i32 %add17.i211 to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %403, i32 %397) #10, !srcloc !49
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i.i, i32 noundef %call3.i205) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %hw_adc_init.exit.cleanup_crit_edge, %sw.epilog.i.i.cleanup_crit_edge, %hw_reset_dac.exit.i.cleanup_crit_edge, %hw_trn_init.exit.thread, %hw_auto_init.exit.thread, %if.end.cleanup_crit_edge, %error1.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end33 ], [ %call1, %if.end.cleanup_crit_edge ], [ %call.i.i178, %hw_adc_init.exit.cleanup_crit_edge ], [ -16, %hw_auto_init.exit.thread ], [ -1, %hw_trn_init.exit.thread ], [ %call.i, %entry.cleanup_crit_edge ], [ %err.1.i, %error1.i ], [ -1, %hw_reset_dac.exit.i.cleanup_crit_edge ], [ -1, %sw.epilog.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gctl) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_card_stop(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_20k1_lock.i = getelementptr inbounds %struct.hw20k1, ptr %hw, i32 0, i32 1
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !55
  tail call void @arm_heavy_mb() #10
  %io_base.i = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 99
  %0 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %io_base.i, align 4
  %and.i = and i32 %1, 1048575
  %add9.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add9.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %2, i32 78910208) #10, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  tail call void @arm_heavy_mb() #10
  %3 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %io_base.i, align 4
  %add15.i = add i32 %4, 4
  %and16.i = and i32 %add15.i, 1048575
  %add17.i = or i32 %and16.i, -18874368
  %5 = inttoptr i32 %add17.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %5, i32 0) #10, !srcloc !49
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i, i32 noundef %call3.i) #10
  %call3.i4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !53
  tail call void @arm_heavy_mb() #10
  %6 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %io_base.i, align 4
  %and.i6 = and i32 %7, 1048575
  %add9.i7 = or i32 %and.i6, -18874368
  %8 = inttoptr i32 %add9.i7 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %8, i32 1616911360) #10, !srcloc !49
  %9 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %io_base.i, align 4
  %add12.i = add i32 %10, 4
  %and13.i = and i32 %add12.i, 1048575
  %add14.i = or i32 %and13.i, -18874368
  %11 = inttoptr i32 %add14.i to ptr
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %11) #10, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !54
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i, i32 noundef %call3.i4) #10
  %13 = and i32 %12, -15728641
  %call3.i9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !55
  tail call void @arm_heavy_mb() #10
  %14 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %io_base.i, align 4
  %and.i11 = and i32 %15, 1048575
  %add9.i12 = or i32 %and.i11, -18874368
  %16 = inttoptr i32 %add9.i12 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %16, i32 1616911360) #10, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  tail call void @arm_heavy_mb() #10
  %17 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %io_base.i, align 4
  %add15.i13 = add i32 %18, 4
  %and16.i14 = and i32 %add15.i13, 1048575
  %add17.i15 = or i32 %and16.i14, -18874368
  %19 = inttoptr i32 %add17.i15 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %19, i32 %13) #10, !srcloc !49
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i, i32 noundef %call3.i9) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_pll_init(ptr noundef %hw, i32 noundef %rsr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %rsr)
  %cmp = icmp eq i32 %rsr, 48000
  %cond = select i1 %cmp, i32 343973889, i32 343975729
  %reg_20k1_lock.i = getelementptr inbounds %struct.hw20k1, ptr %hw, i32 0, i32 1
  %io_base.i = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 99
  %0 = tail call i32 @llvm.bswap.i32(i32 %cond) #10
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.018 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !53
  tail call void @arm_heavy_mb() #10
  %1 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %io_base.i, align 4
  %and.i = and i32 %2, 1048575
  %add9.i = or i32 %and.i, -18874368
  %3 = inttoptr i32 %add9.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %3, i32 1616911360) #10, !srcloc !49
  %4 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io_base.i, align 4
  %add12.i = add i32 %5, 4
  %and13.i = and i32 %add12.i, 1048575
  %add14.i = or i32 %and13.i, -18874368
  %6 = inttoptr i32 %add14.i to ptr
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %6) #10, !srcloc !46
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !54
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i, i32 noundef %call3.i) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %cond)
  %cmp2 = icmp eq i32 %8, %cond
  br i1 %cmp2, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %for.body
  %call3.i13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !55
  tail call void @arm_heavy_mb() #10
  %9 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %io_base.i, align 4
  %and.i15 = and i32 %10, 1048575
  %add9.i16 = or i32 %and.i15, -18874368
  %11 = inttoptr i32 %add9.i16 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %11, i32 1616911360) #10, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  tail call void @arm_heavy_mb() #10
  %12 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %io_base.i, align 4
  %add15.i = add i32 %13, 4
  %and16.i = and i32 %add15.i, 1048575
  %add17.i = or i32 %and16.i, -18874368
  %14 = inttoptr i32 %add17.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %14, i32 %0) #10, !srcloc !49
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i, i32 noundef %call3.i13) #10
  tail call void @msleep(i32 noundef 40) #10
  %inc = add nuw nsw i32 %i.018, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %do.end, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %card = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 97
  %15 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %16, i32 0, i32 27
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_alert(ptr noundef %18, ptr noundef nonnull @.str.15) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_suspend(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pci1 = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 96
  %0 = ptrtoint ptr %pci1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci1, align 4
  %call = tail call i32 @hw_card_stop(ptr noundef %hw)
  %model = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 102
  %2 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %model, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 @pci_write_config_dword(ptr noundef %1, i32 noundef 160, i32 noundef 0) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_resume(ptr noundef %hw, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @hw_card_init(ptr noundef %hw, ptr noundef %info)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_is_adc_input_selected(ptr noundef %hw, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %model = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 102
  %0 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %model, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %1, label %sw.default [
    i32 0, label %entry.return_crit_edge
    i32 1, label %sw.bb1
    i32 2, label %sw.bb3
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb1:                                           ; preds = %entry
  %reg_20k1_lock.i.i = getelementptr inbounds %struct.hw20k1, ptr %hw, i32 0, i32 1
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !53
  tail call void @arm_heavy_mb() #10
  %io_base.i.i = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 99
  %3 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %io_base.i.i, align 4
  %and.i.i = and i32 %4, 1048575
  %add9.i.i = or i32 %and.i.i, -18874368
  %5 = inttoptr i32 %add9.i.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %5, i32 543169536) #10, !srcloc !49
  %6 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %io_base.i.i, align 4
  %add12.i.i = add i32 %7, 4
  %and13.i.i = and i32 %add12.i.i, 1048575
  %add14.i.i = or i32 %and13.i.i, -18874368
  %8 = inttoptr i32 %add14.i.i to ptr
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %8) #10, !srcloc !46
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !54
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i.i, i32 noundef %call3.i.i) #10
  %11 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %type, label %sw.bb1.return_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb.i:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  %and.i = lshr i32 %10, 7
  %and.lobit.i = and i32 %and.i, 1
  br label %return

sw.bb1.i:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  %and2.i = lshr i32 %10, 7
  %and2.lobit.i = and i32 %and2.i, 1
  %12 = xor i32 %and2.lobit.i, 1
  br label %return

sw.bb3:                                           ; preds = %entry
  %reg_20k1_lock.i.i13 = getelementptr inbounds %struct.hw20k1, ptr %hw, i32 0, i32 1
  %call3.i.i14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i.i13) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !53
  tail call void @arm_heavy_mb() #10
  %io_base.i.i15 = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 99
  %13 = ptrtoint ptr %io_base.i.i15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %io_base.i.i15, align 4
  %and.i.i16 = and i32 %14, 1048575
  %add9.i.i17 = or i32 %and.i.i16, -18874368
  %15 = inttoptr i32 %add9.i.i17 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %15, i32 543169536) #10, !srcloc !49
  %16 = ptrtoint ptr %io_base.i.i15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %io_base.i.i15, align 4
  %add12.i.i18 = add i32 %17, 4
  %and13.i.i19 = and i32 %add12.i.i18, 1048575
  %add14.i.i20 = or i32 %and13.i.i19, -18874368
  %18 = inttoptr i32 %add14.i.i20 to ptr
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %18) #10, !srcloc !46
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !54
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i.i13, i32 noundef %call3.i.i14) #10
  %21 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %type, label %sw.bb3.return_crit_edge [
    i32 0, label %sw.bb.i23
    i32 1, label %sw.bb1.i26
  ]

sw.bb3.return_crit_edge:                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb.i23:                                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #12
  %and.i21 = lshr i32 %20, 7
  %and.lobit.i22 = and i32 %and.i21, 1
  br label %return

sw.bb1.i26:                                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #12
  %and2.i24 = lshr i32 %20, 7
  %and2.lobit.i25 = and i32 %and2.i24, 1
  %22 = xor i32 %and2.lobit.i25, 1
  br label %return

sw.default:                                       ; preds = %entry
  %reg_20k1_lock.i.i29 = getelementptr inbounds %struct.hw20k1, ptr %hw, i32 0, i32 1
  %call3.i.i30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i.i29) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !53
  tail call void @arm_heavy_mb() #10
  %io_base.i.i31 = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 99
  %23 = ptrtoint ptr %io_base.i.i31 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %io_base.i.i31, align 4
  %and.i.i32 = and i32 %24, 1048575
  %add9.i.i33 = or i32 %and.i.i32, -18874368
  %25 = inttoptr i32 %add9.i.i33 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %25, i32 543169536) #10, !srcloc !49
  %26 = ptrtoint ptr %io_base.i.i31 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %io_base.i.i31, align 4
  %add12.i.i34 = add i32 %27, 4
  %and13.i.i35 = and i32 %add12.i.i34, 1048575
  %add14.i.i36 = or i32 %and13.i.i35, -18874368
  %28 = inttoptr i32 %add14.i.i36 to ptr
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %28) #10, !srcloc !46
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !54
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i.i29, i32 noundef %call3.i.i30) #10
  %31 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %type, label %sw.default.return_crit_edge [
    i32 0, label %sw.bb.i38
    i32 1, label %sw.bb3.i
    i32 4, label %sw.bb11.i
  ]

sw.default.return_crit_edge:                      ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb.i38:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  %and.i37 = and i32 %30, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i37)
  %tobool.not.i = icmp eq i32 %and.i37, 0
  %and1.i = lshr i32 %30, 8
  %and1.lobit.i = and i32 %and1.i, 1
  %32 = select i1 %tobool.not.i, i32 0, i32 %and1.lobit.i
  br label %return

sw.bb3.i:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  %and4.i = and i32 %30, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  %and7.i = lshr i32 %30, 8
  %and7.lobit.i = and i32 %and7.i, 1
  %33 = select i1 %tobool5.not.i, i32 %and7.lobit.i, i32 0
  br label %return

sw.bb11.i:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  %and12.i = lshr i32 %30, 8
  %and12.lobit.i = and i32 %and12.i, 1
  %34 = xor i32 %and12.lobit.i, 1
  br label %return

return:                                           ; preds = %sw.bb11.i, %sw.bb3.i, %sw.bb.i38, %sw.default.return_crit_edge, %sw.bb1.i26, %sw.bb.i23, %sw.bb3.return_crit_edge, %sw.bb1.i, %sw.bb.i, %sw.bb1.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %1, %entry.return_crit_edge ], [ %12, %sw.bb1.i ], [ %and.lobit.i, %sw.bb.i ], [ 0, %sw.bb1.return_crit_edge ], [ %22, %sw.bb1.i26 ], [ %and.lobit.i22, %sw.bb.i23 ], [ 0, %sw.bb3.return_crit_edge ], [ %34, %sw.bb11.i ], [ %33, %sw.bb3.i ], [ %32, %sw.bb.i38 ], [ 0, %sw.default.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_adc_input_select(ptr noundef %hw, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp = icmp eq i32 %type, 0
  %model = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 102
  %0 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %model, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv1 = zext i1 %cmp to i8
  %call = tail call fastcc i32 @adc_input_select_SB055x(ptr noundef %hw, i32 noundef %type, i8 noundef zeroext %conv1)
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv3 = zext i1 %cmp to i8
  %call4 = tail call fastcc i32 @adc_input_select_hendrix(ptr noundef %hw, i32 noundef %type, i8 noundef zeroext %conv3)
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv6 = zext i1 %cmp to i8
  %call7 = tail call fastcc i32 @adc_input_select_hendrix(ptr noundef %hw, i32 noundef %type, i8 noundef zeroext %conv6)
  br label %cleanup

sw.default:                                       ; preds = %entry
  %call.i = tail call fastcc i32 @i2c_unlock(ptr noundef %hw) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.body.preheader.i, label %sw.default.cleanup_crit_edge

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body.preheader.i:                              ; preds = %sw.default
  %reg_pci_lock.i.i = getelementptr inbounds %struct.hw20k1, ptr %hw, i32 0, i32 2
  %io_base.i.i = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 99
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.preheader.i
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_pci_lock.i.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !57
  tail call void @arm_heavy_mb() #10
  %3 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %io_base.i.i, align 4
  %add.i.i = add i32 %4, 16
  %and.i.i = and i32 %add.i.i, 1048575
  %add9.i.i = or i32 %and.i.i, -18874368
  %5 = inttoptr i32 %add9.i.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %5, i32 -335544320) #10, !srcloc !49
  %6 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %io_base.i.i, align 4
  %add12.i.i = add i32 %7, 20
  %and13.i.i = and i32 %add12.i.i, 1048575
  %add14.i.i = or i32 %and13.i.i, -18874368
  %8 = inttoptr i32 %add14.i.i to ptr
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %8) #10, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !58
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_pci_lock.i.i, i32 noundef %call3.i.i) #10
  %10 = and i32 %9, 32768
  %tobool2.not.i = icmp eq i32 %10, 0
  br i1 %tobool2.not.i, label %do.body.i.do.body.i_crit_edge, label %do.end.i

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  %call3.i30.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_pci_lock.i.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !59
  tail call void @arm_heavy_mb() #10
  %11 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %io_base.i.i, align 4
  %add.i32.i = add i32 %12, 16
  %and.i33.i = and i32 %add.i32.i, 1048575
  %add9.i34.i = or i32 %and.i33.i, -18874368
  %13 = inttoptr i32 %add9.i34.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %13, i32 -335544320) #10, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !60
  tail call void @arm_heavy_mb() #10
  %14 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %io_base.i.i, align 4
  %add15.i.i = add i32 %15, 20
  %and16.i.i = and i32 %add15.i.i, 1048575
  %add17.i.i = or i32 %and16.i.i, -18874368
  %16 = inttoptr i32 %add17.i.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %16, i32 83886080) #10, !srcloc !49
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_pci_lock.i.i, i32 noundef %call3.i30.i) #10
  %reg_20k1_lock.i.i = getelementptr inbounds %struct.hw20k1, ptr %hw, i32 0, i32 1
  %call3.i35.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !53
  tail call void @arm_heavy_mb() #10
  %17 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %io_base.i.i, align 4
  %and.i37.i = and i32 %18, 1048575
  %add9.i38.i = or i32 %and.i37.i, -18874368
  %19 = inttoptr i32 %add9.i38.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %19, i32 543169536) #10, !srcloc !49
  %20 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %io_base.i.i, align 4
  %add12.i39.i = add i32 %21, 4
  %and13.i40.i = and i32 %add12.i39.i, 1048575
  %add14.i41.i = or i32 %and13.i40.i, -18874368
  %22 = inttoptr i32 %add14.i41.i to ptr
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %22) #10, !srcloc !46
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !54
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i.i, i32 noundef %call3.i35.i) #10
  %25 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %type, label %do.end.i.cleanup.sink.split.i_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb4.i
    i32 4, label %sw.bb7.i
  ]

do.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

sw.bb.i:                                          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %or.i = or i32 %24, 384
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %and5.i = and i32 %24, -385
  %or6.i = or i32 %and5.i, 256
  br label %sw.epilog.i

sw.bb7.i:                                         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %and8.i = and i32 %24, -257
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb7.i, %sw.bb4.i, %sw.bb.i
  %data.0.i = phi i32 [ %and8.i, %sw.bb7.i ], [ %or6.i, %sw.bb4.i ], [ %or.i, %sw.bb.i ]
  %i2c_data.0.i = phi i32 [ 0, %sw.bb7.i ], [ 2, %sw.bb4.i ], [ 1, %sw.bb.i ]
  %call3.i43.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !55
  tail call void @arm_heavy_mb() #10
  %26 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %io_base.i.i, align 4
  %and.i45.i = and i32 %27, 1048575
  %add9.i46.i = or i32 %and.i45.i, -18874368
  %28 = inttoptr i32 %add9.i46.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %28, i32 543169536) #10, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  tail call void @arm_heavy_mb() #10
  %29 = tail call i32 @llvm.bswap.i32(i32 %data.0.i) #10
  %30 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %io_base.i.i, align 4
  %add15.i47.i = add i32 %31, 4
  %and16.i48.i = and i32 %add15.i47.i, 1048575
  %add17.i49.i = or i32 %and16.i48.i, -18874368
  %32 = inttoptr i32 %add17.i49.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %32, i32 %29) #10, !srcloc !49
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i.i, i32 noundef %call3.i43.i) #10
  tail call fastcc void @i2c_write(ptr noundef %hw, i32 noundef 1704064, i32 noundef 42, i32 noundef %i2c_data.0.i) #10
  %..i = select i1 %cmp, i32 231, i32 207
  tail call fastcc void @i2c_write(ptr noundef %hw, i32 noundef 1704064, i32 noundef 28, i32 noundef %..i) #10
  tail call fastcc void @i2c_write(ptr noundef %hw, i32 noundef 1704064, i32 noundef 30, i32 noundef %..i) #10
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %sw.epilog.i, %do.end.i.cleanup.sink.split.i_crit_edge
  %retval.0.ph.i = phi i32 [ 0, %sw.epilog.i ], [ -1, %do.end.i.cleanup.sink.split.i_crit_edge ]
  tail call fastcc void @i2c_lock(ptr noundef %hw) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split.i, %sw.default.cleanup_crit_edge, %sw.bb5, %sw.bb2, %sw.bb
  %retval.0 = phi i32 [ %call7, %sw.bb5 ], [ %call4, %sw.bb2 ], [ %call, %sw.bb ], [ -1, %sw.default.cleanup_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hw_capabilities(ptr nocapture noundef readonly %hw) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %model = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 102
  %0 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %model, align 4
  %2 = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %3 = icmp ult i32 %2, 2
  %4 = select i1 %3, i32 268435455, i32 -1879048193
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @src_get_rsc_ctrl_blk(ptr nocapture noundef writeonly %rblk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rblk to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %rblk, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 28) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %blk) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @src_set_state(ptr noundef %blk, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @set_field(ptr noundef %blk, i32 noundef 7, i32 noundef %state) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @set_field(ptr noundef %blk, i32 noundef 8, i32 noundef %bm) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @set_field(ptr noundef %blk, i32 noundef 48, i32 noundef %rsr) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @set_field(ptr noundef %blk, i32 noundef 448, i32 noundef %sf) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @set_field(ptr noundef %blk, i32 noundef 512, i32 noundef %wr) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @set_field(ptr noundef %blk, i32 noundef 1024, i32 noundef %pm) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @set_field(ptr noundef %blk, i32 noundef 6144, i32 noundef %rom) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @set_field(ptr noundef %blk, i32 noundef 8192, i32 noundef %vo) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @set_field(ptr noundef %blk, i32 noundef 16384, i32 noundef %st) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @set_field(ptr noundef %blk, i32 noundef 32768, i32 noundef %ie) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @set_field(ptr noundef %blk, i32 noundef 983040, i32 noundef %ilsz) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @set_field(ptr noundef %blk, i32 noundef 1048576, i32 noundef %bp) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ccr = getelementptr inbounds %struct.src_rsc_ctrl_blk, ptr %blk, i32 0, i32 1
  tail call void @set_field(ptr noundef %ccr, i32 noundef 2047, i32 noundef %cisz) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ca1 = getelementptr inbounds %struct.src_rsc_ctrl_blk, ptr %blk, i32 0, i32 2
  tail call void @set_field(ptr noundef %ca1, i32 noundef 67108863, i32 noundef %ca) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sa1 = getelementptr inbounds %struct.src_rsc_ctrl_blk, ptr %blk, i32 0, i32 3
  tail call void @set_field(ptr noundef %sa1, i32 noundef 67108863, i32 noundef %sa) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %la1 = getelementptr inbounds %struct.src_rsc_ctrl_blk, ptr %blk, i32 0, i32 4
  tail call void @set_field(ptr noundef %la1, i32 noundef 67108863, i32 noundef %la) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mpr = getelementptr inbounds %struct.src_rsc_ctrl_blk, ptr %blk, i32 0, i32 5
  tail call void @set_field(ptr noundef %mpr, i32 noundef -1, i32 noundef %pitch) #10
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
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dirty = getelementptr inbounds %struct.src_rsc_ctrl_blk, ptr %blk, i32 0, i32 6
  %0 = ptrtoint ptr %dirty to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %dirty, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @src_commit_write(ptr noundef %hw, i32 noundef %idx, ptr noundef %blk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.cond.preheader:                               ; preds = %entry
  %mul = shl i32 %idx, 8
  %add = add i32 %mul, 1769568
  %reg_20k1_lock.i = getelementptr inbounds %struct.hw20k1, ptr %hw, i32 0, i32 1
  %io_base.i = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 99
  br label %for.body

for.cond3.preheader:                              ; preds = %for.body
  %add7 = add i32 %mul, 1769520
  %call3.i160 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !55
  tail call void @arm_heavy_mb() #10
  %2 = tail call i32 @llvm.bswap.i32(i32 %add7) #10
  %3 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %io_base.i, align 4
  %and.i162 = and i32 %4, 1048575
  %add9.i163 = or i32 %and.i162, -18874368
  %5 = inttoptr i32 %add9.i163 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %5, i32 %2) #10, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  tail call void @arm_heavy_mb() #10
  %6 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %io_base.i, align 4
  %add15.i164 = add i32 %7, 4
  %and16.i165 = and i32 %add15.i164, 1048575
  %add17.i166 = or i32 %and16.i165, -18874368
  %8 = inttoptr i32 %add17.i166 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %8, i32 0) #10, !srcloc !49
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i, i32 noundef %call3.i160) #10
  %add9.1 = add i32 %mul, 1769524
  %call3.i160.1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !55
  tail call void @arm_heavy_mb() #10
  %9 = tail call i32 @llvm.bswap.i32(i32 %add9.1) #10
  %10 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %io_base.i, align 4
  %and.i162.1 = and i32 %11, 1048575
  %add9.i163.1 = or i32 %and.i162.1, -18874368
  %12 = inttoptr i32 %add9.i163.1 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %12, i32 %9) #10, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  tail call void @arm_heavy_mb() #10
  %13 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %io_base.i, align 4
  %add15.i164.1 = add i32 %14, 4
  %and16.i165.1 = and i32 %add15.i164.1, 1048575
  %add17.i166.1 = or i32 %and16.i165.1, -18874368
  %15 = inttoptr i32 %add17.i166.1 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %15, i32 0) #10, !srcloc !49
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i, i32 noundef %call3.i160.1) #10
  %add9.2 = add i32 %mul, 1769528
  %call3.i160.2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !55
  tail call void @arm_heavy_mb() #10
  %16 = tail call i32 @llvm.bswap.i32(i32 %add9.2) #10
  %17 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %io_base.i, align 4
  %and.i162.2 = and i32 %18, 1048575
  %add9.i163.2 = or i32 %and.i162.2, -18874368
  %19 = inttoptr i32 %add9.i163.2 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %19, i32 %16) #10, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  tail call void @arm_heavy_mb() #10
  %20 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %io_base.i, align 4
  %add15.i164.2 = add i32 %21, 4
  %and16.i165.2 = and i32 %add15.i164.2, 1048575
  %add17.i166.2 = or i32 %and16.i165.2, -18874368
  %22 = inttoptr i32 %add17.i166.2 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %22, i32 0) #10, !srcloc !49
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i, i32 noundef %call3.i160.2) #10
  %add9.3 = add i32 %mul, 1769532
  %call3.i160.3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !55
  tail call void @arm_heavy_mb() #10
  %23 = tail call i32 @llvm.bswap.i32(i32 %add9.3) #10
  %24 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %io_base.i, align 4
  %and.i162.3 = and i32 %25, 1048575
  %add9.i163.3 = or i32 %and.i162.3, -18874368
  %26 = inttoptr i32 %add9.i163.3 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %26, i32 %23) #10, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  tail call void @arm_heavy_mb() #10
  %27 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %io_base.i, align 4
  %add15.i164.3 = add i32 %28, 4
  %and16.i165.3 = and i32 %add15.i164.3, 1048575
  %add17.i166.3 = or i32 %and16.i165.3, -18874368
  %29 = inttoptr i32 %add17.i166.3 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %29, i32 0) #10, !srcloc !49
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i, i32 noundef %call3.i160.3) #10
  %add17 = add i32 %mul, 1769536
  br label %for.body15

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader
  %i.0247 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.body.for.body_crit_edge ]
  %mul1 = shl i32 %i.0247, 2
  %add2 = add nuw nsw i32 %add, %mul1
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !55
  tail call void @arm_heavy_mb() #10
  %30 = tail call i32 @llvm.bswap.i32(i32 %add2) #10
  %31 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %io_base.i, align 4
  %and.i = and i32 %32, 1048575
  %add9.i = or i32 %and.i, -18874368
  %33 = inttoptr i32 %add9.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %33, i32 %30) #10, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  tail call void @arm_heavy_mb() #10
  %34 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %io_base.i, align 4
  %add15.i = add i32 %35, 4
  %and16.i = and i32 %add15.i, 1048575
  %add17.i = or i32 %and16.i, -18874368
  %36 = inttoptr i32 %add17.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %36, i32 0) #10, !srcloc !49
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i, i32 noundef %call3.i) #10
  %inc = add nuw nsw i32 %i.0247, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.cond3.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body15:                                       ; preds = %for.body15.for.body15_crit_edge, %for.cond3.preheader
  %i.2249 = phi i32 [ 0, %for.cond3.preheader ], [ %inc21, %for.body15.for.body15_crit_edge ]
  %mul18 = shl i32 %i.2249, 2
  %add19 = add nuw nsw i32 %add17, %mul18
  %call3.i168 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !55
  tail call void @arm_heavy_mb() #10
  %37 = tail call i32 @llvm.bswap.i32(i32 %add19) #10
  %38 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %io_base.i, align 4
  %and.i170 = and i32 %39, 1048575
  %add9.i171 = or i32 %and.i170, -18874368
  %40 = inttoptr i32 %add9.i171 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %40, i32 %37) #10, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  tail call void @arm_heavy_mb() #10
  %41 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %io_base.i, align 4
  %add15.i172 = add i32 %42, 4
  %and16.i173 = and i32 %add15.i172, 1048575
  %add17.i174 = or i32 %and16.i173, -18874368
  %43 = inttoptr i32 %add17.i174 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %43, i32 0) #10, !srcloc !49
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i, i32 noundef %call3.i168) #10
  %inc21 = add nuw nsw i32 %i.2249, 1
  %exitcond251.not = icmp eq i32 %inc21, 8
  br i1 %exitcond251.not, label %for.end22, label %for.body15.for.body15_crit_edge

for.body15.for.body15_crit_edge:                  ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body15

for.end22:                                        ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %44)
  %bf.load24 = load i16, ptr %dirty, align 4
  %bf.clear25 = and i16 %bf.load24, -513
  store i16 %bf.clear25, ptr %dirty, align 4
  br label %if.end

if.end:                                           ; preds = %for.end22, %entry.if.end_crit_edge
  %45 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %45)
  %bf.load27 = load i16, ptr %dirty, align 4
  %46 = and i16 %bf.load27, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool30.not = icmp eq i16 %46, 0
  br i1 %tobool30.not, label %if.end.if.end42_crit_edge, label %if.then31

if.end.if.end42_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.then31:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %shl.i = shl i32 %idx, 4
  %sub.i = add i32 %shl.i, 4006
  %rem.i = and i32 %sub.i, 4086
  %mul32 = shl nuw nsw i32 %rem.i, 2
  %add33 = or i32 %mul32, 1671168
  %mpr = getelementptr inbounds %struct.src_rsc_ctrl_blk, ptr %blk, i32 0, i32 5
  %47 = ptrtoint ptr %mpr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %mpr, align 4
  %reg_20k1_lock.i175 = getelementptr inbounds %struct.hw20k1, ptr %hw, i32 0, i32 1
  %call3.i176 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i175) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !55
  tail call void @arm_heavy_mb() #10
  %49 = tail call i32 @llvm.bswap.i32(i32 %add33) #10
  %io_base.i177 = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 99
  %50 = ptrtoint ptr %io_base.i177 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %io_base.i177, align 4
  %and.i178 = and i32 %51, 1048575
  %add9.i179 = or i32 %and.i178, -18874368
  %52 = inttoptr i32 %add9.i179 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %52, i32 %49) #10, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  tail call void @arm_heavy_mb() #10
  %53 = tail call i32 @llvm.bswap.i32(i32 %48) #10
  %54 = ptrtoint ptr %io_base.i177 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %io_base.i177, align 4
  %add15.i180 = add i32 %55, 4
  %and16.i181 = and i32 %add15.i180, 1048575
  %add17.i182 = or i32 %and16.i181, -18874368
  %56 = inttoptr i32 %add17.i182 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %56, i32 %53) #10, !srcloc !49
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i175, i32 noundef %call3.i176) #10
  %mul34 = shl nuw nsw i32 %rem.i, 3
  %add35 = or i32 %mul34, 1343488
  %call3.i184 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i175) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !55
  tail call void @arm_heavy_mb() #10
  %57 = tail call i32 @llvm.bswap.i32(i32 %add35) #10
  %58 = ptrtoint ptr %io_base.i177 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %io_base.i177, align 4
  %and.i186 = and i32 %59, 1048575
  %add9.i187 = or i32 %and.i186, -18874368
  %60 = inttoptr i32 %add9.i187 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %60, i32 %57) #10, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  tail call void @arm_heavy_mb() #10
  %61 = ptrtoint ptr %io_base.i177 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %io_base.i177, align 4
  %add15.i188 = add i32 %62, 4
  %and16.i189 = and i32 %add15.i188, 1048575
  %add17.i190 = or i32 %and16.i189, -18874368
  %63 = inttoptr i32 %add17.i190 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %63, i32 50331648) #10, !srcloc !49
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i175, i32 noundef %call3.i184) #10
  %add37 = or i32 %mul34, 1343492
  %call3.i192 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i175) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !55
  tail call void @arm_heavy_mb() #10
  %64 = tail call i32 @llvm.bswap.i32(i32 %add37) #10
  %65 = ptrtoint ptr %io_base.i177 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %io_base.i177, align 4
  %and.i194 = and i32 %66, 1048575
  %add9.i195 = or i32 %and.i194, -18874368
  %67 = inttoptr i32 %add9.i195 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %67, i32 %64) #10, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  tail call void @arm_heavy_mb() #10
  %68 = ptrtoint ptr %io_base.i177 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %io_base.i177, align 4
  %add15.i196 = add i32 %69, 4
  %and16.i197 = and i32 %add15.i196, 1048575
  %add17.i198 = or i32 %and16.i197, -18874368
  %70 = inttoptr i32 %add17.i198 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %70, i32 0) #10, !srcloc !49
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i175, i32 noundef %call3.i192) #10
  %71 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %71)
  %bf.load39 = load i16, ptr %dirty, align 4
  %bf.clear40 = and i16 %bf.load39, -1025
  store i16 %bf.clear40, ptr %dirty, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then31, %if.end.if.end42_crit_edge
  %72 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %72)
  %bf.load44 = load i16, ptr %dirty, align 4
  %73 = and i16 %bf.load44, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %73)
  %tobool47.not = icmp eq i16 %73, 0
  br i1 %tobool47.not, label %if.end42.if.end55_crit_edge, label %if.then48

if.end42.if.end55_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.then48:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  %mul49 = shl i32 %idx, 8
  %add50 = add i32 %mul49, 1769496
  %sa = getelementptr inbounds %struct.src_rsc_ctrl_blk, ptr %blk, i32 0, i32 3
  %74 = ptrtoint ptr %sa to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %sa, align 4
  %reg_20k1_lock.i199 = getelementptr inbounds %struct.hw20k1, ptr %hw, i32 0, i32 1
  %call3.i200 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i199) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !55
  tail call void @arm_heavy_mb() #10
  %76 = tail call i32 @llvm.bswap.i32(i32 %add50) #10
  %io_base.i201 = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 99
  %77 = ptrtoint ptr %io_base.i201 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %io_base.i201, align 4
  %and.i202 = and i32 %78, 1048575
  %add9.i203 = or i32 %and.i202, -18874368
  %79 = inttoptr i32 %add9.i203 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %79, i32 %76) #10, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  tail call void @arm_heavy_mb() #10
  %80 = tail call i32 @llvm.bswap.i32(i32 %75) #10
  %81 = ptrtoint ptr %io_base.i201 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %io_base.i201, align 4
  %add15.i204 = add i32 %82, 4
  %and16.i205 = and i32 %add15.i204, 1048575
  %add17.i206 = or i32 %and16.i205, -18874368
  %83 = inttoptr i32 %add17.i206 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %83, i32 %80) #10, !srcloc !49
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i199, i32 noundef %call3.i200) #10
  %84 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %84)
  %bf.load52 = load i16, ptr %dirty, align 4
  %bf.clear53 = and i16 %bf.load52, -8193
  store i16 %bf.clear53, ptr %dirty, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then48, %if.end42.if.end55_crit_edge
  %85 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %85)
  %bf.load57 = load i16, ptr %dirty, align 4
  %86 = and i16 %bf.load57, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %86)
  %tobool60.not = icmp eq i16 %86, 0
  br i1 %tobool60.not, label %if.end55.if.end68_crit_edge, label %if.then61

if.end55.if.end68_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

if.then61:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  %mul62 = shl i32 %idx, 8
  %add63 = add i32 %mul62, 1769500
  %la = getelementptr inbounds %struct.src_rsc_ctrl_blk, ptr %blk, i32 0, i32 4
  %87 = ptrtoint ptr %la to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %la, align 4
  %reg_20k1_lock.i207 = getelementptr inbounds %struct.hw20k1, ptr %hw, i32 0, i32 1
  %call3.i208 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i207) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !55
  tail call void @arm_heavy_mb() #10
  %89 = tail call i32 @llvm.bswap.i32(i32 %add63) #10
  %io_base.i209 = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 99
  %90 = ptrtoint ptr %io_base.i209 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %io_base.i209, align 4
  %and.i210 = and i32 %91, 1048575
  %add9.i211 = or i32 %and.i210, -18874368
  %92 = inttoptr i32 %add9.i211 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %92, i32 %89) #10, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  tail call void @arm_heavy_mb() #10
  %93 = tail call i32 @llvm.bswap.i32(i32 %88) #10
  %94 = ptrtoint ptr %io_base.i209 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %io_base.i209, align 4
  %add15.i212 = add i32 %95, 4
  %and16.i213 = and i32 %add15.i212, 1048575
  %add17.i214 = or i32 %and16.i213, -18874368
  %96 = inttoptr i32 %add17.i214 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %96, i32 %93) #10, !srcloc !49
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i207, i32 noundef %call3.i208) #10
  %97 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %97)
  %bf.load65 = load i16, ptr %dirty, align 4
  %bf.clear66 = and i16 %bf.load65, -4097
  store i16 %bf.clear66, ptr %dirty, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.then61, %if.end55.if.end68_crit_edge
  %98 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %98)
  %bf.load70 = load i16, ptr %dirty, align 4
  %99 = and i16 %bf.load70, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %99)
  %tobool73.not = icmp eq i16 %99, 0
  %.pre = shl i32 %idx, 8
  br i1 %tobool73.not, label %if.end68.if.end81_crit_edge, label %if.then74

if.end68.if.end81_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81

if.then74:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  %add76 = add i32 %.pre, 1769488
  %ca = getelementptr inbounds %struct.src_rsc_ctrl_blk, ptr %blk, i32 0, i32 2
  %100 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %ca, align 4
  %reg_20k1_lock.i215 = getelementptr inbounds %struct.hw20k1, ptr %hw, i32 0, i32 1
  %call3.i216 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i215) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !55
  tail call void @arm_heavy_mb() #10
  %102 = tail call i32 @llvm.bswap.i32(i32 %add76) #10
  %io_base.i217 = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 99
  %103 = ptrtoint ptr %io_base.i217 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %io_base.i217, align 4
  %and.i218 = and i32 %104, 1048575
  %add9.i219 = or i32 %and.i218, -18874368
  %105 = inttoptr i32 %add9.i219 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %105, i32 %102) #10, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  tail call void @arm_heavy_mb() #10
  %106 = tail call i32 @llvm.bswap.i32(i32 %101) #10
  %107 = ptrtoint ptr %io_base.i217 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %io_base.i217, align 4
  %add15.i220 = add i32 %108, 4
  %and16.i221 = and i32 %add15.i220, 1048575
  %add17.i222 = or i32 %and16.i221, -18874368
  %109 = inttoptr i32 %add17.i222 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %109, i32 %106) #10, !srcloc !49
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i215, i32 noundef %call3.i216) #10
  %110 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %110)
  %bf.load78 = load i16, ptr %dirty, align 4
  %bf.clear79 = and i16 %bf.load78, -2049
  store i16 %bf.clear79, ptr %dirty, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.then74, %if.end68.if.end81_crit_edge
  %add83 = add i32 %.pre, 1769492
  %reg_20k1_lock.i223 = getelementptr inbounds %struct.hw20k1, ptr %hw, i32 0, i32 1
  %call3.i224 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i223) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !55
  tail call void @arm_heavy_mb() #10
  %111 = tail call i32 @llvm.bswap.i32(i32 %add83) #10
  %io_base.i225 = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 99
  %112 = ptrtoint ptr %io_base.i225 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %io_base.i225, align 4
  %and.i226 = and i32 %113, 1048575
  %add9.i227 = or i32 %and.i226, -18874368
  %114 = inttoptr i32 %add9.i227 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %114, i32 %111) #10, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  tail call void @arm_heavy_mb() #10
  %115 = ptrtoint ptr %io_base.i225 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %io_base.i225, align 4
  %add15.i228 = add i32 %116, 4
  %and16.i229 = and i32 %add15.i228, 1048575
  %add17.i230 = or i32 %and16.i229, -18874368
  %117 = inttoptr i32 %add17.i230 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %117, i32 0) #10, !srcloc !49
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i223, i32 noundef %call3.i224) #10
  %118 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %118)
  %bf.load85 = load i16, ptr %dirty, align 4
  %119 = and i16 %bf.load85, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %119)
  %tobool88.not = icmp eq i16 %119, 0
  br i1 %tobool88.not, label %if.end81.if.end96_crit_edge, label %if.then89

if.end81.if.end96_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end96

if.then89:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  %add91 = add i32 %.pre, 1769476
  %ccr = getelementptr inbounds %struct.src_rsc_ctrl_blk, ptr %blk, i32 0, i32 1
  %120 = ptrtoint ptr %ccr to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %ccr, align 4
  %call3.i232 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i223) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !55
  tail call void @arm_heavy_mb() #10
  %122 = tail call i32 @llvm.bswap.i32(i32 %add91) #10
  %123 = ptrtoint ptr %io_base.i225 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %io_base.i225, align 4
  %and.i234 = and i32 %124, 1048575
  %add9.i235 = or i32 %and.i234, -18874368
  %125 = inttoptr i32 %add9.i235 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %125, i32 %122) #10, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  tail call void @arm_heavy_mb() #10
  %126 = tail call i32 @llvm.bswap.i32(i32 %121) #10
  %127 = ptrtoint ptr %io_base.i225 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %io_base.i225, align 4
  %add15.i236 = add i32 %128, 4
  %and16.i237 = and i32 %add15.i236, 1048575
  %add17.i238 = or i32 %and16.i237, -18874368
  %129 = inttoptr i32 %add17.i238 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %129, i32 %126) #10, !srcloc !49
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i223, i32 noundef %call3.i232) #10
  %130 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %130)
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end109

if.then101:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #12
  %add103 = add i32 %.pre, 1769472
  %131 = ptrtoint ptr %blk to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %blk, align 4
  %call3.i240 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i223) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !55
  tail call void @arm_heavy_mb() #10
  %133 = tail call i32 @llvm.bswap.i32(i32 %add103) #10
  %134 = ptrtoint ptr %io_base.i225 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %io_base.i225, align 4
  %and.i242 = and i32 %135, 1048575
  %add9.i243 = or i32 %and.i242, -18874368
  %136 = inttoptr i32 %add9.i243 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %136, i32 %133) #10, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  tail call void @arm_heavy_mb() #10
  %137 = tail call i32 @llvm.bswap.i32(i32 %132) #10
  %138 = ptrtoint ptr %io_base.i225 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %io_base.i225, align 4
  %add15.i244 = add i32 %139, 4
  %and16.i245 = and i32 %add15.i244, 1048575
  %add17.i246 = or i32 %and16.i245, -18874368
  %140 = inttoptr i32 %add17.i246 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %140, i32 %137) #10, !srcloc !49
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i223, i32 noundef %call3.i240) #10
  %141 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %141)
  %bf.load106 = load i16, ptr %dirty, align 4
  %bf.clear107 = and i16 %bf.load106, 32767
  store i16 %bf.clear107, ptr %dirty, align 4
  br label %if.end109

if.end109:                                        ; preds = %if.then101, %if.end96.if.end109_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @src_get_ca(ptr noundef %hw, i32 noundef %idx, ptr nocapture noundef %blk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %idx, 8
  %add = add i32 %mul, 1769488
  %reg_20k1_lock.i = getelementptr inbounds %struct.hw20k1, ptr %hw, i32 0, i32 1
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !53
  tail call void @arm_heavy_mb() #10
  %0 = tail call i32 @llvm.bswap.i32(i32 %add) #10
  %io_base.i = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 99
  %1 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %io_base.i, align 4
  %and.i = and i32 %2, 1048575
  %add9.i = or i32 %and.i, -18874368
  %3 = inttoptr i32 %add9.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %3, i32 %0) #10, !srcloc !49
  %4 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io_base.i, align 4
  %add12.i = add i32 %5, 4
  %and13.i = and i32 %add12.i, 1048575
  %add14.i = or i32 %and13.i, -18874368
  %6 = inttoptr i32 %add14.i to ptr
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %6) #10, !srcloc !46
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !54
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i, i32 noundef %call3.i) #10
  %ca = getelementptr inbounds %struct.src_rsc_ctrl_blk, ptr %blk, i32 0, i32 2
  %9 = ptrtoint ptr %ca to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %ca, align 4
  %dirty = getelementptr inbounds %struct.src_rsc_ctrl_blk, ptr %blk, i32 0, i32 6
  %10 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load = load i16, ptr %dirty, align 4
  %bf.clear = and i16 %bf.load, -2049
  store i16 %bf.clear, ptr %dirty, align 4
  %call2 = tail call i32 @get_field(i32 noundef %8, i32 noundef 67108863) #10
  ret i32 %call2
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @src_get_dirty(ptr nocapture noundef readonly %blk) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 32
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @src_mgr_get_ctrl_blk(ptr nocapture noundef writeonly %rblk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rblk to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %rblk, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 40) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %blk) #10
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @src_mgr_enbs_src(ptr nocapture noundef %blk, i32 noundef %idx) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %blk to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %blk, align 4
  %dirty = getelementptr inbounds %struct.src_mgr_ctrl_blk, ptr %blk, i32 0, i32 2
  %1 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %1)
  %bf.load = load i16, ptr %dirty, align 4
  %bf.set = or i16 %bf.load, 128
  store i16 %bf.set, ptr %dirty, align 4
  %rem = and i32 %idx, 31
  %shl = shl nuw i32 1, %rem
  %div4 = lshr i32 %idx, 5
  %arrayidx = getelementptr %struct.src_mgr_ctrl_blk, ptr %blk, i32 0, i32 1, i32 %div4
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %or = or i32 %3, %shl
  store i32 %or, ptr %arrayidx, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @src_mgr_enb_src(ptr nocapture noundef %blk, i32 noundef %idx) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
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
define internal i32 @src_mgr_commit_write(ptr noundef %hw, ptr nocapture noundef %blk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.body.preheader:                                ; preds = %entry
  %reg_20k1_lock.i = getelementptr inbounds %struct.hw20k1, ptr %hw, i32 0, i32 1
  %io_base.i = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 99
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.preheader
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !53
  tail call void @arm_heavy_mb() #10
  %2 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %io_base.i, align 4
  %and.i = and i32 %3, 1048575
  %add9.i = or i32 %and.i, -18874368
  %4 = inttoptr i32 %add9.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %4, i32 740301568) #10, !srcloc !49
  %5 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %io_base.i, align 4
  %add12.i = add i32 %6, 4
  %and13.i = and i32 %add12.i, 1048575
  %add14.i = or i32 %and13.i, -18874368
  %7 = inttoptr i32 %add14.i to ptr
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %7) #10, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !54
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i, i32 noundef %call3.i) #10
  %9 = and i32 %8, 16777216
  %tobool1.not = icmp eq i32 %9, 0
  br i1 %tobool1.not, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %blk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %blk, align 4
  %call3.i28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !55
  tail call void @arm_heavy_mb() #10
  %12 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %io_base.i, align 4
  %and.i30 = and i32 %13, 1048575
  %add9.i31 = or i32 %and.i30, -18874368
  %14 = inttoptr i32 %add9.i31 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %14, i32 740498176) #10, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  tail call void @arm_heavy_mb() #10
  %15 = tail call i32 @llvm.bswap.i32(i32 %11) #10
  %16 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %io_base.i, align 4
  %add15.i = add i32 %17, 4
  %and16.i = and i32 %add15.i, 1048575
  %add17.i = or i32 %and16.i, -18874368
  %18 = inttoptr i32 %add17.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %18, i32 %15) #10, !srcloc !49
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i, i32 noundef %call3.i28) #10
  %19 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %19)
  %bf.load3 = load i16, ptr %dirty, align 4
  %bf.clear4 = and i16 %bf.load3, -129
  store i16 %bf.clear4, ptr %dirty, align 4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %reg_20k1_lock.i32 = getelementptr inbounds %struct.hw20k1, ptr %hw, i32 0, i32 1
  %io_base.i34 = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 99
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %i.040 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %20 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %dirty, align 4
  %conv = zext i16 %21 to i32
  %shl = shl nuw nsw i32 1, %i.040
  %and6 = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %for.body.for.inc_crit_edge, label %if.then8

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then8:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %mul = shl i32 %i.040, 8
  %add = add nuw nsw i32 %mul, 1779756
  %arrayidx = getelementptr %struct.src_mgr_ctrl_blk, ptr %blk, i32 0, i32 1, i32 %i.040
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx, align 4
  %call3.i33 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i32) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !55
  tail call void @arm_heavy_mb() #10
  %24 = tail call i32 @llvm.bswap.i32(i32 %add) #10
  %25 = ptrtoint ptr %io_base.i34 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %io_base.i34, align 4
  %and.i35 = and i32 %26, 1048575
  %add9.i36 = or i32 %and.i35, -18874368
  %27 = inttoptr i32 %add9.i36 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %27, i32 %24) #10, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  tail call void @arm_heavy_mb() #10
  %28 = tail call i32 @llvm.bswap.i32(i32 %23) #10
  %29 = ptrtoint ptr %io_base.i34 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %io_base.i34, align 4
  %add15.i37 = add i32 %30, 4
  %and16.i38 = and i32 %add15.i37, 1048575
  %add17.i39 = or i32 %and16.i38, -18874368
  %31 = inttoptr i32 %add17.i39 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %31, i32 %28) #10, !srcloc !49
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i32, i32 noundef %call3.i33) #10
  %32 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %dirty, align 4
  %34 = trunc i32 %shl to i16
  %35 = xor i16 %34, -1
  %conv13 = and i16 %33, %35
  store i16 %conv13, ptr %dirty, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then8, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.040, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @srcimp_mgr_get_ctrl_blk(ptr nocapture noundef writeonly %rblk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rblk to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %rblk, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 12) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %blk) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @srcimp_mgr_set_imaparc(ptr noundef %blk, i32 noundef %slot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @set_field(ptr noundef %blk, i32 noundef 4095, i32 noundef %slot) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @set_field(ptr noundef %blk, i32 noundef -16777216, i32 noundef %user) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @set_field(ptr noundef %blk, i32 noundef 16711680, i32 noundef %next) #10
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
  call void @__sanitizer_cov_trace_pc() #12
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
define internal i32 @srcimp_mgr_commit_write(ptr noundef %hw, ptr nocapture noundef %blk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dirty = getelementptr inbounds %struct.srcimp_mgr_ctrl_blk, ptr %blk, i32 0, i32 1
  %0 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %dirty, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %idx = getelementptr inbounds %struct.srcimap, ptr %blk, i32 0, i32 1
  %1 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %idx, align 4
  %mul = shl i32 %2, 8
  %add = add i32 %mul, 1769480
  %3 = ptrtoint ptr %blk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %blk, align 4
  %reg_20k1_lock.i = getelementptr inbounds %struct.hw20k1, ptr %hw, i32 0, i32 1
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !55
  tail call void @arm_heavy_mb() #10
  %5 = tail call i32 @llvm.bswap.i32(i32 %add) #10
  %io_base.i = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 99
  %6 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %io_base.i, align 4
  %and.i = and i32 %7, 1048575
  %add9.i = or i32 %and.i, -18874368
  %8 = inttoptr i32 %add9.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %8, i32 %5) #10, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  tail call void @arm_heavy_mb() #10
  %9 = tail call i32 @llvm.bswap.i32(i32 %4) #10
  %10 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %io_base.i, align 4
  %add15.i = add i32 %11, 4
  %and16.i = and i32 %add15.i, 1048575
  %add17.i = or i32 %and16.i, -18874368
  %12 = inttoptr i32 %add17.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %12, i32 %9) #10, !srcloc !49
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i, i32 noundef %call3.i) #10
  %13 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %13)
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
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rblk to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %rblk, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 12) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %blk) #10
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @amixer_mgr_get_ctrl_blk(ptr nocapture noundef writeonly %rblk) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rblk to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %rblk, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @amixer_mgr_put_ctrl_blk(ptr nocapture noundef readnone %blk) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amixer_set_mode(ptr noundef %blk, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @set_field(ptr noundef %blk, i32 noundef 3, i32 noundef %mode) #10
  %dirty = getelementptr inbounds %struct.amixer_rsc_ctrl_blk, ptr %blk, i32 0, i32 2
  %0 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %dirty, align 4
  %bf.set = or i16 %bf.load, -32768
  store i16 %bf.set, ptr %dirty, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @amixer_set_iv(ptr nocapture noundef readnone %blk, i32 noundef %iv) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amixer_set_x(ptr noundef %blk, i32 noundef %x) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @set_field(ptr noundef %blk, i32 noundef 262128, i32 noundef %x) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @set_field(ptr noundef %blk, i32 noundef -262144, i32 noundef %y) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %amophi = getelementptr inbounds %struct.amixer_rsc_ctrl_blk, ptr %blk, i32 0, i32 1
  tail call void @set_field(ptr noundef %amophi, i32 noundef 255, i32 noundef %sadr) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %amophi = getelementptr inbounds %struct.amixer_rsc_ctrl_blk, ptr %blk, i32 0, i32 1
  tail call void @set_field(ptr noundef %amophi, i32 noundef -2147483648, i32 noundef %se) #10
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
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dirty = getelementptr inbounds %struct.amixer_rsc_ctrl_blk, ptr %blk, i32 0, i32 2
  %0 = ptrtoint ptr %dirty to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %dirty, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amixer_commit_write(ptr noundef %hw, i32 noundef %idx, ptr nocapture noundef %blk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dirty = getelementptr inbounds %struct.amixer_rsc_ctrl_blk, ptr %blk, i32 0, i32 2
  %0 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %dirty, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %bf.load)
  %1 = icmp ult i16 %bf.load, 16384
  br i1 %1, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %mul = shl i32 %idx, 3
  %add = add i32 %mul, 1310720
  %2 = ptrtoint ptr %blk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %blk, align 4
  %reg_20k1_lock.i = getelementptr inbounds %struct.hw20k1, ptr %hw, i32 0, i32 1
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !55
  tail call void @arm_heavy_mb() #10
  %4 = tail call i32 @llvm.bswap.i32(i32 %add) #10
  %io_base.i = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 99
  %5 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %io_base.i, align 4
  %and.i = and i32 %6, 1048575
  %add9.i = or i32 %and.i, -18874368
  %7 = inttoptr i32 %add9.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %7, i32 %4) #10, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  tail call void @arm_heavy_mb() #10
  %8 = tail call i32 @llvm.bswap.i32(i32 %3) #10
  %9 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %io_base.i, align 4
  %add15.i = add i32 %10, 4
  %and16.i = and i32 %add15.i, 1048575
  %add17.i = or i32 %and16.i, -18874368
  %11 = inttoptr i32 %add17.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %11, i32 %8) #10, !srcloc !49
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i, i32 noundef %call3.i) #10
  %12 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load7 = load i16, ptr %dirty, align 4
  %bf.clear8 = and i16 %bf.load7, 32767
  store i16 %bf.clear8, ptr %dirty, align 4
  %add10 = add i32 %mul, 1310724
  %amophi = getelementptr inbounds %struct.amixer_rsc_ctrl_blk, ptr %blk, i32 0, i32 1
  %13 = ptrtoint ptr %amophi to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %amophi, align 4
  %call3.i23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !55
  tail call void @arm_heavy_mb() #10
  %15 = tail call i32 @llvm.bswap.i32(i32 %add10) #10
  %16 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %io_base.i, align 4
  %and.i25 = and i32 %17, 1048575
  %add9.i26 = or i32 %and.i25, -18874368
  %18 = inttoptr i32 %add9.i26 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %18, i32 %15) #10, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  tail call void @arm_heavy_mb() #10
  %19 = tail call i32 @llvm.bswap.i32(i32 %14) #10
  %20 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %io_base.i, align 4
  %add15.i27 = add i32 %21, 4
  %and16.i28 = and i32 %add15.i27, 1048575
  %add17.i29 = or i32 %and16.i28, -18874368
  %22 = inttoptr i32 %add17.i29 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %22, i32 %19) #10, !srcloc !49
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i, i32 noundef %call3.i23) #10
  %23 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %23)
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
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %blk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %blk, align 4
  %call = tail call i32 @get_field(i32 noundef %1, i32 noundef -262144) #10
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @amixer_get_dirty(ptr nocapture noundef readonly %blk) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rblk to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %rblk, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 8) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %blk) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dai_srt_set_srcr(ptr noundef %blk, i32 noundef %src) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @set_field(ptr noundef %blk, i32 noundef 255, i32 noundef %src) #10
  %dirty = getelementptr inbounds %struct.dai_ctrl_blk, ptr %blk, i32 0, i32 1
  %0 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %dirty, align 4
  %bf.set = or i16 %bf.load, -32768
  store i16 %bf.set, ptr %dirty, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dai_srt_set_srcl(ptr noundef %blk, i32 noundef %src) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @set_field(ptr noundef %blk, i32 noundef 65280, i32 noundef %src) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @set_field(ptr noundef %blk, i32 noundef 196608, i32 noundef %rsr) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @set_field(ptr noundef %blk, i32 noundef 786432, i32 noundef %drat) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ec)
  %tobool.not = icmp ne i32 %ec, 0
  %cond = zext i1 %tobool.not to i32
  tail call void @set_field(ptr noundef %blk, i32 noundef 1073741824, i32 noundef %cond) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %et)
  %tobool.not = icmp ne i32 %et, 0
  %cond = zext i1 %tobool.not to i32
  tail call void @set_field(ptr noundef %blk, i32 noundef -2147483648, i32 noundef %cond) #10
  %dirty = getelementptr inbounds %struct.dai_ctrl_blk, ptr %blk, i32 0, i32 1
  %0 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %dirty, align 4
  %bf.set = or i16 %bf.load, -32768
  store i16 %bf.set, ptr %dirty, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dai_commit_write(ptr noundef %hw, i32 noundef %idx, ptr nocapture noundef %blk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dirty = getelementptr inbounds %struct.dai_ctrl_blk, ptr %blk, i32 0, i32 1
  %0 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %dirty, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %idx)
  %cmp = icmp ult i32 %idx, 4
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %mul = shl nuw nsw i32 %idx, 2
  %add = add nuw nsw i32 %mul, 1856720
  %1 = ptrtoint ptr %blk to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %blk, align 4
  %reg_20k1_lock.i = getelementptr inbounds %struct.hw20k1, ptr %hw, i32 0, i32 1
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !55
  tail call void @arm_heavy_mb() #10
  %3 = tail call i32 @llvm.bswap.i32(i32 %add) #10
  %io_base.i = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 99
  %4 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io_base.i, align 4
  %and.i = and i32 %5, 1048575
  %add9.i = or i32 %and.i, -18874368
  %6 = inttoptr i32 %add9.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %6, i32 %3) #10, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  tail call void @arm_heavy_mb() #10
  %7 = tail call i32 @llvm.bswap.i32(i32 %2) #10
  %8 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %io_base.i, align 4
  %add15.i = add i32 %9, 4
  %and16.i = and i32 %add15.i, 1048575
  %add17.i = or i32 %and16.i, -18874368
  %10 = inttoptr i32 %add17.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %10, i32 %7) #10, !srcloc !49
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i, i32 noundef %call3.i) #10
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %blk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %blk, align 4
  %reg_20k1_lock.i11 = getelementptr inbounds %struct.hw20k1, ptr %hw, i32 0, i32 1
  %call3.i12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i11) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !55
  tail call void @arm_heavy_mb() #10
  %io_base.i13 = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 99
  %13 = ptrtoint ptr %io_base.i13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %io_base.i13, align 4
  %and.i14 = and i32 %14, 1048575
  %add9.i15 = or i32 %and.i14, -18874368
  %15 = inttoptr i32 %add9.i15 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %15, i32 -262923264) #10, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  tail call void @arm_heavy_mb() #10
  %16 = tail call i32 @llvm.bswap.i32(i32 %12) #10
  %17 = ptrtoint ptr %io_base.i13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %io_base.i13, align 4
  %add15.i16 = add i32 %18, 4
  %and16.i17 = and i32 %add15.i16, 1048575
  %add17.i18 = or i32 %and16.i17, -18874368
  %19 = inttoptr i32 %add17.i18 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %19, i32 %16) #10, !srcloc !49
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i11, i32 noundef %call3.i12) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then1
  %20 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %20)
  %bf.load4 = load i16, ptr %dirty, align 4
  %bf.clear = and i16 %bf.load4, 32767
  store i16 %bf.clear, ptr %dirty, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry.if.end5_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dao_get_ctrl_blk(ptr nocapture noundef writeonly %rblk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rblk to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %rblk, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 8) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %blk) #10
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dao_set_spos(ptr nocapture noundef %blk, i32 noundef %spos) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
define internal i32 @dao_commit_write(ptr noundef %hw, i32 noundef %idx, ptr nocapture noundef %blk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dirty = getelementptr inbounds %struct.dao_ctrl_blk, ptr %blk, i32 0, i32 1
  %0 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %dirty, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %idx)
  %cmp = icmp ult i32 %idx, 4
  br i1 %cmp, label %if.then1, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %mul = shl nuw nsw i32 %idx, 2
  %add = add nuw nsw i32 %mul, 1856576
  %1 = ptrtoint ptr %blk to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %blk, align 4
  %reg_20k1_lock.i = getelementptr inbounds %struct.hw20k1, ptr %hw, i32 0, i32 1
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !55
  tail call void @arm_heavy_mb() #10
  %3 = tail call i32 @llvm.bswap.i32(i32 %add) #10
  %io_base.i = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 99
  %4 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io_base.i, align 4
  %and.i = and i32 %5, 1048575
  %add9.i = or i32 %and.i, -18874368
  %6 = inttoptr i32 %add9.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %6, i32 %3) #10, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  tail call void @arm_heavy_mb() #10
  %7 = tail call i32 @llvm.bswap.i32(i32 %2) #10
  %8 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %io_base.i, align 4
  %add15.i = add i32 %9, 4
  %and16.i = and i32 %add15.i, 1048575
  %add17.i = or i32 %and16.i, -18874368
  %10 = inttoptr i32 %add17.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %10, i32 %7) #10, !srcloc !49
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i, i32 noundef %call3.i) #10
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then.if.end_crit_edge
  %11 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %11)
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
  call void @__sanitizer_cov_trace_pc() #12
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
define internal i32 @daio_mgr_get_ctrl_blk(ptr noundef %hw, ptr nocapture noundef writeonly %rblk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rblk to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %rblk, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 24) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %reg_20k1_lock.i = getelementptr inbounds %struct.hw20k1, ptr %hw, i32 0, i32 1
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !53
  tail call void @arm_heavy_mb() #10
  %io_base.i = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 99
  %2 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %io_base.i, align 4
  %and.i = and i32 %3, 1048575
  %add9.i = or i32 %and.i, -18874368
  %4 = inttoptr i32 %add9.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %4, i32 542383104) #10, !srcloc !49
  %5 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %io_base.i, align 4
  %add12.i = add i32 %6, 4
  %and13.i = and i32 %add12.i, 1048575
  %add14.i = or i32 %and13.i, -18874368
  %7 = inttoptr i32 %add14.i to ptr
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %7) #10, !srcloc !46
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !54
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i, i32 noundef %call3.i) #10
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %call7.i.i, align 8
  %call3.i12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !53
  tail call void @arm_heavy_mb() #10
  %11 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %io_base.i, align 4
  %and.i14 = and i32 %12, 1048575
  %add9.i15 = or i32 %and.i14, -18874368
  %13 = inttoptr i32 %add9.i15 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %13, i32 -2141971456) #10, !srcloc !49
  %14 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %io_base.i, align 4
  %add12.i16 = add i32 %15, 4
  %and13.i17 = and i32 %add12.i16, 1048575
  %add14.i18 = or i32 %and13.i17, -18874368
  %16 = inttoptr i32 %add14.i18 to ptr
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %16) #10, !srcloc !46
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !54
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i, i32 noundef %call3.i12) #10
  %spoctl = getelementptr inbounds %struct.daio_mgr_ctrl_blk, ptr %call7.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %spoctl to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %spoctl, align 4
  %call3.i20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !53
  tail call void @arm_heavy_mb() #10
  %20 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %io_base.i, align 4
  %and.i22 = and i32 %21, 1048575
  %add9.i23 = or i32 %and.i22, -18874368
  %22 = inttoptr i32 %add9.i23 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %22, i32 -2074862592) #10, !srcloc !49
  %23 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %io_base.i, align 4
  %add12.i24 = add i32 %24, 4
  %and13.i25 = and i32 %add12.i24, 1048575
  %add14.i26 = or i32 %and13.i25, -18874368
  %25 = inttoptr i32 %add14.i26 to ptr
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %25) #10, !srcloc !46
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !54
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i, i32 noundef %call3.i20) #10
  %spictl = getelementptr inbounds %struct.daio_mgr_ctrl_blk, ptr %call7.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %spictl to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %spictl, align 8
  %29 = ptrtoint ptr %rblk to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call7.i.i, ptr %rblk, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @daio_mgr_put_ctrl_blk(ptr noundef %blk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %blk) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @daio_mgr_enb_dai(ptr noundef %blk, i32 noundef %idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %idx)
  %cmp = icmp ult i32 %idx, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %spictl = getelementptr inbounds %struct.daio_mgr_ctrl_blk, ptr %blk, i32 0, i32 2
  %mul = shl nuw nsw i32 %idx, 3
  %shl = shl nuw nsw i32 1, %mul
  tail call void @set_field(ptr noundef %spictl, i32 noundef %shl, i32 noundef 1) #10
  %dirty = getelementptr inbounds %struct.daio_mgr_ctrl_blk, ptr %blk, i32 0, i32 4
  %0 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %dirty, align 4
  %or26 = shl nuw nsw i32 65536, %idx
  %1 = and i32 %or26, 983040
  %bf.set = or i32 %bf.load, %1
  store i32 %bf.set, ptr %dirty, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %rem = and i32 %idx, 3
  %mul4 = shl nuw nsw i32 %rem, 3
  %shl5 = shl nuw nsw i32 16, %mul4
  tail call void @set_field(ptr noundef %blk, i32 noundef %shl5, i32 noundef 1) #10
  %dirty7 = getelementptr inbounds %struct.daio_mgr_ctrl_blk, ptr %blk, i32 0, i32 4
  %2 = ptrtoint ptr %dirty7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load8 = load i32, ptr %dirty7, align 4
  %bf.value1325 = shl nuw nsw i32 16777216, %rem
  %bf.load8.mask = and i32 %bf.load8, 251658240
  %bf.shl14 = or i32 %bf.load8.mask, %bf.value1325
  %bf.clear15 = and i32 %bf.load8, -251658241
  %bf.set16 = or i32 %bf.shl14, %bf.clear15
  store i32 %bf.set16, ptr %dirty7, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @daio_mgr_dsb_dai(ptr noundef %blk, i32 noundef %idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %idx)
  %cmp = icmp ult i32 %idx, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %spictl = getelementptr inbounds %struct.daio_mgr_ctrl_blk, ptr %blk, i32 0, i32 2
  %mul = shl nuw nsw i32 %idx, 3
  %shl = shl nuw nsw i32 1, %mul
  tail call void @set_field(ptr noundef %spictl, i32 noundef %shl, i32 noundef 0) #10
  %dirty = getelementptr inbounds %struct.daio_mgr_ctrl_blk, ptr %blk, i32 0, i32 4
  %0 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %dirty, align 4
  %or26 = shl nuw nsw i32 65536, %idx
  %1 = and i32 %or26, 983040
  %bf.set = or i32 %bf.load, %1
  store i32 %bf.set, ptr %dirty, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %rem = and i32 %idx, 3
  %mul4 = shl nuw nsw i32 %rem, 3
  %shl5 = shl nuw nsw i32 16, %mul4
  tail call void @set_field(ptr noundef %blk, i32 noundef %shl5, i32 noundef 0) #10
  %dirty7 = getelementptr inbounds %struct.daio_mgr_ctrl_blk, ptr %blk, i32 0, i32 4
  %2 = ptrtoint ptr %dirty7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load8 = load i32, ptr %dirty7, align 4
  %bf.value1325 = shl nuw nsw i32 16777216, %rem
  %bf.load8.mask = and i32 %bf.load8, 251658240
  %bf.shl14 = or i32 %bf.load8.mask, %bf.value1325
  %bf.clear15 = and i32 %bf.load8, -251658241
  %bf.set16 = or i32 %bf.shl14, %bf.clear15
  store i32 %bf.set16, ptr %dirty7, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @daio_mgr_enb_dao(ptr noundef %blk, i32 noundef %idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %idx)
  %cmp = icmp ult i32 %idx, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %spoctl = getelementptr inbounds %struct.daio_mgr_ctrl_blk, ptr %blk, i32 0, i32 1
  %mul = shl nuw nsw i32 %idx, 3
  %shl = shl nuw nsw i32 1, %mul
  tail call void @set_field(ptr noundef %spoctl, i32 noundef %shl, i32 noundef 1) #10
  %dirty = getelementptr inbounds %struct.daio_mgr_ctrl_blk, ptr %blk, i32 0, i32 4
  %0 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %dirty, align 4
  %or26 = shl nuw nsw i32 1048576, %idx
  %1 = and i32 %or26, 15728640
  %bf.set = or i32 %bf.load, %1
  store i32 %bf.set, ptr %dirty, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %rem = and i32 %idx, 3
  %mul4 = shl nuw nsw i32 %rem, 3
  %shl5 = shl nuw nsw i32 4, %mul4
  tail call void @set_field(ptr noundef %blk, i32 noundef %shl5, i32 noundef 1) #10
  %dirty7 = getelementptr inbounds %struct.daio_mgr_ctrl_blk, ptr %blk, i32 0, i32 4
  %2 = ptrtoint ptr %dirty7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load8 = load i32, ptr %dirty7, align 4
  %or1024 = shl nuw i32 268435456, %rem
  %bf.load8.masked = and i32 %bf.load8, -268435456
  %bf.shl13 = or i32 %bf.load8.masked, %or1024
  %bf.clear14 = and i32 %bf.load8, 268435455
  %bf.set15 = or i32 %bf.shl13, %bf.clear14
  store i32 %bf.set15, ptr %dirty7, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @daio_mgr_dsb_dao(ptr noundef %blk, i32 noundef %idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %idx)
  %cmp = icmp ult i32 %idx, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %spoctl = getelementptr inbounds %struct.daio_mgr_ctrl_blk, ptr %blk, i32 0, i32 1
  %mul = shl nuw nsw i32 %idx, 3
  %shl = shl nuw nsw i32 1, %mul
  tail call void @set_field(ptr noundef %spoctl, i32 noundef %shl, i32 noundef 0) #10
  %dirty = getelementptr inbounds %struct.daio_mgr_ctrl_blk, ptr %blk, i32 0, i32 4
  %0 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %dirty, align 4
  %or26 = shl nuw nsw i32 1048576, %idx
  %1 = and i32 %or26, 15728640
  %bf.set = or i32 %bf.load, %1
  store i32 %bf.set, ptr %dirty, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %rem = and i32 %idx, 3
  %mul4 = shl nuw nsw i32 %rem, 3
  %shl5 = shl nuw nsw i32 4, %mul4
  tail call void @set_field(ptr noundef %blk, i32 noundef %shl5, i32 noundef 0) #10
  %dirty7 = getelementptr inbounds %struct.daio_mgr_ctrl_blk, ptr %blk, i32 0, i32 4
  %2 = ptrtoint ptr %dirty7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load8 = load i32, ptr %dirty7, align 4
  %or1024 = shl nuw i32 268435456, %rem
  %bf.load8.masked = and i32 %bf.load8, -268435456
  %bf.shl13 = or i32 %bf.load8.masked, %or1024
  %bf.clear14 = and i32 %bf.load8, 268435455
  %bf.set15 = or i32 %bf.shl13, %bf.clear14
  store i32 %bf.set15, ptr %dirty7, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @daio_mgr_dao_init(ptr noundef %blk, i32 noundef %idx, i32 noundef %conf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %idx)
  %cmp = icmp ult i32 %idx, 4
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %and = and i32 %conf, 7
  %0 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %and, label %if.then.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb5
    i32 4, label %sw.bb9
  ]

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %.pre = shl nuw nsw i32 %idx, 3
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %spoctl = getelementptr inbounds %struct.daio_mgr_ctrl_blk, ptr %blk, i32 0, i32 1
  %mul = shl nuw nsw i32 %idx, 3
  %shl = shl nuw i32 192, %mul
  tail call void @set_field(ptr noundef %spoctl, i32 noundef %shl, i32 noundef 3) #10
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %spoctl2 = getelementptr inbounds %struct.daio_mgr_ctrl_blk, ptr %blk, i32 0, i32 1
  %mul3 = shl nuw nsw i32 %idx, 3
  %shl4 = shl nuw i32 192, %mul3
  tail call void @set_field(ptr noundef %spoctl2, i32 noundef %shl4, i32 noundef 0) #10
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %spoctl6 = getelementptr inbounds %struct.daio_mgr_ctrl_blk, ptr %blk, i32 0, i32 1
  %mul7 = shl nuw nsw i32 %idx, 3
  %shl8 = shl nuw i32 192, %mul7
  tail call void @set_field(ptr noundef %spoctl6, i32 noundef %shl8, i32 noundef 1) #10
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %spoctl10 = getelementptr inbounds %struct.daio_mgr_ctrl_blk, ptr %blk, i32 0, i32 1
  %mul11 = shl nuw nsw i32 %idx, 3
  %shl12 = shl nuw i32 192, %mul11
  tail call void @set_field(ptr noundef %spoctl10, i32 noundef %shl12, i32 noundef 2) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb5, %sw.bb1, %sw.bb, %if.then.sw.epilog_crit_edge
  %mul14.pre-phi = phi i32 [ %.pre, %if.then.sw.epilog_crit_edge ], [ %mul11, %sw.bb9 ], [ %mul7, %sw.bb5 ], [ %mul3, %sw.bb1 ], [ %mul, %sw.bb ]
  %spoctl13 = getelementptr inbounds %struct.daio_mgr_ctrl_blk, ptr %blk, i32 0, i32 1
  %shl15 = shl nuw nsw i32 32, %mul14.pre-phi
  %shr = lshr i32 %conf, 4
  %and16 = and i32 %shr, 1
  tail call void @set_field(ptr noundef %spoctl13, i32 noundef %shl15, i32 noundef %and16) #10
  %shl19 = shl nuw nsw i32 16, %mul14.pre-phi
  tail call void @set_field(ptr noundef %spoctl13, i32 noundef %shl19, i32 noundef %and16) #10
  %shl24 = shl nuw nsw i32 14, %mul14.pre-phi
  tail call void @set_field(ptr noundef %spoctl13, i32 noundef %shl24, i32 noundef 2) #10
  %dirty = getelementptr inbounds %struct.daio_mgr_ctrl_blk, ptr %blk, i32 0, i32 4
  %1 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %1)
  %bf.load = load i32, ptr %dirty, align 4
  %or48 = shl nuw nsw i32 1048576, %idx
  %2 = and i32 %or48, 15728640
  %bf.set = or i32 %bf.load, %2
  store i32 %bf.set, ptr %dirty, align 4
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @daio_mgr_set_imaparc(ptr noundef %blk, i32 noundef %slot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %daoimap = getelementptr inbounds %struct.daio_mgr_ctrl_blk, ptr %blk, i32 0, i32 3
  tail call void @set_field(ptr noundef %daoimap, i32 noundef 4095, i32 noundef %slot) #10
  %dirty = getelementptr inbounds %struct.daio_mgr_ctrl_blk, ptr %blk, i32 0, i32 4
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
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %daoimap = getelementptr inbounds %struct.daio_mgr_ctrl_blk, ptr %blk, i32 0, i32 3
  tail call void @set_field(ptr noundef %daoimap, i32 noundef 8323072, i32 noundef %next) #10
  %dirty = getelementptr inbounds %struct.daio_mgr_ctrl_blk, ptr %blk, i32 0, i32 4
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
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %idx = getelementptr inbounds %struct.daio_mgr_ctrl_blk, ptr %blk, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %addr, ptr %idx, align 4
  %dirty = getelementptr inbounds %struct.daio_mgr_ctrl_blk, ptr %blk, i32 0, i32 4
  %1 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %1)
  %bf.load = load i32, ptr %dirty, align 4
  %bf.set = or i32 %bf.load, 32768
  store i32 %bf.set, ptr %dirty, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @daio_mgr_commit_write(ptr noundef %hw, ptr nocapture noundef %blk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dirty = getelementptr inbounds %struct.daio_mgr_ctrl_blk, ptr %blk, i32 0, i32 4
  %0 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %dirty, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %bf.load)
  %1 = icmp ult i32 %bf.load, 16777216
  br i1 %1, label %entry.if.end38_crit_edge, label %for.cond.preheader

entry.if.end38_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

for.cond.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %2)
  %dirty.promoted = load i32, ptr %dirty, align 4
  %3 = and i32 %dirty.promoted, 268435456
  %4 = xor i32 %3, -16777217
  %bf.set36178 = and i32 %dirty.promoted, %4
  %5 = and i32 %dirty.promoted, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool9.not.1 = icmp eq i32 %5, 0
  %bf.set.1 = and i32 %bf.set36178, -50331649
  %spec.select = select i1 %tobool9.not.1, i32 %bf.set36178, i32 %bf.set.1
  %6 = and i32 %dirty.promoted, 318767104
  %7 = and i32 %spec.select, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool24.not.1 = icmp eq i32 %7, 0
  %bf.set36.1 = and i32 %spec.select, -553648129
  %spec.select203 = select i1 %tobool24.not.1, i32 %spec.select, i32 %bf.set36.1
  %8 = or i32 %7, %6
  %9 = and i32 %spec.select203, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool9.not.2 = icmp eq i32 %9, 0
  %bf.set.2 = and i32 %spec.select203, -83886081
  %spec.select204 = select i1 %tobool9.not.2, i32 %spec.select203, i32 %bf.set.2
  %10 = or i32 %9, %8
  %11 = and i32 %spec.select204, 1073741824
  %12 = or i32 %10, %11
  %13 = and i32 %spec.select204, 134217728
  %14 = xor i32 %13, -1073741825
  %spec.select206 = and i32 %spec.select204, %14
  %15 = or i32 %12, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %.not = icmp eq i32 %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %spec.select206)
  %tobool24.not.3 = icmp sgt i32 %spec.select206, -1
  %16 = and i1 %tobool24.not.3, %.not
  br i1 %16, label %for.cond.preheader._crit_edge, label %17

for.cond.preheader._crit_edge:                    ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %19

17:                                               ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  %bf.set36.3 = and i32 %spec.select206, 1073741823
  %spec.select207 = select i1 %tobool24.not.3, i32 %spec.select206, i32 %bf.set36.3
  %18 = ptrtoint ptr %dirty to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %spec.select207, ptr %dirty, align 4
  br label %19

19:                                               ; preds = %17, %for.cond.preheader._crit_edge
  %20 = ptrtoint ptr %blk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %blk, align 4
  %reg_20k1_lock.i = getelementptr inbounds %struct.hw20k1, ptr %hw, i32 0, i32 1
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !55
  tail call void @arm_heavy_mb() #10
  %io_base.i = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 99
  %22 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %io_base.i, align 4
  %and.i = and i32 %23, 1048575
  %add9.i = or i32 %and.i, -18874368
  %24 = inttoptr i32 %add9.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %24, i32 542383104) #10, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  tail call void @arm_heavy_mb() #10
  %25 = tail call i32 @llvm.bswap.i32(i32 %21) #10
  %26 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %io_base.i, align 4
  %add15.i = add i32 %27, 4
  %and16.i = and i32 %add15.i, 1048575
  %add17.i = or i32 %and16.i, -18874368
  %28 = inttoptr i32 %add17.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %28, i32 %25) #10, !srcloc !49
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i, i32 noundef %call3.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #10
  br label %if.end38

if.end38:                                         ; preds = %19, %entry.if.end38_crit_edge
  %30 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %30)
  %bf.load40 = load i32, ptr %dirty, align 4
  %31 = and i32 %bf.load40, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool43.not = icmp eq i32 %31, 0
  br i1 %tobool43.not, label %if.end38.if.end72_crit_edge, label %for.cond45.preheader

if.end38.if.end72_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

for.cond45.preheader:                             ; preds = %if.end38
  %32 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %32)
  %dirty.promoted182 = load i32, ptr %dirty, align 4
  %bf.lshr50 = lshr i32 %dirty.promoted182, 20
  %bf.clear51 = and i32 %bf.lshr50, 15
  %33 = and i32 %dirty.promoted182, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool54.not = icmp eq i32 %33, 0
  br i1 %tobool54.not, label %for.cond45.preheader.for.inc69_crit_edge, label %if.then55

for.cond45.preheader.for.inc69_crit_edge:         ; preds = %for.cond45.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc69

if.then55:                                        ; preds = %for.cond45.preheader
  call void @__sanitizer_cov_trace_pc() #12
  %bf.set67 = and i32 %dirty.promoted182, -1048577
  %34 = ptrtoint ptr %dirty to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %bf.set67, ptr %dirty, align 4
  %.pre197 = lshr i32 %dirty.promoted182, 20
  %.pre198 = and i32 %.pre197, 14
  br label %for.inc69

for.inc69:                                        ; preds = %if.then55, %for.cond45.preheader.for.inc69_crit_edge
  %bf.clear51.1.pre-phi = phi i32 [ %bf.clear51, %for.cond45.preheader.for.inc69_crit_edge ], [ %.pre198, %if.then55 ]
  %bf.set67183 = phi i32 [ %dirty.promoted182, %for.cond45.preheader.for.inc69_crit_edge ], [ %bf.set67, %if.then55 ]
  %and53.1 = and i32 %bf.clear51.1.pre-phi, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.1)
  %tobool54.not.1 = icmp eq i32 %and53.1, 0
  br i1 %tobool54.not.1, label %for.inc69.for.inc69.1_crit_edge, label %if.then55.1

for.inc69.for.inc69.1_crit_edge:                  ; preds = %for.inc69
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc69.1

if.then55.1:                                      ; preds = %for.inc69
  call void @__sanitizer_cov_trace_pc() #12
  %and62.1 = shl nuw nsw i32 %bf.clear51.1.pre-phi, 20
  %bf.shl65.1 = and i32 %and62.1, 13631488
  %bf.clear66.1 = and i32 %bf.set67183, -15728641
  %bf.set67.1 = or i32 %bf.shl65.1, %bf.clear66.1
  %35 = ptrtoint ptr %dirty to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %bf.set67.1, ptr %dirty, align 4
  %.pre199 = lshr exact i32 %bf.shl65.1, 20
  br label %for.inc69.1

for.inc69.1:                                      ; preds = %if.then55.1, %for.inc69.for.inc69.1_crit_edge
  %bf.clear51.2.pre-phi = phi i32 [ %.pre199, %if.then55.1 ], [ %bf.clear51.1.pre-phi, %for.inc69.for.inc69.1_crit_edge ]
  %bf.set67183.1 = phi i32 [ %bf.set67.1, %if.then55.1 ], [ %bf.set67183, %for.inc69.for.inc69.1_crit_edge ]
  %and53.2 = and i32 %bf.clear51.2.pre-phi, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.2)
  %tobool54.not.2 = icmp eq i32 %and53.2, 0
  br i1 %tobool54.not.2, label %for.inc69.1.for.inc69.2_crit_edge, label %if.then55.2

for.inc69.1.for.inc69.2_crit_edge:                ; preds = %for.inc69.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc69.2

if.then55.2:                                      ; preds = %for.inc69.1
  call void @__sanitizer_cov_trace_pc() #12
  %and62.2 = shl nuw nsw i32 %bf.clear51.2.pre-phi, 20
  %bf.shl65.2 = and i32 %and62.2, -5242880
  %bf.clear66.2 = and i32 %bf.set67183.1, -15728641
  %bf.set67.2 = or i32 %bf.shl65.2, %bf.clear66.2
  %36 = ptrtoint ptr %dirty to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %bf.set67.2, ptr %dirty, align 4
  %.pre202 = and i32 %bf.clear51.2.pre-phi, 11
  br label %for.inc69.2

for.inc69.2:                                      ; preds = %if.then55.2, %for.inc69.1.for.inc69.2_crit_edge
  %bf.clear51.3.pre-phi = phi i32 [ %.pre202, %if.then55.2 ], [ %bf.clear51.2.pre-phi, %for.inc69.1.for.inc69.2_crit_edge ]
  %bf.set67183.2 = phi i32 [ %bf.set67.2, %if.then55.2 ], [ %bf.set67183.1, %for.inc69.1.for.inc69.2_crit_edge ]
  %and53.3 = and i32 %bf.clear51.3.pre-phi, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.3)
  %tobool54.not.3 = icmp eq i32 %and53.3, 0
  br i1 %tobool54.not.3, label %for.inc69.2.for.inc69.3_crit_edge, label %if.then55.3

for.inc69.2.for.inc69.3_crit_edge:                ; preds = %for.inc69.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc69.3

if.then55.3:                                      ; preds = %for.inc69.2
  call void @__sanitizer_cov_trace_pc() #12
  %and62.3 = shl nuw nsw i32 %bf.clear51.3.pre-phi, 20
  %bf.shl65.3 = and i32 %and62.3, -9437184
  %bf.clear66.3 = and i32 %bf.set67183.2, -15728641
  %bf.set67.3 = or i32 %bf.shl65.3, %bf.clear66.3
  %37 = ptrtoint ptr %dirty to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %bf.set67.3, ptr %dirty, align 4
  br label %for.inc69.3

for.inc69.3:                                      ; preds = %if.then55.3, %for.inc69.2.for.inc69.3_crit_edge
  %spoctl = getelementptr inbounds %struct.daio_mgr_ctrl_blk, ptr %blk, i32 0, i32 1
  %38 = ptrtoint ptr %spoctl to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %spoctl, align 4
  %reg_20k1_lock.i153 = getelementptr inbounds %struct.hw20k1, ptr %hw, i32 0, i32 1
  %call3.i154 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i153) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !55
  tail call void @arm_heavy_mb() #10
  %io_base.i155 = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 99
  %40 = ptrtoint ptr %io_base.i155 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %io_base.i155, align 4
  %and.i156 = and i32 %41, 1048575
  %add9.i157 = or i32 %and.i156, -18874368
  %42 = inttoptr i32 %add9.i157 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %42, i32 -2141971456) #10, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  tail call void @arm_heavy_mb() #10
  %43 = tail call i32 @llvm.bswap.i32(i32 %39) #10
  %44 = ptrtoint ptr %io_base.i155 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %io_base.i155, align 4
  %add15.i158 = add i32 %45, 4
  %and16.i159 = and i32 %add15.i158, 1048575
  %add17.i160 = or i32 %and16.i159, -18874368
  %46 = inttoptr i32 %add17.i160 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %46, i32 %43) #10, !srcloc !49
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i153, i32 noundef %call3.i154) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748000) #10
  br label %if.end72

if.end72:                                         ; preds = %for.inc69.3, %if.end38.if.end72_crit_edge
  %48 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %48)
  %bf.load74 = load i32, ptr %dirty, align 4
  %49 = and i32 %bf.load74, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool77.not = icmp eq i32 %49, 0
  br i1 %tobool77.not, label %if.end72.if.end106_crit_edge, label %for.cond79.preheader

if.end72.if.end106_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end106

for.cond79.preheader:                             ; preds = %if.end72
  %50 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %50)
  %dirty.promoted187 = load i32, ptr %dirty, align 4
  %bf.lshr84 = lshr i32 %dirty.promoted187, 16
  %bf.clear85 = and i32 %bf.lshr84, 15
  %51 = and i32 %dirty.promoted187, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool88.not = icmp eq i32 %51, 0
  br i1 %tobool88.not, label %for.cond79.preheader.for.inc103_crit_edge, label %if.then89

for.cond79.preheader.for.inc103_crit_edge:        ; preds = %for.cond79.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc103

if.then89:                                        ; preds = %for.cond79.preheader
  call void @__sanitizer_cov_trace_pc() #12
  %bf.set101 = and i32 %dirty.promoted187, -65537
  %52 = ptrtoint ptr %dirty to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %bf.set101, ptr %dirty, align 4
  %.pre = lshr i32 %dirty.promoted187, 16
  %.pre192 = and i32 %.pre, 14
  br label %for.inc103

for.inc103:                                       ; preds = %if.then89, %for.cond79.preheader.for.inc103_crit_edge
  %bf.clear85.1.pre-phi = phi i32 [ %bf.clear85, %for.cond79.preheader.for.inc103_crit_edge ], [ %.pre192, %if.then89 ]
  %bf.set101188 = phi i32 [ %dirty.promoted187, %for.cond79.preheader.for.inc103_crit_edge ], [ %bf.set101, %if.then89 ]
  %and87.1 = and i32 %bf.clear85.1.pre-phi, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87.1)
  %tobool88.not.1 = icmp eq i32 %and87.1, 0
  br i1 %tobool88.not.1, label %for.inc103.for.inc103.1_crit_edge, label %if.then89.1

for.inc103.for.inc103.1_crit_edge:                ; preds = %for.inc103
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc103.1

if.then89.1:                                      ; preds = %for.inc103
  call void @__sanitizer_cov_trace_pc() #12
  %and96.1 = shl nuw nsw i32 %bf.clear85.1.pre-phi, 16
  %bf.shl99.1 = and i32 %and96.1, 851968
  %bf.clear100.1 = and i32 %bf.set101188, -983041
  %bf.set101.1 = or i32 %bf.shl99.1, %bf.clear100.1
  %53 = ptrtoint ptr %dirty to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %bf.set101.1, ptr %dirty, align 4
  %.pre193 = lshr exact i32 %bf.shl99.1, 16
  br label %for.inc103.1

for.inc103.1:                                     ; preds = %if.then89.1, %for.inc103.for.inc103.1_crit_edge
  %bf.clear85.2.pre-phi = phi i32 [ %.pre193, %if.then89.1 ], [ %bf.clear85.1.pre-phi, %for.inc103.for.inc103.1_crit_edge ]
  %bf.set101188.1 = phi i32 [ %bf.set101.1, %if.then89.1 ], [ %bf.set101188, %for.inc103.for.inc103.1_crit_edge ]
  %and87.2 = and i32 %bf.clear85.2.pre-phi, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87.2)
  %tobool88.not.2 = icmp eq i32 %and87.2, 0
  br i1 %tobool88.not.2, label %for.inc103.1.for.inc103.2_crit_edge, label %if.then89.2

for.inc103.1.for.inc103.2_crit_edge:              ; preds = %for.inc103.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc103.2

if.then89.2:                                      ; preds = %for.inc103.1
  call void @__sanitizer_cov_trace_pc() #12
  %and96.2 = shl nuw nsw i32 %bf.clear85.2.pre-phi, 16
  %bf.shl99.2 = and i32 %and96.2, -327680
  %bf.clear100.2 = and i32 %bf.set101188.1, -983041
  %bf.set101.2 = or i32 %bf.shl99.2, %bf.clear100.2
  %54 = ptrtoint ptr %dirty to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %bf.set101.2, ptr %dirty, align 4
  %.pre196 = and i32 %bf.clear85.2.pre-phi, 11
  br label %for.inc103.2

for.inc103.2:                                     ; preds = %if.then89.2, %for.inc103.1.for.inc103.2_crit_edge
  %bf.clear85.3.pre-phi = phi i32 [ %.pre196, %if.then89.2 ], [ %bf.clear85.2.pre-phi, %for.inc103.1.for.inc103.2_crit_edge ]
  %bf.set101188.2 = phi i32 [ %bf.set101.2, %if.then89.2 ], [ %bf.set101188.1, %for.inc103.1.for.inc103.2_crit_edge ]
  %and87.3 = and i32 %bf.clear85.3.pre-phi, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87.3)
  %tobool88.not.3 = icmp eq i32 %and87.3, 0
  br i1 %tobool88.not.3, label %for.inc103.2.for.inc103.3_crit_edge, label %if.then89.3

for.inc103.2.for.inc103.3_crit_edge:              ; preds = %for.inc103.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc103.3

if.then89.3:                                      ; preds = %for.inc103.2
  call void @__sanitizer_cov_trace_pc() #12
  %and96.3 = shl nuw nsw i32 %bf.clear85.3.pre-phi, 16
  %bf.shl99.3 = and i32 %and96.3, -589824
  %bf.clear100.3 = and i32 %bf.set101188.2, -983041
  %bf.set101.3 = or i32 %bf.shl99.3, %bf.clear100.3
  %55 = ptrtoint ptr %dirty to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %bf.set101.3, ptr %dirty, align 4
  br label %for.inc103.3

for.inc103.3:                                     ; preds = %if.then89.3, %for.inc103.2.for.inc103.3_crit_edge
  %spictl = getelementptr inbounds %struct.daio_mgr_ctrl_blk, ptr %blk, i32 0, i32 2
  %56 = ptrtoint ptr %spictl to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %spictl, align 4
  %reg_20k1_lock.i161 = getelementptr inbounds %struct.hw20k1, ptr %hw, i32 0, i32 1
  %call3.i162 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i161) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !55
  tail call void @arm_heavy_mb() #10
  %io_base.i163 = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 99
  %58 = ptrtoint ptr %io_base.i163 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %io_base.i163, align 4
  %and.i164 = and i32 %59, 1048575
  %add9.i165 = or i32 %and.i164, -18874368
  %60 = inttoptr i32 %add9.i165 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %60, i32 -2074862592) #10, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  tail call void @arm_heavy_mb() #10
  %61 = tail call i32 @llvm.bswap.i32(i32 %57) #10
  %62 = ptrtoint ptr %io_base.i163 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %io_base.i163, align 4
  %add15.i166 = add i32 %63, 4
  %and16.i167 = and i32 %add15.i166, 1048575
  %add17.i168 = or i32 %and16.i167, -18874368
  %64 = inttoptr i32 %add17.i168 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %64, i32 %61) #10, !srcloc !49
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i161, i32 noundef %call3.i162) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %65(i32 noundef 214748000) #10
  br label %if.end106

if.end106:                                        ; preds = %for.inc103.3, %if.end72.if.end106_crit_edge
  %66 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %66)
  %bf.load108 = load i32, ptr %dirty, align 4
  %67 = and i32 %bf.load108, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool111.not = icmp eq i32 %67, 0
  br i1 %tobool111.not, label %if.end106.if.end118_crit_edge, label %if.then112

if.end106.if.end118_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end118

if.then112:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #12
  %daoimap = getelementptr inbounds %struct.daio_mgr_ctrl_blk, ptr %blk, i32 0, i32 3
  %idx = getelementptr inbounds %struct.daio_mgr_ctrl_blk, ptr %blk, i32 0, i32 3, i32 1
  %68 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %idx, align 4
  %mul = shl i32 %69, 2
  %add = add i32 %mul, 1855488
  %70 = ptrtoint ptr %daoimap to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %daoimap, align 4
  %reg_20k1_lock.i169 = getelementptr inbounds %struct.hw20k1, ptr %hw, i32 0, i32 1
  %call3.i170 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i169) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !55
  tail call void @arm_heavy_mb() #10
  %72 = tail call i32 @llvm.bswap.i32(i32 %add) #10
  %io_base.i171 = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 99
  %73 = ptrtoint ptr %io_base.i171 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %io_base.i171, align 4
  %and.i172 = and i32 %74, 1048575
  %add9.i173 = or i32 %and.i172, -18874368
  %75 = inttoptr i32 %add9.i173 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %75, i32 %72) #10, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  tail call void @arm_heavy_mb() #10
  %76 = tail call i32 @llvm.bswap.i32(i32 %71) #10
  %77 = ptrtoint ptr %io_base.i171 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %io_base.i171, align 4
  %add15.i174 = add i32 %78, 4
  %and16.i175 = and i32 %add15.i174, 1048575
  %add17.i176 = or i32 %and16.i175, -18874368
  %79 = inttoptr i32 %add17.i176 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %79, i32 %76) #10, !srcloc !49
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i169, i32 noundef %call3.i170) #10
  %80 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %80)
  %bf.load115 = load i32, ptr %dirty, align 4
  %bf.clear116 = and i32 %bf.load115, -32769
  store i32 %bf.clear116, ptr %dirty, align 4
  br label %if.end118

if.end118:                                        ; preds = %if.then112, %if.end106.if.end118_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_timer_irq(ptr noundef %hw, i32 noundef %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %cond = select i1 %tobool.not, i32 0, i32 65536
  %reg_20k1_lock.i = getelementptr inbounds %struct.hw20k1, ptr %hw, i32 0, i32 1
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !55
  tail call void @arm_heavy_mb() #10
  %io_base.i = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 99
  %0 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %io_base.i, align 4
  %and.i = and i32 %1, 1048575
  %add9.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add9.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %2, i32 341842944) #10, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  tail call void @arm_heavy_mb() #10
  %3 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %io_base.i, align 4
  %add15.i = add i32 %4, 4
  %and16.i = and i32 %add15.i, 1048575
  %add17.i = or i32 %and16.i, -18874368
  %5 = inttoptr i32 %add17.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %5, i32 %cond) #10, !srcloc !49
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i, i32 noundef %call3.i) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_timer_tick(ptr noundef %hw, i32 noundef %ticks) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ticks)
  %tobool.not = icmp eq i32 %ticks, 0
  %or = or i32 %ticks, 49152
  %spec.select = select i1 %tobool.not, i32 0, i32 %or
  %reg_20k1_lock.i = getelementptr inbounds %struct.hw20k1, ptr %hw, i32 0, i32 1
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !55
  tail call void @arm_heavy_mb() #10
  %io_base.i = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 99
  %0 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %io_base.i, align 4
  %and.i = and i32 %1, 1048575
  %add9.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add9.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %2, i32 73407488) #10, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  tail call void @arm_heavy_mb() #10
  %3 = tail call i32 @llvm.bswap.i32(i32 %spec.select) #10
  %4 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io_base.i, align 4
  %add15.i = add i32 %5, 4
  %and16.i = and i32 %add15.i, 1048575
  %add17.i = or i32 %and16.i, -18874368
  %6 = inttoptr i32 %add17.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %6, i32 %3) #10, !srcloc !49
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i, i32 noundef %call3.i) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_wc(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_20k1_lock.i = getelementptr inbounds %struct.hw20k1, ptr %hw, i32 0, i32 1
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !53
  tail call void @arm_heavy_mb() #10
  %io_base.i = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 99
  %0 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %io_base.i, align 4
  %and.i = and i32 %1, 1048575
  %add9.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add9.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %2, i32 6298624) #10, !srcloc !49
  %3 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %io_base.i, align 4
  %add12.i = add i32 %4, 4
  %and13.i = and i32 %add12.i, 1048575
  %add14.i = or i32 %and13.i, -18874368
  %5 = inttoptr i32 %add14.i to ptr
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %5) #10, !srcloc !46
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !54
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i, i32 noundef %call3.i) #10
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_field(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ct_20k1_interrupt(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_20k1_lock.i = getelementptr inbounds %struct.hw20k1, ptr %dev_id, i32 0, i32 1
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !53
  tail call void @arm_heavy_mb() #10
  %io_base.i = getelementptr inbounds %struct.hw, ptr %dev_id, i32 0, i32 99
  %0 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %io_base.i, align 4
  %and.i = and i32 %1, 1048575
  %add9.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add9.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %2, i32 274734080) #10, !srcloc !49
  %3 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %io_base.i, align 4
  %add12.i = add i32 %4, 4
  %and13.i = and i32 %add12.i, 1048575
  %add14.i = or i32 %and13.i, -18874368
  %5 = inttoptr i32 %add14.i to ptr
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %5) #10, !srcloc !46
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !54
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i, i32 noundef %call3.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %irq_callback = getelementptr inbounds %struct.hw, ptr %dev_id, i32 0, i32 94
  %8 = ptrtoint ptr %irq_callback to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_callback, align 4
  %tobool1.not = icmp eq ptr %9, null
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %irq_callback_data = getelementptr inbounds %struct.hw, ptr %dev_id, i32 0, i32 95
  %10 = ptrtoint ptr %irq_callback_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq_callback_data, align 4
  tail call void %9(ptr noundef %11, i32 noundef %7) #10
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %call3.i13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !55
  tail call void @arm_heavy_mb() #10
  %12 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %io_base.i, align 4
  %and.i15 = and i32 %13, 1048575
  %add9.i16 = or i32 %and.i15, -18874368
  %14 = inttoptr i32 %add9.i16 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %14, i32 274734080) #10, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  tail call void @arm_heavy_mb() #10
  %15 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %io_base.i, align 4
  %add15.i = add i32 %16, 4
  %and16.i = and i32 %add15.i, 1048575
  %add17.i = or i32 %and16.i, -18874368
  %17 = inttoptr i32 %add17.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %17, i32 %6) #10, !srcloc !49
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i, i32 noundef %call3.i13) #10
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
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_field(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_alert(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i2c_unlock(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_pci_lock.i = getelementptr inbounds %struct.hw20k1, ptr %hw, i32 0, i32 2
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_pci_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !57
  tail call void @arm_heavy_mb() #10
  %io_base.i = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 99
  %0 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %io_base.i, align 4
  %add.i = add i32 %1, 16
  %and.i = and i32 %add.i, 1048575
  %add9.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add9.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %2, i32 -872415232) #10, !srcloc !49
  %3 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %io_base.i, align 4
  %add12.i = add i32 %4, 20
  %and13.i = and i32 %add12.i, 1048575
  %add14.i = or i32 %and13.i, -18874368
  %5 = inttoptr i32 %add14.i to ptr
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %5) #10, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !58
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_pci_lock.i, i32 noundef %call3.i) #10
  %.mask = and i32 %6, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1442840576, i32 %.mask)
  %cmp = icmp eq i32 %.mask, -1442840576
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %call3.i18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_pci_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !59
  tail call void @arm_heavy_mb() #10
  %7 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %io_base.i, align 4
  %add.i20 = add i32 %8, 16
  %and.i21 = and i32 %add.i20, 1048575
  %add9.i22 = or i32 %and.i21, -18874368
  %9 = inttoptr i32 %add9.i22 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %9, i32 -872415232) #10, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !60
  tail call void @arm_heavy_mb() #10
  %10 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %io_base.i, align 4
  %add15.i = add i32 %11, 20
  %and16.i = and i32 %add15.i, 1048575
  %add17.i = or i32 %and16.i, -18874368
  %12 = inttoptr i32 %add17.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %12, i32 -1946157056) #10, !srcloc !49
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_pci_lock.i, i32 noundef %call3.i18) #10
  %call3.i24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_pci_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !59
  tail call void @arm_heavy_mb() #10
  %13 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %io_base.i, align 4
  %add.i26 = add i32 %14, 16
  %and.i27 = and i32 %add.i26, 1048575
  %add9.i28 = or i32 %and.i27, -18874368
  %15 = inttoptr i32 %add9.i28 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %15, i32 -872415232) #10, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !60
  tail call void @arm_heavy_mb() #10
  %16 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %io_base.i, align 4
  %add15.i29 = add i32 %17, 20
  %and16.i30 = and i32 %add15.i29, 1048575
  %add17.i31 = or i32 %and16.i30, -18874368
  %18 = inttoptr i32 %add17.i31 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %18, i32 234881024) #10, !srcloc !49
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_pci_lock.i, i32 noundef %call3.i24) #10
  %call3.i33 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_pci_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !57
  tail call void @arm_heavy_mb() #10
  %19 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %io_base.i, align 4
  %add.i35 = add i32 %20, 16
  %and.i36 = and i32 %add.i35, 1048575
  %add9.i37 = or i32 %and.i36, -18874368
  %21 = inttoptr i32 %add9.i37 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %21, i32 -872415232) #10, !srcloc !49
  %22 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %io_base.i, align 4
  %add12.i38 = add i32 %23, 20
  %and13.i39 = and i32 %add12.i38, 1048575
  %add14.i40 = or i32 %and13.i39, -18874368
  %24 = inttoptr i32 %add14.i40 to ptr
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %24) #10, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !58
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_pci_lock.i, i32 noundef %call3.i33) #10
  %.mask68 = and i32 %25, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1442840576, i32 %.mask68)
  %cmp3 = icmp eq i32 %.mask68, -1442840576
  br i1 %cmp3, label %if.end.return_crit_edge, label %if.end5

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i42 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_pci_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !59
  tail call void @arm_heavy_mb() #10
  %26 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %io_base.i, align 4
  %add.i44 = add i32 %27, 16
  %and.i45 = and i32 %add.i44, 1048575
  %add9.i46 = or i32 %and.i45, -18874368
  %28 = inttoptr i32 %add9.i46 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %28, i32 -872415232) #10, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !60
  tail call void @arm_heavy_mb() #10
  %29 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %io_base.i, align 4
  %add15.i47 = add i32 %30, 20
  %and16.i48 = and i32 %add15.i47, 1048575
  %add17.i49 = or i32 %and16.i48, -18874368
  %31 = inttoptr i32 %add17.i49 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %31, i32 -301989888) #10, !srcloc !49
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_pci_lock.i, i32 noundef %call3.i42) #10
  %call3.i51 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_pci_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !59
  tail call void @arm_heavy_mb() #10
  %32 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %io_base.i, align 4
  %add.i53 = add i32 %33, 16
  %and.i54 = and i32 %add.i53, 1048575
  %add9.i55 = or i32 %and.i54, -18874368
  %34 = inttoptr i32 %add9.i55 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %34, i32 -872415232) #10, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !60
  tail call void @arm_heavy_mb() #10
  %35 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %io_base.i, align 4
  %add15.i56 = add i32 %36, 20
  %and16.i57 = and i32 %add15.i56, 1048575
  %add17.i58 = or i32 %and16.i57, -18874368
  %37 = inttoptr i32 %add17.i58 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %37, i32 -1442840576) #10, !srcloc !49
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_pci_lock.i, i32 noundef %call3.i51) #10
  %call3.i60 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_pci_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !57
  tail call void @arm_heavy_mb() #10
  %38 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %io_base.i, align 4
  %add.i62 = add i32 %39, 16
  %and.i63 = and i32 %add.i62, 1048575
  %add9.i64 = or i32 %and.i63, -18874368
  %40 = inttoptr i32 %add9.i64 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %40, i32 -872415232) #10, !srcloc !49
  %41 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %io_base.i, align 4
  %add12.i65 = add i32 %42, 20
  %and13.i66 = and i32 %add12.i65, 1048575
  %add14.i67 = or i32 %and13.i66, -18874368
  %43 = inttoptr i32 %add14.i67 to ptr
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %43) #10, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !58
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_pci_lock.i, i32 noundef %call3.i60) #10
  %.mask69 = and i32 %44, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1442840576, i32 %.mask69)
  %cmp8 = icmp ne i32 %.mask69, -1442840576
  %. = sext i1 %cmp8 to i32
  br label %return

return:                                           ; preds = %if.end5, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ], [ %., %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i2c_write(ptr noundef %hw, i32 noundef %device, i32 noundef %addr, i32 noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_pci_lock.i = getelementptr inbounds %struct.hw20k1, ptr %hw, i32 0, i32 2
  %io_base.i = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 99
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_pci_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !57
  tail call void @arm_heavy_mb() #10
  %0 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %io_base.i, align 4
  %add.i = add i32 %1, 16
  %and.i = and i32 %add.i, 1048575
  %add9.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add9.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %2, i32 -335544320) #10, !srcloc !49
  %3 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %io_base.i, align 4
  %add12.i = add i32 %4, 20
  %and13.i = and i32 %add12.i, 1048575
  %add14.i = or i32 %and13.i, -18874368
  %5 = inttoptr i32 %add14.i to ptr
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %5) #10, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !58
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_pci_lock.i, i32 noundef %call3.i) #10
  %7 = and i32 %6, 32768
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %do.body.do.body_crit_edge, label %do.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_pci_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !59
  tail call void @arm_heavy_mb() #10
  %8 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %io_base.i, align 4
  %add.i7 = add i32 %9, 16
  %and.i8 = and i32 %add.i7, 1048575
  %add9.i9 = or i32 %and.i8, -18874368
  %10 = inttoptr i32 %add9.i9 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %10, i32 -536870912) #10, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !60
  tail call void @arm_heavy_mb() #10
  %11 = tail call i32 @llvm.bswap.i32(i32 %device) #10
  %12 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %io_base.i, align 4
  %add15.i = add i32 %13, 20
  %and16.i = and i32 %add15.i, 1048575
  %add17.i = or i32 %and16.i, -18874368
  %14 = inttoptr i32 %add17.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %14, i32 %11) #10, !srcloc !49
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_pci_lock.i, i32 noundef %call3.i5) #10
  %shl = shl i32 %data, 8
  %and1 = and i32 %addr, 255
  %or = or i32 %shl, %and1
  %call3.i11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_pci_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !59
  tail call void @arm_heavy_mb() #10
  %15 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %io_base.i, align 4
  %add.i13 = add i32 %16, 16
  %and.i14 = and i32 %add.i13, 1048575
  %add9.i15 = or i32 %and.i14, -18874368
  %17 = inttoptr i32 %add9.i15 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %17, i32 -469762048) #10, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !60
  tail call void @arm_heavy_mb() #10
  %18 = tail call i32 @llvm.bswap.i32(i32 %or) #10
  %19 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %io_base.i, align 4
  %add15.i16 = add i32 %20, 20
  %and16.i17 = and i32 %add15.i16, 1048575
  %add17.i18 = or i32 %and16.i17, -18874368
  %21 = inttoptr i32 %add17.i18 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %21, i32 %18) #10, !srcloc !49
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_pci_lock.i, i32 noundef %call3.i11) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i2c_lock(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_pci_lock.i = getelementptr inbounds %struct.hw20k1, ptr %hw, i32 0, i32 2
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_pci_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !57
  tail call void @arm_heavy_mb() #10
  %io_base.i = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 99
  %0 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %io_base.i, align 4
  %add.i = add i32 %1, 16
  %and.i = and i32 %add.i, 1048575
  %add9.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add9.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %2, i32 -872415232) #10, !srcloc !49
  %3 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %io_base.i, align 4
  %add12.i = add i32 %4, 20
  %and13.i = and i32 %add12.i, 1048575
  %add14.i = or i32 %and13.i, -18874368
  %5 = inttoptr i32 %add14.i to ptr
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %5) #10, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !58
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_pci_lock.i, i32 noundef %call3.i) #10
  %.mask = and i32 %6, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1442840576, i32 %.mask)
  %cmp = icmp eq i32 %.mask, -1442840576
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_pci_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !59
  tail call void @arm_heavy_mb() #10
  %7 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %io_base.i, align 4
  %add.i5 = add i32 %8, 16
  %and.i6 = and i32 %add.i5, 1048575
  %add9.i7 = or i32 %and.i6, -18874368
  %9 = inttoptr i32 %add9.i7 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %9, i32 -872415232) #10, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !60
  tail call void @arm_heavy_mb() #10
  %10 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %io_base.i, align 4
  %add15.i = add i32 %11, 20
  %and16.i = and i32 %add15.i, 1048575
  %add17.i = or i32 %and16.i, -18874368
  %12 = inttoptr i32 %add17.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %12, i32 0) #10, !srcloc !49
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_pci_lock.i, i32 noundef %call3.i3) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adc_input_select_SB055x(ptr noundef %hw, i32 noundef %type, i8 noundef zeroext %boost) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_20k1_lock.i = getelementptr inbounds %struct.hw20k1, ptr %hw, i32 0, i32 1
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !53
  tail call void @arm_heavy_mb() #10
  %io_base.i = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 99
  %0 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %io_base.i, align 4
  %and.i = and i32 %1, 1048575
  %add9.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add9.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %2, i32 543169536) #10, !srcloc !49
  %3 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %io_base.i, align 4
  %add12.i = add i32 %4, 4
  %and13.i = and i32 %add12.i, 1048575
  %add14.i = or i32 %and13.i, -18874368
  %5 = inttoptr i32 %add14.i to ptr
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %5) #10, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !54
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i, i32 noundef %call3.i) #10
  %7 = and i32 %6, 1944846336
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %9 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 3, label %sw.bb4
    i32 4, label %sw.bb6
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %boost)
  %tobool.not = icmp eq i8 %boost, 0
  %or = select i1 %tobool.not, i32 896, i32 900
  %or1 = or i32 %or, %8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %or3 = or i32 %8, 256
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %or5 = or i32 %8, 4352
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %or7 = or i32 %8, 4096
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb4, %sw.bb2, %sw.bb
  %data.0 = phi i32 [ %or7, %sw.bb6 ], [ %or5, %sw.bb4 ], [ %or3, %sw.bb2 ], [ %or1, %sw.bb ]
  %call3.i16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !55
  tail call void @arm_heavy_mb() #10
  %10 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %io_base.i, align 4
  %and.i18 = and i32 %11, 1048575
  %add9.i19 = or i32 %and.i18, -18874368
  %12 = inttoptr i32 %add9.i19 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %12, i32 543169536) #10, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  tail call void @arm_heavy_mb() #10
  %13 = tail call i32 @llvm.bswap.i32(i32 %data.0) #10
  %14 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %io_base.i, align 4
  %add15.i = add i32 %15, 4
  %and16.i = and i32 %add15.i, 1048575
  %add17.i = or i32 %and16.i, -18874368
  %16 = inttoptr i32 %add17.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %16, i32 %13) #10, !srcloc !49
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i, i32 noundef %call3.i16) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adc_input_select_hendrix(ptr noundef %hw, i32 noundef %type, i8 noundef zeroext %boost) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @i2c_unlock(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body.preheader:                                ; preds = %entry
  %reg_pci_lock.i = getelementptr inbounds %struct.hw20k1, ptr %hw, i32 0, i32 2
  %io_base.i = getelementptr inbounds %struct.hw, ptr %hw, i32 0, i32 99
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.preheader
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_pci_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !57
  tail call void @arm_heavy_mb() #10
  %0 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %io_base.i, align 4
  %add.i = add i32 %1, 16
  %and.i = and i32 %add.i, 1048575
  %add9.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add9.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %2, i32 -335544320) #10, !srcloc !49
  %3 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %io_base.i, align 4
  %add12.i = add i32 %4, 20
  %and13.i = and i32 %add12.i, 1048575
  %add14.i = or i32 %and13.i, -18874368
  %5 = inttoptr i32 %add14.i to ptr
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %5) #10, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !58
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_pci_lock.i, i32 noundef %call3.i) #10
  %7 = and i32 %6, 32768
  %tobool2.not = icmp eq i32 %7, 0
  br i1 %tobool2.not, label %do.body.do.body_crit_edge, label %do.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end:                                           ; preds = %do.body
  %call3.i25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_pci_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !59
  tail call void @arm_heavy_mb() #10
  %8 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %io_base.i, align 4
  %add.i27 = add i32 %9, 16
  %and.i28 = and i32 %add.i27, 1048575
  %add9.i29 = or i32 %and.i28, -18874368
  %10 = inttoptr i32 %add9.i29 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %10, i32 -335544320) #10, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !60
  tail call void @arm_heavy_mb() #10
  %11 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %io_base.i, align 4
  %add15.i = add i32 %12, 20
  %and16.i = and i32 %add15.i, 1048575
  %add17.i = or i32 %and16.i, -18874368
  %13 = inttoptr i32 %add17.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %13, i32 83886080) #10, !srcloc !49
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_pci_lock.i, i32 noundef %call3.i25) #10
  %reg_20k1_lock.i = getelementptr inbounds %struct.hw20k1, ptr %hw, i32 0, i32 1
  %call3.i30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !53
  tail call void @arm_heavy_mb() #10
  %14 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %io_base.i, align 4
  %and.i32 = and i32 %15, 1048575
  %add9.i33 = or i32 %and.i32, -18874368
  %16 = inttoptr i32 %add9.i33 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %16, i32 543169536) #10, !srcloc !49
  %17 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %io_base.i, align 4
  %add12.i34 = add i32 %18, 4
  %and13.i35 = and i32 %add12.i34, 1048575
  %add14.i36 = or i32 %and13.i35, -18874368
  %19 = inttoptr i32 %add14.i36 to ptr
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %19) #10, !srcloc !46
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !54
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i, i32 noundef %call3.i30) #10
  %22 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %type, label %do.end.cleanup.sink.split_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
  ]

do.end.cleanup.sink.split_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i32 %21, 128
  br label %sw.epilog

sw.bb4:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %and5 = and i32 %21, -129
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb
  %data.0 = phi i32 [ %and5, %sw.bb4 ], [ %or, %sw.bb ]
  %i2c_data.0 = phi i32 [ 2, %sw.bb4 ], [ 1, %sw.bb ]
  %call3.i38 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_20k1_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !55
  tail call void @arm_heavy_mb() #10
  %23 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %io_base.i, align 4
  %and.i40 = and i32 %24, 1048575
  %add9.i41 = or i32 %and.i40, -18874368
  %25 = inttoptr i32 %add9.i41 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %25, i32 543169536) #10, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !56
  tail call void @arm_heavy_mb() #10
  %26 = tail call i32 @llvm.bswap.i32(i32 %data.0) #10
  %27 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %io_base.i, align 4
  %add15.i42 = add i32 %28, 4
  %and16.i43 = and i32 %add15.i42, 1048575
  %add17.i44 = or i32 %and16.i43, -18874368
  %29 = inttoptr i32 %add17.i44 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %29, i32 %26) #10, !srcloc !49
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_20k1_lock.i, i32 noundef %call3.i38) #10
  tail call fastcc void @i2c_write(ptr noundef %hw, i32 noundef 1704064, i32 noundef 42, i32 noundef %i2c_data.0)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %boost)
  %tobool6.not = icmp eq i8 %boost, 0
  %. = select i1 %tobool6.not, i32 207, i32 231
  tail call fastcc void @i2c_write(ptr noundef %hw, i32 noundef 1704064, i32 noundef 28, i32 noundef %.)
  tail call fastcc void @i2c_write(ptr noundef %hw, i32 noundef 1704064, i32 noundef 30, i32 noundef %.)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.epilog, %do.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %sw.epilog ], [ -1, %do.end.cleanup.sink.split_crit_edge ]
  tail call fastcc void @i2c_lock(ptr noundef %hw)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
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
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !23, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @create_20k1_hw_obj.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../sound/pci/ctxfi/cthw20k1.c", i32 2260, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @create_20k1_hw_obj.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../sound/pci/ctxfi/cthw20k1.c", i32 2261, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @ct20k1_preset, !7, !"ct20k1_preset", i1 false, i1 false}
!7 = !{!"../sound/pci/ctxfi/cthw20k1.c", i32 2147, i32 24}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/pci/ctxfi/cthw20k1.c", i32 1908, i32 34}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/pci/ctxfi/cthw20k1.c", i32 1929, i32 7}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/pci/ctxfi/cthw20k1.c", i32 1931, i32 4}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @hw_card_start._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @hw_card_start._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/pci/ctxfi/cthw20k1.c", i32 1345, i32 3}
!22 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @hw_auto_init._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @hw_auto_init._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/pci/ctxfi/cthw20k1.c", i32 1261, i32 3}
!28 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @hw_trn_init._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @hw_trn_init._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/pci/ctxfi/cthw20k1.c", i32 1321, i32 3}
!33 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @hw_pll_init._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @hw_pll_init._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{!"auto-init"}
!46 = !{i64 5419356}
!47 = !{i64 2154541090}
!48 = !{i64 2154541438}
!49 = !{i64 5418938}
!50 = !{i64 2154541844}
!51 = !{i64 2154542250}
!52 = !{i64 2154542656}
!53 = !{i64 2154548558}
!54 = !{i64 2154549457}
!55 = !{i64 2154552917}
!56 = !{i64 2154553393}
!57 = !{i64 2154557075}
!58 = !{i64 2154557979}
!59 = !{i64 2154561438}
!60 = !{i64 2154561916}
