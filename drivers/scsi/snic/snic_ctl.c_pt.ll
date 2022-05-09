; ModuleID = '/llk/IR_all_yes/drivers/scsi/snic/snic_ctl.c_pt.bc'
source_filename = "../drivers/scsi/snic/snic_ctl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.snic = type { %struct.list_head, [16 x i8], %struct.atomic_t, %struct.spinlock, ptr, i8, i8, %struct.snic_disc, ptr, %struct.vnic_dev_bar, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, [3 x %struct.snic_msix_entry], [3 x ptr], [4 x i8], [64 x %struct.spinlock], %struct.spinlock, %struct.list_head, i32, %struct.atomic_t, %struct.vnic_snic_config, %struct.work_struct, %struct.snic_fw_info, %struct.work_struct, %struct.work_struct, i32, %struct.atomic64_t, %struct.snic_stats, ptr, ptr, ptr, [60 x i8], [2 x %struct.vnic_cq], [8 x i8], [1 x %struct.vnic_wq], [1 x %struct.spinlock], [20 x i8], [3 x %struct.vnic_intr], [92 x i8] }
%struct.snic_disc = type { %struct.list_head, i32, %struct.mutex, i16, i8, i32, i32, ptr, %struct.delayed_work, ptr }
%struct.vnic_dev_bar = type { ptr, i32, i32 }
%struct.snic_msix_entry = type { i32, [32 x i8], ptr, ptr }
%struct.vnic_snic_config = type { i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8 }
%struct.snic_fw_info = type { i32, i32, i32, i32, i32, i32, i32, i16, ptr }
%struct.atomic64_t = type { i64 }
%struct.snic_stats = type { %struct.snic_io_stats, %struct.snic_abort_stats, %struct.snic_reset_stats, %struct.snic_fw_stats, %struct.snic_misc_stats, %struct.atomic64_t }
%struct.snic_io_stats = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, [60 x %struct.atomic64_t], %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.snic_abort_stats = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.snic_reset_stats = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.snic_fw_stats = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.snic_misc_stats = type { i64, i64, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.vnic_cq = type { i32, ptr, ptr, %struct.vnic_dev_ring, i32, i32 }
%struct.vnic_dev_ring = type { ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i32 }
%struct.vnic_wq = type { i32, ptr, ptr, %struct.vnic_dev_ring, [64 x ptr], ptr, ptr, i32 }
%struct.vnic_intr = type { i32, ptr, ptr }
%struct.snic_req_info = type { %struct.list_head, ptr, i64, i16, i16, i32, i32, i8, [3 x i8], ptr, ptr, i32, i64, ptr, ptr, ptr, ptr }
%struct.snic_host_req = type { [2 x i64], %struct.snic_io_hdr, %union.anon.128, i32 }
%struct.snic_io_hdr = type { i32, i32, i32, i8, i8, i8, i8, i16, i16 }
%union.anon.128 = type { %struct.snic_icmnd, [8 x i8] }
%struct.snic_icmnd = type { i16, i16, i32, i64, i64, i8, i8, i16, i32, [32 x i8], i64, i64 }
%struct.snic_fw_req = type { %struct.snic_io_hdr, %union.anon.129 }
%union.anon.129 = type { %struct.snic_async_evnotify, [8 x i8] }
%struct.snic_async_evnotify = type { i8, i8, [2 x i8], i32, [24 x i8], [4 x i8] }

@snic_handle_link._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 48, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Link Event: Link %s.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"snic_handle_link\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/scsi/snic/snic_ctl.c\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snic_handle_link._entry_ptr = internal global ptr @snic_handle_link._entry, section ".printk_index", align 4
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"Up\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Down\00", [27 x i8] zeroinitializer }, align 32
@snic_handle_link._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 50, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016snic:Functionality not impl'ed at %s:%d\0A\00", [53 x i8] zeroinitializer }, align 32
@snic_handle_link._entry_ptr.9 = internal global ptr @snic_handle_link._entry.7, section ".printk_index", align 4
@snic_handle_link.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@snic_queue_exch_ver_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 113, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Exch Ver Req Preparing...\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"snic_queue_exch_ver_req\00", [40 x i8] zeroinitializer }, align 32
@snic_queue_exch_ver_req._entry_ptr = internal global ptr @snic_queue_exch_ver_req._entry, section ".printk_index", align 4
@snic_queue_exch_ver_req._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 117, ptr @.str.14, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Init Exch Ver Req failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@snic_queue_exch_ver_req._entry_ptr.15 = internal global ptr @snic_queue_exch_ver_req._entry.12, section ".printk_index", align 4
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"0.0.1.18\00", [23 x i8] zeroinitializer }, align 32
@snic_queue_exch_ver_req._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.11, ptr @.str.2, i32 138, ptr @.str.14, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Queuing Exch Ver Req failed, err = %d\0A\00", [57 x i8] zeroinitializer }, align 32
@snic_queue_exch_ver_req._entry_ptr.19 = internal global ptr @snic_queue_exch_ver_req._entry.17, section ".printk_index", align 4
@snic_queue_exch_ver_req._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.11, ptr @.str.2, i32 142, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Exch Ver Req is issued. ret = %d\0A\00", [62 x i8] zeroinitializer }, align 32
@snic_queue_exch_ver_req._entry_ptr.22 = internal global ptr @snic_queue_exch_ver_req._entry.20, section ".printk_index", align 4
@snic_io_exch_ver_cmpl_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 161, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Exch Ver Compl Received.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"snic_io_exch_ver_cmpl_handler\00", [34 x i8] zeroinitializer }, align 32
@snic_io_exch_ver_cmpl_handler._entry_ptr = internal global ptr @snic_io_exch_ver_cmpl_handler._entry, section ".printk_index", align 4
@snic_io_exch_ver_cmpl_handler._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.2, i32 163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013snic:SNIC BUG(%s) at %s : %d\0A\00", [32 x i8] zeroinitializer }, align 32
@snic_io_exch_ver_cmpl_handler._entry_ptr.27 = internal global ptr @snic_io_exch_ver_cmpl_handler._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"snic->config.hid != hid\00", [40 x i8] zeroinitializer }, align 32
@snic_io_exch_ver_cmpl_handler.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@snic_io_exch_ver_cmpl_handler._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.24, ptr @.str.2, i32 169, ptr @.str.14, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Exch Ver Completed w/ err status %d\0A\00", [59 x i8] zeroinitializer }, align 32
@snic_io_exch_ver_cmpl_handler._entry_ptr.31 = internal global ptr @snic_io_exch_ver_cmpl_handler._entry.29, section ".printk_index", align 4
@snic_io_exch_ver_cmpl_handler._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.24, ptr @.str.2, i32 191, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"vers %u hid %u max_concur_ios %u max_sgs_per_cmd %u max_io_sz %u max_tgts %u fw tmo %u\0A\00", [40 x i8] zeroinitializer }, align 32
@snic_io_exch_ver_cmpl_handler._entry_ptr.34 = internal global ptr @snic_io_exch_ver_cmpl_handler._entry.32, section ".printk_index", align 4
@snic_io_exch_ver_cmpl_handler._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.24, ptr @.str.2, i32 195, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"HBA Capabilities = 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@snic_io_exch_ver_cmpl_handler._entry_ptr.37 = internal global ptr @snic_io_exch_ver_cmpl_handler._entry.35, section ".printk_index", align 4
@snic_io_exch_ver_cmpl_handler._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.24, ptr @.str.2, i32 202, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Max SGs set to %d\0A\00", [45 x i8] zeroinitializer }, align 32
@snic_io_exch_ver_cmpl_handler._entry_ptr.40 = internal global ptr @snic_io_exch_ver_cmpl_handler._entry.38, section ".printk_index", align 4
@snic_io_exch_ver_cmpl_handler._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.24, ptr @.str.2, i32 207, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"Target type %d Supports Larger Max SGList %d than driver's Max SG List %d.\0A\00", [52 x i8] zeroinitializer }, align 32
@snic_io_exch_ver_cmpl_handler._entry_ptr.43 = internal global ptr @snic_io_exch_ver_cmpl_handler._entry.41, section ".printk_index", align 4
@snic_io_exch_ver_cmpl_handler._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.24, ptr @.str.2, i32 222, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Exch_cmpl Done, hdr_stat %d.\0A\00", [34 x i8] zeroinitializer }, align 32
@snic_io_exch_ver_cmpl_handler._entry_ptr.46 = internal global ptr @snic_io_exch_ver_cmpl_handler._entry.44, section ".printk_index", align 4
@snic_get_conf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 238, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Retrieving snic params.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snic_get_conf\00", [18 x i8] zeroinitializer }, align 32
@snic_get_conf._entry_ptr = internal global ptr @snic_get_conf._entry, section ".printk_index", align 4
@snic_get_conf._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.2, i32 261, ptr @.str.14, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to retrieve snic params,\0A\00", [63 x i8] zeroinitializer }, align 32
@snic_get_conf._entry_ptr.51 = internal global ptr @snic_get_conf._entry.49, section ".printk_index", align 4
@snic_ver_enc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 91, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013snic:Invalid version string [%s].\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"snic_ver_enc\00", [19 x i8] zeroinitializer }, align 32
@snic_ver_enc._entry_ptr = internal global ptr @snic_ver_enc._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 47, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 50, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 113, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 117, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 127, i32 21 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 136, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 142, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 161, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 163, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 167, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 183, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 193, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 201, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 204, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 222, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 238, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 260, i32 4 }
@___asan_gen_.187 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.194 = private constant [32 x i8] c"../drivers/scsi/snic/snic_ctl.c\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 91, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.199 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.200 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 87, i32 2 }
@llvm.compiler.used = appending global [66 x ptr] [ptr @snic_get_conf._entry, ptr @snic_get_conf._entry.49, ptr @snic_get_conf._entry_ptr, ptr @snic_get_conf._entry_ptr.51, ptr @snic_handle_link._entry, ptr @snic_handle_link._entry.7, ptr @snic_handle_link._entry_ptr, ptr @snic_handle_link._entry_ptr.9, ptr @snic_io_exch_ver_cmpl_handler._entry, ptr @snic_io_exch_ver_cmpl_handler._entry.25, ptr @snic_io_exch_ver_cmpl_handler._entry.29, ptr @snic_io_exch_ver_cmpl_handler._entry.32, ptr @snic_io_exch_ver_cmpl_handler._entry.35, ptr @snic_io_exch_ver_cmpl_handler._entry.38, ptr @snic_io_exch_ver_cmpl_handler._entry.41, ptr @snic_io_exch_ver_cmpl_handler._entry.44, ptr @snic_io_exch_ver_cmpl_handler._entry_ptr, ptr @snic_io_exch_ver_cmpl_handler._entry_ptr.27, ptr @snic_io_exch_ver_cmpl_handler._entry_ptr.31, ptr @snic_io_exch_ver_cmpl_handler._entry_ptr.34, ptr @snic_io_exch_ver_cmpl_handler._entry_ptr.37, ptr @snic_io_exch_ver_cmpl_handler._entry_ptr.40, ptr @snic_io_exch_ver_cmpl_handler._entry_ptr.43, ptr @snic_io_exch_ver_cmpl_handler._entry_ptr.46, ptr @snic_queue_exch_ver_req._entry, ptr @snic_queue_exch_ver_req._entry.12, ptr @snic_queue_exch_ver_req._entry.17, ptr @snic_queue_exch_ver_req._entry.20, ptr @snic_queue_exch_ver_req._entry_ptr, ptr @snic_queue_exch_ver_req._entry_ptr.15, ptr @snic_queue_exch_ver_req._entry_ptr.19, ptr @snic_queue_exch_ver_req._entry_ptr.22, ptr @snic_ver_enc._entry, ptr @snic_ver_enc._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @init_completion.__key, ptr @.str.54], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_handle_link._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_handle_link._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_queue_exch_ver_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_queue_exch_ver_req._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_queue_exch_ver_req._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_queue_exch_ver_req._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_io_exch_ver_cmpl_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_io_exch_ver_cmpl_handler._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_io_exch_ver_cmpl_handler._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_io_exch_ver_cmpl_handler._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_io_exch_ver_cmpl_handler._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_io_exch_ver_cmpl_handler._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_io_exch_ver_cmpl_handler._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_io_exch_ver_cmpl_handler._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_get_conf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_get_conf._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_ver_enc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snic_handle_link(ptr nocapture noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %xpt_type = getelementptr i8, ptr %work, i32 -2
  %0 = ptrtoint ptr %xpt_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %xpt_type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %vdev = getelementptr i8, ptr %work, i32 -3088
  %2 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdev, align 4
  %call = tail call i32 @svnic_dev_link_status(ptr noundef %3) #5
  %link_status = getelementptr i8, ptr %work, i32 -3068
  %4 = ptrtoint ptr %link_status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call, ptr %link_status, align 32
  %5 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vdev, align 4
  %call3 = tail call i32 @svnic_dev_link_down_cnt(ptr noundef %6) #5
  %link_down_cnt = getelementptr i8, ptr %work, i32 -3064
  %7 = ptrtoint ptr %link_down_cnt to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call3, ptr %link_down_cnt, align 4
  %shost = getelementptr i8, ptr %work, i32 -3116
  %8 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %shost, align 16
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %9, i32 0, i32 49
  %10 = ptrtoint ptr %link_status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %link_status, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  %cond = select i1 %tobool.not, ptr @.str.6, ptr @.str.5
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev, ptr noundef nonnull @.str, ptr noundef nonnull %cond) #8
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 50) #8
  %.b58 = load i1, ptr @snic_handle_link.__already_done, align 1
  br i1 %.b58, label %if.end.cleanup_crit_edge, label %if.then16, !prof !96

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @snic_handle_link.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 50, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svnic_dev_link_status(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svnic_dev_link_down_cnt(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snic_queue_exch_ver_req(ptr noundef %snic) local_unnamed_addr #0 align 64 {
entry:
  %v.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %shost = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 8
  %0 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %shost, align 16
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev, ptr noundef nonnull @.str.10) #8
  %call = tail call ptr @snic_req_init(ptr noundef %snic, i32 noundef 0) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end3, label %if.end

do.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shost, align 16
  %shost_gendev5 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.14, ptr noundef %shost_gendev5, ptr noundef nonnull @.str.13) #8
  br label %error

if.end:                                           ; preds = %entry
  %req6 = getelementptr inbounds %struct.snic_req_info, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %req6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %req6, align 8
  %hdr = getelementptr inbounds %struct.snic_host_req, ptr %5, i32 0, i32 1
  %hid = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 29, i32 11
  %6 = ptrtoint ptr %hid to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %hid, align 1
  %conv = zext i8 %7 to i32
  %8 = ptrtoint ptr %call to i32
  %type.i = getelementptr inbounds %struct.snic_host_req, ptr %5, i32 0, i32 1, i32 3
  %9 = ptrtoint ptr %type.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 6, ptr %type.i, align 4
  %status1.i = getelementptr inbounds %struct.snic_host_req, ptr %5, i32 0, i32 1, i32 4
  %10 = ptrtoint ptr %status1.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %status1.i, align 1
  %protocol.i = getelementptr inbounds %struct.snic_host_req, ptr %5, i32 0, i32 1, i32 5
  %11 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %protocol.i, align 2
  %12 = shl nuw i32 %conv, 24
  %13 = ptrtoint ptr %hdr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %hdr, align 4
  %cmnd_id.i = getelementptr inbounds %struct.snic_host_req, ptr %5, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %cmnd_id.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %cmnd_id.i, align 4
  %sg_cnt3.i = getelementptr inbounds %struct.snic_host_req, ptr %5, i32 0, i32 1, i32 7
  %15 = ptrtoint ptr %sg_cnt3.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %sg_cnt3.i, align 4
  %init_ctx.i = getelementptr inbounds %struct.snic_host_req, ptr %5, i32 0, i32 1, i32 2
  %16 = ptrtoint ptr %init_ctx.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %8, ptr %init_ctx.i, align 4
  %flags.i = getelementptr inbounds %struct.snic_host_req, ptr %5, i32 0, i32 1, i32 6
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %flags.i, align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %v.i) #5
  %18 = call ptr @memset(ptr %v.i, i32 0, i32 16)
  br label %while.body.lr.ph.i

while.body.lr.ph.i:                               ; preds = %if.then5.i.while.body.lr.ph.i_crit_edge, %if.end
  %19 = phi i8 [ 48, %if.end ], [ %24, %if.then5.i.while.body.lr.ph.i_crit_edge ]
  %incdec.ptr610.i = phi ptr [ getelementptr inbounds ([9 x i8], ptr @.str.16, i32 0, i32 1), %if.end ], [ %incdec.ptr6.i, %if.then5.i.while.body.lr.ph.i_crit_edge ]
  %i.0.ph9.i = phi i32 [ 0, %if.end ], [ %inc.i, %if.then5.i.while.body.lr.ph.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.0.ph9.i)
  %cmp7.i = icmp sgt i32 %i.0.ph9.i, 3
  %arrayidx.i = getelementptr [4 x i32], ptr %v.i, i32 0, i32 %i.0.ph9.i
  br label %while.body.i

for.cond.preheader.i:                             ; preds = %if.end14.i.for.cond.preheader.i_crit_edge, %if.then5.i.for.cond.preheader.i_crit_edge
  %arrayidx19.i = getelementptr inbounds [4 x i32], ptr %v.i, i32 0, i32 3
  %20 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %21)
  %cmp20.i = icmp sgt i32 %21, 255
  br i1 %cmp20.i, label %for.cond.preheader.i.do.end.i_crit_edge, label %for.cond.i

for.cond.preheader.i.do.end.i_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

while.body.i:                                     ; preds = %if.end14.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %22 = phi i8 [ %19, %while.body.lr.ph.i ], [ %30, %if.end14.i.while.body.i_crit_edge ]
  %incdec.ptr8.i = phi ptr [ %incdec.ptr610.i, %while.body.lr.ph.i ], [ %incdec.ptr.i, %if.end14.i.while.body.i_crit_edge ]
  %conv.i = zext i8 %22 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %22)
  %cmp3.i = icmp eq i8 %22, 46
  br i1 %cmp3.i, label %if.then5.i, label %if.end6.i

if.then5.i:                                       ; preds = %while.body.i
  %inc.i = add i32 %i.0.ph9.i, 1
  %incdec.ptr6.i = getelementptr i8, ptr %incdec.ptr8.i, i32 1
  %23 = ptrtoint ptr %incdec.ptr8.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %incdec.ptr8.i, align 1
  %tobool.not7.i = icmp eq i8 %24, 0
  br i1 %tobool.not7.i, label %if.then5.i.for.cond.preheader.i_crit_edge, label %if.then5.i.while.body.lr.ph.i_crit_edge

if.then5.i.while.body.lr.ph.i_crit_edge:          ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.lr.ph.i

if.then5.i.for.cond.preheader.i_crit_edge:        ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.preheader.i

if.end6.i:                                        ; preds = %while.body.i
  br i1 %cmp7.i, label %if.end6.i.do.end.i_crit_edge, label %lor.lhs.false9.i

if.end6.i.do.end.i_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

lor.lhs.false9.i:                                 ; preds = %if.end6.i
  %25 = add nsw i32 %conv.i, -48
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %25)
  %26 = icmp ugt i32 %25, 9
  br i1 %26, label %lor.lhs.false9.i.do.end.i_crit_edge, label %if.end14.i

lor.lhs.false9.i.do.end.i_crit_edge:              ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

if.end14.i:                                       ; preds = %lor.lhs.false9.i
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i, align 4
  %mul.i = mul i32 %28, 10
  %add.i = add i32 %mul.i, %25
  store i32 %add.i, ptr %arrayidx.i, align 4
  %incdec.ptr.i = getelementptr i8, ptr %incdec.ptr8.i, i32 1
  %29 = ptrtoint ptr %incdec.ptr8.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %incdec.ptr8.i, align 1
  %tobool.not.i = icmp eq i8 %30, 0
  br i1 %tobool.not.i, label %if.end14.i.for.cond.preheader.i_crit_edge, label %if.end14.i.while.body.i_crit_edge

if.end14.i.while.body.i_crit_edge:                ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

if.end14.i.for.cond.preheader.i_crit_edge:        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.preheader.i

for.cond.i:                                       ; preds = %for.cond.preheader.i
  %arrayidx19.1.i = getelementptr inbounds [4 x i32], ptr %v.i, i32 0, i32 2
  %31 = ptrtoint ptr %arrayidx19.1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx19.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %32)
  %cmp20.1.i = icmp sgt i32 %32, 255
  br i1 %cmp20.1.i, label %for.cond.i.do.end.i_crit_edge, label %for.cond.1.i

for.cond.i.do.end.i_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

for.cond.1.i:                                     ; preds = %for.cond.i
  %arrayidx19.2.i = getelementptr inbounds [4 x i32], ptr %v.i, i32 0, i32 1
  %33 = ptrtoint ptr %arrayidx19.2.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx19.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %34)
  %cmp20.2.i = icmp sgt i32 %34, 255
  br i1 %cmp20.2.i, label %for.cond.1.i.do.end.i_crit_edge, label %for.cond.2.i

for.cond.1.i.do.end.i_crit_edge:                  ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %35 = ptrtoint ptr %v.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %v.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %36)
  %cmp20.3.i = icmp sgt i32 %36, 255
  br i1 %cmp20.3.i, label %for.cond.2.i.do.end.i_crit_edge, label %for.cond.3.i

for.cond.2.i.do.end.i_crit_edge:                  ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %shl.i = shl i32 %36, 24
  %shl26.i = shl i32 %34, 16
  %shl28.i = shl i32 %32, 8
  %or.i = or i32 %shl28.i, %21
  %or29.i = or i32 %or.i, %shl26.i
  %or31.i = or i32 %or29.i, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or31.i)
  %cmp33.i = icmp eq i32 %or31.i, 0
  br i1 %cmp33.i, label %for.cond.3.i.do.end.i_crit_edge, label %for.cond.3.i.snic_ver_enc.exit_crit_edge

for.cond.3.i.snic_ver_enc.exit_crit_edge:         ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %snic_ver_enc.exit

for.cond.3.i.do.end.i_crit_edge:                  ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

do.end.i:                                         ; preds = %for.cond.3.i.do.end.i_crit_edge, %for.cond.2.i.do.end.i_crit_edge, %for.cond.1.i.do.end.i_crit_edge, %for.cond.i.do.end.i_crit_edge, %lor.lhs.false9.i.do.end.i_crit_edge, %if.end6.i.do.end.i_crit_edge, %for.cond.preheader.i.do.end.i_crit_edge
  %call36.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.16) #8
  br label %snic_ver_enc.exit

snic_ver_enc.exit:                                ; preds = %do.end.i, %for.cond.3.i.snic_ver_enc.exit_crit_edge
  %retval.0.i = phi i32 [ -1, %do.end.i ], [ %or31.i, %for.cond.3.i.snic_ver_enc.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %v.i) #5
  %37 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i)
  %u = getelementptr inbounds %struct.snic_host_req, ptr %5, i32 0, i32 2
  %38 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %u, align 8
  %os_type = getelementptr inbounds %struct.snic_host_req, ptr %5, i32 0, i32 2, i32 0, i32 2
  %39 = ptrtoint ptr %os_type to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 16777216, ptr %os_type, align 4
  tail call void @snic_handle_untagged_req(ptr noundef %snic, ptr noundef nonnull %call) #5
  %call9 = tail call i32 @snic_queue_wq_desc(ptr noundef %snic, ptr noundef %5, i16 noundef zeroext 136) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %do.end20, label %if.then11

if.then11:                                        ; preds = %snic_ver_enc.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @snic_release_untagged_req(ptr noundef %snic, ptr noundef nonnull %call) #5
  %40 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %shost, align 16
  %shost_gendev16 = getelementptr inbounds %struct.Scsi_Host, ptr %41, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.14, ptr noundef %shost_gendev16, ptr noundef nonnull @.str.18, i32 noundef %call9) #8
  br label %error

do.end20:                                         ; preds = %snic_ver_enc.exit
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %shost, align 16
  %shost_gendev22 = getelementptr inbounds %struct.Scsi_Host, ptr %43, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev22, ptr noundef nonnull @.str.21, i32 noundef 0) #8
  br label %error

error:                                            ; preds = %do.end20, %if.then11, %do.end3
  %ret.0 = phi i32 [ %call9, %if.then11 ], [ 0, %do.end20 ], [ -12, %do.end3 ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snic_req_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @snic_handle_untagged_req(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snic_queue_wq_desc(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snic_release_untagged_req(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snic_io_exch_ver_cmpl_handler(ptr noundef %snic, ptr nocapture noundef readonly %fwreq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.snic_fw_req, ptr %fwreq, i32 0, i32 1
  %shost = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 8
  %0 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %shost, align 16
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev, ptr noundef nonnull @.str.23) #8
  %status.i = getelementptr inbounds %struct.snic_io_hdr, ptr %fwreq, i32 0, i32 4
  %2 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %status.i, align 1
  %4 = ptrtoint ptr %fwreq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fwreq, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #5
  %init_ctx.i = getelementptr inbounds %struct.snic_io_hdr, ptr %fwreq, i32 0, i32 2
  %7 = ptrtoint ptr %init_ctx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %init_ctx.i, align 4
  %hid1 = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 29, i32 11
  %9 = ptrtoint ptr %hid1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %hid1, align 1
  %conv = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv)
  %cmp.not = icmp eq i32 %6, %conv
  br i1 %cmp.not, label %entry.if.end51_crit_edge, label %do.end5

entry.if.end51_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51

do.end5:                                          ; preds = %entry
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.24, i32 noundef 163) #8
  %11 = ptrtoint ptr %hid1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %hid1, align 1
  %conv8 = zext i8 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv8)
  %cmp9.not = icmp eq i32 %6, %conv8
  br i1 %cmp9.not, label %do.end5.if.end51_crit_edge, label %land.rhs

do.end5.if.end51_crit_edge:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51

land.rhs:                                         ; preds = %do.end5
  %.b226 = load i1, ptr @snic_io_exch_ver_cmpl_handler.__already_done, align 1
  br i1 %.b226, label %land.rhs.if.end51_crit_edge, label %if.then18, !prof !96

land.rhs.if.end51_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51

if.then18:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @snic_io_exch_ver_cmpl_handler.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 163, i32 noundef 9, ptr noundef null) #5
  br label %if.end51

if.end51:                                         ; preds = %if.then18, %land.rhs.if.end51_crit_edge, %do.end5.if.end51_crit_edge, %entry.if.end51_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool52.not = icmp eq i8 %3, 0
  br i1 %tobool52.not, label %do.body62, label %do.end56

do.end56:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %shost, align 16
  %shost_gendev58 = getelementptr inbounds %struct.Scsi_Host, ptr %14, i32 0, i32 49
  %conv59 = zext i8 %3 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.14, ptr noundef %shost_gendev58, ptr noundef nonnull @.str.30, i32 noundef %conv59) #8
  br label %exch_cmpl_end

do.body62:                                        ; preds = %if.end51
  %snic_lock = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 3
  %call67 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %snic_lock) #5
  %15 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %u, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %fwinfo = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 31
  %18 = ptrtoint ptr %fwinfo to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %fwinfo, align 8
  %hid72 = getelementptr inbounds %struct.snic_fw_req, ptr %fwreq, i32 0, i32 1, i32 0, i32 3
  %19 = ptrtoint ptr %hid72 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %hid72, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %hid74 = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 31, i32 1
  %22 = ptrtoint ptr %hid74 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %hid74, align 4
  %max_concur_ios = getelementptr inbounds %struct.snic_fw_req, ptr %fwreq, i32 0, i32 1, i32 0, i32 4
  %23 = ptrtoint ptr %max_concur_ios to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_concur_ios, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %max_concur_ios76 = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 31, i32 2
  %26 = ptrtoint ptr %max_concur_ios76 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %max_concur_ios76, align 8
  %max_sgs_per_cmd = getelementptr inbounds %struct.snic_fw_req, ptr %fwreq, i32 0, i32 1, i32 0, i32 4, i32 4
  %27 = ptrtoint ptr %max_sgs_per_cmd to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %max_sgs_per_cmd, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %max_sgs_per_cmd78 = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 31, i32 3
  %30 = ptrtoint ptr %max_sgs_per_cmd78 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %max_sgs_per_cmd78, align 4
  %max_io_sz = getelementptr inbounds %struct.snic_fw_req, ptr %fwreq, i32 0, i32 1, i32 0, i32 4, i32 8
  %31 = ptrtoint ptr %max_io_sz to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %max_io_sz, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  %max_io_sz80 = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 31, i32 4
  %34 = ptrtoint ptr %max_io_sz80 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %max_io_sz80, align 8
  %max_tgts = getelementptr inbounds %struct.snic_fw_req, ptr %fwreq, i32 0, i32 1, i32 0, i32 4, i32 16
  %35 = ptrtoint ptr %max_tgts to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %max_tgts, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %max_tgts82 = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 31, i32 6
  %38 = ptrtoint ptr %max_tgts82 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %max_tgts82, align 8
  %io_timeout = getelementptr inbounds %struct.snic_fw_req, ptr %fwreq, i32 0, i32 1, i32 0, i32 4, i32 20
  %39 = ptrtoint ptr %io_timeout to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %io_timeout, align 4
  %41 = tail call i16 @llvm.bswap.i16(i16 %40)
  %io_tmo = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 31, i32 7
  %42 = ptrtoint ptr %io_tmo to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %io_tmo, align 4
  %43 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %shost, align 16
  %shost_gendev88 = getelementptr inbounds %struct.Scsi_Host, ptr %44, i32 0, i32 49
  %conv103 = zext i16 %41 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev88, ptr noundef nonnull @.str.33, i32 noundef %17, i32 noundef %21, i32 noundef %25, i32 noundef %29, i32 noundef %33, i32 noundef %37, i32 noundef %conv103) #8
  %45 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %shost, align 16
  %shost_gendev108 = getelementptr inbounds %struct.Scsi_Host, ptr %46, i32 0, i32 49
  %hba_cap = getelementptr inbounds %struct.snic_fw_req, ptr %fwreq, i32 0, i32 1, i32 0, i32 4, i32 12
  %47 = ptrtoint ptr %hba_cap to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %hba_cap, align 4
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev108, ptr noundef nonnull @.str.36, i32 noundef %49) #8
  %50 = ptrtoint ptr %max_sgs_per_cmd78 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %max_sgs_per_cmd78, align 4
  %52 = add i32 %51, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 59, i32 %52)
  %53 = icmp ult i32 %52, 59
  br i1 %53, label %if.then114, label %if.else

if.then114:                                       ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #7
  %conv115 = trunc i32 %51 to i16
  %54 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %shost, align 16
  %sg_tablesize = getelementptr inbounds %struct.Scsi_Host, ptr %55, i32 0, i32 28
  %56 = ptrtoint ptr %sg_tablesize to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %conv115, ptr %sg_tablesize, align 2
  %57 = load ptr, ptr %shost, align 16
  %shost_gendev121 = getelementptr inbounds %struct.Scsi_Host, ptr %57, i32 0, i32 49
  %sg_tablesize123 = getelementptr inbounds %struct.Scsi_Host, ptr %57, i32 0, i32 28
  %58 = ptrtoint ptr %sg_tablesize123 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %sg_tablesize123, align 2
  %conv124 = zext i16 %59 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev121, ptr noundef nonnull @.str.39, i32 noundef %conv124) #8
  br label %if.end142

if.else:                                          ; preds = %do.body62
  %60 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %shost, align 16
  %sg_tablesize126 = getelementptr inbounds %struct.Scsi_Host, ptr %61, i32 0, i32 28
  %62 = ptrtoint ptr %sg_tablesize126 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %sg_tablesize126, align 2
  %conv127 = zext i16 %63 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %conv127)
  %cmp128 = icmp ugt i32 %51, %conv127
  br i1 %cmp128, label %do.end133, label %if.else.if.end142_crit_edge

if.else.if.end142_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end142

do.end133:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %shost_gendev135 = getelementptr inbounds %struct.Scsi_Host, ptr %61, i32 0, i32 49
  %xpt_type = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 29, i32 10
  %64 = ptrtoint ptr %xpt_type to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %xpt_type, align 2
  %conv137 = zext i8 %65 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev135, ptr noundef nonnull @.str.42, i32 noundef %conv137, i32 noundef %51, i32 noundef %conv127) #8
  br label %if.end142

if.end142:                                        ; preds = %do.end133, %if.else.if.end142_crit_edge, %if.then114
  %66 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %shost, align 16
  %can_queue = getelementptr inbounds %struct.Scsi_Host, ptr %67, i32 0, i32 26
  %68 = ptrtoint ptr %can_queue to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %can_queue, align 4
  %70 = ptrtoint ptr %max_concur_ios76 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %max_concur_ios76, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %71)
  %cmp146 = icmp ugt i32 %69, %71
  br i1 %cmp146, label %if.then148, label %if.end142.if.end153_crit_edge

if.end142.if.end153_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end153

if.then148:                                       ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #7
  %72 = ptrtoint ptr %can_queue to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %can_queue, align 4
  br label %if.end153

if.end153:                                        ; preds = %if.then148, %if.end142.if.end153_crit_edge
  %73 = ptrtoint ptr %max_io_sz80 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %max_io_sz80, align 8
  %shr = lshr i32 %74, 9
  %75 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %shost, align 16
  %max_sectors = getelementptr inbounds %struct.Scsi_Host, ptr %76, i32 0, i32 30
  %77 = ptrtoint ptr %max_sectors to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %shr, ptr %max_sectors, align 8
  %wait = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 31, i32 8
  %78 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %wait, align 8
  %tobool158.not = icmp eq ptr %79, null
  br i1 %tobool158.not, label %if.end153.if.end162_crit_edge, label %if.then159

if.end153.if.end162_crit_edge:                    ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end162

if.then159:                                       ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @complete(ptr noundef nonnull %79) #5
  br label %if.end162

if.end162:                                        ; preds = %if.then159, %if.end153.if.end162_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %snic_lock, i32 noundef %call67) #5
  br label %exch_cmpl_end

exch_cmpl_end:                                    ; preds = %if.end162, %do.end56
  %conv169.pre-phi = phi i32 [ 0, %if.end162 ], [ %conv59, %do.end56 ]
  %80 = inttoptr i32 %8 to ptr
  tail call void @snic_release_untagged_req(ptr noundef %snic, ptr noundef %80) #5
  %81 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %shost, align 16
  %shost_gendev168 = getelementptr inbounds %struct.Scsi_Host, ptr %82, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev168, ptr noundef nonnull @.str.45, i32 noundef %conv169.pre-phi) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snic_get_conf(ptr noundef %snic) local_unnamed_addr #0 align 64 {
entry:
  %wait = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %wait) #5
  %0 = getelementptr inbounds i8, ptr %wait, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 52)
  %2 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %wait, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %wait, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.54, ptr noundef nonnull @init_completion.__key) #5
  %shost = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 8
  %3 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %shost, align 16
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev, ptr noundef nonnull @.str.47) #8
  %snic_lock = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 3
  %call4 = call i32 @_raw_spin_lock_irqsave(ptr noundef %snic_lock) #5
  %fwinfo = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 31
  %5 = call ptr @memset(ptr %fwinfo, i32 0, i32 32)
  %wait10 = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 31, i32 8
  %6 = ptrtoint ptr %wait10 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %wait, ptr %wait10, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %snic_lock, i32 noundef %call4) #5
  call void @msleep(i32 noundef 50) #5
  %call1375 = call i32 @snic_queue_exch_ver_req(ptr noundef %snic)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1375)
  %tobool.not76 = icmp eq i32 %call1375, 0
  br i1 %tobool.not76, label %if.end.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.preheader:                                 ; preds = %entry
  %call15 = call i32 @wait_for_completion_timeout(ptr noundef nonnull %wait, i32 noundef 200) #5
  %call25 = call i32 @_raw_spin_lock_irqsave(ptr noundef %snic_lock) #5
  %7 = ptrtoint ptr %fwinfo to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fwinfo, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp31.not = icmp eq i32 %8, 0
  br i1 %cmp31.not, label %do.end37, label %if.end.preheader.if.then45_crit_edge

if.end.preheader.if.then45_crit_edge:             ; preds = %if.end.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then45

do.end37:                                         ; preds = %if.end.preheader
  %9 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %shost, align 16
  %shost_gendev39 = getelementptr inbounds %struct.Scsi_Host, ptr %10, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.14, ptr noundef %shost_gendev39, ptr noundef nonnull @.str.50) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %snic_lock, i32 noundef %call25) #5
  %call13 = call i32 @snic_queue_exch_ver_req(ptr noundef %snic)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %if.end.1, label %do.end37.cleanup_crit_edge

do.end37.cleanup_crit_edge:                       ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then45:                                        ; preds = %do.end37.2, %if.end.2.if.then45_crit_edge, %if.end.1.if.then45_crit_edge, %if.end.preheader.if.then45_crit_edge
  %call25.lcssa = phi i32 [ %call25, %if.end.preheader.if.then45_crit_edge ], [ %call25.1, %if.end.1.if.then45_crit_edge ], [ %call25.2, %if.end.2.if.then45_crit_edge ], [ %call25.2, %do.end37.2 ]
  %cond.le = phi i32 [ 0, %if.end.preheader.if.then45_crit_edge ], [ 0, %if.end.1.if.then45_crit_edge ], [ 0, %if.end.2.if.then45_crit_edge ], [ -110, %do.end37.2 ]
  %11 = ptrtoint ptr %wait10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %wait10, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %snic_lock, i32 noundef %call25.lcssa) #5
  br label %cleanup

if.end.1:                                         ; preds = %do.end37
  %call15.1 = call i32 @wait_for_completion_timeout(ptr noundef nonnull %wait, i32 noundef 200) #5
  %call25.1 = call i32 @_raw_spin_lock_irqsave(ptr noundef %snic_lock) #5
  %12 = ptrtoint ptr %fwinfo to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fwinfo, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp31.not.1 = icmp eq i32 %13, 0
  br i1 %cmp31.not.1, label %do.end37.1, label %if.end.1.if.then45_crit_edge

if.end.1.if.then45_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then45

do.end37.1:                                       ; preds = %if.end.1
  %14 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %shost, align 16
  %shost_gendev39.1 = getelementptr inbounds %struct.Scsi_Host, ptr %15, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.14, ptr noundef %shost_gendev39.1, ptr noundef nonnull @.str.50) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %snic_lock, i32 noundef %call25.1) #5
  %call13.1 = call i32 @snic_queue_exch_ver_req(ptr noundef %snic)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.1)
  %tobool.not.1 = icmp eq i32 %call13.1, 0
  br i1 %tobool.not.1, label %if.end.2, label %do.end37.1.cleanup_crit_edge

do.end37.1.cleanup_crit_edge:                     ; preds = %do.end37.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.2:                                         ; preds = %do.end37.1
  %call15.2 = call i32 @wait_for_completion_timeout(ptr noundef nonnull %wait, i32 noundef 200) #5
  %call25.2 = call i32 @_raw_spin_lock_irqsave(ptr noundef %snic_lock) #5
  %16 = ptrtoint ptr %fwinfo to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fwinfo, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp31.not.2 = icmp eq i32 %17, 0
  br i1 %cmp31.not.2, label %do.end37.2, label %if.end.2.if.then45_crit_edge

if.end.2.if.then45_crit_edge:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then45

do.end37.2:                                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %shost, align 16
  %shost_gendev39.2 = getelementptr inbounds %struct.Scsi_Host, ptr %19, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.14, ptr noundef %shost_gendev39.2, ptr noundef nonnull @.str.50) #8
  br label %if.then45

cleanup:                                          ; preds = %do.end37.1.cleanup_crit_edge, %if.then45, %do.end37.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond.le, %if.then45 ], [ %call1375, %entry.cleanup_crit_edge ], [ %call13, %do.end37.cleanup_crit_edge ], [ %call13.1, %do.end37.1.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %wait) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !20, !22, !23, !24, !25, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !81, !82, !83, !84, !86}
!llvm.module.flags = !{!87, !88, !89, !90, !91, !92, !93, !94}
!llvm.ident = !{!95}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/snic/snic_ctl.c", i32 47, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @snic_handle_link._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @snic_handle_link._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/scsi/snic/snic_ctl.c", i32 50, i32 2}
!12 = !{ptr @snic_handle_link._entry.7, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @snic_handle_link._entry_ptr.9, !11, !"_entry_ptr", i1 false, i1 false}
!14 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!15 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/scsi/snic/snic_ctl.c", i32 113, i32 2}
!17 = !{ptr @.str.11, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @snic_queue_exch_ver_req._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @snic_queue_exch_ver_req._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/scsi/snic/snic_ctl.c", i32 117, i32 3}
!22 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @snic_queue_exch_ver_req._entry.12, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @snic_queue_exch_ver_req._entry_ptr.15, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/scsi/snic/snic_ctl.c", i32 127, i32 21}
!27 = !{ptr @.str.18, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/scsi/snic/snic_ctl.c", i32 136, i32 3}
!29 = !{ptr @snic_queue_exch_ver_req._entry.17, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @snic_queue_exch_ver_req._entry_ptr.19, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.21, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/scsi/snic/snic_ctl.c", i32 142, i32 2}
!33 = !{ptr @snic_queue_exch_ver_req._entry.20, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @snic_queue_exch_ver_req._entry_ptr.22, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.23, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/scsi/snic/snic_ctl.c", i32 161, i32 2}
!37 = !{ptr @.str.24, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @snic_io_exch_ver_cmpl_handler._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @snic_io_exch_ver_cmpl_handler._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.26, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/scsi/snic/snic_ctl.c", i32 163, i32 2}
!42 = !{ptr @snic_io_exch_ver_cmpl_handler._entry.25, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @snic_io_exch_ver_cmpl_handler._entry_ptr.27, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.28, !41, !"<string literal>", i1 false, i1 false}
!45 = distinct !{null, !41, !"__already_done", i1 false, i1 false}
!46 = !{ptr @.str.30, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/scsi/snic/snic_ctl.c", i32 167, i32 3}
!48 = !{ptr @snic_io_exch_ver_cmpl_handler._entry.29, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @snic_io_exch_ver_cmpl_handler._entry_ptr.31, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.33, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/scsi/snic/snic_ctl.c", i32 183, i32 2}
!52 = !{ptr @snic_io_exch_ver_cmpl_handler._entry.32, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @snic_io_exch_ver_cmpl_handler._entry_ptr.34, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.36, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/scsi/snic/snic_ctl.c", i32 193, i32 2}
!56 = !{ptr @snic_io_exch_ver_cmpl_handler._entry.35, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @snic_io_exch_ver_cmpl_handler._entry_ptr.37, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.39, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/scsi/snic/snic_ctl.c", i32 201, i32 3}
!60 = !{ptr @snic_io_exch_ver_cmpl_handler._entry.38, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @snic_io_exch_ver_cmpl_handler._entry_ptr.40, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.42, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/scsi/snic/snic_ctl.c", i32 204, i32 3}
!64 = !{ptr @snic_io_exch_ver_cmpl_handler._entry.41, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @snic_io_exch_ver_cmpl_handler._entry_ptr.43, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.45, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/scsi/snic/snic_ctl.c", i32 222, i32 2}
!68 = !{ptr @snic_io_exch_ver_cmpl_handler._entry.44, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @snic_io_exch_ver_cmpl_handler._entry_ptr.46, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.47, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/scsi/snic/snic_ctl.c", i32 238, i32 2}
!72 = !{ptr @.str.48, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @snic_get_conf._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @snic_get_conf._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.50, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/scsi/snic/snic_ctl.c", i32 260, i32 4}
!77 = !{ptr @snic_get_conf._entry.49, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @snic_get_conf._entry_ptr.51, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.52, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/scsi/snic/snic_ctl.c", i32 91, i32 3}
!81 = !{ptr @.str.53, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @snic_ver_enc._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @snic_ver_enc._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @init_completion.__key, !85, !"__key", i1 false, i1 false}
!85 = !{!"../include/linux/completion.h", i32 87, i32 2}
!86 = !{ptr @.str.54, !85, !"<string literal>", i1 false, i1 false}
!87 = !{i32 1, !"wchar_size", i32 2}
!88 = !{i32 1, !"min_enum_size", i32 4}
!89 = !{i32 8, !"branch-target-enforcement", i32 0}
!90 = !{i32 8, !"sign-return-address", i32 0}
!91 = !{i32 8, !"sign-return-address-all", i32 0}
!92 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!93 = !{i32 7, !"uwtable", i32 1}
!94 = !{i32 7, !"frame-pointer", i32 2}
!95 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!96 = !{!"branch_weights", i32 2000, i32 1}
