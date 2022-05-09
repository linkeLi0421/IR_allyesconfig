; ModuleID = '/llk/IR_all_yes/drivers/scsi/elx/libefc/efc_els.c_pt.bc'
source_filename = "../drivers/scsi/elx/libefc/efc_els.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.efc_node = type { ptr, [32 x i8], ptr, %struct.kref, ptr, i8, i8, i8, i8, i8, i8, i8, i8, %struct.spinlock, %struct.list_head, ptr, ptr, %struct.efc_remote_node, %struct.efc_sm_ctx, i32, i32, ptr, i32, i32, i32, i8, i8, i8, %struct.efc_dma, [120 x i8], %struct.spinlock, %struct.list_head, i32, i32, i32, i32, i32, i32, [64 x i8], [64 x i8], i32, i32, ptr, %struct.timer_list, i64, [32 x i8], [32 x i8] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.efc_remote_node = type { i32, i32, i32, i8, ptr, ptr }
%struct.efc_sm_ctx = type { ptr, ptr, ptr }
%struct.efc_dma = type { ptr, ptr, i32, i32, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.efc = type { ptr, ptr, ptr, i32, i64, i64, i64, i64, i64, ptr, ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.libefc_function_template, %struct.spinlock, i8, i8, i32, ptr, ptr, ptr, i64, i64, i8, i32, i32, ptr, %struct.atomic_t, i8, %struct.spinlock, %struct.list_head, i32 }
%struct.libefc_function_template = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }
%struct.efc_els_io_req = type { %struct.list_head, %struct.kref, ptr, ptr, ptr, i32, i8, %struct.timer_list, ptr, %struct.efc_disc_io }
%struct.efc_disc_io = type { %struct.efc_dma, %struct.efc_dma, i32, i16, i16, i32, i32, i32, i32, i8, %union.efc_disc_io_param }
%union.efc_disc_io_param = type { %struct.efc_io_els_params }
%struct.efc_io_els_params = type { i32, i16, i8 }
%struct.efc_nport = type { %struct.list_head, %struct.kref, ptr, ptr, i32, [32 x i8], i8, i8, i8, i8, i8, ptr, i64, i64, ptr, ptr, i32, i32, %struct.efc_dma, [32 x i8], i64, i64, %struct.efc_sm_ctx, %struct.xarray, i8, i8, i8, i8, i32, i32, [120 x i8], i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.fc_els_flogi = type <{ i8, [3 x i8], %struct.fc_els_csp, i64, i64, [4 x %struct.fc_els_cssp], [16 x i8] }>
%struct.fc_els_csp = type { i8, i8, i16, i16, i16, %union.anon.85, i32 }
%union.anon.85 = type { %struct.anon.87 }
%struct.anon.87 = type { i32 }
%struct.fc_els_cssp = type { i16, i16, i16, i16, i16, i16, i8, i8, [2 x i8] }
%struct.efc_node_cb = type { i32, i32, ptr, ptr, %struct.efc_dma, i32 }
%struct.fc_els_prli = type { i8, i8, i16 }
%struct.anon.88 = type { %struct.fc_els_prli, %struct.fc_els_spp }
%struct.fc_els_spp = type { i8, i8, i8, i8, i32, i32, i32 }
%struct.fc_els_logo = type { i8, [3 x i8], i8, [3 x i8], i64 }
%struct.fc_els_adisc = type <{ i8, [3 x i8], i8, [3 x i8], i64, i64, i8, [3 x i8] }>
%struct.fc_els_ls_rjt = type { i8, [4 x i8], i8, i8, i8 }
%struct.anon.89 = type { %struct.fc_els_prli, %struct.fc_els_spp }
%struct.fc_els_prlo = type { i8, i8, i16 }
%struct.anon.90 = type { %struct.fc_els_prlo, %struct.fc_els_spp }
%struct.efc_io_ct_params = type { i8, i8, i8, i8, i16 }
%struct.fc_ct_hdr = type { i8, [3 x i8], i8, i8, i8, i8, i16, i16, i8, i8, i8, i8 }
%struct.anon.91 = type { %struct.fc_ct_hdr, %struct.fc_ns_rft_id }
%struct.fc_ns_rft_id = type { %struct.fc_ns_fid, %struct.fc_ns_fts }
%struct.fc_ns_fid = type { i8, [3 x i8] }
%struct.fc_ns_fts = type { [8 x i32] }
%struct.anon.92 = type { %struct.fc_ct_hdr, %struct.fc_ns_rff_id }
%struct.fc_ns_rff_id = type { %struct.fc_ns_fid, [2 x i8], i8, i8 }
%struct.anon.93 = type { %struct.fc_ct_hdr, %struct.fc_ns_gid_pt }
%struct.fc_ns_gid_pt = type { i8, i8, i8, i8 }
%struct.sli_bls_params = type { i32, i32, i16, i16, i32, i32, i8, [12 x i8], i16, i16 }
%struct.fc_frame_header = type { i8, [3 x i8], i8, [3 x i8], i8, [3 x i8], i8, i8, i16, i16, i16, i32 }

@efc_els_io_alloc_size._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 50, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"els io alloc disabled\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"efc_els_io_alloc_size\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/scsi/elx/libefc/efc_els.c\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@efc_els_io_alloc_size._entry_ptr = internal global ptr @efc_els_io_alloc_size._entry, section ".printk_index", align 4
@efc_disc_io_complete.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@efc_send_plogi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 399, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"[%s] %-20s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"efc_send_plogi\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@efc_send_plogi._entry_ptr = internal global ptr @efc_send_plogi._entry, section ".printk_index", align 4
@efc_send_plogi._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.6, ptr @.str.2, i32 403, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IO alloc failed\0A\00", [47 x i8] zeroinitializer }, align 32
@efc_send_plogi._entry_ptr.10 = internal global ptr @efc_send_plogi._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"plogi\00", [26 x i8] zeroinitializer }, align 32
@efc_send_flogi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.12, ptr @.str.2, i32 428, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"efc_send_flogi\00", [17 x i8] zeroinitializer }, align 32
@efc_send_flogi._entry_ptr = internal global ptr @efc_send_flogi._entry, section ".printk_index", align 4
@efc_send_flogi._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.12, ptr @.str.2, i32 432, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@efc_send_flogi._entry_ptr.14 = internal global ptr @efc_send_flogi._entry.13, section ".printk_index", align 4
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flogi\00", [26 x i8] zeroinitializer }, align 32
@efc_send_fdisc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.16, ptr @.str.2, i32 457, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"efc_send_fdisc\00", [17 x i8] zeroinitializer }, align 32
@efc_send_fdisc._entry_ptr = internal global ptr @efc_send_fdisc._entry, section ".printk_index", align 4
@efc_send_fdisc._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.16, ptr @.str.2, i32 461, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@efc_send_fdisc._entry_ptr.18 = internal global ptr @efc_send_fdisc._entry.17, section ".printk_index", align 4
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fdisc\00", [26 x i8] zeroinitializer }, align 32
@efc_send_prli._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.20, ptr @.str.2, i32 487, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"efc_send_prli\00", [18 x i8] zeroinitializer }, align 32
@efc_send_prli._entry_ptr = internal global ptr @efc_send_prli._entry, section ".printk_index", align 4
@efc_send_prli._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.20, ptr @.str.2, i32 491, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@efc_send_prli._entry_ptr.22 = internal global ptr @efc_send_prli._entry.21, section ".printk_index", align 4
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"prli\00", [27 x i8] zeroinitializer }, align 32
@efc_send_logo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.24, ptr @.str.2, i32 525, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"efc_send_logo\00", [18 x i8] zeroinitializer }, align 32
@efc_send_logo._entry_ptr = internal global ptr @efc_send_logo._entry, section ".printk_index", align 4
@efc_send_logo._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.24, ptr @.str.2, i32 531, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@efc_send_logo._entry_ptr.26 = internal global ptr @efc_send_logo._entry.25, section ".printk_index", align 4
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"logo\00", [27 x i8] zeroinitializer }, align 32
@efc_send_adisc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.28, ptr @.str.2, i32 558, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"efc_send_adisc\00", [17 x i8] zeroinitializer }, align 32
@efc_send_adisc._entry_ptr = internal global ptr @efc_send_adisc._entry, section ".printk_index", align 4
@efc_send_adisc._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.28, ptr @.str.2, i32 564, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@efc_send_adisc._entry_ptr.30 = internal global ptr @efc_send_adisc._entry.29, section ".printk_index", align 4
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"adisc\00", [26 x i8] zeroinitializer }, align 32
@efc_send_scr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.32, ptr @.str.2, i32 591, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"efc_send_scr\00", [19 x i8] zeroinitializer }, align 32
@efc_send_scr._entry_ptr = internal global ptr @efc_send_scr._entry, section ".printk_index", align 4
@efc_send_scr._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.32, ptr @.str.2, i32 595, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@efc_send_scr._entry_ptr.34 = internal global ptr @efc_send_scr._entry.33, section ".printk_index", align 4
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"scr\00", [28 x i8] zeroinitializer }, align 32
@efc_send_ls_rjt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 620, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"els IO alloc failed\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"efc_send_ls_rjt\00", [16 x i8] zeroinitializer }, align 32
@efc_send_ls_rjt._entry_ptr = internal global ptr @efc_send_ls_rjt._entry, section ".printk_index", align 4
@efc_send_ls_rjt._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.37, ptr @.str.2, i32 624, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@efc_send_ls_rjt._entry_ptr.39 = internal global ptr @efc_send_ls_rjt._entry.38, section ".printk_index", align 4
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ls_rjt\00", [25 x i8] zeroinitializer }, align 32
@efc_send_plogi_acc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.41, ptr @.str.2, i32 649, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"efc_send_plogi_acc\00", [45 x i8] zeroinitializer }, align 32
@efc_send_plogi_acc._entry_ptr = internal global ptr @efc_send_plogi_acc._entry, section ".printk_index", align 4
@efc_send_plogi_acc._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.41, ptr @.str.2, i32 653, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@efc_send_plogi_acc._entry_ptr.43 = internal global ptr @efc_send_plogi_acc._entry.42, section ".printk_index", align 4
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"plogi_acc\00", [22 x i8] zeroinitializer }, align 32
@efc_send_flogi_p2p_acc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.45, ptr @.str.2, i32 683, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"efc_send_flogi_p2p_acc\00", [41 x i8] zeroinitializer }, align 32
@efc_send_flogi_p2p_acc._entry_ptr = internal global ptr @efc_send_flogi_p2p_acc._entry, section ".printk_index", align 4
@efc_send_flogi_p2p_acc._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.45, ptr @.str.2, i32 687, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@efc_send_flogi_p2p_acc._entry_ptr.47 = internal global ptr @efc_send_flogi_p2p_acc._entry.46, section ".printk_index", align 4
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"flogi_p2p_acc\00", [18 x i8] zeroinitializer }, align 32
@efc_send_prli_acc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.49, ptr @.str.2, i32 719, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"efc_send_prli_acc\00", [46 x i8] zeroinitializer }, align 32
@efc_send_prli_acc._entry_ptr = internal global ptr @efc_send_prli_acc._entry, section ".printk_index", align 4
@efc_send_prli_acc._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.49, ptr @.str.2, i32 723, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@efc_send_prli_acc._entry_ptr.51 = internal global ptr @efc_send_prli_acc._entry.50, section ".printk_index", align 4
@.str.52 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"prli_acc\00", [23 x i8] zeroinitializer }, align 32
@efc_send_prlo_acc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.53, ptr @.str.2, i32 761, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"efc_send_prlo_acc\00", [46 x i8] zeroinitializer }, align 32
@efc_send_prlo_acc._entry_ptr = internal global ptr @efc_send_prlo_acc._entry, section ".printk_index", align 4
@efc_send_prlo_acc._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.53, ptr @.str.2, i32 765, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@efc_send_prlo_acc._entry_ptr.55 = internal global ptr @efc_send_prlo_acc._entry.54, section ".printk_index", align 4
@.str.56 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"prlo_acc\00", [23 x i8] zeroinitializer }, align 32
@efc_send_ls_acc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.57, ptr @.str.2, i32 794, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"efc_send_ls_acc\00", [16 x i8] zeroinitializer }, align 32
@efc_send_ls_acc._entry_ptr = internal global ptr @efc_send_ls_acc._entry, section ".printk_index", align 4
@efc_send_ls_acc._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.57, ptr @.str.2, i32 798, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@efc_send_ls_acc._entry_ptr.59 = internal global ptr @efc_send_ls_acc._entry.58, section ".printk_index", align 4
@.str.60 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ls_acc\00", [25 x i8] zeroinitializer }, align 32
@efc_send_logo_acc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.61, ptr @.str.2, i32 822, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"efc_send_logo_acc\00", [46 x i8] zeroinitializer }, align 32
@efc_send_logo_acc._entry_ptr = internal global ptr @efc_send_logo_acc._entry, section ".printk_index", align 4
@efc_send_logo_acc._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.61, ptr @.str.2, i32 826, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@efc_send_logo_acc._entry_ptr.63 = internal global ptr @efc_send_logo_acc._entry.62, section ".printk_index", align 4
@.str.64 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"logo_acc\00", [23 x i8] zeroinitializer }, align 32
@efc_send_adisc_acc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.65, ptr @.str.2, i32 851, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"efc_send_adisc_acc\00", [45 x i8] zeroinitializer }, align 32
@efc_send_adisc_acc._entry_ptr = internal global ptr @efc_send_adisc_acc._entry, section ".printk_index", align 4
@efc_send_adisc_acc._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.65, ptr @.str.2, i32 855, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@efc_send_adisc_acc._entry_ptr.67 = internal global ptr @efc_send_adisc_acc._entry.66, section ".printk_index", align 4
@.str.68 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"adisc_acc\00", [22 x i8] zeroinitializer }, align 32
@efc_ns_send_rftid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.69, ptr @.str.2, i32 901, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"efc_ns_send_rftid\00", [46 x i8] zeroinitializer }, align 32
@efc_ns_send_rftid._entry_ptr = internal global ptr @efc_ns_send_rftid._entry, section ".printk_index", align 4
@efc_ns_send_rftid._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.69, ptr @.str.2, i32 905, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@efc_ns_send_rftid._entry_ptr.71 = internal global ptr @efc_ns_send_rftid._entry.70, section ".printk_index", align 4
@.str.72 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rftid\00", [26 x i8] zeroinitializer }, align 32
@efc_ns_send_rffid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.73, ptr @.str.2, i32 938, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"efc_ns_send_rffid\00", [46 x i8] zeroinitializer }, align 32
@efc_ns_send_rffid._entry_ptr = internal global ptr @efc_ns_send_rffid._entry, section ".printk_index", align 4
@efc_ns_send_rffid._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.73, ptr @.str.2, i32 942, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@efc_ns_send_rffid._entry_ptr.75 = internal global ptr @efc_ns_send_rffid._entry.74, section ".printk_index", align 4
@.str.76 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rffid\00", [26 x i8] zeroinitializer }, align 32
@efc_ns_send_gidpt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.77, ptr @.str.2, i32 978, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"efc_ns_send_gidpt\00", [46 x i8] zeroinitializer }, align 32
@efc_ns_send_gidpt._entry_ptr = internal global ptr @efc_ns_send_gidpt._entry, section ".printk_index", align 4
@efc_ns_send_gidpt._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.77, ptr @.str.2, i32 982, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@efc_ns_send_gidpt._entry_ptr.79 = internal global ptr @efc_ns_send_gidpt._entry.78, section ".printk_index", align 4
@.str.80 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gidpt\00", [26 x i8] zeroinitializer }, align 32
@efc_send_ct_rsp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.81, ptr @.str.2, i32 1036, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"efc_send_ct_rsp\00", [16 x i8] zeroinitializer }, align 32
@efc_send_ct_rsp._entry_ptr = internal global ptr @efc_send_ct_rsp._entry, section ".printk_index", align 4
@.str.82 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ct_rsp\00", [25 x i8] zeroinitializer }, align 32
@efc_els_send_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.2, i32 287, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"efc_els_send failed: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"efc_els_send_req\00", [47 x i8] zeroinitializer }, align 32
@efc_els_send_req._entry_ptr = internal global ptr @efc_els_send_req._entry, section ".printk_index", align 4
@efc_els_req_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.2, i32 170, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[%s] %-8s status x%x ext x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"efc_els_req_cb\00", [17 x i8] zeroinitializer }, align 32
@efc_els_req_cb._entry_ptr = internal global ptr @efc_els_req_cb._entry, section ".printk_index", align 4
@efc_els_req_cb._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.86, ptr @.str.2, i32 190, ptr @.str.89, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"ELS response returned len=%d > buflen=%zu\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@efc_els_req_cb._entry_ptr.90 = internal global ptr @efc_els_req_cb._entry.87, section ".printk_index", align 4
@efc_els_req_cb._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.86, ptr @.str.2, i32 209, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"[%s] %-8s LS_RJT Logical Busy, delay and retry\0A\00", [48 x i8] zeroinitializer }, align 32
@efc_els_req_cb._entry_ptr.93 = internal global ptr @efc_els_req_cb._entry.91, section ".printk_index", align 4
@efc_els_req_cb.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.94 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"(&els->delay_timer)\00", [44 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@efc_els_req_cb._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.86, ptr @.str.2, i32 229, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"LOCAL_REJECT with ext status:%x\0A\00", [63 x i8] zeroinitializer }, align 32
@efc_els_req_cb._entry_ptr.97 = internal global ptr @efc_els_req_cb._entry.95, section ".printk_index", align 4
@efc_els_req_cb._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.86, ptr @.str.2, i32 237, ptr @.str.89, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"els req failed status x%x, ext_status x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@efc_els_req_cb._entry_ptr.100 = internal global ptr @efc_els_req_cb._entry.98, section ".printk_index", align 4
@efc_els_retry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str.2, i32 313, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ELS retries exhausted\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"efc_els_retry\00", [18 x i8] zeroinitializer }, align 32
@efc_els_retry._entry_ptr = internal global ptr @efc_els_retry._entry, section ".printk_index", align 4
@efc_els_acc_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.104, ptr @.str.2, i32 344, ptr @.str.89, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"[%s] %-8s failed status x%x, ext x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"efc_els_acc_cb\00", [17 x i8] zeroinitializer }, align 32
@efc_els_acc_cb._entry_ptr = internal global ptr @efc_els_acc_cb._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 3, i64 9]
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 50, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 399, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 403, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 406, i32 22 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 428, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 432, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 436, i32 22 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 457, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 461, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 465, i32 22 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 487, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 491, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 495, i32 22 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 525, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 531, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 535, i32 22 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 558, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 564, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 568, i32 22 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 591, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 595, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 599, i32 22 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 620, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 624, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 626, i32 22 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 649, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 653, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 657, i32 22 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 683, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 687, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 691, i32 22 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 719, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 723, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 727, i32 22 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 761, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 765, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 769, i32 22 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 794, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 798, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 802, i32 22 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 822, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 826, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 830, i32 22 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 851, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 855, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 859, i32 22 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 901, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 905, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 914, i32 22 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 938, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 942, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 951, i32 22 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 978, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 982, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 991, i32 22 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1036, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1048, i32 22 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 287, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 170, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 188, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 208, i32 4 }
@___asan_gen_.393 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 210, i32 4 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 228, i32 4 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 236, i32 3 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 313, i32 3 }
@___asan_gen_.420 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.426 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.427 = private constant [37 x i8] c"../drivers/scsi/elx/libefc/efc_els.c\00", align 1
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 342, i32 3 }
@llvm.compiler.used = appending global [154 x ptr] [ptr @efc_els_acc_cb._entry, ptr @efc_els_acc_cb._entry_ptr, ptr @efc_els_io_alloc_size._entry, ptr @efc_els_io_alloc_size._entry_ptr, ptr @efc_els_req_cb._entry, ptr @efc_els_req_cb._entry.87, ptr @efc_els_req_cb._entry.91, ptr @efc_els_req_cb._entry.95, ptr @efc_els_req_cb._entry.98, ptr @efc_els_req_cb._entry_ptr, ptr @efc_els_req_cb._entry_ptr.100, ptr @efc_els_req_cb._entry_ptr.90, ptr @efc_els_req_cb._entry_ptr.93, ptr @efc_els_req_cb._entry_ptr.97, ptr @efc_els_retry._entry, ptr @efc_els_retry._entry_ptr, ptr @efc_els_send_req._entry, ptr @efc_els_send_req._entry_ptr, ptr @efc_ns_send_gidpt._entry, ptr @efc_ns_send_gidpt._entry.78, ptr @efc_ns_send_gidpt._entry_ptr, ptr @efc_ns_send_gidpt._entry_ptr.79, ptr @efc_ns_send_rffid._entry, ptr @efc_ns_send_rffid._entry.74, ptr @efc_ns_send_rffid._entry_ptr, ptr @efc_ns_send_rffid._entry_ptr.75, ptr @efc_ns_send_rftid._entry, ptr @efc_ns_send_rftid._entry.70, ptr @efc_ns_send_rftid._entry_ptr, ptr @efc_ns_send_rftid._entry_ptr.71, ptr @efc_send_adisc._entry, ptr @efc_send_adisc._entry.29, ptr @efc_send_adisc._entry_ptr, ptr @efc_send_adisc._entry_ptr.30, ptr @efc_send_adisc_acc._entry, ptr @efc_send_adisc_acc._entry.66, ptr @efc_send_adisc_acc._entry_ptr, ptr @efc_send_adisc_acc._entry_ptr.67, ptr @efc_send_ct_rsp._entry, ptr @efc_send_ct_rsp._entry_ptr, ptr @efc_send_fdisc._entry, ptr @efc_send_fdisc._entry.17, ptr @efc_send_fdisc._entry_ptr, ptr @efc_send_fdisc._entry_ptr.18, ptr @efc_send_flogi._entry, ptr @efc_send_flogi._entry.13, ptr @efc_send_flogi._entry_ptr, ptr @efc_send_flogi._entry_ptr.14, ptr @efc_send_flogi_p2p_acc._entry, ptr @efc_send_flogi_p2p_acc._entry.46, ptr @efc_send_flogi_p2p_acc._entry_ptr, ptr @efc_send_flogi_p2p_acc._entry_ptr.47, ptr @efc_send_logo._entry, ptr @efc_send_logo._entry.25, ptr @efc_send_logo._entry_ptr, ptr @efc_send_logo._entry_ptr.26, ptr @efc_send_logo_acc._entry, ptr @efc_send_logo_acc._entry.62, ptr @efc_send_logo_acc._entry_ptr, ptr @efc_send_logo_acc._entry_ptr.63, ptr @efc_send_ls_acc._entry, ptr @efc_send_ls_acc._entry.58, ptr @efc_send_ls_acc._entry_ptr, ptr @efc_send_ls_acc._entry_ptr.59, ptr @efc_send_ls_rjt._entry, ptr @efc_send_ls_rjt._entry.38, ptr @efc_send_ls_rjt._entry_ptr, ptr @efc_send_ls_rjt._entry_ptr.39, ptr @efc_send_plogi._entry, ptr @efc_send_plogi._entry.8, ptr @efc_send_plogi._entry_ptr, ptr @efc_send_plogi._entry_ptr.10, ptr @efc_send_plogi_acc._entry, ptr @efc_send_plogi_acc._entry.42, ptr @efc_send_plogi_acc._entry_ptr, ptr @efc_send_plogi_acc._entry_ptr.43, ptr @efc_send_prli._entry, ptr @efc_send_prli._entry.21, ptr @efc_send_prli._entry_ptr, ptr @efc_send_prli._entry_ptr.22, ptr @efc_send_prli_acc._entry, ptr @efc_send_prli_acc._entry.50, ptr @efc_send_prli_acc._entry_ptr, ptr @efc_send_prli_acc._entry_ptr.51, ptr @efc_send_prlo_acc._entry, ptr @efc_send_prlo_acc._entry.54, ptr @efc_send_prlo_acc._entry_ptr, ptr @efc_send_prlo_acc._entry_ptr.55, ptr @efc_send_scr._entry, ptr @efc_send_scr._entry.33, ptr @efc_send_scr._entry_ptr, ptr @efc_send_scr._entry_ptr.34, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.15, ptr @.str.16, ptr @.str.19, ptr @.str.20, ptr @.str.23, ptr @.str.24, ptr @.str.27, ptr @.str.28, ptr @.str.31, ptr @.str.32, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.40, ptr @.str.41, ptr @.str.44, ptr @.str.45, ptr @.str.48, ptr @.str.49, ptr @.str.52, ptr @.str.53, ptr @.str.56, ptr @.str.57, ptr @.str.60, ptr @.str.61, ptr @.str.64, ptr @.str.65, ptr @.str.68, ptr @.str.69, ptr @.str.72, ptr @.str.73, ptr @.str.76, ptr @.str.77, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.88, ptr @.str.89, ptr @.str.92, ptr @efc_els_req_cb.__key, ptr @.str.94, ptr @.str.96, ptr @.str.99, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104], section "llvm.metadata"
@0 = internal global [108 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_els_io_alloc_size._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_send_plogi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_send_plogi._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_send_flogi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_send_flogi._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_send_fdisc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_send_fdisc._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_send_prli._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_send_prli._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_send_logo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_send_logo._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_send_adisc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_send_adisc._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_send_scr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_send_scr._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_send_ls_rjt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_send_ls_rjt._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_send_plogi_acc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_send_plogi_acc._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_send_flogi_p2p_acc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_send_flogi_p2p_acc._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_send_prli_acc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_send_prli_acc._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_send_prlo_acc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_send_prlo_acc._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_send_ls_acc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_send_ls_acc._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_send_logo_acc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_send_logo_acc._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_send_adisc_acc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_send_adisc_acc._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_ns_send_rftid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_ns_send_rftid._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_ns_send_rffid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_ns_send_rffid._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_ns_send_gidpt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_ns_send_gidpt._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_send_ct_rsp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_els_send_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_els_req_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_els_req_cb._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_els_req_cb._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_els_req_cb.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_els_req_cb._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_els_req_cb._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_els_retry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_els_acc_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @efc_els_io_alloc(ptr noundef %node, i32 noundef %reqlen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @efc_els_io_alloc_size(ptr noundef %node, i32 noundef %reqlen, i32 noundef 1024)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @efc_els_io_alloc_size(ptr noundef %node, i32 noundef %reqlen, i32 noundef %rsplen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node, align 8
  %els_io_enabled = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 6
  %2 = ptrtoint ptr %els_io_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %els_io_enabled, align 1, !range !231
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %pci = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %els_io_pool = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 28
  %6 = ptrtoint ptr %els_io_pool to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %els_io_pool, align 4
  %call = tail call noalias ptr @mempool_alloc(ptr noundef %7, i32 noundef 2592) #5
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %els_io_alloc_failed_count = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 29
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %els_io_alloc_failed_count, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !232
  tail call void @llvm.prefetch.p0(ptr %els_io_alloc_failed_count, i32 1, i32 3, i32 1) #5
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %els_io_alloc_failed_count, ptr %els_io_alloc_failed_count, i32 1, ptr elementtype(i32) %els_io_alloc_failed_count) #5, !srcloc !233
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !234
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %ref = getelementptr inbounds %struct.efc_els_io_req, ptr %call, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #5
  %9 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 1, ptr %ref, align 4
  %release = getelementptr inbounds %struct.efc_els_io_req, ptr %call, i32 0, i32 2
  %10 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @_efc_els_io_free, ptr %release, align 4
  %node6 = getelementptr inbounds %struct.efc_els_io_req, ptr %call, i32 0, i32 3
  %11 = ptrtoint ptr %node6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %node, ptr %node6, align 4
  %io = getelementptr inbounds %struct.efc_els_io_req, ptr %call, i32 0, i32 9
  %size = getelementptr inbounds %struct.efc_els_io_req, ptr %call, i32 0, i32 9, i32 0, i32 3
  %12 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %reqlen, ptr %size, align 4
  %pci7 = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %pci7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pci7, align 4
  %dev8 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %phys = getelementptr inbounds %struct.efc_els_io_req, ptr %call, i32 0, i32 9, i32 0, i32 2
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev8, i32 noundef %reqlen, ptr noundef %phys, i32 noundef 3264, i32 noundef 0) #5
  %15 = ptrtoint ptr %io to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %io, align 4
  %tobool20.not = icmp eq ptr %call.i, null
  br i1 %tobool20.not, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %els_io_pool to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %els_io_pool, align 4
  tail call void @mempool_free(ptr noundef nonnull %call, ptr noundef %17) #5
  br label %cleanup

if.end23:                                         ; preds = %if.end5
  %rsp = getelementptr inbounds %struct.efc_els_io_req, ptr %call, i32 0, i32 9, i32 1
  %size25 = getelementptr inbounds %struct.efc_els_io_req, ptr %call, i32 0, i32 9, i32 1, i32 3
  %18 = ptrtoint ptr %size25 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %rsplen, ptr %size25, align 4
  %19 = ptrtoint ptr %pci7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pci7, align 4
  %dev27 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %phys33 = getelementptr inbounds %struct.efc_els_io_req, ptr %call, i32 0, i32 9, i32 1, i32 2
  %call.i106 = tail call ptr @dma_alloc_attrs(ptr noundef %dev27, i32 noundef %rsplen, ptr noundef %phys33, i32 noundef 3264, i32 noundef 0) #5
  %21 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i106, ptr %rsp, align 4
  %tobool41.not = icmp eq ptr %call.i106, null
  br i1 %tobool41.not, label %if.end55.thread, label %if.then57

if.end55.thread:                                  ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %pci7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pci7, align 4
  %dev44 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %24 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size, align 4
  %26 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %io, align 4
  %28 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %phys, align 4
  tail call void @dma_free_attrs(ptr noundef %dev44, i32 noundef %25, ptr noundef %27, i32 noundef %29, i32 noundef 0) #5
  %30 = ptrtoint ptr %els_io_pool to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %els_io_pool, align 4
  tail call void @mempool_free(ptr noundef nonnull %call, ptr noundef %31) #5
  br label %cleanup

if.then57:                                        ; preds = %if.end23
  %els_retries_remaining = getelementptr inbounds %struct.efc_els_io_req, ptr %call, i32 0, i32 5
  %32 = ptrtoint ptr %els_retries_remaining to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 3, ptr %els_retries_remaining, align 4
  %33 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %call, ptr %call, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call, ptr %prev.i, align 4
  %els_ios_lock = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 13
  %call61 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %els_ios_lock) #5
  %els_ios_list = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 14
  %prev.i107 = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 14, i32 1
  %35 = ptrtoint ptr %prev.i107 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev.i107, align 4
  %call.i.i108 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call, ptr noundef %36, ptr noundef %els_ios_list) #5
  br i1 %call.i.i108, label %if.end.i.i, label %if.then57.list_add_tail.exit_crit_edge

if.then57.list_add_tail.exit_crit_edge:           ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %prev.i107 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call, ptr %prev.i107, align 4
  %38 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %els_ios_list, ptr %call, align 4
  %39 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev.i, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %call, ptr %36, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then57.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %els_ios_lock, i32 noundef %call61) #5
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.end55.thread, %if.then21, %if.then3, %do.end
  %retval.0 = phi ptr [ null, %if.then21 ], [ null, %if.then3 ], [ null, %do.end ], [ %call, %list_add_tail.exit ], [ null, %if.end55.thread ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_efc_els_io_free(ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %arg, i32 -8
  %node1 = getelementptr i8, ptr %arg, i32 8
  %0 = ptrtoint ptr %node1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %els_ios_lock = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 13
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %els_ios_lock) #5
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %add.ptr) #5
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr i8, ptr %arg, i32 -4
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %add.ptr, align 4
  %prev.i = getelementptr i8, ptr %arg, i32 -4
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %els_io_enabled = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %els_io_enabled to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %els_io_enabled, align 1, !range !231
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %land.rhs, label %list_del.exit.land.end_crit_edge

list_del.exit.land.end_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

land.rhs:                                         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  %els_ios_list = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 14
  %14 = ptrtoint ptr %els_ios_list to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %els_ios_list, align 4
  %cmp.i = icmp eq ptr %15, %els_ios_list
  br label %land.end

land.end:                                         ; preds = %land.rhs, %list_del.exit.land.end_crit_edge
  %16 = phi i1 [ false, %list_del.exit.land.end_crit_edge ], [ %cmp.i, %land.rhs ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %els_ios_lock, i32 noundef %call5) #5
  %pci = getelementptr inbounds %struct.efc, ptr %3, i32 0, i32 1
  %17 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %io = getelementptr i8, ptr %arg, i32 76
  %rsp = getelementptr i8, ptr %arg, i32 100
  %size = getelementptr i8, ptr %arg, i32 112
  %19 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %size, align 4
  %21 = ptrtoint ptr %rsp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rsp, align 4
  %phys = getelementptr i8, ptr %arg, i32 108
  %23 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %phys, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %20, ptr noundef %22, i32 noundef %24, i32 noundef 0) #5
  %25 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pci, align 4
  %dev16 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  %size18 = getelementptr i8, ptr %arg, i32 88
  %27 = ptrtoint ptr %size18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %size18, align 4
  %29 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %io, align 4
  %phys24 = getelementptr i8, ptr %arg, i32 84
  %31 = ptrtoint ptr %phys24 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %phys24, align 4
  tail call void @dma_free_attrs(ptr noundef %dev16, i32 noundef %28, ptr noundef %30, i32 noundef %32, i32 noundef 0) #5
  %els_io_pool = getelementptr inbounds %struct.efc, ptr %3, i32 0, i32 28
  %33 = ptrtoint ptr %els_io_pool to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %els_io_pool, align 4
  tail call void @mempool_free(ptr noundef %add.ptr, ptr noundef %34) #5
  br i1 %16, label %if.then, label %land.end.if.end_crit_edge

land.end.if.end_crit_edge:                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 8
  tail call void @efc_scsi_io_list_empty(ptr noundef %36, ptr noundef %1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efc_els_io_free(ptr noundef %els) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ref = getelementptr inbounds %struct.efc_els_io_req, ptr %els, i32 0, i32 1
  %release = getelementptr inbounds %struct.efc_els_io_req, ptr %els, i32 0, i32 2
  %0 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %release, align 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !235
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #5
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #5, !srcloc !236
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !237

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 3) #5
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !238
  tail call void %1(ptr noundef %ref) #5
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @efc_scsi_io_list_empty(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efc_disc_io_complete(ptr noundef %io, i32 noundef %len, i32 noundef %status, i32 noundef %ext_status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cb = getelementptr i8, ptr %io, i32 -64
  %0 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cb, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %land.rhs, label %entry.if.end30_crit_edge

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

land.rhs:                                         ; preds = %entry
  %.b43 = load i1, ptr @efc_disc_io_complete.__already_done, align 1
  br i1 %.b43, label %land.rhs.if.end30_crit_edge, label %if.then, !prof !237

land.rhs.if.end30_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @efc_disc_io_complete.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 251, i32 noundef 9, ptr noundef null) #5
  br label %if.end30

if.end30:                                         ; preds = %if.then, %land.rhs.if.end30_crit_edge, %entry.if.end30_crit_edge
  %add.ptr = getelementptr i8, ptr %io, i32 -84
  %2 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cb, align 4
  %call = tail call i32 %3(ptr noundef %add.ptr, i32 noundef %len, i32 noundef %status, i32 noundef %ext_status) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efc_send_plogi(ptr noundef %node) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node, align 8
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %entry.do.end5_crit_edge, label %cond.true

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end5

cond.true:                                        ; preds = %entry
  %logmask = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %logmask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %logmask, align 8
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp2.not = icmp eq i32 %and, 0
  br i1 %cmp2.not, label %cond.true.do.end5_crit_edge, label %do.end

cond.true.do.end5_crit_edge:                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end5

do.end:                                           ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #7
  %pci = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.5, ptr noundef %display_name, ptr noundef nonnull @.str.6) #8
  br label %do.end5

do.end5:                                          ; preds = %do.end, %cond.true.do.end5_crit_edge, %entry.do.end5_crit_edge
  %call.i = tail call ptr @efc_els_io_alloc_size(ptr noundef %node, i32 noundef 116, i32 noundef 1024) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end9, label %if.end12

do.end9:                                          ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #7
  %pci10 = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %pci10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci10, align 4
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.9) #8
  br label %cleanup

if.end12:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #7
  %display_name13 = getelementptr inbounds %struct.efc_els_io_req, ptr %call.i, i32 0, i32 8
  %8 = ptrtoint ptr %display_name13 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.11, ptr %display_name13, align 4
  %io = getelementptr inbounds %struct.efc_els_io_req, ptr %call.i, i32 0, i32 9
  %9 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %io, align 4
  %nport = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 2
  %11 = ptrtoint ptr %nport to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nport, align 4
  %service_params = getelementptr inbounds %struct.efc_nport, ptr %12, i32 0, i32 30
  %13 = call ptr @memcpy(ptr %10, ptr %service_params, i32 116)
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 3, ptr %10, align 1
  %_fl_resvd = getelementptr inbounds %struct.fc_els_flogi, ptr %10, i32 0, i32 1
  %15 = call ptr @memset(ptr %_fl_resvd, i32 0, i32 3)
  %call16 = tail call fastcc i32 @efc_els_send_req(ptr noundef %node, ptr noundef nonnull %call.i, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end9
  %retval.0 = phi i32 [ %call16, %if.end12 ], [ -5, %do.end9 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @efc_els_send_req(ptr nocapture noundef readonly %node, ptr noundef %els, i32 noundef %io_type) unnamed_addr #0 align 64 {
entry:
  %cbdata = alloca %struct.efc_node_cb, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node, align 8
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %cbdata) #5
  %2 = getelementptr inbounds i8, ptr %cbdata, i32 8
  %3 = call ptr @memset(ptr %2, i32 255, i32 36)
  %node2 = getelementptr inbounds %struct.efc_els_io_req, ptr %els, i32 0, i32 3
  %4 = ptrtoint ptr %node2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %node2, align 4
  %els_req_cnt = getelementptr inbounds %struct.efc_node, ptr %5, i32 0, i32 35
  %6 = ptrtoint ptr %els_req_cnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %els_req_cnt, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %els_req_cnt, align 4
  %io = getelementptr inbounds %struct.efc_els_io_req, ptr %els, i32 0, i32 9
  %io_type3 = getelementptr inbounds %struct.efc_els_io_req, ptr %els, i32 0, i32 9, i32 2
  %8 = ptrtoint ptr %io_type3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %io_type, ptr %io_type3, align 4
  %size = getelementptr inbounds %struct.efc_els_io_req, ptr %els, i32 0, i32 9, i32 0, i32 3
  %9 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size, align 4
  %conv = trunc i32 %10 to i16
  %xmit_len = getelementptr inbounds %struct.efc_els_io_req, ptr %els, i32 0, i32 9, i32 3
  %11 = ptrtoint ptr %xmit_len to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv, ptr %xmit_len, align 4
  %rsp = getelementptr inbounds %struct.efc_els_io_req, ptr %els, i32 0, i32 9, i32 1
  %size7 = getelementptr inbounds %struct.efc_els_io_req, ptr %els, i32 0, i32 9, i32 1, i32 3
  %12 = ptrtoint ptr %size7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size7, align 4
  %conv8 = trunc i32 %13 to i16
  %rsp_len = getelementptr inbounds %struct.efc_els_io_req, ptr %els, i32 0, i32 9, i32 4
  %14 = ptrtoint ptr %rsp_len to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv8, ptr %rsp_len, align 2
  %rnode = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 17
  %15 = ptrtoint ptr %rnode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rnode, align 4
  %rpi = getelementptr inbounds %struct.efc_els_io_req, ptr %els, i32 0, i32 9, i32 5
  %17 = ptrtoint ptr %rpi to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %rpi, align 4
  %nport = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 2
  %18 = ptrtoint ptr %nport to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %nport, align 4
  %indicator11 = getelementptr inbounds %struct.efc_nport, ptr %19, i32 0, i32 16
  %20 = ptrtoint ptr %indicator11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %indicator11, align 8
  %vpi = getelementptr inbounds %struct.efc_els_io_req, ptr %els, i32 0, i32 9, i32 6
  %22 = ptrtoint ptr %vpi to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %vpi, align 4
  %23 = load ptr, ptr %nport, align 4
  %fc_id = getelementptr inbounds %struct.efc_nport, ptr %23, i32 0, i32 17
  %24 = ptrtoint ptr %fc_id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fc_id, align 4
  %s_id = getelementptr inbounds %struct.efc_els_io_req, ptr %els, i32 0, i32 9, i32 7
  %26 = ptrtoint ptr %s_id to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %s_id, align 4
  %fc_id16 = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 17, i32 2
  %27 = ptrtoint ptr %fc_id16 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %fc_id16, align 4
  %d_id = getelementptr inbounds %struct.efc_els_io_req, ptr %els, i32 0, i32 9, i32 8
  %29 = ptrtoint ptr %d_id to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %d_id, align 4
  %attached = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 17, i32 3
  %30 = ptrtoint ptr %attached to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %attached, align 4, !range !231
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not = icmp eq i8 %31, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %rpi_registered = getelementptr inbounds %struct.efc_els_io_req, ptr %els, i32 0, i32 9, i32 9
  %32 = ptrtoint ptr %rpi_registered to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %rpi_registered, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cb = getelementptr inbounds %struct.efc_els_io_req, ptr %els, i32 0, i32 4
  %33 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @efc_els_req_cb, ptr %cb, align 4
  %send_els = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 15, i32 5
  %34 = ptrtoint ptr %send_els to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %send_els, align 4
  %call = tail call i32 %35(ptr noundef %1, ptr noundef %io) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool21.not = icmp eq i32 %call, 0
  br i1 %tobool21.not, label %if.end.cleanup_crit_edge, label %if.end23

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end23:                                         ; preds = %if.end
  %36 = ptrtoint ptr %cbdata to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 2147483647, ptr %cbdata, align 4
  %ext_status = getelementptr inbounds %struct.efc_node_cb, ptr %cbdata, i32 0, i32 1
  %37 = ptrtoint ptr %ext_status to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 2147483647, ptr %ext_status, align 4
  %els_rsp = getelementptr inbounds %struct.efc_node_cb, ptr %cbdata, i32 0, i32 4
  %38 = call ptr @memcpy(ptr %els_rsp, ptr %rsp, i32 24)
  %pci = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 1
  %39 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.83, i32 noundef %call) #8
  %els_req_free.i = getelementptr inbounds %struct.efc_els_io_req, ptr %els, i32 0, i32 6
  %41 = ptrtoint ptr %els_req_free.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %els_req_free.i, align 4
  %42 = ptrtoint ptr %node2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %node2, align 4
  call void @efc_node_post_els_resp(ptr noundef %43, i32 noundef 35, ptr noundef nonnull %cbdata) #5
  %ref.i.i = getelementptr inbounds %struct.efc_els_io_req, ptr %els, i32 0, i32 1
  %release.i.i = getelementptr inbounds %struct.efc_els_io_req, ptr %els, i32 0, i32 2
  %44 = ptrtoint ptr %release.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %release.i.i, align 4
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i, i32 noundef 4) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !235
  call void @llvm.prefetch.p0(ptr %ref.i.i, i32 1, i32 3, i32 1) #5
  %46 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i, ptr %ref.i.i, i32 1, ptr elementtype(i32) %ref.i.i) #5, !srcloc !236
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %46, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.end23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !237

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @refcount_warn_saturate(ptr noundef %ref.i.i, i32 noundef 3) #5
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !238
  call void %45(ptr noundef %ref.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %cbdata) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efc_send_flogi(ptr noundef %node) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node, align 8
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %entry.do.end5_crit_edge, label %cond.true

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end5

cond.true:                                        ; preds = %entry
  %logmask = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %logmask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %logmask, align 8
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp2.not = icmp eq i32 %and, 0
  br i1 %cmp2.not, label %cond.true.do.end5_crit_edge, label %do.end

cond.true.do.end5_crit_edge:                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end5

do.end:                                           ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #7
  %pci = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.5, ptr noundef %display_name, ptr noundef nonnull @.str.12) #8
  br label %do.end5

do.end5:                                          ; preds = %do.end, %cond.true.do.end5_crit_edge, %entry.do.end5_crit_edge
  %call.i = tail call ptr @efc_els_io_alloc_size(ptr noundef %node, i32 noundef 116, i32 noundef 1024) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end9, label %if.end12

do.end9:                                          ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #7
  %pci10 = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %pci10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci10, align 4
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.9) #8
  br label %cleanup

if.end12:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #7
  %display_name13 = getelementptr inbounds %struct.efc_els_io_req, ptr %call.i, i32 0, i32 8
  %8 = ptrtoint ptr %display_name13 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.15, ptr %display_name13, align 4
  %io = getelementptr inbounds %struct.efc_els_io_req, ptr %call.i, i32 0, i32 9
  %9 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %io, align 4
  %nport = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 2
  %11 = ptrtoint ptr %nport to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nport, align 4
  %service_params = getelementptr inbounds %struct.efc_nport, ptr %12, i32 0, i32 30
  %13 = call ptr @memcpy(ptr %10, ptr %service_params, i32 116)
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 4, ptr %10, align 1
  %_fl_resvd = getelementptr inbounds %struct.fc_els_flogi, ptr %10, i32 0, i32 1
  %15 = call ptr @memset(ptr %_fl_resvd, i32 0, i32 3)
  %call16 = tail call fastcc i32 @efc_els_send_req(ptr noundef %node, ptr noundef nonnull %call.i, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end9
  %retval.0 = phi i32 [ %call16, %if.end12 ], [ -5, %do.end9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efc_send_fdisc(ptr noundef %node) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node, align 8
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %entry.do.end5_crit_edge, label %cond.true

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end5

cond.true:                                        ; preds = %entry
  %logmask = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %logmask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %logmask, align 8
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp2.not = icmp eq i32 %and, 0
  br i1 %cmp2.not, label %cond.true.do.end5_crit_edge, label %do.end

cond.true.do.end5_crit_edge:                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end5

do.end:                                           ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #7
  %pci = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.5, ptr noundef %display_name, ptr noundef nonnull @.str.16) #8
  br label %do.end5

do.end5:                                          ; preds = %do.end, %cond.true.do.end5_crit_edge, %entry.do.end5_crit_edge
  %call.i = tail call ptr @efc_els_io_alloc_size(ptr noundef %node, i32 noundef 116, i32 noundef 1024) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end9, label %if.end12

do.end9:                                          ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #7
  %pci10 = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %pci10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci10, align 4
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.9) #8
  br label %cleanup

if.end12:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #7
  %display_name13 = getelementptr inbounds %struct.efc_els_io_req, ptr %call.i, i32 0, i32 8
  %8 = ptrtoint ptr %display_name13 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.19, ptr %display_name13, align 4
  %io = getelementptr inbounds %struct.efc_els_io_req, ptr %call.i, i32 0, i32 9
  %9 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %io, align 4
  %nport = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 2
  %11 = ptrtoint ptr %nport to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nport, align 4
  %service_params = getelementptr inbounds %struct.efc_nport, ptr %12, i32 0, i32 30
  %13 = call ptr @memcpy(ptr %10, ptr %service_params, i32 116)
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 81, ptr %10, align 1
  %_fl_resvd = getelementptr inbounds %struct.fc_els_flogi, ptr %10, i32 0, i32 1
  %15 = call ptr @memset(ptr %_fl_resvd, i32 0, i32 3)
  %call16 = tail call fastcc i32 @efc_els_send_req(ptr noundef %node, ptr noundef nonnull %call.i, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end9
  %retval.0 = phi i32 [ %call16, %if.end12 ], [ -5, %do.end9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efc_send_prli(ptr noundef %node) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node, align 8
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %entry.do.end5_crit_edge, label %cond.true

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end5

cond.true:                                        ; preds = %entry
  %logmask = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %logmask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %logmask, align 8
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp2.not = icmp eq i32 %and, 0
  br i1 %cmp2.not, label %cond.true.do.end5_crit_edge, label %do.end

cond.true.do.end5_crit_edge:                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end5

do.end:                                           ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #7
  %pci = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.5, ptr noundef %display_name, ptr noundef nonnull @.str.20) #8
  br label %do.end5

do.end5:                                          ; preds = %do.end, %cond.true.do.end5_crit_edge, %entry.do.end5_crit_edge
  %call.i = tail call ptr @efc_els_io_alloc_size(ptr noundef %node, i32 noundef 20, i32 noundef 1024) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end9, label %if.end12

do.end9:                                          ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #7
  %pci10 = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %pci10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci10, align 4
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.9) #8
  br label %cleanup

if.end12:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #7
  %display_name13 = getelementptr inbounds %struct.efc_els_io_req, ptr %call.i, i32 0, i32 8
  %8 = ptrtoint ptr %display_name13 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.23, ptr %display_name13, align 4
  %io = getelementptr inbounds %struct.efc_els_io_req, ptr %call.i, i32 0, i32 9
  %9 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %io, align 4
  %11 = getelementptr inbounds i8, ptr %10, i32 4
  %12 = call ptr @memset(ptr %11, i32 0, i32 16)
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 32, ptr %10, align 4
  %prli_spp_len = getelementptr inbounds %struct.fc_els_prli, ptr %10, i32 0, i32 1
  %14 = ptrtoint ptr %prli_spp_len to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 16, ptr %prli_spp_len, align 1
  %prli_len = getelementptr inbounds %struct.fc_els_prli, ptr %10, i32 0, i32 2
  %15 = ptrtoint ptr %prli_len to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 20, ptr %prli_len, align 2
  %spp = getelementptr inbounds %struct.anon.88, ptr %10, i32 0, i32 1
  %16 = ptrtoint ptr %spp to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 8, ptr %spp, align 4
  %spp_flags = getelementptr inbounds %struct.anon.88, ptr %10, i32 0, i32 1, i32 2
  %17 = ptrtoint ptr %spp_flags to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 32, ptr %spp_flags, align 2
  %nport = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 2
  %18 = ptrtoint ptr %nport to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %nport, align 4
  %enable_ini = getelementptr inbounds %struct.efc_nport, ptr %19, i32 0, i32 24
  %20 = ptrtoint ptr %enable_ini to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %enable_ini, align 8, !range !231
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool18.not = icmp eq i8 %21, 0
  %or = select i1 %tobool18.not, i32 2, i32 34
  %enable_tgt = getelementptr inbounds %struct.efc_nport, ptr %19, i32 0, i32 25
  %22 = ptrtoint ptr %enable_tgt to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %enable_tgt, align 1, !range !231
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool20.not = icmp eq i8 %23, 0
  %cond21 = select i1 %tobool20.not, i32 0, i32 16
  %or22 = or i32 %cond21, %or
  %spp_params = getelementptr inbounds %struct.anon.88, ptr %10, i32 0, i32 1, i32 6
  %24 = ptrtoint ptr %spp_params to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or22, ptr %spp_params, align 4
  %call24 = tail call fastcc i32 @efc_els_send_req(ptr noundef %node, ptr noundef nonnull %call.i, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end9
  %retval.0 = phi i32 [ %call24, %if.end12 ], [ -5, %do.end9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efc_send_logo(ptr noundef %node) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node, align 8
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %entry.do.end5_crit_edge, label %cond.true

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end5

cond.true:                                        ; preds = %entry
  %logmask = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %logmask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %logmask, align 8
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp2.not = icmp eq i32 %and, 0
  br i1 %cmp2.not, label %cond.true.do.end5_crit_edge, label %do.end

cond.true.do.end5_crit_edge:                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end5

do.end:                                           ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #7
  %pci = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.5, ptr noundef %display_name, ptr noundef nonnull @.str.24) #8
  br label %do.end5

do.end5:                                          ; preds = %do.end, %cond.true.do.end5_crit_edge, %entry.do.end5_crit_edge
  %nport = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 2
  %6 = ptrtoint ptr %nport to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nport, align 4
  %call.i = tail call ptr @efc_els_io_alloc_size(ptr noundef %node, i32 noundef 16, i32 noundef 1024) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end10, label %if.end13

do.end10:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #7
  %pci11 = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %pci11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pci11, align 4
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.9) #8
  br label %cleanup

if.end13:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #7
  %display_name14 = getelementptr inbounds %struct.efc_els_io_req, ptr %call.i, i32 0, i32 8
  %10 = ptrtoint ptr %display_name14 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.27, ptr %display_name14, align 4
  %io = getelementptr inbounds %struct.efc_els_io_req, ptr %call.i, i32 0, i32 9
  %11 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %io, align 4
  %13 = call ptr @memset(ptr %12, i32 0, i32 16)
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 5, ptr %12, align 8
  %fl_n_port_id = getelementptr inbounds %struct.fc_els_logo, ptr %12, i32 0, i32 3
  %nport16 = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 17, i32 4
  %15 = ptrtoint ptr %nport16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %nport16, align 4
  %fc_id = getelementptr inbounds %struct.efc_nport, ptr %16, i32 0, i32 17
  %17 = ptrtoint ptr %fc_id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fc_id, align 4
  %shr.i = lshr i32 %18, 16
  %conv.i = trunc i32 %shr.i to i8
  %19 = ptrtoint ptr %fl_n_port_id to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv.i, ptr %fl_n_port_id, align 1
  %shr1.i = lshr i32 %18, 8
  %conv3.i = trunc i32 %shr1.i to i8
  %arrayidx4.i = getelementptr %struct.fc_els_logo, ptr %12, i32 0, i32 3, i32 1
  %20 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv3.i, ptr %arrayidx4.i, align 1
  %conv6.i = trunc i32 %18 to i8
  %arrayidx7.i = getelementptr %struct.fc_els_logo, ptr %12, i32 0, i32 3, i32 2
  %21 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv6.i, ptr %arrayidx7.i, align 1
  %fl_wwpn = getelementptr inbounds %struct.efc_nport, ptr %7, i32 0, i32 30, i32 20
  %22 = ptrtoint ptr %fl_wwpn to i32
  call void @__asan_loadN_noabort(i32 %22, i32 8)
  %23 = load i64, ptr %fl_wwpn, align 1
  %fl_n_port_wwn = getelementptr inbounds %struct.fc_els_logo, ptr %12, i32 0, i32 4
  %24 = ptrtoint ptr %fl_n_port_wwn to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %fl_n_port_wwn, align 8
  %call17 = tail call fastcc i32 @efc_els_send_req(ptr noundef %node, ptr noundef nonnull %call.i, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %do.end10
  %retval.0 = phi i32 [ %call17, %if.end13 ], [ -5, %do.end10 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efc_send_adisc(ptr noundef %node) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node, align 8
  %nport2 = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 2
  %2 = ptrtoint ptr %nport2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nport2, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %entry.do.end6_crit_edge, label %cond.true

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end6

cond.true:                                        ; preds = %entry
  %logmask = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 27
  %4 = ptrtoint ptr %logmask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %logmask, align 8
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp3.not = icmp eq i32 %and, 0
  br i1 %cmp3.not, label %cond.true.do.end6_crit_edge, label %do.end

cond.true.do.end6_crit_edge:                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end6

do.end:                                           ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #7
  %pci = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.5, ptr noundef %display_name, ptr noundef nonnull @.str.28) #8
  br label %do.end6

do.end6:                                          ; preds = %do.end, %cond.true.do.end6_crit_edge, %entry.do.end6_crit_edge
  %8 = ptrtoint ptr %nport2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nport2, align 4
  %call.i = tail call ptr @efc_els_io_alloc_size(ptr noundef %node, i32 noundef 28, i32 noundef 1024) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end12, label %if.end15

do.end12:                                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #7
  %pci13 = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %pci13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci13, align 4
  %dev14 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14, ptr noundef nonnull @.str.9) #8
  br label %cleanup

if.end15:                                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #7
  %display_name16 = getelementptr inbounds %struct.efc_els_io_req, ptr %call.i, i32 0, i32 8
  %12 = ptrtoint ptr %display_name16 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.31, ptr %display_name16, align 4
  %io = getelementptr inbounds %struct.efc_els_io_req, ptr %call.i, i32 0, i32 9
  %13 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %io, align 4
  %15 = getelementptr inbounds i8, ptr %14, i32 1
  %16 = call ptr @memset(ptr %15, i32 0, i32 27)
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 82, ptr %14, align 1
  %adisc_hard_addr = getelementptr inbounds %struct.fc_els_adisc, ptr %14, i32 0, i32 3
  %fc_id = getelementptr inbounds %struct.efc_nport, ptr %3, i32 0, i32 17
  %18 = ptrtoint ptr %fc_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fc_id, align 4
  %shr.i = lshr i32 %19, 16
  %conv.i = trunc i32 %shr.i to i8
  %20 = ptrtoint ptr %adisc_hard_addr to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv.i, ptr %adisc_hard_addr, align 1
  %shr1.i = lshr i32 %19, 8
  %conv3.i = trunc i32 %shr1.i to i8
  %arrayidx4.i = getelementptr %struct.fc_els_adisc, ptr %14, i32 0, i32 3, i32 1
  %21 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv3.i, ptr %arrayidx4.i, align 1
  %conv6.i = trunc i32 %19 to i8
  %arrayidx7.i = getelementptr %struct.fc_els_adisc, ptr %14, i32 0, i32 3, i32 2
  %22 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv6.i, ptr %arrayidx7.i, align 1
  %fl_wwpn = getelementptr inbounds %struct.efc_nport, ptr %9, i32 0, i32 30, i32 20
  %23 = ptrtoint ptr %fl_wwpn to i32
  call void @__asan_loadN_noabort(i32 %23, i32 8)
  %24 = load i64, ptr %fl_wwpn, align 1
  %adisc_wwpn = getelementptr inbounds %struct.fc_els_adisc, ptr %14, i32 0, i32 4
  %25 = ptrtoint ptr %adisc_wwpn to i32
  call void @__asan_storeN_noabort(i32 %25, i32 8)
  store i64 %24, ptr %adisc_wwpn, align 1
  %fl_wwnn = getelementptr inbounds %struct.efc_nport, ptr %9, i32 0, i32 30, i32 28
  %26 = ptrtoint ptr %fl_wwnn to i32
  call void @__asan_loadN_noabort(i32 %26, i32 8)
  %27 = load i64, ptr %fl_wwnn, align 1
  %adisc_wwnn = getelementptr inbounds %struct.fc_els_adisc, ptr %14, i32 0, i32 5
  %28 = ptrtoint ptr %adisc_wwnn to i32
  call void @__asan_storeN_noabort(i32 %28, i32 8)
  store i64 %27, ptr %adisc_wwnn, align 1
  %adisc_port_id = getelementptr inbounds %struct.fc_els_adisc, ptr %14, i32 0, i32 7
  %nport19 = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 17, i32 4
  %29 = ptrtoint ptr %nport19 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %nport19, align 4
  %fc_id20 = getelementptr inbounds %struct.efc_nport, ptr %30, i32 0, i32 17
  %31 = ptrtoint ptr %fc_id20 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %fc_id20, align 4
  %shr.i44 = lshr i32 %32, 16
  %conv.i45 = trunc i32 %shr.i44 to i8
  %33 = ptrtoint ptr %adisc_port_id to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv.i45, ptr %adisc_port_id, align 1
  %shr1.i46 = lshr i32 %32, 8
  %conv3.i47 = trunc i32 %shr1.i46 to i8
  %arrayidx4.i48 = getelementptr %struct.fc_els_adisc, ptr %14, i32 0, i32 7, i32 1
  %34 = ptrtoint ptr %arrayidx4.i48 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv3.i47, ptr %arrayidx4.i48, align 1
  %conv6.i49 = trunc i32 %32 to i8
  %arrayidx7.i50 = getelementptr %struct.fc_els_adisc, ptr %14, i32 0, i32 7, i32 2
  %35 = ptrtoint ptr %arrayidx7.i50 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv6.i49, ptr %arrayidx7.i50, align 1
  %call21 = tail call fastcc i32 @efc_els_send_req(ptr noundef %node, ptr noundef nonnull %call.i, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %do.end12
  %retval.0 = phi i32 [ %call21, %if.end15 ], [ -5, %do.end12 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efc_send_scr(ptr noundef %node) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node, align 8
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %entry.do.end5_crit_edge, label %cond.true

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end5

cond.true:                                        ; preds = %entry
  %logmask = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %logmask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %logmask, align 8
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp2.not = icmp eq i32 %and, 0
  br i1 %cmp2.not, label %cond.true.do.end5_crit_edge, label %do.end

cond.true.do.end5_crit_edge:                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end5

do.end:                                           ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #7
  %pci = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.5, ptr noundef %display_name, ptr noundef nonnull @.str.32) #8
  br label %do.end5

do.end5:                                          ; preds = %do.end, %cond.true.do.end5_crit_edge, %entry.do.end5_crit_edge
  %call.i = tail call ptr @efc_els_io_alloc_size(ptr noundef %node, i32 noundef 8, i32 noundef 1024) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end9, label %if.end12

do.end9:                                          ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #7
  %pci10 = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %pci10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci10, align 4
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.9) #8
  br label %cleanup

if.end12:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #7
  %display_name13 = getelementptr inbounds %struct.efc_els_io_req, ptr %call.i, i32 0, i32 8
  %8 = ptrtoint ptr %display_name13 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.35, ptr %display_name13, align 4
  %io = getelementptr inbounds %struct.efc_els_io_req, ptr %call.i, i32 0, i32 9
  %9 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %io, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 7061644215716937731, ptr %10, align 1
  %call15 = tail call fastcc i32 @efc_els_send_req(ptr noundef %node, ptr noundef nonnull %call.i, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end9
  %retval.0 = phi i32 [ %call15, %if.end12 ], [ -5, %do.end9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efc_send_ls_rjt(ptr noundef %node, i32 noundef %ox_id, i32 noundef %reason_code, i32 noundef %reason_code_expl, i32 noundef %vendor_unique) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node, align 8
  %call.i = tail call ptr @efc_els_io_alloc_size(ptr noundef %node, i32 noundef 8, i32 noundef 1024) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %do.body2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %pci = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.36) #8
  br label %cleanup

do.body2:                                         ; preds = %entry
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %do.body2.do.end12_crit_edge, label %cond.true

do.body2.do.end12_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end12

cond.true:                                        ; preds = %do.body2
  %logmask = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 27
  %4 = ptrtoint ptr %logmask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %logmask, align 8
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp3.not = icmp eq i32 %and, 0
  br i1 %cmp3.not, label %cond.true.do.end12_crit_edge, label %do.end7

cond.true.do.end12_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end12

do.end7:                                          ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #7
  %pci8 = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %pci8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci8, align 4
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev9, ptr noundef nonnull @.str.5, ptr noundef %display_name, ptr noundef nonnull @.str.37) #8
  br label %do.end12

do.end12:                                         ; preds = %do.end7, %cond.true.do.end12_crit_edge, %do.body2.do.end12_crit_edge
  %display_name13 = getelementptr inbounds %struct.efc_els_io_req, ptr %call.i, i32 0, i32 8
  %8 = ptrtoint ptr %display_name13 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.40, ptr %display_name13, align 4
  %io = getelementptr inbounds %struct.efc_els_io_req, ptr %call.i, i32 0, i32 9
  %iparam = getelementptr inbounds %struct.efc_els_io_req, ptr %call.i, i32 0, i32 9, i32 10
  %9 = ptrtoint ptr %iparam to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 0, ptr %iparam, align 4
  %conv = trunc i32 %ox_id to i16
  %ox_id16 = getelementptr inbounds %struct.efc_els_io_req, ptr %call.i, i32 0, i32 9, i32 10, i32 0, i32 1
  %10 = ptrtoint ptr %ox_id16 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv, ptr %ox_id16, align 4
  %11 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %io, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 72057594037927936, ptr %12, align 1
  %conv18 = trunc i32 %reason_code to i8
  %er_reason = getelementptr inbounds %struct.fc_els_ls_rjt, ptr %12, i32 0, i32 2
  %14 = ptrtoint ptr %er_reason to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv18, ptr %er_reason, align 1
  %conv19 = trunc i32 %reason_code_expl to i8
  %er_explan = getelementptr inbounds %struct.fc_els_ls_rjt, ptr %12, i32 0, i32 3
  %15 = ptrtoint ptr %er_explan to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv19, ptr %er_explan, align 1
  %call20 = tail call fastcc i32 @efc_els_send_rsp(ptr noundef nonnull %call.i, i32 noundef 8)
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %do.end
  %retval.0 = phi i32 [ %call20, %do.end12 ], [ -5, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @efc_els_send_rsp(ptr noundef %els, i32 noundef %rsplen) unnamed_addr #0 align 64 {
entry:
  %cbdata = alloca %struct.efc_node_cb, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %cbdata) #5
  %0 = getelementptr inbounds i8, ptr %cbdata, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 36)
  %node1 = getelementptr inbounds %struct.efc_els_io_req, ptr %els, i32 0, i32 3
  %2 = ptrtoint ptr %node1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %node1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %els_cmpl_cnt = getelementptr inbounds %struct.efc_node, ptr %3, i32 0, i32 36
  %6 = ptrtoint ptr %els_cmpl_cnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %els_cmpl_cnt, align 8
  %inc = add i32 %7, 1
  store i32 %inc, ptr %els_cmpl_cnt, align 8
  %io = getelementptr inbounds %struct.efc_els_io_req, ptr %els, i32 0, i32 9
  %io_type = getelementptr inbounds %struct.efc_els_io_req, ptr %els, i32 0, i32 9, i32 2
  %8 = ptrtoint ptr %io_type to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %io_type, align 4
  %cb = getelementptr inbounds %struct.efc_els_io_req, ptr %els, i32 0, i32 4
  %9 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @efc_els_acc_cb, ptr %cb, align 4
  %conv = trunc i32 %rsplen to i16
  %xmit_len = getelementptr inbounds %struct.efc_els_io_req, ptr %els, i32 0, i32 9, i32 3
  %10 = ptrtoint ptr %xmit_len to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv, ptr %xmit_len, align 4
  %rsp = getelementptr inbounds %struct.efc_els_io_req, ptr %els, i32 0, i32 9, i32 1
  %size = getelementptr inbounds %struct.efc_els_io_req, ptr %els, i32 0, i32 9, i32 1, i32 3
  %11 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size, align 4
  %conv5 = trunc i32 %12 to i16
  %rsp_len = getelementptr inbounds %struct.efc_els_io_req, ptr %els, i32 0, i32 9, i32 4
  %13 = ptrtoint ptr %rsp_len to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv5, ptr %rsp_len, align 2
  %rnode = getelementptr inbounds %struct.efc_node, ptr %3, i32 0, i32 17
  %14 = ptrtoint ptr %rnode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rnode, align 4
  %rpi = getelementptr inbounds %struct.efc_els_io_req, ptr %els, i32 0, i32 9, i32 5
  %16 = ptrtoint ptr %rpi to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %rpi, align 4
  %nport = getelementptr inbounds %struct.efc_node, ptr %3, i32 0, i32 2
  %17 = ptrtoint ptr %nport to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %nport, align 4
  %indicator8 = getelementptr inbounds %struct.efc_nport, ptr %18, i32 0, i32 16
  %19 = ptrtoint ptr %indicator8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %indicator8, align 8
  %vpi = getelementptr inbounds %struct.efc_els_io_req, ptr %els, i32 0, i32 9, i32 6
  %21 = ptrtoint ptr %vpi to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %vpi, align 4
  %22 = load ptr, ptr %nport, align 4
  %fc_id = getelementptr inbounds %struct.efc_nport, ptr %22, i32 0, i32 17
  %23 = ptrtoint ptr %fc_id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fc_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %cmp.not = icmp eq i32 %24, -1
  br i1 %cmp.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %iparam = getelementptr inbounds %struct.efc_els_io_req, ptr %els, i32 0, i32 9, i32 10
  %25 = ptrtoint ptr %iparam to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %iparam, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %.sink = phi i32 [ %26, %if.else ], [ %24, %entry.if.end_crit_edge ]
  %27 = getelementptr inbounds %struct.efc_els_io_req, ptr %els, i32 0, i32 9, i32 7
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %.sink, ptr %27, align 4
  %fc_id20 = getelementptr inbounds %struct.efc_node, ptr %3, i32 0, i32 17, i32 2
  %29 = ptrtoint ptr %fc_id20 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fc_id20, align 4
  %d_id = getelementptr inbounds %struct.efc_els_io_req, ptr %els, i32 0, i32 9, i32 8
  %31 = ptrtoint ptr %d_id to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %d_id, align 4
  %attached = getelementptr inbounds %struct.efc_node, ptr %3, i32 0, i32 11
  %32 = ptrtoint ptr %attached to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %attached, align 2, !range !231
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not = icmp eq i8 %33, 0
  br i1 %tobool.not, label %if.end.if.end24_crit_edge, label %if.then22

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %rpi_registered = getelementptr inbounds %struct.efc_els_io_req, ptr %els, i32 0, i32 9, i32 9
  %34 = ptrtoint ptr %rpi_registered to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %rpi_registered, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end.if.end24_crit_edge
  %send_els = getelementptr inbounds %struct.efc, ptr %5, i32 0, i32 15, i32 5
  %35 = ptrtoint ptr %send_els to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %send_els, align 4
  %call = tail call i32 %36(ptr noundef %5, ptr noundef %io) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool26.not = icmp eq i32 %call, 0
  br i1 %tobool26.not, label %if.end24.cleanup_crit_edge, label %if.end28

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  %37 = ptrtoint ptr %cbdata to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 2147483647, ptr %cbdata, align 4
  %ext_status = getelementptr inbounds %struct.efc_node_cb, ptr %cbdata, i32 0, i32 1
  %38 = ptrtoint ptr %ext_status to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 2147483647, ptr %ext_status, align 4
  %els_rsp = getelementptr inbounds %struct.efc_node_cb, ptr %cbdata, i32 0, i32 4
  %39 = call ptr @memcpy(ptr %els_rsp, ptr %rsp, i32 24)
  %els_req_free.i = getelementptr inbounds %struct.efc_els_io_req, ptr %els, i32 0, i32 6
  %40 = ptrtoint ptr %els_req_free.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %els_req_free.i, align 4
  %41 = ptrtoint ptr %node1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %node1, align 4
  call void @efc_node_post_els_resp(ptr noundef %42, i32 noundef 36, ptr noundef nonnull %cbdata) #5
  %ref.i.i = getelementptr inbounds %struct.efc_els_io_req, ptr %els, i32 0, i32 1
  %release.i.i = getelementptr inbounds %struct.efc_els_io_req, ptr %els, i32 0, i32 2
  %43 = ptrtoint ptr %release.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %release.i.i, align 4
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i, i32 noundef 4) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !235
  call void @llvm.prefetch.p0(ptr %ref.i.i, i32 1, i32 3, i32 1) #5
  %45 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i, ptr %ref.i.i, i32 1, ptr elementtype(i32) %ref.i.i) #5, !srcloc !236
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %45, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.end28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !237

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @refcount_warn_saturate(ptr noundef %ref.i.i, i32 noundef 3) #5
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !238
  call void %44(ptr noundef %ref.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %if.end24.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %cbdata) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efc_send_plogi_acc(ptr noundef %node, i32 noundef %ox_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node, align 8
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %entry.do.end6_crit_edge, label %cond.true

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end6

cond.true:                                        ; preds = %entry
  %logmask = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %logmask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %logmask, align 8
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp2.not = icmp eq i32 %and, 0
  br i1 %cmp2.not, label %cond.true.do.end6_crit_edge, label %do.end

cond.true.do.end6_crit_edge:                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end6

do.end:                                           ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #7
  %pci = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.5, ptr noundef %display_name, ptr noundef nonnull @.str.41) #8
  br label %do.end6

do.end6:                                          ; preds = %do.end, %cond.true.do.end6_crit_edge, %entry.do.end6_crit_edge
  %call.i = tail call ptr @efc_els_io_alloc_size(ptr noundef %node, i32 noundef 116, i32 noundef 1024) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end10, label %if.end13

do.end10:                                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #7
  %pci11 = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %pci11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci11, align 4
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.36) #8
  br label %cleanup

if.end13:                                         ; preds = %do.end6
  %display_name14 = getelementptr inbounds %struct.efc_els_io_req, ptr %call.i, i32 0, i32 8
  %8 = ptrtoint ptr %display_name14 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.44, ptr %display_name14, align 4
  %io = getelementptr inbounds %struct.efc_els_io_req, ptr %call.i, i32 0, i32 9
  %iparam = getelementptr inbounds %struct.efc_els_io_req, ptr %call.i, i32 0, i32 9, i32 10
  %9 = ptrtoint ptr %iparam to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 0, ptr %iparam, align 4
  %conv = trunc i32 %ox_id to i16
  %ox_id17 = getelementptr inbounds %struct.efc_els_io_req, ptr %call.i, i32 0, i32 9, i32 10, i32 0, i32 1
  %10 = ptrtoint ptr %ox_id17 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv, ptr %ox_id17, align 4
  %11 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %io, align 4
  %nport = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 2
  %13 = ptrtoint ptr %nport to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %nport, align 4
  %service_params20 = getelementptr inbounds %struct.efc_nport, ptr %14, i32 0, i32 30
  %15 = call ptr @memcpy(ptr %12, ptr %service_params20, i32 116)
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 2, ptr %12, align 1
  %_fl_resvd = getelementptr inbounds %struct.fc_els_flogi, ptr %12, i32 0, i32 1
  %17 = call ptr @memset(ptr %_fl_resvd, i32 0, i32 3)
  %sp_features = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 29, i32 8
  %18 = ptrtoint ptr %sp_features to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %sp_features, align 1
  %20 = and i16 %19, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool25.not = icmp eq i16 %20, 0
  br i1 %tobool25.not, label %if.end13.if.end31_crit_edge, label %if.then26

if.end13.if.end31_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31

if.then26:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %sp_features28 = getelementptr inbounds %struct.fc_els_flogi, ptr %12, i32 0, i32 2, i32 3
  %21 = ptrtoint ptr %sp_features28 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %sp_features28, align 1
  %23 = or i16 %22, 256
  store i16 %23, ptr %sp_features28, align 1
  br label %if.end31

if.end31:                                         ; preds = %if.then26, %if.end13.if.end31_crit_edge
  %call32 = tail call fastcc i32 @efc_els_send_rsp(ptr noundef nonnull %call.i, i32 noundef 116)
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %do.end10
  %retval.0 = phi i32 [ %call32, %if.end31 ], [ -5, %do.end10 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efc_send_flogi_p2p_acc(ptr noundef %node, i32 noundef %ox_id, i32 noundef %s_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node, align 8
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %entry.do.end5_crit_edge, label %cond.true

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end5

cond.true:                                        ; preds = %entry
  %logmask = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %logmask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %logmask, align 8
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp2.not = icmp eq i32 %and, 0
  br i1 %cmp2.not, label %cond.true.do.end5_crit_edge, label %do.end

cond.true.do.end5_crit_edge:                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end5

do.end:                                           ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #7
  %pci = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.5, ptr noundef %display_name, ptr noundef nonnull @.str.45) #8
  br label %do.end5

do.end5:                                          ; preds = %do.end, %cond.true.do.end5_crit_edge, %entry.do.end5_crit_edge
  %call.i = tail call ptr @efc_els_io_alloc_size(ptr noundef %node, i32 noundef 116, i32 noundef 1024) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end9, label %if.end12

do.end9:                                          ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #7
  %pci10 = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %pci10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci10, align 4
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.36) #8
  br label %cleanup

if.end12:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #7
  %display_name13 = getelementptr inbounds %struct.efc_els_io_req, ptr %call.i, i32 0, i32 8
  %8 = ptrtoint ptr %display_name13 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.48, ptr %display_name13, align 4
  %io = getelementptr inbounds %struct.efc_els_io_req, ptr %call.i, i32 0, i32 9
  %iparam = getelementptr inbounds %struct.efc_els_io_req, ptr %call.i, i32 0, i32 9, i32 10
  %9 = ptrtoint ptr %iparam to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 0, ptr %iparam, align 4
  %conv = trunc i32 %ox_id to i16
  %ox_id16 = getelementptr inbounds %struct.efc_els_io_req, ptr %call.i, i32 0, i32 9, i32 10, i32 0, i32 1
  %10 = ptrtoint ptr %ox_id16 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv, ptr %ox_id16, align 4
  store i32 %s_id, ptr %iparam, align 4
  %11 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %io, align 4
  %nport = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 2
  %13 = ptrtoint ptr %nport to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %nport, align 4
  %service_params = getelementptr inbounds %struct.efc_nport, ptr %14, i32 0, i32 30
  %15 = call ptr @memcpy(ptr %12, ptr %service_params, i32 116)
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 2, ptr %12, align 1
  %_fl_resvd = getelementptr inbounds %struct.fc_els_flogi, ptr %12, i32 0, i32 1
  %17 = call ptr @memset(ptr %_fl_resvd, i32 0, i32 3)
  %fl_cssp = getelementptr inbounds %struct.fc_els_flogi, ptr %12, i32 0, i32 5
  %18 = call ptr @memset(ptr %fl_cssp, i32 0, i32 64)
  %call24 = tail call fastcc i32 @efc_els_send_rsp(ptr noundef nonnull %call.i, i32 noundef 116)
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end9
  %retval.0 = phi i32 [ %call24, %if.end12 ], [ -5, %do.end9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efc_send_prli_acc(ptr noundef %node, i32 noundef %ox_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node, align 8
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %entry.do.end5_crit_edge, label %cond.true

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end5

cond.true:                                        ; preds = %entry
  %logmask = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %logmask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %logmask, align 8
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp2.not = icmp eq i32 %and, 0
  br i1 %cmp2.not, label %cond.true.do.end5_crit_edge, label %do.end

cond.true.do.end5_crit_edge:                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end5

do.end:                                           ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #7
  %pci = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.5, ptr noundef %display_name, ptr noundef nonnull @.str.49) #8
  br label %do.end5

do.end5:                                          ; preds = %do.end, %cond.true.do.end5_crit_edge, %entry.do.end5_crit_edge
  %call.i = tail call ptr @efc_els_io_alloc_size(ptr noundef %node, i32 noundef 20, i32 noundef 1024) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end9, label %if.end12

do.end9:                                          ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #7
  %pci10 = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %pci10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci10, align 4
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.36) #8
  br label %cleanup

if.end12:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #7
  %display_name13 = getelementptr inbounds %struct.efc_els_io_req, ptr %call.i, i32 0, i32 8
  %8 = ptrtoint ptr %display_name13 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.52, ptr %display_name13, align 4
  %io = getelementptr inbounds %struct.efc_els_io_req, ptr %call.i, i32 0, i32 9
  %iparam = getelementptr inbounds %struct.efc_els_io_req, ptr %call.i, i32 0, i32 9, i32 10
  %9 = ptrtoint ptr %iparam to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 0, ptr %iparam, align 4
  %conv = trunc i32 %ox_id to i16
  %ox_id16 = getelementptr inbounds %struct.efc_els_io_req, ptr %call.i, i32 0, i32 9, i32 10, i32 0, i32 1
  %10 = ptrtoint ptr %ox_id16 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv, ptr %ox_id16, align 4
  %11 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %io, align 4
  %13 = getelementptr inbounds i8, ptr %12, i32 4
  %14 = call ptr @memset(ptr %13, i32 0, i32 16)
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 2, ptr %12, align 4
  %prli_spp_len = getelementptr inbounds %struct.fc_els_prli, ptr %12, i32 0, i32 1
  %16 = ptrtoint ptr %prli_spp_len to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 16, ptr %prli_spp_len, align 1
  %prli_len = getelementptr inbounds %struct.fc_els_prli, ptr %12, i32 0, i32 2
  %17 = ptrtoint ptr %prli_len to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 20, ptr %prli_len, align 2
  %spp = getelementptr inbounds %struct.anon.89, ptr %12, i32 0, i32 1
  %18 = ptrtoint ptr %spp to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 8, ptr %spp, align 4
  %spp_flags = getelementptr inbounds %struct.anon.89, ptr %12, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %spp_flags to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 33, ptr %spp_flags, align 2
  %nport = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 2
  %20 = ptrtoint ptr %nport to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %nport, align 4
  %enable_ini = getelementptr inbounds %struct.efc_nport, ptr %21, i32 0, i32 24
  %22 = ptrtoint ptr %enable_ini to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %enable_ini, align 8, !range !231
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool22.not = icmp eq i8 %23, 0
  %or = select i1 %tobool22.not, i32 2, i32 34
  %enable_tgt = getelementptr inbounds %struct.efc_nport, ptr %21, i32 0, i32 25
  %24 = ptrtoint ptr %enable_tgt to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %enable_tgt, align 1, !range !231
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool25.not = icmp eq i8 %25, 0
  %cond27 = select i1 %tobool25.not, i32 0, i32 16
  %or28 = or i32 %cond27, %or
  %spp_params = getelementptr inbounds %struct.anon.89, ptr %12, i32 0, i32 1, i32 6
  %26 = ptrtoint ptr %spp_params to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or28, ptr %spp_params, align 4
  %call30 = tail call fastcc i32 @efc_els_send_rsp(ptr noundef nonnull %call.i, i32 noundef 20)
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end9
  %retval.0 = phi i32 [ %call30, %if.end12 ], [ -5, %do.end9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efc_send_prlo_acc(ptr noundef %node, i32 noundef %ox_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node, align 8
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %entry.do.end5_crit_edge, label %cond.true

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end5

cond.true:                                        ; preds = %entry
  %logmask = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %logmask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %logmask, align 8
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp2.not = icmp eq i32 %and, 0
  br i1 %cmp2.not, label %cond.true.do.end5_crit_edge, label %do.end

cond.true.do.end5_crit_edge:                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end5

do.end:                                           ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #7
  %pci = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.5, ptr noundef %display_name, ptr noundef nonnull @.str.53) #8
  br label %do.end5

do.end5:                                          ; preds = %do.end, %cond.true.do.end5_crit_edge, %entry.do.end5_crit_edge
  %call.i = tail call ptr @efc_els_io_alloc_size(ptr noundef %node, i32 noundef 20, i32 noundef 1024) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end9, label %if.end12

do.end9:                                          ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #7
  %pci10 = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %pci10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci10, align 4
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.36) #8
  br label %cleanup

if.end12:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #7
  %display_name13 = getelementptr inbounds %struct.efc_els_io_req, ptr %call.i, i32 0, i32 8
  %8 = ptrtoint ptr %display_name13 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.56, ptr %display_name13, align 4
  %io = getelementptr inbounds %struct.efc_els_io_req, ptr %call.i, i32 0, i32 9
  %iparam = getelementptr inbounds %struct.efc_els_io_req, ptr %call.i, i32 0, i32 9, i32 10
  %9 = ptrtoint ptr %iparam to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 0, ptr %iparam, align 4
  %conv = trunc i32 %ox_id to i16
  %ox_id16 = getelementptr inbounds %struct.efc_els_io_req, ptr %call.i, i32 0, i32 9, i32 10, i32 0, i32 1
  %10 = ptrtoint ptr %ox_id16 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv, ptr %ox_id16, align 4
  %11 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %io, align 4
  %13 = getelementptr inbounds i8, ptr %12, i32 4
  %14 = call ptr @memset(ptr %13, i32 0, i32 16)
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 2, ptr %12, align 4
  %prlo_obs = getelementptr inbounds %struct.fc_els_prlo, ptr %12, i32 0, i32 1
  %16 = ptrtoint ptr %prlo_obs to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 16, ptr %prlo_obs, align 1
  %prlo_len = getelementptr inbounds %struct.fc_els_prlo, ptr %12, i32 0, i32 2
  %17 = ptrtoint ptr %prlo_len to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 20, ptr %prlo_len, align 2
  %spp = getelementptr inbounds %struct.anon.90, ptr %12, i32 0, i32 1
  %18 = ptrtoint ptr %spp to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 8, ptr %spp, align 4
  %spp_flags = getelementptr inbounds %struct.anon.90, ptr %12, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %spp_flags to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %spp_flags, align 2
  %call22 = tail call fastcc i32 @efc_els_send_rsp(ptr noundef nonnull %call.i, i32 noundef 20)
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end9
  %retval.0 = phi i32 [ %call22, %if.end12 ], [ -5, %do.end9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efc_send_ls_acc(ptr noundef %node, i32 noundef %ox_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node, align 8
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %entry.do.end5_crit_edge, label %cond.true

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end5

cond.true:                                        ; preds = %entry
  %logmask = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %logmask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %logmask, align 8
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp2.not = icmp eq i32 %and, 0
  br i1 %cmp2.not, label %cond.true.do.end5_crit_edge, label %do.end

cond.true.do.end5_crit_edge:                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end5

do.end:                                           ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #7
  %pci = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.5, ptr noundef %display_name, ptr noundef nonnull @.str.57) #8
  br label %do.end5

do.end5:                                          ; preds = %do.end, %cond.true.do.end5_crit_edge, %entry.do.end5_crit_edge
  %call.i = tail call ptr @efc_els_io_alloc_size(ptr noundef %node, i32 noundef 4, i32 noundef 1024) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end9, label %if.end12

do.end9:                                          ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #7
  %pci10 = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %pci10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci10, align 4
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.36) #8
  br label %cleanup

if.end12:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #7
  %display_name13 = getelementptr inbounds %struct.efc_els_io_req, ptr %call.i, i32 0, i32 8
  %8 = ptrtoint ptr %display_name13 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.60, ptr %display_name13, align 4
  %io = getelementptr inbounds %struct.efc_els_io_req, ptr %call.i, i32 0, i32 9
  %iparam = getelementptr inbounds %struct.efc_els_io_req, ptr %call.i, i32 0, i32 9, i32 10
  %9 = ptrtoint ptr %iparam to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 0, ptr %iparam, align 4
  %conv = trunc i32 %ox_id to i16
  %ox_id16 = getelementptr inbounds %struct.efc_els_io_req, ptr %call.i, i32 0, i32 9, i32 10, i32 0, i32 1
  %10 = ptrtoint ptr %ox_id16 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv, ptr %ox_id16, align 4
  %11 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %io, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 33554432, ptr %12, align 1
  %call18 = tail call fastcc i32 @efc_els_send_rsp(ptr noundef nonnull %call.i, i32 noundef 4)
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end9
  %retval.0 = phi i32 [ %call18, %if.end12 ], [ -5, %do.end9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efc_send_logo_acc(ptr noundef %node, i32 noundef %ox_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node, align 8
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %entry.do.end5_crit_edge, label %cond.true

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end5

cond.true:                                        ; preds = %entry
  %logmask = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %logmask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %logmask, align 8
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp2.not = icmp eq i32 %and, 0
  br i1 %cmp2.not, label %cond.true.do.end5_crit_edge, label %do.end

cond.true.do.end5_crit_edge:                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end5

do.end:                                           ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #7
  %pci = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.5, ptr noundef %display_name, ptr noundef nonnull @.str.61) #8
  br label %do.end5

do.end5:                                          ; preds = %do.end, %cond.true.do.end5_crit_edge, %entry.do.end5_crit_edge
  %call.i = tail call ptr @efc_els_io_alloc_size(ptr noundef %node, i32 noundef 4, i32 noundef 1024) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end9, label %if.end12

do.end9:                                          ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #7
  %pci10 = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %pci10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci10, align 4
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.36) #8
  br label %cleanup

if.end12:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #7
  %display_name13 = getelementptr inbounds %struct.efc_els_io_req, ptr %call.i, i32 0, i32 8
  %8 = ptrtoint ptr %display_name13 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.64, ptr %display_name13, align 4
  %io = getelementptr inbounds %struct.efc_els_io_req, ptr %call.i, i32 0, i32 9
  %iparam = getelementptr inbounds %struct.efc_els_io_req, ptr %call.i, i32 0, i32 9, i32 10
  %9 = ptrtoint ptr %iparam to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 0, ptr %iparam, align 4
  %conv = trunc i32 %ox_id to i16
  %ox_id16 = getelementptr inbounds %struct.efc_els_io_req, ptr %call.i, i32 0, i32 9, i32 10, i32 0, i32 1
  %10 = ptrtoint ptr %ox_id16 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv, ptr %ox_id16, align 4
  %11 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %io, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 33554432, ptr %12, align 1
  %call18 = tail call fastcc i32 @efc_els_send_rsp(ptr noundef nonnull %call.i, i32 noundef 4)
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end9
  %retval.0 = phi i32 [ %call18, %if.end12 ], [ -5, %do.end9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efc_send_adisc_acc(ptr noundef %node, i32 noundef %ox_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node, align 8
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %entry.do.end5_crit_edge, label %cond.true

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end5

cond.true:                                        ; preds = %entry
  %logmask = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %logmask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %logmask, align 8
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp2.not = icmp eq i32 %and, 0
  br i1 %cmp2.not, label %cond.true.do.end5_crit_edge, label %do.end

cond.true.do.end5_crit_edge:                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end5

do.end:                                           ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #7
  %pci = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.5, ptr noundef %display_name, ptr noundef nonnull @.str.65) #8
  br label %do.end5

do.end5:                                          ; preds = %do.end, %cond.true.do.end5_crit_edge, %entry.do.end5_crit_edge
  %call.i = tail call ptr @efc_els_io_alloc_size(ptr noundef %node, i32 noundef 28, i32 noundef 1024) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end9, label %if.end12

do.end9:                                          ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #7
  %pci10 = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %pci10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci10, align 4
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.36) #8
  br label %cleanup

if.end12:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #7
  %display_name13 = getelementptr inbounds %struct.efc_els_io_req, ptr %call.i, i32 0, i32 8
  %8 = ptrtoint ptr %display_name13 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.68, ptr %display_name13, align 4
  %io = getelementptr inbounds %struct.efc_els_io_req, ptr %call.i, i32 0, i32 9
  %iparam = getelementptr inbounds %struct.efc_els_io_req, ptr %call.i, i32 0, i32 9, i32 10
  %9 = ptrtoint ptr %iparam to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 0, ptr %iparam, align 4
  %conv = trunc i32 %ox_id to i16
  %ox_id16 = getelementptr inbounds %struct.efc_els_io_req, ptr %call.i, i32 0, i32 9, i32 10, i32 0, i32 1
  %10 = ptrtoint ptr %ox_id16 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv, ptr %ox_id16, align 4
  %nport = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 2
  %11 = ptrtoint ptr %nport to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nport, align 4
  %13 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %io, align 4
  %15 = getelementptr inbounds i8, ptr %14, i32 1
  %16 = call ptr @memset(ptr %15, i32 0, i32 27)
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 2, ptr %14, align 1
  %fl_wwpn = getelementptr inbounds %struct.efc_nport, ptr %12, i32 0, i32 30, i32 20
  %18 = ptrtoint ptr %fl_wwpn to i32
  call void @__asan_loadN_noabort(i32 %18, i32 8)
  %19 = load i64, ptr %fl_wwpn, align 1
  %adisc_wwpn = getelementptr inbounds %struct.fc_els_adisc, ptr %14, i32 0, i32 4
  %20 = ptrtoint ptr %adisc_wwpn to i32
  call void @__asan_storeN_noabort(i32 %20, i32 8)
  store i64 %19, ptr %adisc_wwpn, align 1
  %fl_wwnn = getelementptr inbounds %struct.efc_nport, ptr %12, i32 0, i32 30, i32 28
  %21 = ptrtoint ptr %fl_wwnn to i32
  call void @__asan_loadN_noabort(i32 %21, i32 8)
  %22 = load i64, ptr %fl_wwnn, align 1
  %adisc_wwnn = getelementptr inbounds %struct.fc_els_adisc, ptr %14, i32 0, i32 5
  %23 = ptrtoint ptr %adisc_wwnn to i32
  call void @__asan_storeN_noabort(i32 %23, i32 8)
  store i64 %22, ptr %adisc_wwnn, align 1
  %adisc_port_id = getelementptr inbounds %struct.fc_els_adisc, ptr %14, i32 0, i32 7
  %nport20 = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 17, i32 4
  %24 = ptrtoint ptr %nport20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %nport20, align 4
  %fc_id = getelementptr inbounds %struct.efc_nport, ptr %25, i32 0, i32 17
  %26 = ptrtoint ptr %fc_id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fc_id, align 4
  %shr.i = lshr i32 %27, 16
  %conv.i = trunc i32 %shr.i to i8
  %28 = ptrtoint ptr %adisc_port_id to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv.i, ptr %adisc_port_id, align 1
  %shr1.i = lshr i32 %27, 8
  %conv3.i = trunc i32 %shr1.i to i8
  %arrayidx4.i = getelementptr %struct.fc_els_adisc, ptr %14, i32 0, i32 7, i32 1
  %29 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv3.i, ptr %arrayidx4.i, align 1
  %conv6.i = trunc i32 %27 to i8
  %arrayidx7.i = getelementptr %struct.fc_els_adisc, ptr %14, i32 0, i32 7, i32 2
  %30 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv6.i, ptr %arrayidx7.i, align 1
  %call21 = tail call fastcc i32 @efc_els_send_rsp(ptr noundef nonnull %call.i, i32 noundef 28)
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end9
  %retval.0 = phi i32 [ %call21, %if.end12 ], [ -5, %do.end9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efc_ns_send_rftid(ptr noundef %node) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node, align 8
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %entry.do.end5_crit_edge, label %cond.true

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end5

cond.true:                                        ; preds = %entry
  %logmask = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %logmask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %logmask, align 8
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp2.not = icmp eq i32 %and, 0
  br i1 %cmp2.not, label %cond.true.do.end5_crit_edge, label %do.end

cond.true.do.end5_crit_edge:                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end5

do.end:                                           ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #7
  %pci = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.5, ptr noundef %display_name, ptr noundef nonnull @.str.69) #8
  br label %do.end5

do.end5:                                          ; preds = %do.end, %cond.true.do.end5_crit_edge, %entry.do.end5_crit_edge
  %call.i = tail call ptr @efc_els_io_alloc_size(ptr noundef %node, i32 noundef 52, i32 noundef 1024) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end9, label %if.end12

do.end9:                                          ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #7
  %pci10 = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %pci10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci10, align 4
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.9) #8
  br label %cleanup

if.end12:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #7
  %io = getelementptr inbounds %struct.efc_els_io_req, ptr %call.i, i32 0, i32 9
  %iparam = getelementptr inbounds %struct.efc_els_io_req, ptr %call.i, i32 0, i32 9, i32 10
  %8 = ptrtoint ptr %iparam to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 34, ptr %iparam, align 4
  %type = getelementptr inbounds %struct.efc_io_ct_params, ptr %iparam, i32 0, i32 1
  %9 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 32, ptr %type, align 1
  %df_ctl = getelementptr inbounds %struct.efc_io_ct_params, ptr %iparam, i32 0, i32 2
  %10 = ptrtoint ptr %df_ctl to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %df_ctl, align 2
  %timeout = getelementptr inbounds %struct.efc_io_ct_params, ptr %iparam, i32 0, i32 3
  %11 = ptrtoint ptr %timeout to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %timeout, align 1
  %display_name19 = getelementptr inbounds %struct.efc_els_io_req, ptr %call.i, i32 0, i32 8
  %12 = ptrtoint ptr %display_name19 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.72, ptr %display_name19, align 4
  %13 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %io, align 4
  %15 = call ptr @memset(ptr %14, i32 0, i32 52)
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %14, align 2
  %ct_fs_type.i = getelementptr inbounds %struct.fc_ct_hdr, ptr %14, i32 0, i32 2
  %17 = ptrtoint ptr %ct_fs_type.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -4, ptr %ct_fs_type.i, align 2
  %ct_fs_subtype.i = getelementptr inbounds %struct.fc_ct_hdr, ptr %14, i32 0, i32 3
  %18 = ptrtoint ptr %ct_fs_subtype.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 2, ptr %ct_fs_subtype.i, align 1
  %ct_cmd.i = getelementptr inbounds %struct.fc_ct_hdr, ptr %14, i32 0, i32 6
  %19 = ptrtoint ptr %ct_cmd.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 535, ptr %ct_cmd.i, align 2
  %ct_mr_size.i = getelementptr inbounds %struct.fc_ct_hdr, ptr %14, i32 0, i32 7
  %20 = ptrtoint ptr %ct_mr_size.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 9, ptr %ct_mr_size.i, align 2
  %ct_explan.i = getelementptr inbounds %struct.fc_ct_hdr, ptr %14, i32 0, i32 10
  %21 = ptrtoint ptr %ct_explan.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %ct_explan.i, align 2
  %fp_fid = getelementptr inbounds %struct.anon.91, ptr %14, i32 0, i32 1, i32 0, i32 1
  %nport = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 17, i32 4
  %22 = ptrtoint ptr %nport to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %nport, align 4
  %fc_id = getelementptr inbounds %struct.efc_nport, ptr %23, i32 0, i32 17
  %24 = ptrtoint ptr %fc_id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fc_id, align 4
  %shr.i = lshr i32 %25, 16
  %conv.i = trunc i32 %shr.i to i8
  %26 = ptrtoint ptr %fp_fid to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv.i, ptr %fp_fid, align 1
  %shr1.i = lshr i32 %25, 8
  %conv3.i = trunc i32 %shr1.i to i8
  %arrayidx4.i = getelementptr %struct.anon.91, ptr %14, i32 0, i32 1, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv3.i, ptr %arrayidx4.i, align 1
  %conv6.i = trunc i32 %25 to i8
  %arrayidx7.i = getelementptr %struct.anon.91, ptr %14, i32 0, i32 1, i32 0, i32 1, i32 2
  %28 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv6.i, ptr %arrayidx7.i, align 1
  %fr_fts = getelementptr inbounds %struct.anon.91, ptr %14, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %fr_fts to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 256, ptr %fr_fts, align 4
  %call23 = tail call fastcc i32 @efc_els_send_req(ptr noundef %node, ptr noundef nonnull %call.i, i32 noundef 2)
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end9
  %retval.0 = phi i32 [ %call23, %if.end12 ], [ -5, %do.end9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efc_ns_send_rffid(ptr noundef %node) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node, align 8
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %entry.do.end5_crit_edge, label %cond.true

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end5

cond.true:                                        ; preds = %entry
  %logmask = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %logmask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %logmask, align 8
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp2.not = icmp eq i32 %and, 0
  br i1 %cmp2.not, label %cond.true.do.end5_crit_edge, label %do.end

cond.true.do.end5_crit_edge:                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end5

do.end:                                           ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #7
  %pci = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.5, ptr noundef %display_name, ptr noundef nonnull @.str.73) #8
  br label %do.end5

do.end5:                                          ; preds = %do.end, %cond.true.do.end5_crit_edge, %entry.do.end5_crit_edge
  %call.i = tail call ptr @efc_els_io_alloc_size(ptr noundef %node, i32 noundef 24, i32 noundef 1024) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end9, label %if.end12

do.end9:                                          ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #7
  %pci10 = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %pci10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci10, align 4
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.9) #8
  br label %cleanup

if.end12:                                         ; preds = %do.end5
  %io = getelementptr inbounds %struct.efc_els_io_req, ptr %call.i, i32 0, i32 9
  %iparam = getelementptr inbounds %struct.efc_els_io_req, ptr %call.i, i32 0, i32 9, i32 10
  %8 = ptrtoint ptr %iparam to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 34, ptr %iparam, align 4
  %type = getelementptr inbounds %struct.efc_io_ct_params, ptr %iparam, i32 0, i32 1
  %9 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 32, ptr %type, align 1
  %df_ctl = getelementptr inbounds %struct.efc_io_ct_params, ptr %iparam, i32 0, i32 2
  %10 = ptrtoint ptr %df_ctl to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %df_ctl, align 2
  %timeout = getelementptr inbounds %struct.efc_io_ct_params, ptr %iparam, i32 0, i32 3
  %11 = ptrtoint ptr %timeout to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %timeout, align 1
  %display_name19 = getelementptr inbounds %struct.efc_els_io_req, ptr %call.i, i32 0, i32 8
  %12 = ptrtoint ptr %display_name19 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.76, ptr %display_name19, align 4
  %13 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %io, align 4
  %15 = call ptr @memset(ptr %14, i32 0, i32 24)
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %14, align 2
  %ct_fs_type.i = getelementptr inbounds %struct.fc_ct_hdr, ptr %14, i32 0, i32 2
  %17 = ptrtoint ptr %ct_fs_type.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -4, ptr %ct_fs_type.i, align 2
  %ct_fs_subtype.i = getelementptr inbounds %struct.fc_ct_hdr, ptr %14, i32 0, i32 3
  %18 = ptrtoint ptr %ct_fs_subtype.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 2, ptr %ct_fs_subtype.i, align 1
  %ct_cmd.i = getelementptr inbounds %struct.fc_ct_hdr, ptr %14, i32 0, i32 6
  %19 = ptrtoint ptr %ct_cmd.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 543, ptr %ct_cmd.i, align 2
  %ct_mr_size.i = getelementptr inbounds %struct.fc_ct_hdr, ptr %14, i32 0, i32 7
  %20 = ptrtoint ptr %ct_mr_size.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 2, ptr %ct_mr_size.i, align 2
  %ct_explan.i = getelementptr inbounds %struct.fc_ct_hdr, ptr %14, i32 0, i32 10
  %21 = ptrtoint ptr %ct_explan.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %ct_explan.i, align 2
  %fp_fid = getelementptr inbounds %struct.anon.92, ptr %14, i32 0, i32 1, i32 0, i32 1
  %nport = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 17, i32 4
  %22 = ptrtoint ptr %nport to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %nport, align 4
  %fc_id = getelementptr inbounds %struct.efc_nport, ptr %23, i32 0, i32 17
  %24 = ptrtoint ptr %fc_id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fc_id, align 4
  %shr.i = lshr i32 %25, 16
  %conv.i = trunc i32 %shr.i to i8
  %26 = ptrtoint ptr %fp_fid to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv.i, ptr %fp_fid, align 1
  %shr1.i = lshr i32 %25, 8
  %conv3.i = trunc i32 %shr1.i to i8
  %arrayidx4.i = getelementptr %struct.anon.92, ptr %14, i32 0, i32 1, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv3.i, ptr %arrayidx4.i, align 1
  %conv6.i = trunc i32 %25 to i8
  %arrayidx7.i = getelementptr %struct.anon.92, ptr %14, i32 0, i32 1, i32 0, i32 1, i32 2
  %28 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv6.i, ptr %arrayidx7.i, align 1
  %nport22 = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 2
  %29 = ptrtoint ptr %nport22 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %nport22, align 4
  %enable_ini = getelementptr inbounds %struct.efc_nport, ptr %30, i32 0, i32 24
  %31 = ptrtoint ptr %enable_ini to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %enable_ini, align 8, !range !231
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool23.not = icmp eq i8 %32, 0
  br i1 %tobool23.not, label %if.end12.if.end27_crit_edge, label %if.then24

if.end12.if.end27_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

if.then24:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %fr_feat = getelementptr inbounds %struct.anon.92, ptr %14, i32 0, i32 1, i32 2
  %33 = ptrtoint ptr %fr_feat to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %fr_feat, align 2
  %35 = or i8 %34, 2
  store i8 %35, ptr %fr_feat, align 2
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end12.if.end27_crit_edge
  %36 = ptrtoint ptr %nport22 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %nport22, align 4
  %enable_tgt = getelementptr inbounds %struct.efc_nport, ptr %37, i32 0, i32 25
  %38 = ptrtoint ptr %enable_tgt to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %enable_tgt, align 1, !range !231
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool29.not = icmp eq i8 %39, 0
  br i1 %tobool29.not, label %if.end27.if.end36_crit_edge, label %if.then30

if.end27.if.end36_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  %fr_feat32 = getelementptr inbounds %struct.anon.92, ptr %14, i32 0, i32 1, i32 2
  %40 = ptrtoint ptr %fr_feat32 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %fr_feat32, align 2
  %42 = or i8 %41, 1
  store i8 %42, ptr %fr_feat32, align 2
  br label %if.end36

if.end36:                                         ; preds = %if.then30, %if.end27.if.end36_crit_edge
  %fr_type = getelementptr inbounds %struct.anon.92, ptr %14, i32 0, i32 1, i32 3
  %43 = ptrtoint ptr %fr_type to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 8, ptr %fr_type, align 1
  %call38 = tail call fastcc i32 @efc_els_send_req(ptr noundef %node, ptr noundef nonnull %call.i, i32 noundef 2)
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %do.end9
  %retval.0 = phi i32 [ %call38, %if.end36 ], [ -5, %do.end9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efc_ns_send_gidpt(ptr noundef %node) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node, align 8
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %entry.do.end5_crit_edge, label %cond.true

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end5

cond.true:                                        ; preds = %entry
  %logmask = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %logmask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %logmask, align 8
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp2.not = icmp eq i32 %and, 0
  br i1 %cmp2.not, label %cond.true.do.end5_crit_edge, label %do.end

cond.true.do.end5_crit_edge:                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end5

do.end:                                           ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #7
  %pci = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.5, ptr noundef %display_name, ptr noundef nonnull @.str.77) #8
  br label %do.end5

do.end5:                                          ; preds = %do.end, %cond.true.do.end5_crit_edge, %entry.do.end5_crit_edge
  %call = tail call ptr @efc_els_io_alloc_size(ptr noundef %node, i32 noundef 20, i32 noundef 8096)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end9, label %if.end12

do.end9:                                          ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #7
  %pci10 = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %pci10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci10, align 4
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.9) #8
  br label %cleanup

if.end12:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #7
  %io = getelementptr inbounds %struct.efc_els_io_req, ptr %call, i32 0, i32 9
  %iparam = getelementptr inbounds %struct.efc_els_io_req, ptr %call, i32 0, i32 9, i32 10
  %8 = ptrtoint ptr %iparam to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 34, ptr %iparam, align 4
  %type = getelementptr inbounds %struct.efc_io_ct_params, ptr %iparam, i32 0, i32 1
  %9 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 32, ptr %type, align 1
  %df_ctl = getelementptr inbounds %struct.efc_io_ct_params, ptr %iparam, i32 0, i32 2
  %10 = ptrtoint ptr %df_ctl to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %df_ctl, align 2
  %timeout = getelementptr inbounds %struct.efc_io_ct_params, ptr %iparam, i32 0, i32 3
  %11 = ptrtoint ptr %timeout to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %timeout, align 1
  %display_name19 = getelementptr inbounds %struct.efc_els_io_req, ptr %call, i32 0, i32 8
  %12 = ptrtoint ptr %display_name19 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.80, ptr %display_name19, align 4
  %13 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %io, align 4
  %15 = call ptr @memset(ptr %14, i32 0, i32 20)
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %14, align 2
  %ct_fs_type.i = getelementptr inbounds %struct.fc_ct_hdr, ptr %14, i32 0, i32 2
  %17 = ptrtoint ptr %ct_fs_type.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -4, ptr %ct_fs_type.i, align 2
  %ct_fs_subtype.i = getelementptr inbounds %struct.fc_ct_hdr, ptr %14, i32 0, i32 3
  %18 = ptrtoint ptr %ct_fs_subtype.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 2, ptr %ct_fs_subtype.i, align 1
  %ct_cmd.i = getelementptr inbounds %struct.fc_ct_hdr, ptr %14, i32 0, i32 6
  %19 = ptrtoint ptr %ct_cmd.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 417, ptr %ct_cmd.i, align 2
  %ct_mr_size.i = getelementptr inbounds %struct.fc_ct_hdr, ptr %14, i32 0, i32 7
  %20 = ptrtoint ptr %ct_mr_size.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 1, ptr %ct_mr_size.i, align 2
  %ct_explan.i = getelementptr inbounds %struct.fc_ct_hdr, ptr %14, i32 0, i32 10
  %21 = ptrtoint ptr %ct_explan.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %ct_explan.i, align 2
  %gidpt = getelementptr inbounds %struct.anon.93, ptr %14, i32 0, i32 1
  %22 = ptrtoint ptr %gidpt to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 8, ptr %gidpt, align 2
  %call21 = tail call fastcc i32 @efc_els_send_req(ptr noundef %node, ptr noundef nonnull %call, i32 noundef 2)
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end9
  %retval.0 = phi i32 [ %call21, %if.end12 ], [ -5, %do.end9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efc_els_io_cleanup(ptr noundef %els, i32 noundef %evt, ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %els_req_free = getelementptr inbounds %struct.efc_els_io_req, ptr %els, i32 0, i32 6
  %0 = ptrtoint ptr %els_req_free to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %els_req_free, align 4
  %node = getelementptr inbounds %struct.efc_els_io_req, ptr %els, i32 0, i32 3
  %1 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %node, align 4
  tail call void @efc_node_post_els_resp(ptr noundef %2, i32 noundef %evt, ptr noundef %arg) #5
  %ref.i = getelementptr inbounds %struct.efc_els_io_req, ptr %els, i32 0, i32 1
  %release.i = getelementptr inbounds %struct.efc_els_io_req, ptr %els, i32 0, i32 2
  %3 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %release.i, align 4
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !235
  tail call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #5
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #5, !srcloc !236
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.efc_els_io_free.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !237

if.end5.i.i.i.i.i.efc_els_io_free.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %efc_els_io_free.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #5
  br label %efc_els_io_free.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !238
  tail call void %4(ptr noundef %ref.i) #5
  br label %efc_els_io_free.exit

efc_els_io_free.exit:                             ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.efc_els_io_free.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @efc_node_post_els_resp(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efc_send_ct_rsp(ptr noundef %efc, ptr noundef %node, i16 noundef zeroext %ox_id, ptr nocapture noundef readonly %ct_hdr, i32 noundef %cmd_rsp_code, i32 noundef %reason_code, i32 noundef %reason_code_explanation) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @efc_els_io_alloc_size(ptr noundef %node, i32 noundef 256, i32 noundef 1024) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %pci = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 1
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %io = getelementptr inbounds %struct.efc_els_io_req, ptr %call.i, i32 0, i32 9
  %rsp1 = getelementptr inbounds %struct.efc_els_io_req, ptr %call.i, i32 0, i32 9, i32 1
  %2 = ptrtoint ptr %rsp1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rsp1, align 4
  %4 = call ptr @memcpy(ptr %3, ptr %ct_hdr, i32 14)
  %conv = trunc i32 %cmd_rsp_code to i16
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %3, align 2
  %ct_fs_type.i = getelementptr inbounds %struct.fc_ct_hdr, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %ct_fs_type.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -4, ptr %ct_fs_type.i, align 2
  %ct_fs_subtype.i = getelementptr inbounds %struct.fc_ct_hdr, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %ct_fs_subtype.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %ct_fs_subtype.i, align 1
  %ct_options.i = getelementptr inbounds %struct.fc_ct_hdr, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %ct_options.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %ct_options.i, align 2
  %ct_cmd.i = getelementptr inbounds %struct.fc_ct_hdr, ptr %3, i32 0, i32 6
  %9 = ptrtoint ptr %ct_cmd.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv, ptr %ct_cmd.i, align 2
  %ct_mr_size.i = getelementptr inbounds %struct.fc_ct_hdr, ptr %3, i32 0, i32 7
  %10 = ptrtoint ptr %ct_mr_size.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %ct_mr_size.i, align 2
  %ct_reason.i = getelementptr inbounds %struct.fc_ct_hdr, ptr %3, i32 0, i32 9
  %ct_explan.i = getelementptr inbounds %struct.fc_ct_hdr, ptr %3, i32 0, i32 10
  %ct_vendor.i = getelementptr inbounds %struct.fc_ct_hdr, ptr %3, i32 0, i32 11
  %11 = ptrtoint ptr %ct_vendor.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %ct_vendor.i, align 1
  %conv2 = trunc i32 %reason_code to i8
  %12 = ptrtoint ptr %ct_reason.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv2, ptr %ct_reason.i, align 1
  %conv3 = trunc i32 %reason_code_explanation to i8
  %13 = ptrtoint ptr %ct_explan.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv3, ptr %ct_explan.i, align 2
  %display_name = getelementptr inbounds %struct.efc_els_io_req, ptr %call.i, i32 0, i32 8
  %14 = ptrtoint ptr %display_name to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.82, ptr %display_name, align 4
  %cb = getelementptr inbounds %struct.efc_els_io_req, ptr %call.i, i32 0, i32 4
  %15 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @efc_ct_acc_cb, ptr %cb, align 4
  %io_type = getelementptr inbounds %struct.efc_els_io_req, ptr %call.i, i32 0, i32 9, i32 2
  %16 = ptrtoint ptr %io_type to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 3, ptr %io_type, align 4
  %xmit_len = getelementptr inbounds %struct.efc_els_io_req, ptr %call.i, i32 0, i32 9, i32 3
  %17 = ptrtoint ptr %xmit_len to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 16, ptr %xmit_len, align 4
  %rnode = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 17
  %18 = ptrtoint ptr %rnode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rnode, align 4
  %rpi = getelementptr inbounds %struct.efc_els_io_req, ptr %call.i, i32 0, i32 9, i32 5
  %20 = ptrtoint ptr %rpi to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %rpi, align 4
  %fc_id = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 17, i32 2
  %21 = ptrtoint ptr %fc_id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fc_id, align 4
  %d_id = getelementptr inbounds %struct.efc_els_io_req, ptr %call.i, i32 0, i32 9, i32 8
  %23 = ptrtoint ptr %d_id to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %d_id, align 4
  %iparam = getelementptr inbounds %struct.efc_els_io_req, ptr %call.i, i32 0, i32 9, i32 10
  %24 = ptrtoint ptr %iparam to i32
  call void @__asan_storeN_noabort(i32 %24, i32 8)
  store i64 225180002843361280, ptr %iparam, align 4
  %ox_id12 = getelementptr inbounds %struct.efc_els_io_req, ptr %call.i, i32 0, i32 9, i32 10, i32 0, i32 1
  %25 = ptrtoint ptr %ox_id12 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %ox_id, ptr %ox_id12, align 4
  %send_els = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 15, i32 5
  %26 = ptrtoint ptr %send_els to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %send_els, align 4
  %call22 = tail call i32 %27(ptr noundef %efc, ptr noundef %io) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end.cleanup_crit_edge, label %if.then24

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then24:                                        ; preds = %if.end
  %ref.i = getelementptr inbounds %struct.efc_els_io_req, ptr %call.i, i32 0, i32 1
  %release.i = getelementptr inbounds %struct.efc_els_io_req, ptr %call.i, i32 0, i32 2
  %28 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %release.i, align 4
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !235
  tail call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #5
  %30 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #5, !srcloc !236
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !237

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #5
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !238
  tail call void %29(ptr noundef %ref.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %if.end.cleanup_crit_edge ], [ -5, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ -5, %if.then10.i.i.i.i.i ], [ -5, %if.then.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efc_ct_acc_cb(ptr noundef %arg, i32 noundef %length, i32 noundef %status, i32 noundef %ext_status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ref.i = getelementptr inbounds %struct.efc_els_io_req, ptr %arg, i32 0, i32 1
  %release.i = getelementptr inbounds %struct.efc_els_io_req, ptr %arg, i32 0, i32 2
  %0 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %release.i, align 4
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !235
  tail call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #5
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #5, !srcloc !236
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.efc_els_io_free.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !237

if.end5.i.i.i.i.i.efc_els_io_free.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %efc_els_io_free.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #5
  br label %efc_els_io_free.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !238
  tail call void %1(ptr noundef %ref.i) #5
  br label %efc_els_io_free.exit

efc_els_io_free.exit:                             ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.efc_els_io_free.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efc_send_bls_acc(ptr nocapture noundef readonly %node, ptr nocapture noundef readonly %hdr) local_unnamed_addr #0 align 64 {
entry:
  %bls = alloca %struct.sli_bls_params, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %bls) #5
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node, align 8
  %2 = getelementptr inbounds i8, ptr %bls, i32 20
  %3 = call ptr @memset(ptr %2, i32 0, i32 20)
  %fh_ox_id = getelementptr inbounds %struct.fc_frame_header, ptr %hdr, i32 0, i32 9
  %4 = ptrtoint ptr %fh_ox_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %fh_ox_id, align 4
  %ox_id = getelementptr inbounds %struct.sli_bls_params, ptr %bls, i32 0, i32 2
  %6 = ptrtoint ptr %ox_id to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %ox_id, align 4
  %fh_rx_id = getelementptr inbounds %struct.fc_frame_header, ptr %hdr, i32 0, i32 10
  %7 = ptrtoint ptr %fh_rx_id to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %fh_rx_id, align 2
  %rx_id = getelementptr inbounds %struct.sli_bls_params, ptr %bls, i32 0, i32 3
  %9 = ptrtoint ptr %rx_id to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %rx_id, align 2
  %fh_d_id = getelementptr inbounds %struct.fc_frame_header, ptr %hdr, i32 0, i32 1
  %10 = ptrtoint ptr %fh_d_id to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %fh_d_id, align 1
  %conv.i = zext i8 %11 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 16
  %arrayidx1.i = getelementptr %struct.fc_frame_header, ptr %hdr, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %13 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 8
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr %struct.fc_frame_header, ptr %hdr, i32 0, i32 1, i32 2
  %14 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %15 to i32
  %or6.i = or i32 %or.i, %conv5.i
  %16 = ptrtoint ptr %bls to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or6.i, ptr %bls, align 4
  %rnode = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 17
  %fc_id = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 17, i32 2
  %17 = ptrtoint ptr %fc_id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fc_id, align 4
  %d_id = getelementptr inbounds %struct.sli_bls_params, ptr %bls, i32 0, i32 1
  %19 = ptrtoint ptr %d_id to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %d_id, align 4
  %20 = ptrtoint ptr %rnode to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rnode, align 4
  %rpi = getelementptr inbounds %struct.sli_bls_params, ptr %bls, i32 0, i32 4
  %22 = ptrtoint ptr %rpi to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %rpi, align 4
  %nport = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 2
  %23 = ptrtoint ptr %nport to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %nport, align 4
  %indicator3 = getelementptr inbounds %struct.efc_nport, ptr %24, i32 0, i32 16
  %25 = ptrtoint ptr %indicator3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %indicator3, align 8
  %vpi = getelementptr inbounds %struct.sli_bls_params, ptr %bls, i32 0, i32 5
  %27 = ptrtoint ptr %vpi to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %vpi, align 4
  %ba_ox_id = getelementptr inbounds %struct.sli_bls_params, ptr %bls, i32 0, i32 7, i32 4
  %28 = ptrtoint ptr %ba_ox_id to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %5, ptr %ba_ox_id, align 2
  %ba_rx_id = getelementptr inbounds %struct.sli_bls_params, ptr %bls, i32 0, i32 7, i32 6
  %29 = ptrtoint ptr %ba_rx_id to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %8, ptr %ba_rx_id, align 2
  %ba_high_seq_cnt = getelementptr inbounds %struct.sli_bls_params, ptr %bls, i32 0, i32 7, i32 10
  %30 = ptrtoint ptr %ba_high_seq_cnt to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 -1, ptr %ba_high_seq_cnt, align 2
  %send_bls = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 15, i32 6
  %31 = ptrtoint ptr %send_bls to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %send_bls, align 4
  %call7 = call i32 %32(ptr noundef %1, i32 noundef 132, ptr noundef nonnull %bls) #5
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %bls) #5
  ret i32 %call7
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efc_els_req_cb(ptr noundef %arg, i32 noundef %length, i32 noundef %status, i32 noundef %ext_status) #0 align 64 {
entry:
  %cbdata = alloca %struct.efc_node_cb, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %cbdata) #5
  %0 = getelementptr inbounds i8, ptr %cbdata, i32 12
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4, !annotation !239
  %node1 = getelementptr inbounds %struct.efc_els_io_req, ptr %arg, i32 0, i32 3
  %2 = ptrtoint ptr %node1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %node1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status)
  %tobool.not = icmp eq i32 %status, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %pci = getelementptr inbounds %struct.efc, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %3, i32 0, i32 1
  %display_name6 = getelementptr inbounds %struct.efc_els_io_req, ptr %arg, i32 0, i32 8
  %8 = ptrtoint ptr %display_name6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %display_name6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.85, ptr noundef %display_name, ptr noundef %9, i32 noundef %status, i32 noundef %ext_status) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %rsp = getelementptr inbounds %struct.efc_els_io_req, ptr %arg, i32 0, i32 9, i32 1
  %len = getelementptr inbounds %struct.efc_els_io_req, ptr %arg, i32 0, i32 9, i32 1, i32 4
  %10 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %length, ptr %len, align 4
  %11 = ptrtoint ptr %cbdata to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %status, ptr %cbdata, align 4
  %ext_status8 = getelementptr inbounds %struct.efc_node_cb, ptr %cbdata, i32 0, i32 1
  %12 = ptrtoint ptr %ext_status8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %ext_status, ptr %ext_status8, align 4
  %header = getelementptr inbounds %struct.efc_node_cb, ptr %cbdata, i32 0, i32 2
  %13 = ptrtoint ptr %header to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %header, align 4
  %els_rsp = getelementptr inbounds %struct.efc_node_cb, ptr %cbdata, i32 0, i32 4
  %14 = call ptr @memcpy(ptr %els_rsp, ptr %rsp, i32 24)
  %rsp_len = getelementptr inbounds %struct.efc_node_cb, ptr %cbdata, i32 0, i32 5
  %15 = ptrtoint ptr %rsp_len to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %length, ptr %rsp_len, align 4
  %size = getelementptr inbounds %struct.efc_els_io_req, ptr %arg, i32 0, i32 9, i32 1, i32 3
  %16 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %length)
  %cmp = icmp ult i32 %17, %length
  br i1 %cmp, label %do.end16, label %if.end22

do.end16:                                         ; preds = %if.end
  %pci17 = getelementptr inbounds %struct.efc, ptr %5, i32 0, i32 1
  %18 = ptrtoint ptr %pci17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pci17, align 4
  %dev18 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev18, ptr noundef nonnull @.str.88, i32 noundef %length, i32 noundef %17) #8
  %els_req_free.i = getelementptr inbounds %struct.efc_els_io_req, ptr %arg, i32 0, i32 6
  %20 = ptrtoint ptr %els_req_free.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %els_req_free.i, align 4
  %21 = ptrtoint ptr %node1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %node1, align 4
  call void @efc_node_post_els_resp(ptr noundef %22, i32 noundef 35, ptr noundef nonnull %cbdata) #5
  %ref.i.i = getelementptr inbounds %struct.efc_els_io_req, ptr %arg, i32 0, i32 1
  %release.i.i = getelementptr inbounds %struct.efc_els_io_req, ptr %arg, i32 0, i32 2
  %23 = ptrtoint ptr %release.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %release.i.i, align 4
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i, i32 noundef 4) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !235
  call void @llvm.prefetch.p0(ptr %ref.i.i, i32 1, i32 3, i32 1) #5
  %25 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i, ptr %ref.i.i, i32 1, ptr elementtype(i32) %ref.i.i) #5, !srcloc !236
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %do.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !237

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @refcount_warn_saturate(ptr noundef %ref.i.i, i32 noundef 3) #5
  br label %cleanup

if.then.i.i.i:                                    ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !238
  call void %24(ptr noundef %ref.i.i) #5
  br label %cleanup

if.end22:                                         ; preds = %if.end
  %26 = zext i32 %status to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i32 %status, label %do.end54 [
    i32 0, label %sw.bb
    i32 9, label %sw.bb23
    i32 3, label %sw.bb42
  ]

sw.bb:                                            ; preds = %if.end22
  %els_req_free.i96 = getelementptr inbounds %struct.efc_els_io_req, ptr %arg, i32 0, i32 6
  %27 = ptrtoint ptr %els_req_free.i96 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %els_req_free.i96, align 4
  %28 = ptrtoint ptr %node1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %node1, align 4
  call void @efc_node_post_els_resp(ptr noundef %29, i32 noundef 33, ptr noundef nonnull %cbdata) #5
  %ref.i.i98 = getelementptr inbounds %struct.efc_els_io_req, ptr %arg, i32 0, i32 1
  %release.i.i99 = getelementptr inbounds %struct.efc_els_io_req, ptr %arg, i32 0, i32 2
  %30 = ptrtoint ptr %release.i.i99 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %release.i.i99, align 4
  %call.i.i.i.i.i.i.i.i100 = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i98, i32 noundef 4) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !235
  call void @llvm.prefetch.p0(ptr %ref.i.i98, i32 1, i32 3, i32 1) #5
  %32 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i98, ptr %ref.i.i98, i32 1, ptr elementtype(i32) %ref.i.i98) #5, !srcloc !236
  %asmresult.i.i.i.i.i.i.i.i.i101 = extractvalue { i32, i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i101)
  %cmp.i.i.i.i.i.i102 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i101, 1
  br i1 %cmp.i.i.i.i.i.i102, label %if.then.i.i.i106, label %if.end5.i.i.i.i.i.i104

if.end5.i.i.i.i.i.i104:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i101)
  %.not.i.i.i.i.i.i103 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i101, 0
  br i1 %.not.i.i.i.i.i.i103, label %if.end5.i.i.i.i.i.i104.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i105, !prof !237

if.end5.i.i.i.i.i.i104.cleanup_crit_edge:         ; preds = %if.end5.i.i.i.i.i.i104
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then10.i.i.i.i.i.i105:                         ; preds = %if.end5.i.i.i.i.i.i104
  call void @__sanitizer_cov_trace_pc() #7
  call void @refcount_warn_saturate(ptr noundef %ref.i.i98, i32 noundef 3) #5
  br label %cleanup

if.then.i.i.i106:                                 ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !238
  call void %31(ptr noundef %ref.i.i98) #5
  br label %cleanup

sw.bb23:                                          ; preds = %if.end22
  %33 = and i32 %ext_status, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 327680, i32 %33)
  %cond62 = icmp eq i32 %33, 327680
  br i1 %cond62, label %sw.bb24, label %sw.default

sw.bb24:                                          ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %node1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %node1, align 4
  %els_req_cnt = getelementptr inbounds %struct.efc_node, ptr %35, i32 0, i32 35
  %36 = ptrtoint ptr %els_req_cnt to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %els_req_cnt, align 4
  %dec = add i32 %37, -1
  store i32 %dec, ptr %els_req_cnt, align 4
  %38 = load ptr, ptr %node1, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 8
  %pci31 = getelementptr inbounds %struct.efc, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %pci31 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pci31, align 4
  %dev32 = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  %display_name34 = getelementptr inbounds %struct.efc_node, ptr %38, i32 0, i32 1
  %display_name36 = getelementptr inbounds %struct.efc_els_io_req, ptr %arg, i32 0, i32 8
  %43 = ptrtoint ptr %display_name36 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %display_name36, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev32, ptr noundef nonnull @.str.92, ptr noundef %display_name34, ptr noundef %44) #8
  %delay_timer = getelementptr inbounds %struct.efc_els_io_req, ptr %arg, i32 0, i32 7
  tail call void @init_timer_key(ptr noundef %delay_timer, ptr noundef nonnull @efc_els_delay_timer_cb, i32 noundef 0, ptr noundef nonnull @.str.94, ptr noundef nonnull @efc_els_req_cb.__key) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %45 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %45, 500
  %call41 = tail call i32 @mod_timer(ptr noundef %delay_timer, i32 noundef %add) #5
  br label %cleanup

sw.default:                                       ; preds = %sw.bb23
  %els_req_free.i108 = getelementptr inbounds %struct.efc_els_io_req, ptr %arg, i32 0, i32 6
  %46 = ptrtoint ptr %els_req_free.i108 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %els_req_free.i108, align 4
  %47 = ptrtoint ptr %node1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %node1, align 4
  call void @efc_node_post_els_resp(ptr noundef %48, i32 noundef 37, ptr noundef nonnull %cbdata) #5
  %ref.i.i110 = getelementptr inbounds %struct.efc_els_io_req, ptr %arg, i32 0, i32 1
  %release.i.i111 = getelementptr inbounds %struct.efc_els_io_req, ptr %arg, i32 0, i32 2
  %49 = ptrtoint ptr %release.i.i111 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %release.i.i111, align 4
  %call.i.i.i.i.i.i.i.i112 = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i110, i32 noundef 4) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !235
  call void @llvm.prefetch.p0(ptr %ref.i.i110, i32 1, i32 3, i32 1) #5
  %51 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i110, ptr %ref.i.i110, i32 1, ptr elementtype(i32) %ref.i.i110) #5, !srcloc !236
  %asmresult.i.i.i.i.i.i.i.i.i113 = extractvalue { i32, i32, i32 } %51, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i113)
  %cmp.i.i.i.i.i.i114 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i113, 1
  br i1 %cmp.i.i.i.i.i.i114, label %if.then.i.i.i118, label %if.end5.i.i.i.i.i.i116

if.end5.i.i.i.i.i.i116:                           ; preds = %sw.default
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i113)
  %.not.i.i.i.i.i.i115 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i113, 0
  br i1 %.not.i.i.i.i.i.i115, label %if.end5.i.i.i.i.i.i116.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i117, !prof !237

if.end5.i.i.i.i.i.i116.cleanup_crit_edge:         ; preds = %if.end5.i.i.i.i.i.i116
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then10.i.i.i.i.i.i117:                         ; preds = %if.end5.i.i.i.i.i.i116
  call void @__sanitizer_cov_trace_pc() #7
  call void @refcount_warn_saturate(ptr noundef %ref.i.i110, i32 noundef 3) #5
  br label %cleanup

if.then.i.i.i118:                                 ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !238
  call void %50(ptr noundef %ref.i.i110) #5
  br label %cleanup

sw.bb42:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %ext_status)
  %cond = icmp eq i32 %ext_status, 2
  br i1 %cond, label %sw.bb43, label %do.end47

sw.bb43:                                          ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @efc_els_retry(ptr noundef %arg)
  br label %cleanup

do.end47:                                         ; preds = %sw.bb42
  %pci48 = getelementptr inbounds %struct.efc, ptr %5, i32 0, i32 1
  %52 = ptrtoint ptr %pci48 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pci48, align 4
  %dev49 = getelementptr inbounds %struct.pci_dev, ptr %53, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev49, ptr noundef nonnull @.str.96, i32 noundef %ext_status) #8
  %els_req_free.i120 = getelementptr inbounds %struct.efc_els_io_req, ptr %arg, i32 0, i32 6
  %54 = ptrtoint ptr %els_req_free.i120 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %els_req_free.i120, align 4
  %55 = ptrtoint ptr %node1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %node1, align 4
  call void @efc_node_post_els_resp(ptr noundef %56, i32 noundef 35, ptr noundef nonnull %cbdata) #5
  %ref.i.i122 = getelementptr inbounds %struct.efc_els_io_req, ptr %arg, i32 0, i32 1
  %release.i.i123 = getelementptr inbounds %struct.efc_els_io_req, ptr %arg, i32 0, i32 2
  %57 = ptrtoint ptr %release.i.i123 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %release.i.i123, align 4
  %call.i.i.i.i.i.i.i.i124 = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i122, i32 noundef 4) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !235
  call void @llvm.prefetch.p0(ptr %ref.i.i122, i32 1, i32 3, i32 1) #5
  %59 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i122, ptr %ref.i.i122, i32 1, ptr elementtype(i32) %ref.i.i122) #5, !srcloc !236
  %asmresult.i.i.i.i.i.i.i.i.i125 = extractvalue { i32, i32, i32 } %59, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i125)
  %cmp.i.i.i.i.i.i126 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i125, 1
  br i1 %cmp.i.i.i.i.i.i126, label %if.then.i.i.i130, label %if.end5.i.i.i.i.i.i128

if.end5.i.i.i.i.i.i128:                           ; preds = %do.end47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i125)
  %.not.i.i.i.i.i.i127 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i125, 0
  br i1 %.not.i.i.i.i.i.i127, label %if.end5.i.i.i.i.i.i128.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i129, !prof !237

if.end5.i.i.i.i.i.i128.cleanup_crit_edge:         ; preds = %if.end5.i.i.i.i.i.i128
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then10.i.i.i.i.i.i129:                         ; preds = %if.end5.i.i.i.i.i.i128
  call void @__sanitizer_cov_trace_pc() #7
  call void @refcount_warn_saturate(ptr noundef %ref.i.i122, i32 noundef 3) #5
  br label %cleanup

if.then.i.i.i130:                                 ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !238
  call void %58(ptr noundef %ref.i.i122) #5
  br label %cleanup

do.end54:                                         ; preds = %if.end22
  %pci55 = getelementptr inbounds %struct.efc, ptr %5, i32 0, i32 1
  %60 = ptrtoint ptr %pci55 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pci55, align 4
  %dev56 = getelementptr inbounds %struct.pci_dev, ptr %61, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev56, ptr noundef nonnull @.str.99, i32 noundef %status, i32 noundef %ext_status) #8
  %els_req_free.i132 = getelementptr inbounds %struct.efc_els_io_req, ptr %arg, i32 0, i32 6
  %62 = ptrtoint ptr %els_req_free.i132 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %els_req_free.i132, align 4
  %63 = ptrtoint ptr %node1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %node1, align 4
  call void @efc_node_post_els_resp(ptr noundef %64, i32 noundef 35, ptr noundef nonnull %cbdata) #5
  %ref.i.i134 = getelementptr inbounds %struct.efc_els_io_req, ptr %arg, i32 0, i32 1
  %release.i.i135 = getelementptr inbounds %struct.efc_els_io_req, ptr %arg, i32 0, i32 2
  %65 = ptrtoint ptr %release.i.i135 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %release.i.i135, align 4
  %call.i.i.i.i.i.i.i.i136 = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i134, i32 noundef 4) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !235
  call void @llvm.prefetch.p0(ptr %ref.i.i134, i32 1, i32 3, i32 1) #5
  %67 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i134, ptr %ref.i.i134, i32 1, ptr elementtype(i32) %ref.i.i134) #5, !srcloc !236
  %asmresult.i.i.i.i.i.i.i.i.i137 = extractvalue { i32, i32, i32 } %67, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i137)
  %cmp.i.i.i.i.i.i138 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i137, 1
  br i1 %cmp.i.i.i.i.i.i138, label %if.then.i.i.i142, label %if.end5.i.i.i.i.i.i140

if.end5.i.i.i.i.i.i140:                           ; preds = %do.end54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i137)
  %.not.i.i.i.i.i.i139 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i137, 0
  br i1 %.not.i.i.i.i.i.i139, label %if.end5.i.i.i.i.i.i140.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i141, !prof !237

if.end5.i.i.i.i.i.i140.cleanup_crit_edge:         ; preds = %if.end5.i.i.i.i.i.i140
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then10.i.i.i.i.i.i141:                         ; preds = %if.end5.i.i.i.i.i.i140
  call void @__sanitizer_cov_trace_pc() #7
  call void @refcount_warn_saturate(ptr noundef %ref.i.i134, i32 noundef 3) #5
  br label %cleanup

if.then.i.i.i142:                                 ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !238
  call void %66(ptr noundef %ref.i.i134) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i142, %if.then10.i.i.i.i.i.i141, %if.end5.i.i.i.i.i.i140.cleanup_crit_edge, %if.then.i.i.i130, %if.then10.i.i.i.i.i.i129, %if.end5.i.i.i.i.i.i128.cleanup_crit_edge, %sw.bb43, %if.then.i.i.i118, %if.then10.i.i.i.i.i.i117, %if.end5.i.i.i.i.i.i116.cleanup_crit_edge, %sw.bb24, %if.then.i.i.i106, %if.then10.i.i.i.i.i.i105, %if.end5.i.i.i.i.i.i104.cleanup_crit_edge, %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %cbdata) #5
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efc_els_delay_timer_cb(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -32
  tail call fastcc void @efc_els_retry(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @efc_els_retry(ptr noundef %els) unnamed_addr #0 align 64 {
entry:
  %cbdata = alloca %struct.efc_node_cb, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %cbdata) #5
  %0 = getelementptr inbounds i8, ptr %cbdata, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 36)
  %node = getelementptr inbounds %struct.efc_els_io_req, ptr %els, i32 0, i32 3
  %2 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %node, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = ptrtoint ptr %cbdata to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2147483647, ptr %cbdata, align 4
  %ext_status = getelementptr inbounds %struct.efc_node_cb, ptr %cbdata, i32 0, i32 1
  %7 = ptrtoint ptr %ext_status to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2147483647, ptr %ext_status, align 4
  %els_rsp = getelementptr inbounds %struct.efc_node_cb, ptr %cbdata, i32 0, i32 4
  %rsp = getelementptr inbounds %struct.efc_els_io_req, ptr %els, i32 0, i32 9, i32 1
  %8 = call ptr @memcpy(ptr %els_rsp, ptr %rsp, i32 24)
  %els_retries_remaining = getelementptr inbounds %struct.efc_els_io_req, ptr %els, i32 0, i32 5
  %9 = ptrtoint ptr %els_retries_remaining to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %els_retries_remaining, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.then:                                          ; preds = %entry
  %io = getelementptr inbounds %struct.efc_els_io_req, ptr %els, i32 0, i32 9
  %dec = add i32 %10, -1
  %11 = ptrtoint ptr %els_retries_remaining to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %dec, ptr %els_retries_remaining, align 4
  %send_els = getelementptr inbounds %struct.efc, ptr %5, i32 0, i32 15, i32 5
  %12 = ptrtoint ptr %send_els to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %send_els, align 4
  %call = tail call i32 %13(ptr noundef %5, ptr noundef %io) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %phi.cmp = icmp eq i32 %call, 0
  br i1 %phi.cmp, label %if.then.if.end6_crit_edge, label %if.then.do.end_crit_edge

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

do.end:                                           ; preds = %if.then.do.end_crit_edge, %entry.do.end_crit_edge
  %pci = getelementptr inbounds %struct.efc, ptr %5, i32 0, i32 1
  %14 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.101) #8
  %els_req_free.i = getelementptr inbounds %struct.efc_els_io_req, ptr %els, i32 0, i32 6
  %16 = ptrtoint ptr %els_req_free.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %els_req_free.i, align 4
  %17 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %node, align 4
  call void @efc_node_post_els_resp(ptr noundef %18, i32 noundef 35, ptr noundef nonnull %cbdata) #5
  %ref.i.i = getelementptr inbounds %struct.efc_els_io_req, ptr %els, i32 0, i32 1
  %release.i.i = getelementptr inbounds %struct.efc_els_io_req, ptr %els, i32 0, i32 2
  %19 = ptrtoint ptr %release.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %release.i.i, align 4
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i, i32 noundef 4) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !235
  call void @llvm.prefetch.p0(ptr %ref.i.i, i32 1, i32 3, i32 1) #5
  %21 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i, ptr %ref.i.i, i32 1, ptr elementtype(i32) %ref.i.i) #5, !srcloc !236
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.if.end6_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !237

if.end5.i.i.i.i.i.i.if.end6_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @refcount_warn_saturate(ptr noundef %ref.i.i, i32 noundef 3) #5
  br label %if.end6

if.then.i.i.i:                                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !238
  call void %20(ptr noundef %ref.i.i) #5
  br label %if.end6

if.end6:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.if.end6_crit_edge, %if.then.if.end6_crit_edge
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %cbdata) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efc_els_acc_cb(ptr noundef %arg, i32 noundef %length, i32 noundef %status, i32 noundef %ext_status) #0 align 64 {
entry:
  %cbdata = alloca %struct.efc_node_cb, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %cbdata) #5
  %0 = getelementptr inbounds i8, ptr %cbdata, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 32)
  %node1 = getelementptr inbounds %struct.efc_els_io_req, ptr %arg, i32 0, i32 3
  %2 = ptrtoint ptr %node1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %node1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = ptrtoint ptr %cbdata to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %status, ptr %cbdata, align 4
  %ext_status4 = getelementptr inbounds %struct.efc_node_cb, ptr %cbdata, i32 0, i32 1
  %7 = ptrtoint ptr %ext_status4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %ext_status, ptr %ext_status4, align 4
  %header = getelementptr inbounds %struct.efc_node_cb, ptr %cbdata, i32 0, i32 2
  %8 = ptrtoint ptr %header to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %header, align 4
  %els_rsp = getelementptr inbounds %struct.efc_node_cb, ptr %cbdata, i32 0, i32 4
  %rsp = getelementptr inbounds %struct.efc_els_io_req, ptr %arg, i32 0, i32 9, i32 1
  %9 = call ptr @memcpy(ptr %els_rsp, ptr %rsp, i32 24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status)
  %cond = icmp eq i32 %status, 0
  br i1 %cond, label %sw.bb, label %do.end

sw.bb:                                            ; preds = %entry
  %els_req_free.i = getelementptr inbounds %struct.efc_els_io_req, ptr %arg, i32 0, i32 6
  %10 = ptrtoint ptr %els_req_free.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %els_req_free.i, align 4
  call void @efc_node_post_els_resp(ptr noundef %3, i32 noundef 34, ptr noundef nonnull %cbdata) #5
  %ref.i.i = getelementptr inbounds %struct.efc_els_io_req, ptr %arg, i32 0, i32 1
  %release.i.i = getelementptr inbounds %struct.efc_els_io_req, ptr %arg, i32 0, i32 2
  %11 = ptrtoint ptr %release.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %release.i.i, align 4
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i, i32 noundef 4) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !235
  call void @llvm.prefetch.p0(ptr %ref.i.i, i32 1, i32 3, i32 1) #5
  %13 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i, ptr %ref.i.i, i32 1, ptr elementtype(i32) %ref.i.i) #5, !srcloc !236
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.sw.epilog_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !237

if.end5.i.i.i.i.i.i.sw.epilog_crit_edge:          ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @refcount_warn_saturate(ptr noundef %ref.i.i, i32 noundef 3) #5
  br label %sw.epilog

if.then.i.i.i:                                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !238
  call void %12(ptr noundef %ref.i.i) #5
  br label %sw.epilog

do.end:                                           ; preds = %entry
  %pci = getelementptr inbounds %struct.efc, ptr %5, i32 0, i32 1
  %14 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %3, i32 0, i32 1
  %display_name5 = getelementptr inbounds %struct.efc_els_io_req, ptr %arg, i32 0, i32 8
  %16 = ptrtoint ptr %display_name5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %display_name5, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.103, ptr noundef %display_name, ptr noundef %17, i32 noundef %status, i32 noundef %ext_status) #8
  %els_req_free.i14 = getelementptr inbounds %struct.efc_els_io_req, ptr %arg, i32 0, i32 6
  %18 = ptrtoint ptr %els_req_free.i14 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %els_req_free.i14, align 4
  %19 = ptrtoint ptr %node1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %node1, align 4
  call void @efc_node_post_els_resp(ptr noundef %20, i32 noundef 36, ptr noundef nonnull %cbdata) #5
  %ref.i.i16 = getelementptr inbounds %struct.efc_els_io_req, ptr %arg, i32 0, i32 1
  %release.i.i17 = getelementptr inbounds %struct.efc_els_io_req, ptr %arg, i32 0, i32 2
  %21 = ptrtoint ptr %release.i.i17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %release.i.i17, align 4
  %call.i.i.i.i.i.i.i.i18 = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i16, i32 noundef 4) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !235
  call void @llvm.prefetch.p0(ptr %ref.i.i16, i32 1, i32 3, i32 1) #5
  %23 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i16, ptr %ref.i.i16, i32 1, ptr elementtype(i32) %ref.i.i16) #5, !srcloc !236
  %asmresult.i.i.i.i.i.i.i.i.i19 = extractvalue { i32, i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i19)
  %cmp.i.i.i.i.i.i20 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i19, 1
  br i1 %cmp.i.i.i.i.i.i20, label %if.then.i.i.i24, label %if.end5.i.i.i.i.i.i22

if.end5.i.i.i.i.i.i22:                            ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i19)
  %.not.i.i.i.i.i.i21 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i19, 0
  br i1 %.not.i.i.i.i.i.i21, label %if.end5.i.i.i.i.i.i22.sw.epilog_crit_edge, label %if.then10.i.i.i.i.i.i23, !prof !237

if.end5.i.i.i.i.i.i22.sw.epilog_crit_edge:        ; preds = %if.end5.i.i.i.i.i.i22
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then10.i.i.i.i.i.i23:                          ; preds = %if.end5.i.i.i.i.i.i22
  call void @__sanitizer_cov_trace_pc() #7
  call void @refcount_warn_saturate(ptr noundef %ref.i.i16, i32 noundef 3) #5
  br label %sw.epilog

if.then.i.i.i24:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !238
  call void %22(ptr noundef %ref.i.i16) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.i.i.i24, %if.then10.i.i.i.i.i.i23, %if.end5.i.i.i.i.i.i22.sw.epilog_crit_edge, %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.sw.epilog_crit_edge
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %cbdata) #5
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 108)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 108)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !13, !14, !15, !16, !18, !19, !20, !22, !24, !25, !26, !28, !29, !31, !33, !34, !35, !37, !38, !40, !42, !43, !44, !46, !47, !49, !51, !52, !53, !55, !56, !58, !60, !61, !62, !64, !65, !67, !69, !70, !71, !73, !74, !76, !78, !79, !80, !81, !83, !84, !86, !88, !89, !90, !92, !93, !95, !97, !98, !99, !101, !102, !104, !106, !107, !108, !110, !111, !113, !115, !116, !117, !119, !120, !122, !124, !125, !126, !128, !129, !131, !133, !134, !135, !137, !138, !140, !142, !143, !144, !146, !147, !149, !151, !152, !153, !155, !156, !158, !160, !161, !162, !164, !165, !167, !169, !170, !171, !173, !174, !176, !178, !179, !180, !182, !184, !185, !186, !187, !189, !190, !191, !192, !194, !195, !196, !197, !199, !200, !201, !203, !204, !206, !207, !208, !210, !211, !212, !214, !215, !216, !217, !219, !220, !221}
!llvm.module.flags = !{!222, !223, !224, !225, !226, !227, !228, !229}
!llvm.ident = !{!230}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/elx/libefc/efc_els.c", i32 50, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @efc_els_io_alloc_size._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @efc_els_io_alloc_size._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../drivers/scsi/elx/libefc/efc_els.c", i32 251, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/scsi/elx/libefc/efc_els.c", i32 399, i32 2}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @efc_send_plogi._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @efc_send_plogi._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/scsi/elx/libefc/efc_els.c", i32 403, i32 3}
!18 = !{ptr @efc_send_plogi._entry.8, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @efc_send_plogi._entry_ptr.10, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/scsi/elx/libefc/efc_els.c", i32 406, i32 22}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/scsi/elx/libefc/efc_els.c", i32 428, i32 2}
!24 = !{ptr @efc_send_flogi._entry, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @efc_send_flogi._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @efc_send_flogi._entry.13, !27, !"_entry", i1 false, i1 false}
!27 = !{!"../drivers/scsi/elx/libefc/efc_els.c", i32 432, i32 3}
!28 = !{ptr @efc_send_flogi._entry_ptr.14, !27, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/scsi/elx/libefc/efc_els.c", i32 436, i32 22}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/scsi/elx/libefc/efc_els.c", i32 457, i32 2}
!33 = !{ptr @efc_send_fdisc._entry, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @efc_send_fdisc._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @efc_send_fdisc._entry.17, !36, !"_entry", i1 false, i1 false}
!36 = !{!"../drivers/scsi/elx/libefc/efc_els.c", i32 461, i32 3}
!37 = !{ptr @efc_send_fdisc._entry_ptr.18, !36, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/scsi/elx/libefc/efc_els.c", i32 465, i32 22}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/scsi/elx/libefc/efc_els.c", i32 487, i32 2}
!42 = !{ptr @efc_send_prli._entry, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @efc_send_prli._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @efc_send_prli._entry.21, !45, !"_entry", i1 false, i1 false}
!45 = !{!"../drivers/scsi/elx/libefc/efc_els.c", i32 491, i32 3}
!46 = !{ptr @efc_send_prli._entry_ptr.22, !45, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/scsi/elx/libefc/efc_els.c", i32 495, i32 22}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/scsi/elx/libefc/efc_els.c", i32 525, i32 2}
!51 = !{ptr @efc_send_logo._entry, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @efc_send_logo._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @efc_send_logo._entry.25, !54, !"_entry", i1 false, i1 false}
!54 = !{!"../drivers/scsi/elx/libefc/efc_els.c", i32 531, i32 3}
!55 = !{ptr @efc_send_logo._entry_ptr.26, !54, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/scsi/elx/libefc/efc_els.c", i32 535, i32 22}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/scsi/elx/libefc/efc_els.c", i32 558, i32 2}
!60 = !{ptr @efc_send_adisc._entry, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @efc_send_adisc._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @efc_send_adisc._entry.29, !63, !"_entry", i1 false, i1 false}
!63 = !{!"../drivers/scsi/elx/libefc/efc_els.c", i32 564, i32 3}
!64 = !{ptr @efc_send_adisc._entry_ptr.30, !63, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/scsi/elx/libefc/efc_els.c", i32 568, i32 22}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/scsi/elx/libefc/efc_els.c", i32 591, i32 2}
!69 = !{ptr @efc_send_scr._entry, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @efc_send_scr._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @efc_send_scr._entry.33, !72, !"_entry", i1 false, i1 false}
!72 = !{!"../drivers/scsi/elx/libefc/efc_els.c", i32 595, i32 3}
!73 = !{ptr @efc_send_scr._entry_ptr.34, !72, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/scsi/elx/libefc/efc_els.c", i32 599, i32 22}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/scsi/elx/libefc/efc_els.c", i32 620, i32 3}
!78 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @efc_send_ls_rjt._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @efc_send_ls_rjt._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @efc_send_ls_rjt._entry.38, !82, !"_entry", i1 false, i1 false}
!82 = !{!"../drivers/scsi/elx/libefc/efc_els.c", i32 624, i32 2}
!83 = !{ptr @efc_send_ls_rjt._entry_ptr.39, !82, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/scsi/elx/libefc/efc_els.c", i32 626, i32 22}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/scsi/elx/libefc/efc_els.c", i32 649, i32 2}
!88 = !{ptr @efc_send_plogi_acc._entry, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @efc_send_plogi_acc._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @efc_send_plogi_acc._entry.42, !91, !"_entry", i1 false, i1 false}
!91 = !{!"../drivers/scsi/elx/libefc/efc_els.c", i32 653, i32 3}
!92 = !{ptr @efc_send_plogi_acc._entry_ptr.43, !91, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.44, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/scsi/elx/libefc/efc_els.c", i32 657, i32 22}
!95 = !{ptr @.str.45, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/scsi/elx/libefc/efc_els.c", i32 683, i32 2}
!97 = !{ptr @efc_send_flogi_p2p_acc._entry, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @efc_send_flogi_p2p_acc._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @efc_send_flogi_p2p_acc._entry.46, !100, !"_entry", i1 false, i1 false}
!100 = !{!"../drivers/scsi/elx/libefc/efc_els.c", i32 687, i32 3}
!101 = !{ptr @efc_send_flogi_p2p_acc._entry_ptr.47, !100, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.48, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/scsi/elx/libefc/efc_els.c", i32 691, i32 22}
!104 = !{ptr @.str.49, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/scsi/elx/libefc/efc_els.c", i32 719, i32 2}
!106 = !{ptr @efc_send_prli_acc._entry, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @efc_send_prli_acc._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @efc_send_prli_acc._entry.50, !109, !"_entry", i1 false, i1 false}
!109 = !{!"../drivers/scsi/elx/libefc/efc_els.c", i32 723, i32 3}
!110 = !{ptr @efc_send_prli_acc._entry_ptr.51, !109, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.52, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/scsi/elx/libefc/efc_els.c", i32 727, i32 22}
!113 = !{ptr @.str.53, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/scsi/elx/libefc/efc_els.c", i32 761, i32 2}
!115 = !{ptr @efc_send_prlo_acc._entry, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @efc_send_prlo_acc._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @efc_send_prlo_acc._entry.54, !118, !"_entry", i1 false, i1 false}
!118 = !{!"../drivers/scsi/elx/libefc/efc_els.c", i32 765, i32 3}
!119 = !{ptr @efc_send_prlo_acc._entry_ptr.55, !118, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.56, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/scsi/elx/libefc/efc_els.c", i32 769, i32 22}
!122 = !{ptr @.str.57, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/scsi/elx/libefc/efc_els.c", i32 794, i32 2}
!124 = !{ptr @efc_send_ls_acc._entry, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @efc_send_ls_acc._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @efc_send_ls_acc._entry.58, !127, !"_entry", i1 false, i1 false}
!127 = !{!"../drivers/scsi/elx/libefc/efc_els.c", i32 798, i32 3}
!128 = !{ptr @efc_send_ls_acc._entry_ptr.59, !127, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.60, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/scsi/elx/libefc/efc_els.c", i32 802, i32 22}
!131 = !{ptr @.str.61, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/scsi/elx/libefc/efc_els.c", i32 822, i32 2}
!133 = !{ptr @efc_send_logo_acc._entry, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @efc_send_logo_acc._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @efc_send_logo_acc._entry.62, !136, !"_entry", i1 false, i1 false}
!136 = !{!"../drivers/scsi/elx/libefc/efc_els.c", i32 826, i32 3}
!137 = !{ptr @efc_send_logo_acc._entry_ptr.63, !136, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.64, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/scsi/elx/libefc/efc_els.c", i32 830, i32 22}
!140 = !{ptr @.str.65, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/scsi/elx/libefc/efc_els.c", i32 851, i32 2}
!142 = !{ptr @efc_send_adisc_acc._entry, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @efc_send_adisc_acc._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @efc_send_adisc_acc._entry.66, !145, !"_entry", i1 false, i1 false}
!145 = !{!"../drivers/scsi/elx/libefc/efc_els.c", i32 855, i32 3}
!146 = !{ptr @efc_send_adisc_acc._entry_ptr.67, !145, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.68, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/scsi/elx/libefc/efc_els.c", i32 859, i32 22}
!149 = !{ptr @.str.69, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/scsi/elx/libefc/efc_els.c", i32 901, i32 2}
!151 = !{ptr @efc_ns_send_rftid._entry, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @efc_ns_send_rftid._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @efc_ns_send_rftid._entry.70, !154, !"_entry", i1 false, i1 false}
!154 = !{!"../drivers/scsi/elx/libefc/efc_els.c", i32 905, i32 3}
!155 = !{ptr @efc_ns_send_rftid._entry_ptr.71, !154, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.72, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/scsi/elx/libefc/efc_els.c", i32 914, i32 22}
!158 = !{ptr @.str.73, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/scsi/elx/libefc/efc_els.c", i32 938, i32 2}
!160 = !{ptr @efc_ns_send_rffid._entry, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @efc_ns_send_rffid._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @efc_ns_send_rffid._entry.74, !163, !"_entry", i1 false, i1 false}
!163 = !{!"../drivers/scsi/elx/libefc/efc_els.c", i32 942, i32 3}
!164 = !{ptr @efc_ns_send_rffid._entry_ptr.75, !163, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.76, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/scsi/elx/libefc/efc_els.c", i32 951, i32 22}
!167 = !{ptr @.str.77, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/scsi/elx/libefc/efc_els.c", i32 978, i32 2}
!169 = !{ptr @efc_ns_send_gidpt._entry, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @efc_ns_send_gidpt._entry_ptr, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @efc_ns_send_gidpt._entry.78, !172, !"_entry", i1 false, i1 false}
!172 = !{!"../drivers/scsi/elx/libefc/efc_els.c", i32 982, i32 3}
!173 = !{ptr @efc_ns_send_gidpt._entry_ptr.79, !172, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.80, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/scsi/elx/libefc/efc_els.c", i32 991, i32 22}
!176 = !{ptr @.str.81, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/scsi/elx/libefc/efc_els.c", i32 1036, i32 3}
!178 = !{ptr @efc_send_ct_rsp._entry, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @efc_send_ct_rsp._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.82, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/scsi/elx/libefc/efc_els.c", i32 1048, i32 22}
!182 = !{ptr @.str.83, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/scsi/elx/libefc/efc_els.c", i32 287, i32 2}
!184 = !{ptr @.str.84, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @efc_els_send_req._entry, !183, !"_entry", i1 false, i1 false}
!186 = !{ptr @efc_els_send_req._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.85, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/scsi/elx/libefc/efc_els.c", i32 170, i32 3}
!189 = !{ptr @.str.86, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @efc_els_req_cb._entry, !188, !"_entry", i1 false, i1 false}
!191 = !{ptr @efc_els_req_cb._entry_ptr, !188, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.88, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/scsi/elx/libefc/efc_els.c", i32 188, i32 3}
!194 = !{ptr @.str.89, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @efc_els_req_cb._entry.87, !193, !"_entry", i1 false, i1 false}
!196 = !{ptr @efc_els_req_cb._entry_ptr.90, !193, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.92, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/scsi/elx/libefc/efc_els.c", i32 208, i32 4}
!199 = !{ptr @efc_els_req_cb._entry.91, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @efc_els_req_cb._entry_ptr.93, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @efc_els_req_cb.__key, !202, !"__key", i1 false, i1 false}
!202 = !{!"../drivers/scsi/elx/libefc/efc_els.c", i32 210, i32 4}
!203 = !{ptr @.str.94, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @.str.96, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/scsi/elx/libefc/efc_els.c", i32 228, i32 4}
!206 = !{ptr @efc_els_req_cb._entry.95, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @efc_els_req_cb._entry_ptr.97, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.99, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/scsi/elx/libefc/efc_els.c", i32 236, i32 3}
!210 = !{ptr @efc_els_req_cb._entry.98, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @efc_els_req_cb._entry_ptr.100, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.101, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/scsi/elx/libefc/efc_els.c", i32 313, i32 3}
!214 = !{ptr @.str.102, !213, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @efc_els_retry._entry, !213, !"_entry", i1 false, i1 false}
!216 = !{ptr @efc_els_retry._entry_ptr, !213, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.103, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/scsi/elx/libefc/efc_els.c", i32 342, i32 3}
!219 = !{ptr @.str.104, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @efc_els_acc_cb._entry, !218, !"_entry", i1 false, i1 false}
!221 = !{ptr @efc_els_acc_cb._entry_ptr, !218, !"_entry_ptr", i1 false, i1 false}
!222 = !{i32 1, !"wchar_size", i32 2}
!223 = !{i32 1, !"min_enum_size", i32 4}
!224 = !{i32 8, !"branch-target-enforcement", i32 0}
!225 = !{i32 8, !"sign-return-address", i32 0}
!226 = !{i32 8, !"sign-return-address-all", i32 0}
!227 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!228 = !{i32 7, !"uwtable", i32 1}
!229 = !{i32 7, !"frame-pointer", i32 2}
!230 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!231 = !{i8 0, i8 2}
!232 = !{i64 2148772392}
!233 = !{i64 2148687677, i64 2148687709, i64 2148687738, i64 2148687772, i64 2148687803, i64 2148687826}
!234 = !{i64 2148772621}
!235 = !{i64 2148776512}
!236 = !{i64 2148690952, i64 2148690984, i64 2148691013, i64 2148691047, i64 2148691078, i64 2148691101}
!237 = !{!"branch_weights", i32 2000, i32 1}
!238 = !{i64 2150079353}
!239 = !{!"auto-init"}
