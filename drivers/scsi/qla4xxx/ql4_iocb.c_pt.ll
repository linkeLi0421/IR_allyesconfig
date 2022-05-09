; ModuleID = '/llk/IR_all_yes/drivers/scsi/qla4xxx/ql4_iocb.c_pt.bc'
source_filename = "../drivers/scsi/qla4xxx/ql4_iocb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.scsi_qla_host = type { i32, i32, ptr, i32, i16, i16, ptr, ptr, ptr, i32, i32, i16, i32, ptr, [76 x i8], %struct.spinlock, i32, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i16, [32 x i8], [256 x i8], i8, [6 x i8], [16 x i8], i16, i32, i32, ptr, %struct.work_struct, %struct.timer_list, i32, %struct.atomic_t, i32, i32, i32, i32, %struct.list_head, i16, i16, ptr, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, ptr, i16, i16, i16, i16, i16, i16, i16, [512 x %struct.aen], %struct.ql4_aen_log, %struct.mutex, i8, [8 x i32], [512 x ptr], ptr, i8, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.rwlock_t, i16, i32, %struct.qla4_8xxx_legacy_intr_set, i32, i8, i32, ptr, %struct.ql82xx_hw_data, i32, i32, ptr, i32, i32, ptr, i32, i32, %struct.completion, %struct.ipaddress_config, ptr, ptr, ptr, %struct.about_fw_info, i32, i32, i16, i32, ptr, ptr, %struct.mutex, ptr, [16 x i32], ptr, %struct.ql4_boot_tgt_info, i16, i16, i16, [16 x i8], %struct.completion, ptr, i16, i16, i32, i16, %struct.list_head, %struct.spinlock, [128 x ptr], i32, ptr, %struct.qla4_83xx_reset_template, ptr, i32, %struct.qla4_83xx_idc_information, ptr, i32, i32, i32, %struct.completion, %struct.completion, [56 x i8] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.aen = type { [8 x i32] }
%struct.ql4_aen_log = type { i32, [512 x %struct.aen] }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.qla4_8xxx_legacy_intr_set = type { i32, i32, i32, i32 }
%struct.ql82xx_hw_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ipaddress_config = type { i16, i16, i16, i8, [4 x i8], [4 x i8], [4 x i8], i32, i32, i8, i8, i8, i8, i16, %struct.in6_addr, %struct.in6_addr, %struct.in6_addr, %struct.in6_addr, i16, i16, i16, i8, i16, i8, i8, i8, i8, i8, i8, [11 x i8], i8, [11 x i8], i8, i16, i8, i8, i32, i32, i32, i8, i32, i16, i8, i16, i16, i16, i16, i16, [224 x i8] }
%struct.in6_addr = type { %union.anon.66 }
%union.anon.66 = type { [4 x i32] }
%struct.about_fw_info = type { i16, i16, i16, i16, [16 x i8], [16 x i8], [16 x i8], i16, [6 x i8], i16, i16, i16, i16, i16, i16, [180 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ql4_boot_tgt_info = type { %struct.ql4_boot_session_info, %struct.ql4_boot_session_info }
%struct.ql4_boot_session_info = type { [224 x i8], [1 x %struct.ql4_conn_info] }
%struct.ql4_conn_info = type { i16, %struct.ip_address_format, %struct.ql4_chap_format }
%struct.ip_address_format = type { i8, [16 x i8] }
%struct.ql4_chap_format = type { [256 x i8], [100 x i8], [256 x i8], [100 x i8], i16, i16, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.qla4_83xx_reset_template = type { i32, i32, i32, [16 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8 }
%struct.qla4_83xx_idc_information = type { i32, i32, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.isp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.queue_entry = type { [60 x i8], i32 }
%struct.qla4_header = type { i8, i8, i8, i8 }
%struct.ddb_entry = type { ptr, ptr, ptr, i16, i32, i16, %struct.dev_db_entry, ptr, ptr, i32, i16, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i16 }
%struct.dev_db_entry = type { i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, [6 x i8], i16, i16, i16, i16, i16, [16 x i8], [32 x i8], [32 x i8], i16, i16, i16, i8, i16, [54 x i8], [224 x i8], [16 x i8], [16 x i8], i16, i16, i16, i8, i8, i32, i32, [43 x i8], i16, i16 }
%struct.qla4_marker_entry = type { %struct.qla4_header, i32, i16, i16, i16, i16, %struct.scsi_lun, i64, i64, i64, i64, i64 }
%struct.scsi_lun = type { [8 x i8] }
%struct.device_reg_83xx = type { [16 x i32], [496 x i32], [16 x i32], [496 x i32], i32, [63 x i32], i32, [63 x i32], i32, [1919 x i32], i32, [3 x i32], i32, [3 x i32], i32, [3 x i32], i32, i32, i32, i32, [544 x i32], i32, i32, i32 }
%struct.device_reg_82xx = type { i32, [63 x i32], i32, [63 x i32], i32, [63 x i32], [8 x i32], [24 x i32], i32, [31 x i32], [8 x i32], [56 x i32], i32, i32 }
%struct.isp_reg = type { [8 x i32], i32, i32, i32, %union.anon.175, i32, i32, [4 x i32], %union.anon.178 }
%union.anon.175 = type { %struct.anon.176 }
%struct.anon.176 = type { i32, [2 x i32] }
%union.anon.178 = type { %struct.anon.179 }
%struct.anon.179 = type { i32, i32, i32, i32, [8 x i32], i32, [23 x i32], i32, i32, [5 x i32], i32 }
%struct.srb = type { %struct.list_head, ptr, ptr, i16, i8, ptr, i32, %struct.kref, i8, i16, i16, i16, i16, ptr, i16, i16 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.command_t3_entry = type { %struct.qla4_header, i32, i16, i16, i8, i8, i8, i8, [16 x i8], %struct.scsi_lun, i32, i16, i16, i32, [1 x %struct.data_seg_a64] }
%struct.data_seg_a64 = type { %struct.anon.211, i32 }
%struct.anon.211 = type { i32, i32 }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.execute_work = type { %struct.work_struct }
%struct.continuation_t1_entry = type { %struct.qla4_header, [5 x %struct.data_seg_a64] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.iscsi_task = type { ptr, i16, i16, i32, i32, %struct.scsi_lun, i32, i32, %struct.iscsi_r2t_info, ptr, i32, ptr, ptr, i32, i32, i8, i8, i32, %struct.refcount_struct, %struct.list_head, ptr }
%struct.iscsi_r2t_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.iscsi_conn = type { ptr, ptr, ptr, i32, %struct.timer_list, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.work_struct, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.iscsi_session = type { ptr, %struct.mutex, %struct.wait_queue_head, %struct.iscsi_tm, %struct.timer_list, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, i8, i8, i8, i8, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, ptr, %struct.iscsi_pool, ptr }
%struct.iscsi_tm = type { i8, i8, [2 x i8], i8, [3 x i8], %struct.scsi_lun, i32, i32, i32, i32, i32, i32, [8 x i8] }
%struct.iscsi_pool = type { %struct.kfifo, ptr, i32 }
%struct.kfifo = type { %union.anon.185, [0 x i8] }
%union.anon.185 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.ql4_task_data = type { ptr, i8, i32, ptr, i32, i32, ptr, i32, i32, ptr, %struct.passthru_status, %struct.work_struct }
%struct.passthru_status = type { %struct.qla4_header, i32, i16, i16, i8, i8, i16, i16, [10 x i8], i32, [12 x i8], i32, [16 x i8] }
%struct.passthru0 = type { %struct.qla4_header, i32, i16, i16, i16, i16, %struct.data_seg_a64, i32, %struct.data_seg_a64, [20 x i8] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.174, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.174 = type { ptr }
%struct.mrb = type { ptr, ptr, i32, i16, i32 }
%struct.mbox_cmd_iocb = type { %struct.qla4_header, i32, [8 x i32], [6 x i32] }

@ql4xextended_error_logging = external dso_local local_unnamed_addr global i32, align 4
@qla4xxx_send_command_to_isp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"scsi%ld: %s: Adapter OFFLINE! Do not issue command.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"qla4xxx_send_command_to_isp\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/scsi/qla4xxx/ql4_iocb.c\00", [32 x i8] zeroinitializer }, align 32
@qla4xxx_send_command_to_isp._entry_ptr = internal global ptr @qla4xxx_send_command_to_isp._entry, section ".printk_index", align 4
@qla4xxx_ping_iocb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 518, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: fail to get new mrb\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qla4xxx_ping_iocb\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qla4xxx_ping_iocb._entry_ptr = internal global ptr @qla4xxx_ping_iocb._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 300, i32 3 }
@___asan_gen_.19 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.32 = private constant [35 x i8] c"../drivers/scsi/qla4xxx/ql4_iocb.c\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 517, i32 3 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @qla4xxx_ping_iocb._entry, ptr @qla4xxx_ping_iocb._entry_ptr, ptr @qla4xxx_send_command_to_isp._entry, ptr @qla4xxx_send_command_to_isp._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_send_command_to_isp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_ping_iocb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4xxx_send_marker_iocb(ptr noundef %ha, ptr nocapture noundef readonly %ddb_entry, i64 noundef %lun, i16 noundef zeroext %mrkr_mod) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hardware_lock = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 15
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hardware_lock) #5
  %req_q_count.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 11
  %0 = ptrtoint ptr %req_q_count.i.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %req_q_count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %1)
  %cmp.not.i.i = icmp ugt i16 %1, 3
  br i1 %cmp.not.i.i, label %entry.if.then.i_crit_edge, label %qla4xxx_space_in_req_ring.exit.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

qla4xxx_space_in_req_ring.exit.i:                 ; preds = %entry
  %isp_ops.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 102
  %2 = ptrtoint ptr %isp_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %isp_ops.i.i, align 4
  %rd_shdw_req_q_out.i.i = getelementptr inbounds %struct.isp_operations, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %rd_shdw_req_q_out.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rd_shdw_req_q_out.i.i, align 4
  %call.i.i = tail call zeroext i16 %5(ptr noundef %ha) #5
  %request_in.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 68
  %6 = ptrtoint ptr %request_in.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %request_in.i.i, align 16
  call void @__sanitizer_cov_trace_cmp2(i16 %call.i.i, i16 %7)
  %cmp5.i.i = icmp ugt i16 %call.i.i, %7
  %sub16.neg.i.i = add i16 %call.i.i, 1024
  %call.sink.i.i = select i1 %cmp5.i.i, i16 %call.i.i, i16 %sub16.neg.i.i
  %sub.i.i = sub i16 %call.sink.i.i, %7
  %8 = ptrtoint ptr %req_q_count.i.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %sub.i.i, ptr %req_q_count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %sub.i.i)
  %cmp25.i.i = icmp ult i16 %sub.i.i, 4
  br i1 %cmp25.i.i, label %qla4xxx_space_in_req_ring.exit.i.exit_send_marker_crit_edge, label %qla4xxx_space_in_req_ring.exit.i.if.then.i_crit_edge

qla4xxx_space_in_req_ring.exit.i.if.then.i_crit_edge: ; preds = %qla4xxx_space_in_req_ring.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

qla4xxx_space_in_req_ring.exit.i.exit_send_marker_crit_edge: ; preds = %qla4xxx_space_in_req_ring.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit_send_marker

if.then.i:                                        ; preds = %qla4xxx_space_in_req_ring.exit.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %request_ptr.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 62
  %9 = ptrtoint ptr %request_ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %request_ptr.i, align 8
  %11 = call ptr @memset(ptr %10, i32 0, i32 64)
  %request_in.i8.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 68
  %12 = ptrtoint ptr %request_in.i8.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %request_in.i8.i, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 1023, i16 %13)
  %cmp.i.i = icmp eq i16 %13, 1023
  br i1 %cmp.i.i, label %if.then.i9.i, label %if.else.i.i

if.then.i9.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %request_in.i8.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %request_in.i8.i, align 16
  %request_ring.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 61
  %15 = ptrtoint ptr %request_ring.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %request_ring.i.i, align 4
  br label %if.end

if.else.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i = add i16 %13, 1
  %17 = ptrtoint ptr %request_in.i8.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %inc.i.i, ptr %request_in.i8.i, align 16
  %18 = ptrtoint ptr %request_ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %request_ptr.i, align 8
  %incdec.ptr.i.i = getelementptr %struct.queue_entry, ptr %19, i32 1
  br label %if.end

if.end:                                           ; preds = %if.else.i.i, %if.then.i9.i
  %storemerge.i = phi ptr [ %incdec.ptr.i.i, %if.else.i.i ], [ %16, %if.then.i9.i ]
  %20 = ptrtoint ptr %request_ptr.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %storemerge.i, ptr %request_ptr.i, align 8
  %21 = ptrtoint ptr %req_q_count.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %req_q_count.i.i, align 8
  %sub.i = add i16 %22, -1
  store i16 %sub.i, ptr %req_q_count.i.i, align 8
  %23 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 4, ptr %10, align 8
  %entryCount = getelementptr inbounds %struct.qla4_header, ptr %10, i32 0, i32 3
  %24 = ptrtoint ptr %entryCount to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %entryCount, align 1
  %fw_ddb_index = getelementptr inbounds %struct.ddb_entry, ptr %ddb_entry, i32 0, i32 3
  %25 = ptrtoint ptr %fw_ddb_index to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %fw_ddb_index, align 4
  %27 = tail call i16 @llvm.bswap.i16(i16 %26)
  %target = getelementptr inbounds %struct.qla4_marker_entry, ptr %10, i32 0, i32 2
  %28 = ptrtoint ptr %target to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %target, align 8
  %29 = tail call i16 @llvm.bswap.i16(i16 %mrkr_mod)
  %modifier = getelementptr inbounds %struct.qla4_marker_entry, ptr %10, i32 0, i32 3
  %30 = ptrtoint ptr %modifier to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %modifier, align 2
  %lun9 = getelementptr inbounds %struct.qla4_marker_entry, ptr %10, i32 0, i32 6
  tail call void @int_to_scsilun(i64 noundef %lun, ptr noundef %lun9) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %isp_ops = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 102
  %31 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %isp_ops, align 4
  %queue_iocb = getelementptr inbounds %struct.isp_operations, ptr %32, i32 0, i32 11
  %33 = ptrtoint ptr %queue_iocb to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %queue_iocb, align 4
  tail call void %34(ptr noundef %ha) #5
  br label %exit_send_marker

exit_send_marker:                                 ; preds = %if.end, %qla4xxx_space_in_req_ring.exit.i.exit_send_marker_crit_edge
  %status.0 = phi i32 [ 0, %if.end ], [ 1, %qla4xxx_space_in_req_ring.exit.i.exit_send_marker_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hardware_lock, i32 noundef %call2) #5
  ret i32 %status.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @int_to_scsilun(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla4_83xx_queue_iocb(ptr nocapture noundef readonly %ha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  tail call void @arm_heavy_mb() #5
  %request_in = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 68
  %0 = ptrtoint ptr %request_in to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %request_in, align 16
  %conv = zext i16 %1 to i32
  %2 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %qla4_83xx_reg = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 145
  %3 = ptrtoint ptr %qla4_83xx_reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %qla4_83xx_reg, align 16
  %req_q_in = getelementptr inbounds %struct.device_reg_83xx, ptr %4, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %req_q_in, i32 %2) #5, !srcloc !24
  %5 = ptrtoint ptr %qla4_83xx_reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %qla4_83xx_reg, align 16
  %req_q_in2 = getelementptr inbounds %struct.device_reg_83xx, ptr %6, i32 0, i32 10
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %req_q_in2) #5, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla4_83xx_complete_iocb(ptr nocapture noundef readonly %ha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  tail call void @arm_heavy_mb() #5
  %response_out = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 71
  %0 = ptrtoint ptr %response_out to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %response_out, align 2
  %conv = zext i16 %1 to i32
  %2 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %qla4_83xx_reg = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 145
  %3 = ptrtoint ptr %qla4_83xx_reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %qla4_83xx_reg, align 16
  %rsp_q_out = getelementptr inbounds %struct.device_reg_83xx, ptr %4, i32 0, i32 14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rsp_q_out, i32 %2) #5, !srcloc !24
  %5 = ptrtoint ptr %qla4_83xx_reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %qla4_83xx_reg, align 16
  %rsp_q_out2 = getelementptr inbounds %struct.device_reg_83xx, ptr %6, i32 0, i32 14
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rsp_q_out2) #5, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla4_82xx_queue_iocb(ptr noundef %ha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %request_in = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 68
  %0 = ptrtoint ptr %request_in to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %request_in, align 16
  %conv2 = zext i16 %1 to i32
  %nx_db_wr_ptr = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 86
  %2 = ptrtoint ptr %nx_db_wr_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nx_db_wr_ptr, align 8
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef %3, i32 noundef %conv2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla4_82xx_wr_32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla4_82xx_complete_iocb(ptr nocapture noundef readonly %ha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  tail call void @arm_heavy_mb() #5
  %response_out = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 71
  %0 = ptrtoint ptr %response_out to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %response_out, align 2
  %conv = zext i16 %1 to i32
  %2 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %qla4_82xx_reg = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 83
  %3 = ptrtoint ptr %qla4_82xx_reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %qla4_82xx_reg, align 4
  %rsp_q_out = getelementptr inbounds %struct.device_reg_82xx, ptr %4, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rsp_q_out, i32 %2) #5, !srcloc !24
  %5 = ptrtoint ptr %qla4_82xx_reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %qla4_82xx_reg, align 4
  %rsp_q_out2 = getelementptr inbounds %struct.device_reg_82xx, ptr %6, i32 0, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rsp_q_out2) #5, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla4xxx_queue_iocb(ptr nocapture noundef readonly %ha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  tail call void @arm_heavy_mb() #5
  %request_in = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 68
  %0 = ptrtoint ptr %request_in to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %request_in, align 16
  %conv = zext i16 %1 to i32
  %2 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %reg = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 8
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg, align 4
  %req_q_in = getelementptr inbounds %struct.isp_reg, ptr %4, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %req_q_in, i32 %2) #5, !srcloc !24
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg, align 4
  %req_q_in2 = getelementptr inbounds %struct.isp_reg, ptr %6, i32 0, i32 5
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %req_q_in2) #5, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla4xxx_complete_iocb(ptr nocapture noundef readonly %ha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  tail call void @arm_heavy_mb() #5
  %response_out = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 71
  %0 = ptrtoint ptr %response_out to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %response_out, align 2
  %conv = zext i16 %1 to i32
  %2 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %reg = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 8
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg, align 4
  %rsp_q_out = getelementptr inbounds %struct.isp_reg, ptr %4, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rsp_q_out, i32 %2) #5, !srcloc !24
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg, align 4
  %rsp_q_out2 = getelementptr inbounds %struct.isp_reg, ptr %6, i32 0, i32 6
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rsp_q_out2) #5, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !34
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4xxx_send_command_to_isp(ptr noundef %ha, ptr nocapture noundef %srb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd1 = getelementptr inbounds %struct.srb, ptr %srb, i32 0, i32 5
  %0 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd1, align 4
  %ddb = getelementptr inbounds %struct.srb, ptr %srb, i32 0, i32 2
  %2 = ptrtoint ptr %ddb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ddb, align 4
  %hardware_lock = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 15
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hardware_lock) #5
  %tag = getelementptr i8, ptr %1, i32 -172
  %4 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tag, align 4
  %6 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %ha, align 4
  %and1.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %do.body9, label %if.end20

do.body9:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %8 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp10 = icmp eq i32 %8, 2
  br i1 %cmp10, label %do.end15, label %do.body9.cleanup_crit_edge

do.body9.cleanup_crit_edge:                       ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end15:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #7
  %host_no = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %9 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %host_no, align 4
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %10, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end20:                                         ; preds = %entry
  %call21 = tail call i32 @scsi_dma_map(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.end20.cleanup_crit_edge, label %if.end25

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end25:                                         ; preds = %if.end20
  %conv26 = trunc i32 %call21 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %conv26)
  %cmp.i = icmp ugt i16 %conv26, 1
  br i1 %cmp.i, label %if.then.i, label %if.end25.qla4xxx_calc_request_entries.exit_crit_edge

if.end25.qla4xxx_calc_request_entries.exit_crit_edge: ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %qla4xxx_calc_request_entries.exit

if.then.i:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i = add i16 %conv26, -1
  %sub.i.frozen = freeze i16 %sub.i
  %div1314.i = udiv i16 %sub.i.frozen, 5
  %11 = mul i16 %div1314.i, 5
  %rem1516.i.decomposed = sub i16 %sub.i.frozen, %11
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem1516.i.decomposed)
  %tobool.not.i = icmp eq i16 %rem1516.i.decomposed, 0
  %spec.select.v.i = select i1 %tobool.not.i, i16 1, i16 2
  %spec.select.i = add nuw nsw i16 %spec.select.v.i, %div1314.i
  br label %qla4xxx_calc_request_entries.exit

qla4xxx_calc_request_entries.exit:                ; preds = %if.then.i, %if.end25.qla4xxx_calc_request_entries.exit_crit_edge
  %iocbs.0.i = phi i16 [ 1, %if.end25.qla4xxx_calc_request_entries.exit_crit_edge ], [ %spec.select.i, %if.then.i ]
  %conv.i = zext i16 %iocbs.0.i to i32
  %add.i = add nuw nsw i32 %conv.i, 2
  %req_q_count.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 11
  %12 = ptrtoint ptr %req_q_count.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %req_q_count.i, align 8
  %conv1.i = zext i16 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv1.i)
  %cmp.not.i = icmp ult i32 %add.i, %conv1.i
  br i1 %cmp.not.i, label %qla4xxx_calc_request_entries.exit.qla4xxx_space_in_req_ring.exit_crit_edge, label %if.then.i161

qla4xxx_calc_request_entries.exit.qla4xxx_space_in_req_ring.exit_crit_edge: ; preds = %qla4xxx_calc_request_entries.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %qla4xxx_space_in_req_ring.exit

if.then.i161:                                     ; preds = %qla4xxx_calc_request_entries.exit
  call void @__sanitizer_cov_trace_pc() #7
  %isp_ops.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 102
  %14 = ptrtoint ptr %isp_ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %isp_ops.i, align 4
  %rd_shdw_req_q_out.i = getelementptr inbounds %struct.isp_operations, ptr %15, i32 0, i32 13
  %16 = ptrtoint ptr %rd_shdw_req_q_out.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rd_shdw_req_q_out.i, align 4
  %call.i = tail call zeroext i16 %17(ptr noundef %ha) #5
  %request_in.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 68
  %18 = ptrtoint ptr %request_in.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %request_in.i, align 16
  call void @__sanitizer_cov_trace_cmp2(i16 %call.i, i16 %19)
  %cmp5.i = icmp ugt i16 %call.i, %19
  %sub16.neg.i = add i16 %call.i, 1024
  %call.sink.i = select i1 %cmp5.i, i16 %call.i, i16 %sub16.neg.i
  %sub.i160 = sub i16 %call.sink.i, %19
  %20 = ptrtoint ptr %req_q_count.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %sub.i160, ptr %req_q_count.i, align 8
  br label %qla4xxx_space_in_req_ring.exit

qla4xxx_space_in_req_ring.exit:                   ; preds = %if.then.i161, %qla4xxx_calc_request_entries.exit.qla4xxx_space_in_req_ring.exit_crit_edge
  %21 = ptrtoint ptr %req_q_count.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %req_q_count.i, align 8
  %conv24.i = zext i16 %22 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv24.i)
  %cmp25.i.not = icmp ult i32 %add.i, %conv24.i
  br i1 %cmp25.i.not, label %if.end31, label %qla4xxx_space_in_req_ring.exit.queuing_error_crit_edge

qla4xxx_space_in_req_ring.exit.queuing_error_crit_edge: ; preds = %qla4xxx_space_in_req_ring.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %queuing_error

if.end31:                                         ; preds = %qla4xxx_space_in_req_ring.exit
  %iocb_cnt = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 4
  %23 = ptrtoint ptr %iocb_cnt to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %iocb_cnt, align 16
  %conv32 = zext i16 %24 to i32
  %add = add nuw nsw i32 %conv32, %conv.i
  %iocb_hiwat = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 5
  %25 = ptrtoint ptr %iocb_hiwat to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %iocb_hiwat, align 2
  %conv34 = zext i16 %26 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv34)
  %cmp35.not = icmp ult i32 %add, %conv34
  br i1 %cmp35.not, label %if.end38, label %if.end31.queuing_error_crit_edge

if.end31.queuing_error_crit_edge:                 ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %queuing_error

if.end38:                                         ; preds = %if.end31
  %request_ptr = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 62
  %27 = ptrtoint ptr %request_ptr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %request_ptr, align 8
  %29 = call ptr @memset(ptr %28, i32 0, i32 64)
  %30 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 25, ptr %28, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %5)
  %handle = getelementptr inbounds %struct.command_t3_entry, ptr %28, i32 0, i32 1
  %32 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %handle, align 4
  %fw_ddb_index = getelementptr inbounds %struct.ddb_entry, ptr %3, i32 0, i32 3
  %33 = ptrtoint ptr %fw_ddb_index to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %fw_ddb_index, align 4
  %35 = tail call i16 @llvm.bswap.i16(i16 %34)
  %target = getelementptr inbounds %struct.command_t3_entry, ptr %28, i32 0, i32 2
  %36 = ptrtoint ptr %target to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %target, align 4
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 1
  %37 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %device, align 4
  %lun = getelementptr inbounds %struct.scsi_device, ptr %38, i32 0, i32 18
  %39 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %lun, align 8
  %lun39 = getelementptr inbounds %struct.command_t3_entry, ptr %28, i32 0, i32 9
  tail call void @int_to_scsilun(i64 noundef %40, ptr noundef %lun39) #5
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17, i32 1
  %41 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %length.i, align 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  %ttlByteCnt = getelementptr inbounds %struct.command_t3_entry, ptr %28, i32 0, i32 13
  %44 = ptrtoint ptr %ttlByteCnt to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %ttlByteCnt, align 4
  %cdb = getelementptr inbounds %struct.command_t3_entry, ptr %28, i32 0, i32 8
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 16
  %45 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cmnd, align 4
  %cmd_len = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 14
  %47 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %cmd_len, align 4
  %conv41 = zext i16 %48 to i32
  %49 = call ptr @memcpy(ptr %cdb, ptr %46, i32 %conv41)
  %50 = tail call i16 @llvm.bswap.i16(i16 %conv26)
  %dataSegCnt = getelementptr inbounds %struct.command_t3_entry, ptr %28, i32 0, i32 12
  %51 = ptrtoint ptr %dataSegCnt to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %dataSegCnt, align 2
  %conv42 = trunc i16 %iocbs.0.i to i8
  %entryCount = getelementptr inbounds %struct.qla4_header, ptr %28, i32 0, i32 3
  %52 = ptrtoint ptr %entryCount to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv42, ptr %entryCount, align 1
  %control_flags = getelementptr inbounds %struct.command_t3_entry, ptr %28, i32 0, i32 4
  %53 = ptrtoint ptr %control_flags to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %control_flags, align 4
  %54 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool45.not = icmp eq i32 %55, 0
  br i1 %tobool45.not, label %if.end38.if.end69_crit_edge, label %if.then46

if.end38.if.end69_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

if.then46:                                        ; preds = %if.end38
  %sc_data_direction = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 15
  %56 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %sc_data_direction, align 4
  %58 = zext i32 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values)
  switch i32 %57, label %if.then46.if.end57_crit_edge [
    i32 1, label %if.then46.if.end57.sink.split_crit_edge
    i32 2, label %if.then54
  ]

if.then46.if.end57.sink.split_crit_edge:          ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57.sink.split

if.then46.if.end57_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57

if.then54:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57.sink.split

if.end57.sink.split:                              ; preds = %if.then54, %if.then46.if.end57.sink.split_crit_edge
  %.sink = phi i8 [ 64, %if.then54 ], [ 32, %if.then46.if.end57.sink.split_crit_edge ]
  %59 = ptrtoint ptr %control_flags to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %.sink, ptr %control_flags, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.end57.sink.split, %if.then46.if.end57_crit_edge
  %60 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %length.i, align 4
  %bytes_xfered = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 24
  %62 = ptrtoint ptr %bytes_xfered to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %bytes_xfered, align 8
  %add59 = add i32 %63, %61
  store i32 %add59, ptr %bytes_xfered, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %add59)
  %tobool61.not = icmp ult i32 %add59, 1048576
  br i1 %tobool61.not, label %if.end57.if.end69_crit_edge, label %if.then62

if.end57.if.end69_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

if.then62:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  %shr = lshr i32 %add59, 20
  %conv64 = zext i32 %shr to i64
  %total_mbytes_xferred = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 21
  %64 = ptrtoint ptr %total_mbytes_xferred to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %total_mbytes_xferred, align 16
  %add65 = add i64 %65, %conv64
  store i64 %add65, ptr %total_mbytes_xferred, align 16
  %and67 = and i32 %add59, 1048575
  %66 = ptrtoint ptr %bytes_xfered to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %and67, ptr %bytes_xfered, align 8
  br label %if.end69

if.end69:                                         ; preds = %if.then62, %if.end57.if.end69_crit_edge, %if.end38.if.end69_crit_edge
  %67 = ptrtoint ptr %control_flags to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %control_flags, align 4
  %69 = or i8 %68, 1
  store i8 %69, ptr %control_flags, align 4
  %request_in.i164 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 68
  %70 = ptrtoint ptr %request_in.i164 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %request_in.i164, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 1023, i16 %71)
  %cmp.i165 = icmp eq i16 %71, 1023
  br i1 %cmp.i165, label %if.then.i166, label %if.else.i

if.then.i166:                                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  %72 = ptrtoint ptr %request_in.i164 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 0, ptr %request_in.i164, align 16
  %request_ring.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 61
  %73 = ptrtoint ptr %request_ring.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %request_ring.i, align 4
  br label %qla4xxx_advance_req_ring_ptr.exit

if.else.i:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i = add i16 %71, 1
  %75 = ptrtoint ptr %request_in.i164 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %inc.i, ptr %request_in.i164, align 16
  %76 = ptrtoint ptr %request_ptr to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %request_ptr, align 8
  %incdec.ptr.i = getelementptr %struct.queue_entry, ptr %77, i32 1
  br label %qla4xxx_advance_req_ring_ptr.exit

qla4xxx_advance_req_ring_ptr.exit:                ; preds = %if.else.i, %if.then.i166
  %storemerge = phi ptr [ %incdec.ptr.i, %if.else.i ], [ %74, %if.then.i166 ]
  %78 = ptrtoint ptr %request_ptr to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %storemerge, ptr %request_ptr, align 8
  %79 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %cmd1, align 4
  %ha2.i = getelementptr inbounds %struct.srb, ptr %srb, i32 0, i32 1
  %81 = ptrtoint ptr %ha2.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ha2.i, align 4
  %length.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %80, i32 0, i32 17, i32 1
  %83 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %length.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool.not.i167 = icmp eq i32 %84, 0
  br i1 %tobool.not.i167, label %qla4xxx_advance_req_ring_ptr.exit.if.then.i169_crit_edge, label %lor.lhs.false.i

qla4xxx_advance_req_ring_ptr.exit.if.then.i169_crit_edge: ; preds = %qla4xxx_advance_req_ring_ptr.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i169

lor.lhs.false.i:                                  ; preds = %qla4xxx_advance_req_ring_ptr.exit
  %sc_data_direction.i = getelementptr inbounds %struct.scsi_cmnd, ptr %80, i32 0, i32 15
  %85 = ptrtoint ptr %sc_data_direction.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %sc_data_direction.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %86)
  %cmp.i168 = icmp eq i32 %86, 3
  br i1 %cmp.i168, label %lor.lhs.false.i.if.then.i169_crit_edge, label %if.end.i

lor.lhs.false.i.if.then.i169_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i169

if.then.i169:                                     ; preds = %lor.lhs.false.i.if.then.i169_crit_edge, %qla4xxx_advance_req_ring_ptr.exit.if.then.i169_crit_edge
  %87 = ptrtoint ptr %ttlByteCnt to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %ttlByteCnt, align 4
  br label %qla4xxx_build_scsi_iocbs.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %conv.i170 = and i32 %call21, 65535
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv26)
  %cmp438.not.i = icmp eq i16 %conv26, 0
  br i1 %cmp438.not.i, label %if.end.i.qla4xxx_build_scsi_iocbs.exit_crit_edge, label %for.body.lr.ph.i

if.end.i.qla4xxx_build_scsi_iocbs.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qla4xxx_build_scsi_iocbs.exit

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %sdb.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %80, i32 0, i32 17
  %88 = ptrtoint ptr %sdb.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %sdb.i.i, align 4
  %dataseg.i = getelementptr inbounds %struct.command_t3_entry, ptr %28, i32 0, i32 14
  %request_ptr.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %82, i32 0, i32 62
  %request_in.i.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %82, i32 0, i32 68
  %request_ring.i.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %82, i32 0, i32 61
  br label %for.body.i

for.body.i:                                       ; preds = %if.end13.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.042.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i172, %if.end13.i.for.body.i_crit_edge ]
  %sg.041.i = phi ptr [ %89, %for.body.lr.ph.i ], [ %call20.i, %if.end13.i.for.body.i_crit_edge ]
  %cur_dsd.040.i = phi ptr [ %dataseg.i, %for.body.lr.ph.i ], [ %incdec.ptr.i171, %if.end13.i.for.body.i_crit_edge ]
  %avail_dsds.039.i = phi i16 [ 1, %for.body.lr.ph.i ], [ %dec.i, %if.end13.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %avail_dsds.039.i)
  %cmp7.i = icmp eq i16 %avail_dsds.039.i, 0
  br i1 %cmp7.i, label %if.then9.i, label %for.body.i.if.end13.i_crit_edge

for.body.i.if.end13.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13.i

if.then9.i:                                       ; preds = %for.body.i
  %90 = ptrtoint ptr %request_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %request_ptr.i.i, align 8
  %92 = ptrtoint ptr %request_in.i.i.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %request_in.i.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 1023, i16 %93)
  %cmp.i.i.i = icmp eq i16 %93, 1023
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #7
  %94 = ptrtoint ptr %request_in.i.i.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 0, ptr %request_in.i.i.i, align 16
  %95 = ptrtoint ptr %request_ring.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %request_ring.i.i.i, align 4
  br label %qla4xxx_alloc_cont_entry.exit.i

if.else.i.i.i:                                    ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i.i = add i16 %93, 1
  %97 = ptrtoint ptr %request_in.i.i.i to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %inc.i.i.i, ptr %request_in.i.i.i, align 16
  %incdec.ptr.i.i.i = getelementptr %struct.queue_entry, ptr %91, i32 1
  br label %qla4xxx_alloc_cont_entry.exit.i

qla4xxx_alloc_cont_entry.exit.i:                  ; preds = %if.else.i.i.i, %if.then.i.i.i
  %storemerge.i.i = phi ptr [ %incdec.ptr.i.i.i, %if.else.i.i.i ], [ %96, %if.then.i.i.i ]
  %98 = ptrtoint ptr %request_ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %storemerge.i.i, ptr %request_ptr.i.i, align 8
  %99 = ptrtoint ptr %91 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 10, ptr %91, align 4
  %entryCount.i.i = getelementptr inbounds %struct.qla4_header, ptr %91, i32 0, i32 3
  %100 = ptrtoint ptr %entryCount.i.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 1, ptr %entryCount.i.i, align 1
  %101 = ptrtoint ptr %request_in.i.i.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %request_in.i.i.i, align 16
  %103 = lshr i16 %102, 8
  %conv.i.i = trunc i16 %103 to i8
  %systemDefined.i.i = getelementptr inbounds %struct.qla4_header, ptr %91, i32 0, i32 2
  %104 = ptrtoint ptr %systemDefined.i.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %conv.i.i, ptr %systemDefined.i.i, align 2
  %dataseg11.i = getelementptr inbounds %struct.continuation_t1_entry, ptr %91, i32 0, i32 1
  br label %if.end13.i

if.end13.i:                                       ; preds = %qla4xxx_alloc_cont_entry.exit.i, %for.body.i.if.end13.i_crit_edge
  %avail_dsds.1.i = phi i16 [ 5, %qla4xxx_alloc_cont_entry.exit.i ], [ %avail_dsds.039.i, %for.body.i.if.end13.i_crit_edge ]
  %cur_dsd.1.i = phi ptr [ %dataseg11.i, %qla4xxx_alloc_cont_entry.exit.i ], [ %cur_dsd.040.i, %for.body.i.if.end13.i_crit_edge ]
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %sg.041.i, i32 0, i32 3
  %105 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %dma_address.i, align 4
  %107 = tail call i32 @llvm.bswap.i32(i32 %106) #5
  %108 = ptrtoint ptr %cur_dsd.1.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %cur_dsd.1.i, align 4
  %addrHigh.i = getelementptr inbounds %struct.anon.211, ptr %cur_dsd.1.i, i32 0, i32 1
  %109 = ptrtoint ptr %addrHigh.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %addrHigh.i, align 4
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.041.i, i32 0, i32 4
  %110 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %dma_length.i, align 4
  %112 = tail call i32 @llvm.bswap.i32(i32 %111) #5
  %count.i = getelementptr inbounds %struct.data_seg_a64, ptr %cur_dsd.1.i, i32 0, i32 1
  %113 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %count.i, align 4
  %dec.i = add i16 %avail_dsds.1.i, -1
  %incdec.ptr.i171 = getelementptr %struct.data_seg_a64, ptr %cur_dsd.1.i, i32 1
  %inc.i172 = add nuw nsw i32 %i.042.i, 1
  %call20.i = tail call ptr @sg_next(ptr noundef %sg.041.i) #5
  %exitcond.not.i = icmp eq i32 %inc.i172, %conv.i170
  br i1 %exitcond.not.i, label %if.end13.i.qla4xxx_build_scsi_iocbs.exit_crit_edge, label %if.end13.i.for.body.i_crit_edge

if.end13.i.for.body.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

if.end13.i.qla4xxx_build_scsi_iocbs.exit_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qla4xxx_build_scsi_iocbs.exit

qla4xxx_build_scsi_iocbs.exit:                    ; preds = %if.end13.i.qla4xxx_build_scsi_iocbs.exit_crit_edge, %if.end.i.qla4xxx_build_scsi_iocbs.exit_crit_edge, %if.then.i169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  tail call void @arm_heavy_mb() #5
  %114 = inttoptr i32 %5 to ptr
  %115 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %cmd1, align 4
  %host_scribble = getelementptr inbounds %struct.scsi_cmnd, ptr %116, i32 0, i32 23
  %117 = ptrtoint ptr %host_scribble to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %114, ptr %host_scribble, align 4
  %state = getelementptr inbounds %struct.srb, ptr %srb, i32 0, i32 4
  %118 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 3, ptr %state, align 2
  %flags77 = getelementptr inbounds %struct.srb, ptr %srb, i32 0, i32 3
  %119 = ptrtoint ptr %flags77 to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %flags77, align 4
  %121 = or i16 %120, 8
  store i16 %121, ptr %flags77, align 4
  %122 = ptrtoint ptr %iocb_cnt to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %iocb_cnt, align 16
  %add84 = add i16 %123, %iocbs.0.i
  store i16 %add84, ptr %iocb_cnt, align 16
  %iocb_cnt86 = getelementptr inbounds %struct.srb, ptr %srb, i32 0, i32 11
  %124 = ptrtoint ptr %iocb_cnt86 to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %iocbs.0.i, ptr %iocb_cnt86, align 2
  %125 = ptrtoint ptr %req_q_count.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %req_q_count.i, align 8
  %sub = sub i16 %126, %iocbs.0.i
  store i16 %sub, ptr %req_q_count.i, align 8
  %isp_ops = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 102
  %127 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %isp_ops, align 4
  %queue_iocb = getelementptr inbounds %struct.isp_operations, ptr %128, i32 0, i32 11
  %129 = ptrtoint ptr %queue_iocb to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %queue_iocb, align 4
  tail call void %130(ptr noundef %ha) #5
  br label %cleanup

queuing_error:                                    ; preds = %if.end31.queuing_error_crit_edge, %qla4xxx_space_in_req_ring.exit.queuing_error_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv26)
  %tobool91.not = icmp eq i16 %conv26, 0
  br i1 %tobool91.not, label %queuing_error.cleanup_crit_edge, label %if.then92

queuing_error.cleanup_crit_edge:                  ; preds = %queuing_error
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then92:                                        ; preds = %queuing_error
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @scsi_dma_unmap(ptr noundef %1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then92, %queuing_error.cleanup_crit_edge, %qla4xxx_build_scsi_iocbs.exit, %if.end20.cleanup_crit_edge, %do.end15, %do.body9.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %qla4xxx_build_scsi_iocbs.exit ], [ 1, %do.body9.cleanup_crit_edge ], [ 1, %do.end15 ], [ 1, %if.end20.cleanup_crit_edge ], [ 1, %if.then92 ], [ 1, %queuing_error.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hardware_lock, i32 noundef %call3) #5
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_dma_map(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_dma_unmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4xxx_send_passthru0(ptr nocapture noundef readonly %task) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conn = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 12
  %0 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn, align 4
  %session = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %session, align 8
  %dd_data = getelementptr inbounds %struct.iscsi_session, ptr %3, i32 0, i32 60
  %4 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dd_data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %dd_data2 = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 20
  %8 = ptrtoint ptr %dd_data2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dd_data2, align 4
  %hardware_lock = getelementptr inbounds %struct.scsi_qla_host, ptr %7, i32 0, i32 15
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hardware_lock) #5
  %iocb_req_cnt = getelementptr inbounds %struct.ql4_task_data, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %iocb_req_cnt to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %iocb_req_cnt, align 4
  %req_q_count.i = getelementptr inbounds %struct.scsi_qla_host, ptr %7, i32 0, i32 11
  %11 = ptrtoint ptr %req_q_count.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %req_q_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %12)
  %cmp.not.i = icmp ugt i16 %12, 3
  br i1 %cmp.not.i, label %entry.if.end_crit_edge, label %qla4xxx_space_in_req_ring.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

qla4xxx_space_in_req_ring.exit:                   ; preds = %entry
  %isp_ops.i = getelementptr inbounds %struct.scsi_qla_host, ptr %7, i32 0, i32 102
  %13 = ptrtoint ptr %isp_ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %isp_ops.i, align 4
  %rd_shdw_req_q_out.i = getelementptr inbounds %struct.isp_operations, ptr %14, i32 0, i32 13
  %15 = ptrtoint ptr %rd_shdw_req_q_out.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rd_shdw_req_q_out.i, align 4
  %call.i = tail call zeroext i16 %16(ptr noundef %7) #5
  %request_in.i = getelementptr inbounds %struct.scsi_qla_host, ptr %7, i32 0, i32 68
  %17 = ptrtoint ptr %request_in.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %request_in.i, align 16
  call void @__sanitizer_cov_trace_cmp2(i16 %call.i, i16 %18)
  %cmp5.i = icmp ugt i16 %call.i, %18
  %sub16.neg.i = add i16 %call.i, 1024
  %call.sink.i = select i1 %cmp5.i, i16 %call.i, i16 %sub16.neg.i
  %sub.i = sub i16 %call.sink.i, %18
  %19 = ptrtoint ptr %req_q_count.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %sub.i, ptr %req_q_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %sub.i)
  %cmp25.i = icmp ult i16 %sub.i, 4
  br i1 %cmp25.i, label %qla4xxx_space_in_req_ring.exit.queuing_error_crit_edge, label %qla4xxx_space_in_req_ring.exit.if.end_crit_edge

qla4xxx_space_in_req_ring.exit.if.end_crit_edge:  ; preds = %qla4xxx_space_in_req_ring.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

qla4xxx_space_in_req_ring.exit.queuing_error_crit_edge: ; preds = %qla4xxx_space_in_req_ring.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %queuing_error

if.end:                                           ; preds = %qla4xxx_space_in_req_ring.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %request_ptr = getelementptr inbounds %struct.scsi_qla_host, ptr %7, i32 0, i32 62
  %20 = ptrtoint ptr %request_ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %request_ptr, align 8
  %22 = call ptr @memset(ptr %21, i32 0, i32 64)
  %23 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 58, ptr %21, align 4
  %systemDefined = getelementptr inbounds %struct.qla4_header, ptr %21, i32 0, i32 2
  %24 = ptrtoint ptr %systemDefined to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %systemDefined, align 2
  %25 = ptrtoint ptr %iocb_req_cnt to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %iocb_req_cnt, align 4
  %entryCount = getelementptr inbounds %struct.qla4_header, ptr %21, i32 0, i32 3
  %27 = ptrtoint ptr %entryCount to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %entryCount, align 1
  %itt = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 6
  %28 = ptrtoint ptr %itt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %itt, align 4
  %handle = getelementptr inbounds %struct.passthru0, ptr %21, i32 0, i32 1
  %30 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %handle, align 4
  %fw_ddb_index = getelementptr inbounds %struct.ddb_entry, ptr %5, i32 0, i32 3
  %31 = ptrtoint ptr %fw_ddb_index to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %fw_ddb_index, align 4
  %33 = tail call i16 @llvm.bswap.i16(i16 %32)
  %target = getelementptr inbounds %struct.passthru0, ptr %21, i32 0, i32 2
  %34 = ptrtoint ptr %target to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %target, align 4
  %timeout = getelementptr inbounds %struct.passthru0, ptr %21, i32 0, i32 5
  %35 = ptrtoint ptr %timeout to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 7680, ptr %timeout, align 2
  %req_len = getelementptr inbounds %struct.ql4_task_data, ptr %9, i32 0, i32 5
  %36 = ptrtoint ptr %req_len to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %req_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool13.not = icmp eq i32 %37, 0
  br i1 %tobool13.not, label %if.end.if.end27_crit_edge, label %if.then14

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %req_buffer = getelementptr inbounds %struct.ql4_task_data, ptr %9, i32 0, i32 3
  %38 = ptrtoint ptr %req_buffer to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %req_buffer, align 4
  %add.ptr = getelementptr i8, ptr %39, i32 48
  %data = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 9
  %40 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data, align 4
  %data_count = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 10
  %42 = ptrtoint ptr %data_count to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %data_count, align 4
  %44 = call ptr @memcpy(ptr %add.ptr, ptr %41, i32 %43)
  %req_dma = getelementptr inbounds %struct.ql4_task_data, ptr %9, i32 0, i32 4
  %45 = ptrtoint ptr %req_dma to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %req_dma, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  %out_dsd = getelementptr inbounds %struct.passthru0, ptr %21, i32 0, i32 6
  %48 = ptrtoint ptr %out_dsd to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %out_dsd, align 4
  %addrHigh = getelementptr inbounds %struct.passthru0, ptr %21, i32 0, i32 6, i32 0, i32 1
  %49 = ptrtoint ptr %addrHigh to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %addrHigh, align 4
  %50 = ptrtoint ptr %data_count to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %data_count, align 4
  %add = add i32 %51, 48
  %52 = tail call i32 @llvm.bswap.i32(i32 %add)
  %count = getelementptr inbounds %struct.passthru0, ptr %21, i32 0, i32 6, i32 1
  %53 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %count, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then14, %if.end.if.end27_crit_edge
  %ctrl_flags.0 = phi i16 [ 19, %if.then14 ], [ 17, %if.end.if.end27_crit_edge ]
  %resp_len = getelementptr inbounds %struct.ql4_task_data, ptr %9, i32 0, i32 8
  %54 = ptrtoint ptr %resp_len to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %resp_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool28.not = icmp eq i32 %55, 0
  br i1 %tobool28.not, label %if.end27.if.end45_crit_edge, label %if.then29

if.end27.if.end45_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  %resp_dma = getelementptr inbounds %struct.ql4_task_data, ptr %9, i32 0, i32 7
  %56 = ptrtoint ptr %resp_dma to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %resp_dma, align 4
  %58 = tail call i32 @llvm.bswap.i32(i32 %57)
  %in_dsd = getelementptr inbounds %struct.passthru0, ptr %21, i32 0, i32 8
  %59 = ptrtoint ptr %in_dsd to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %in_dsd, align 4
  %addrHigh41 = getelementptr inbounds %struct.passthru0, ptr %21, i32 0, i32 8, i32 0, i32 1
  %60 = ptrtoint ptr %addrHigh41 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %addrHigh41, align 4
  %61 = ptrtoint ptr %resp_len to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %resp_len, align 4
  %63 = tail call i32 @llvm.bswap.i32(i32 %62)
  %count44 = getelementptr inbounds %struct.passthru0, ptr %21, i32 0, i32 8, i32 1
  %64 = ptrtoint ptr %count44 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %count44, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then29, %if.end27.if.end45_crit_edge
  %control_flags = getelementptr inbounds %struct.passthru0, ptr %21, i32 0, i32 4
  %65 = ptrtoint ptr %control_flags to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %ctrl_flags.0, ptr %control_flags, align 4
  %request_in.i103 = getelementptr inbounds %struct.scsi_qla_host, ptr %7, i32 0, i32 68
  %66 = ptrtoint ptr %request_in.i103 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %request_in.i103, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 1023, i16 %67)
  %cmp.i = icmp eq i16 %67, 1023
  br i1 %cmp.i, label %if.then.i104, label %if.else.i

if.then.i104:                                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  %68 = ptrtoint ptr %request_in.i103 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 0, ptr %request_in.i103, align 16
  %request_ring.i = getelementptr inbounds %struct.scsi_qla_host, ptr %7, i32 0, i32 61
  %69 = ptrtoint ptr %request_ring.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %request_ring.i, align 4
  br label %qla4xxx_advance_req_ring_ptr.exit

if.else.i:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i = add i16 %67, 1
  %71 = ptrtoint ptr %request_in.i103 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %inc.i, ptr %request_in.i103, align 16
  %72 = ptrtoint ptr %request_ptr to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %request_ptr, align 8
  %incdec.ptr.i = getelementptr %struct.queue_entry, ptr %73, i32 1
  br label %qla4xxx_advance_req_ring_ptr.exit

qla4xxx_advance_req_ring_ptr.exit:                ; preds = %if.else.i, %if.then.i104
  %storemerge = phi ptr [ %incdec.ptr.i, %if.else.i ], [ %70, %if.then.i104 ]
  %74 = ptrtoint ptr %request_ptr to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %storemerge, ptr %request_ptr, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !36
  tail call void @arm_heavy_mb() #5
  %75 = ptrtoint ptr %iocb_req_cnt to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %iocb_req_cnt, align 4
  %conv53 = zext i8 %76 to i16
  %iocb_cnt = getelementptr inbounds %struct.scsi_qla_host, ptr %7, i32 0, i32 4
  %77 = ptrtoint ptr %iocb_cnt to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %iocb_cnt, align 16
  %add55 = add i16 %78, %conv53
  store i16 %add55, ptr %iocb_cnt, align 16
  %79 = load i8, ptr %iocb_req_cnt, align 4
  %conv58 = zext i8 %79 to i16
  %80 = ptrtoint ptr %req_q_count.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %req_q_count.i, align 8
  %sub = sub i16 %81, %conv58
  store i16 %sub, ptr %req_q_count.i, align 8
  %isp_ops = getelementptr inbounds %struct.scsi_qla_host, ptr %7, i32 0, i32 102
  %82 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %isp_ops, align 4
  %queue_iocb = getelementptr inbounds %struct.isp_operations, ptr %83, i32 0, i32 11
  %84 = ptrtoint ptr %queue_iocb to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %queue_iocb, align 4
  tail call void %85(ptr noundef %7) #5
  br label %queuing_error

queuing_error:                                    ; preds = %qla4xxx_advance_req_ring_ptr.exit, %qla4xxx_space_in_req_ring.exit.queuing_error_crit_edge
  %ret.0 = phi i32 [ 0, %qla4xxx_advance_req_ring_ptr.exit ], [ 1, %qla4xxx_space_in_req_ring.exit.queuing_error_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hardware_lock, i32 noundef %call4) #5
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4xxx_ping_iocb(ptr noundef %ha, i32 noundef %options, i32 noundef %payload_size, i32 noundef %pid, ptr nocapture noundef readonly %ipaddr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 20) #9
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %do.body, label %if.end5

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %1 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %do.end, label %do.body.exit_ping_crit_edge

do.body.exit_ping_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit_ping

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #8
  br label %exit_ping

if.end5:                                          ; preds = %entry
  %4 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ha, ptr %call7.i.i.i, align 8
  %5 = ptrtoint ptr %ipaddr to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %ipaddr, align 1
  %arrayidx10 = getelementptr i8, ptr %ipaddr, i32 4
  %7 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %arrayidx10, align 1
  %arrayidx12 = getelementptr i8, ptr %ipaddr, i32 8
  %9 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %arrayidx12, align 1
  %arrayidx14 = getelementptr i8, ptr %ipaddr, i32 12
  %11 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %arrayidx14, align 1
  %pid16 = getelementptr inbounds %struct.mrb, ptr %call7.i.i.i, i32 0, i32 4
  %13 = ptrtoint ptr %pid16 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %pid, ptr %pid16, align 8
  %hardware_lock.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 15
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hardware_lock.i) #5
  %mbox.i = getelementptr inbounds %struct.mrb, ptr %call7.i.i.i, i32 0, i32 1
  %req_q_count.i.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 11
  %14 = ptrtoint ptr %req_q_count.i.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %req_q_count.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %15)
  %cmp.not.i.i.i = icmp ugt i16 %15, 3
  br i1 %cmp.not.i.i.i, label %if.end5.if.then.i.i_crit_edge, label %qla4xxx_space_in_req_ring.exit.i.i

if.end5.if.then.i.i_crit_edge:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

qla4xxx_space_in_req_ring.exit.i.i:               ; preds = %if.end5
  %isp_ops.i.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 102
  %16 = ptrtoint ptr %isp_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %isp_ops.i.i.i, align 4
  %rd_shdw_req_q_out.i.i.i = getelementptr inbounds %struct.isp_operations, ptr %17, i32 0, i32 13
  %18 = ptrtoint ptr %rd_shdw_req_q_out.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rd_shdw_req_q_out.i.i.i, align 4
  %call.i.i.i = tail call zeroext i16 %19(ptr noundef %ha) #5
  %request_in.i.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 68
  %20 = ptrtoint ptr %request_in.i.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %request_in.i.i.i, align 16
  call void @__sanitizer_cov_trace_cmp2(i16 %call.i.i.i, i16 %21)
  %cmp5.i.i.i = icmp ugt i16 %call.i.i.i, %21
  %sub16.neg.i.i.i = add i16 %call.i.i.i, 1024
  %call.sink.i.i.i = select i1 %cmp5.i.i.i, i16 %call.i.i.i, i16 %sub16.neg.i.i.i
  %sub.i.i.i = sub i16 %call.sink.i.i.i, %21
  %22 = ptrtoint ptr %req_q_count.i.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %sub.i.i.i, ptr %req_q_count.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %sub.i.i.i)
  %cmp25.i.i.i = icmp ult i16 %sub.i.i.i, 4
  br i1 %cmp25.i.i.i, label %qla4xxx_send_mbox_iocb.exit, label %qla4xxx_space_in_req_ring.exit.i.i.if.then.i.i_crit_edge

qla4xxx_space_in_req_ring.exit.i.i.if.then.i.i_crit_edge: ; preds = %qla4xxx_space_in_req_ring.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %qla4xxx_space_in_req_ring.exit.i.i.if.then.i.i_crit_edge, %if.end5.if.then.i.i_crit_edge
  %request_ptr.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 62
  %23 = ptrtoint ptr %request_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %request_ptr.i.i, align 8
  %25 = ptrtoint ptr %mbox.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %mbox.i, align 4
  %26 = call ptr @memset(ptr %24, i32 0, i32 64)
  %request_in.i8.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 68
  %27 = ptrtoint ptr %request_in.i8.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %request_in.i8.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 1023, i16 %28)
  %cmp.i.i.i = icmp eq i16 %28, 1023
  br i1 %cmp.i.i.i, label %if.then.i9.i.i, label %if.else.i.i.i

if.then.i9.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %request_in.i8.i.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %request_in.i8.i.i, align 16
  %request_ring.i.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 61
  %30 = ptrtoint ptr %request_ring.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %request_ring.i.i.i, align 4
  br label %if.end.i34

if.else.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i.i = add i16 %28, 1
  %32 = ptrtoint ptr %request_in.i8.i.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %inc.i.i.i, ptr %request_in.i8.i.i, align 16
  %33 = ptrtoint ptr %request_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %request_ptr.i.i, align 8
  %incdec.ptr.i.i.i = getelementptr %struct.queue_entry, ptr %34, i32 1
  br label %if.end.i34

if.end.i34:                                       ; preds = %if.else.i.i.i, %if.then.i9.i.i
  %storemerge.i.i = phi ptr [ %incdec.ptr.i.i.i, %if.else.i.i.i ], [ %31, %if.then.i9.i.i ]
  %35 = ptrtoint ptr %request_ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %storemerge.i.i, ptr %request_ptr.i.i, align 8
  %36 = ptrtoint ptr %req_q_count.i.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %req_q_count.i.i.i, align 8
  %sub.i.i = add i16 %37, -1
  store i16 %sub.i.i, ptr %req_q_count.i.i.i, align 8
  %mrb_index.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 142
  %38 = ptrtoint ptr %mrb_index.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mrb_index.i, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc19.i = add nuw nsw i32 %i.071.i, 1
  %exitcond.not.i = icmp eq i32 %inc19.i, 128
  br i1 %exitcond.not.i, label %for.cond.i.qla4xxx_send_mbox_iocb.exit.thread_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.cond.i.qla4xxx_send_mbox_iocb.exit.thread_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qla4xxx_send_mbox_iocb.exit.thread

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end.i34
  %index.072.i = phi i32 [ %39, %if.end.i34 ], [ %spec.store.select.i, %for.cond.i.for.body.i_crit_edge ]
  %i.071.i = phi i32 [ 0, %if.end.i34 ], [ %inc19.i, %for.cond.i.for.body.i_crit_edge ]
  %inc.i = add i32 %index.072.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %inc.i)
  %cmp10.i = icmp eq i32 %inc.i, 128
  %spec.store.select.i = select i1 %cmp10.i, i32 1, i32 %inc.i
  %arrayidx.i = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 141, i32 %spec.store.select.i
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i, align 4
  %cmp14.i = icmp eq ptr %41, null
  br i1 %cmp14.i, label %if.then16.i, label %for.cond.i

if.then16.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %mrb_index.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %spec.store.select.i, ptr %mrb_index.i, align 4
  br label %qla4xxx_send_mbox_iocb.exit.thread

qla4xxx_send_mbox_iocb.exit.thread:               ; preds = %if.then16.i, %for.cond.i.qla4xxx_send_mbox_iocb.exit.thread_crit_edge
  %iocb_cnt.i = getelementptr inbounds %struct.mrb, ptr %call7.i.i.i, i32 0, i32 3
  %43 = ptrtoint ptr %iocb_cnt.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 1, ptr %iocb_cnt.i, align 4
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call7.i.i.i, ptr %arrayidx.i, align 4
  %handle.i = getelementptr inbounds %struct.mbox_cmd_iocb, ptr %24, i32 0, i32 1
  %45 = ptrtoint ptr %handle.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %spec.store.select.i, ptr %handle.i, align 4
  %46 = ptrtoint ptr %mbox.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mbox.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 56, ptr %47, align 4
  %49 = load i16, ptr %iocb_cnt.i, align 4
  %conv25.i = trunc i16 %49 to i8
  %50 = load ptr, ptr %mbox.i, align 4
  %entryCount.i = getelementptr inbounds %struct.qla4_header, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %entryCount.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv25.i, ptr %entryCount.i, align 1
  %52 = load ptr, ptr %mbox.i, align 4
  %in_mbox29.i = getelementptr inbounds %struct.mbox_cmd_iocb, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %in_mbox29.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 11, ptr %in_mbox29.i, align 4
  %in_mbox.sroa.7.0.in_mbox29.i.sroa_idx = getelementptr inbounds %struct.mbox_cmd_iocb, ptr %52, i32 0, i32 2, i32 1
  %54 = ptrtoint ptr %in_mbox.sroa.7.0.in_mbox29.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %options, ptr %in_mbox.sroa.7.0.in_mbox29.i.sroa_idx, align 4
  %in_mbox.sroa.9.0.in_mbox29.i.sroa_idx = getelementptr inbounds %struct.mbox_cmd_iocb, ptr %52, i32 0, i32 2, i32 2
  %55 = ptrtoint ptr %in_mbox.sroa.9.0.in_mbox29.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %6, ptr %in_mbox.sroa.9.0.in_mbox29.i.sroa_idx, align 4
  %in_mbox.sroa.11.0.in_mbox29.i.sroa_idx = getelementptr inbounds %struct.mbox_cmd_iocb, ptr %52, i32 0, i32 2, i32 3
  %56 = ptrtoint ptr %in_mbox.sroa.11.0.in_mbox29.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %8, ptr %in_mbox.sroa.11.0.in_mbox29.i.sroa_idx, align 4
  %in_mbox.sroa.13.0.in_mbox29.i.sroa_idx = getelementptr inbounds %struct.mbox_cmd_iocb, ptr %52, i32 0, i32 2, i32 4
  %57 = ptrtoint ptr %in_mbox.sroa.13.0.in_mbox29.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %10, ptr %in_mbox.sroa.13.0.in_mbox29.i.sroa_idx, align 4
  %in_mbox.sroa.15.0.in_mbox29.i.sroa_idx = getelementptr inbounds %struct.mbox_cmd_iocb, ptr %52, i32 0, i32 2, i32 5
  %58 = ptrtoint ptr %in_mbox.sroa.15.0.in_mbox29.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %12, ptr %in_mbox.sroa.15.0.in_mbox29.i.sroa_idx, align 4
  %in_mbox.sroa.17.0.in_mbox29.i.sroa_idx = getelementptr inbounds %struct.mbox_cmd_iocb, ptr %52, i32 0, i32 2, i32 6
  %59 = ptrtoint ptr %in_mbox.sroa.17.0.in_mbox29.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %payload_size, ptr %in_mbox.sroa.17.0.in_mbox29.i.sroa_idx, align 4
  %in_mbox.sroa.19.0.in_mbox29.i.sroa_idx = getelementptr inbounds %struct.mbox_cmd_iocb, ptr %52, i32 0, i32 2, i32 7
  %60 = ptrtoint ptr %in_mbox.sroa.19.0.in_mbox29.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %in_mbox.sroa.19.0.in_mbox29.i.sroa_idx, align 4
  %mbox_cmd.i = getelementptr inbounds %struct.mrb, ptr %call7.i.i.i, i32 0, i32 2
  %61 = ptrtoint ptr %mbox_cmd.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 11, ptr %mbox_cmd.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  tail call void @arm_heavy_mb() #5
  %62 = ptrtoint ptr %iocb_cnt.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %iocb_cnt.i, align 4
  %iocb_cnt36.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 4
  %64 = ptrtoint ptr %iocb_cnt36.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %iocb_cnt36.i, align 16
  %add.i = add i16 %65, %63
  store i16 %add.i, ptr %iocb_cnt36.i, align 16
  %isp_ops.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 102
  %66 = ptrtoint ptr %isp_ops.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %isp_ops.i, align 4
  %queue_iocb.i = getelementptr inbounds %struct.isp_operations, ptr %67, i32 0, i32 11
  %68 = ptrtoint ptr %queue_iocb.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %queue_iocb.i, align 4
  tail call void %69(ptr noundef %ha) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hardware_lock.i, i32 noundef %call2.i) #5
  br label %cleanup

qla4xxx_send_mbox_iocb.exit:                      ; preds = %qla4xxx_space_in_req_ring.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hardware_lock.i, i32 noundef %call2.i) #5
  br label %exit_ping

exit_ping:                                        ; preds = %qla4xxx_send_mbox_iocb.exit, %do.end, %do.body.exit_ping_crit_edge
  tail call void @kfree(ptr noundef %call7.i.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %exit_ping, %qla4xxx_send_mbox_iocb.exit.thread
  %retval.0 = phi i32 [ 1, %exit_ping ], [ 0, %qla4xxx_send_mbox_iocb.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !12}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/qla4xxx/ql4_iocb.c", i32 300, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @qla4xxx_send_command_to_isp._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @qla4xxx_send_command_to_isp._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/qla4xxx/ql4_iocb.c", i32 517, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @qla4xxx_ping_iocb._entry, !7, !"_entry", i1 false, i1 false}
!12 = !{ptr @qla4xxx_ping_iocb._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{i64 2159535704}
!23 = !{i64 2159537017}
!24 = !{i64 5020569}
!25 = !{i64 5020987}
!26 = !{i64 2159537766}
!27 = !{i64 2159538005}
!28 = !{i64 2159538765}
!29 = !{i64 2159539004}
!30 = !{i64 2159539764}
!31 = !{i64 2159539990}
!32 = !{i64 2159540689}
!33 = !{i64 2159540918}
!34 = !{i64 2159541628}
!35 = !{i64 2159545267}
!36 = !{i64 2159547388}
!37 = !{i64 2159548116}
