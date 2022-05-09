; ModuleID = '/llk/IR_all_yes/drivers/scsi/aacraid/linit.c_pt.bc'
source_filename = "../drivers/scsi/aacraid/linit.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.aac_driver_ident = type { ptr, ptr, ptr, ptr, i16, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_error_handlers = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.112, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.112 = type { ptr }
%struct.aac_dev = type { %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, %struct.mutex, ptr, %struct.list_head, %struct.adapter_ops, i32, i32, i32, i32, i32, ptr, i32, ptr, i32, [32 x i32], [32 x %struct.atomic_t], i32, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, %struct.delayed_work, %struct.delayed_work, i32, %struct.spinlock, %union.anon.113, ptr, ptr, ptr, i32, i32, %struct.aac_adapter_info, %struct.aac_supplement_adapter_info, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.spinlock, %struct.spinlock, i32, ptr, %struct.list_head, i32, i32, i32, i32, %struct.atomic_t, i32, [32 x %struct.msix_entry], [32 x %struct.aac_msix_ctx], [5 x [256 x %struct.aac_hba_map_info]], ptr, i8, i32, i8, i8 }
%struct.adapter_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type { ptr, ptr }
%struct.aac_adapter_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32 }
%struct.aac_supplement_adapter_info = type { [18 x i8], [2 x i8], i32, i32, i32, i32, i32, i8, [3 x i8], [12 x i8], i32, %struct.anon.118, i32, i32, i32, i32, i32, [12 x i8], [8 x i8], i32, i32, i32, i32, i8, i8, i16, i8, i8, i8, i8, i64, i32, [12 x i8], i16, i16, i32, i16, i16, i16, i16, [68 x i32] }
%struct.anon.118 = type { [8 x i8], [8 x i8], [8 x i8], [8 x i8], [12 x i8] }
%struct.msix_entry = type { i32, i16 }
%struct.aac_msix_ctx = type { i32, ptr }
%struct.aac_hba_map_info = type { i32, i8, i8, i16, i32, ptr }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.fib = type { ptr, i16, i16, ptr, %struct.completion, %struct.spinlock, i32, ptr, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, i32, i32, i32 }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.aac_hba_tm_req = type { i8, i8, i8, i8, i32, [8 x i8], i32, i32, i32, i32, i32, i32, i32 }
%struct.aac_hba_reset_req = type { i8, i8, i8, i8, i32, i32, i32, i32, i32 }
%struct.fib_count_data = type { i32, i32, i32, i32, i32 }
%struct.fsa_dev_info = type { i64, i64, i32, i32, i32, i16, i8, i8, i8, i8, i8, [8 x i8], %struct.sense_data, i32, [16 x i8] }
%struct.sense_data = type { i8, i8, i8, i8, [4 x i8], i8, [4 x i8], i8, i8, i8, i8, [2 x i8] }
%struct.diskparm = type { i32, i32, i32 }
%struct.msdos_partition = type { i8, i8, i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.aac_native_hba = type { %union.anon.119, %union.anon.120 }
%union.anon.119 = type { %struct.aac_hba_cmd_req }
%struct.aac_hba_cmd_req = type { i8, i8, i8, i8, i32, i32, i32, [16 x i8], [8 x i8], i32, i8, i8, i16, i32, i32, i32, i32, [92 x %struct.aac_hba_sgl] }
%struct.aac_hba_sgl = type { i32, i32, i32, i32 }
%union.anon.120 = type { %struct.aac_hba_resp, [460 x i8] }
%struct.aac_hba_resp = type { i8, [3 x i8], i32, i32, i8, i8, i8, i8, i32, [32 x i8] }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.106, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.107, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.108, ptr, %struct.address_space, %struct.list_head, %union.anon.109, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.106 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.107 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.108 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.109 = type { ptr }
%struct.src_mu_registers = type { [6 x i32], [2 x i32], i32, i32, [3 x i32], i32, [25 x i32], i32, i32, [3 x i32], i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32 }
%struct._r7 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__UNIQUE_ID_author308 = internal constant [39 x i8] c"aacraid.author=Red Hat Inc and Adaptec\00", section ".modinfo", align 1
@__UNIQUE_ID_description309 = internal constant [129 x i8] c"aacraid.description=Dell PERC2, 2/Si, 3/Si, 3/Di, Adaptec Advanced Raid Products, HP NetRAID-4M, IBM ServeRAID & ICP SCSI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file310 = internal constant [42 x i8] c"aacraid.file=drivers/scsi/aacraid/aacraid\00", section ".modinfo", align 1
@__UNIQUE_ID_license311 = internal constant [20 x i8] c"aacraid.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version312 = internal constant [36 x i8] c"aacraid.version=1.2.1[50983]-custom\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"aacraid\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"1.2.1[50983]-custom\00", [44 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@aac_driver_version = dso_local global { [20 x i8], [44 x i8] } { [20 x i8] c"1.2.1[50983]-custom\00", [44 x i8] zeroinitializer }, align 32
@aac_drivers = internal global { [65 x %struct.aac_driver_ident], [392 x i8] } { [65 x %struct.aac_driver_ident] [%struct.aac_driver_ident { ptr @aac_rx_init, ptr @.str.4, ptr @.str.5, ptr @.str.6, i16 2, i32 35 }, %struct.aac_driver_ident { ptr @aac_rx_init, ptr @.str.4, ptr @.str.5, ptr @.str.6, i16 2, i32 35 }, %struct.aac_driver_ident { ptr @aac_rx_init, ptr @.str.4, ptr @.str.5, ptr @.str.6, i16 2, i32 35 }, %struct.aac_driver_ident { ptr @aac_rx_init, ptr @.str.4, ptr @.str.5, ptr @.str.6, i16 2, i32 35 }, %struct.aac_driver_ident { ptr @aac_rx_init, ptr @.str.4, ptr @.str.5, ptr @.str.6, i16 2, i32 35 }, %struct.aac_driver_ident { ptr @aac_rx_init, ptr @.str.4, ptr @.str.5, ptr @.str.6, i16 2, i32 35 }, %struct.aac_driver_ident { ptr @aac_rx_init, ptr @.str.4, ptr @.str.5, ptr @.str.6, i16 1, i32 35 }, %struct.aac_driver_ident { ptr @aac_rx_init, ptr @.str.4, ptr @.str.5, ptr @.str.6, i16 2, i32 35 }, %struct.aac_driver_ident { ptr @aac_rx_init, ptr @.str.4, ptr @.str.5, ptr @.str.6, i16 2, i32 35 }, %struct.aac_driver_ident { ptr @aac_rx_init, ptr @.str.1, ptr @.str.7, ptr @.str.8, i16 2, i32 35 }, %struct.aac_driver_ident { ptr @aac_rx_init, ptr @.str.1, ptr @.str.7, ptr @.str.9, i16 2, i32 35 }, %struct.aac_driver_ident { ptr @aac_rx_init, ptr @.str.1, ptr @.str.7, ptr @.str.10, i16 1, i32 3 }, %struct.aac_driver_ident { ptr @aac_rx_init, ptr @.str.1, ptr @.str.7, ptr @.str.11, i16 2, i32 3 }, %struct.aac_driver_ident { ptr @aac_rx_init, ptr @.str.1, ptr @.str.7, ptr @.str.11, i16 2, i32 35 }, %struct.aac_driver_ident { ptr @aac_rx_init, ptr @.str.1, ptr @.str.12, ptr @.str.13, i16 1, i32 35 }, %struct.aac_driver_ident { ptr @aac_rx_init, ptr @.str.1, ptr @.str.12, ptr @.str.14, i16 2, i32 35 }, %struct.aac_driver_ident { ptr @aac_rx_init, ptr @.str.1, ptr @.str.7, ptr @.str.15, i16 2, i32 0 }, %struct.aac_driver_ident { ptr @aac_rx_init, ptr @.str.1, ptr @.str.7, ptr @.str.16, i16 2, i32 0 }, %struct.aac_driver_ident { ptr @aac_rx_init, ptr @.str.1, ptr @.str.7, ptr @.str.17, i16 2, i32 0 }, %struct.aac_driver_ident { ptr @aac_rx_init, ptr @.str.1, ptr @.str.7, ptr @.str.18, i16 2, i32 0 }, %struct.aac_driver_ident { ptr @aac_rkt_init, ptr @.str.1, ptr @.str.7, ptr @.str.19, i16 2, i32 0 }, %struct.aac_driver_ident { ptr @aac_rkt_init, ptr @.str.1, ptr @.str.7, ptr @.str.20, i16 1, i32 0 }, %struct.aac_driver_ident { ptr @aac_rkt_init, ptr @.str.1, ptr @.str.7, ptr @.str.21, i16 1, i32 0 }, %struct.aac_driver_ident { ptr @aac_rkt_init, ptr @.str.1, ptr @.str.7, ptr @.str.22, i16 1, i32 0 }, %struct.aac_driver_ident { ptr @aac_rkt_init, ptr @.str.1, ptr @.str.7, ptr @.str.23, i16 1, i32 0 }, %struct.aac_driver_ident { ptr @aac_rkt_init, ptr @.str.1, ptr @.str.24, ptr @.str.25, i16 2, i32 0 }, %struct.aac_driver_ident { ptr @aac_rkt_init, ptr @.str.1, ptr @.str.24, ptr @.str.26, i16 1, i32 0 }, %struct.aac_driver_ident { ptr @aac_rkt_init, ptr @.str.1, ptr @.str.24, ptr @.str.27, i16 1, i32 0 }, %struct.aac_driver_ident { ptr @aac_rkt_init, ptr @.str.1, ptr @.str.24, ptr @.str.28, i16 1, i32 0 }, %struct.aac_driver_ident { ptr @aac_rkt_init, ptr @.str.1, ptr @.str.24, ptr @.str.29, i16 1, i32 0 }, %struct.aac_driver_ident { ptr @aac_rx_init, ptr @.str.1, ptr @.str.24, ptr @.str.30, i16 1, i32 0 }, %struct.aac_driver_ident { ptr @aac_rx_init, ptr @.str.1, ptr @.str.24, ptr @.str.31, i16 1, i32 0 }, %struct.aac_driver_ident { ptr @aac_rkt_init, ptr @.str.1, ptr @.str.24, ptr @.str.32, i16 1, i32 0 }, %struct.aac_driver_ident { ptr null, ptr @.str.1, ptr @.str.7, ptr @.str.33, i16 0, i32 4 }, %struct.aac_driver_ident { ptr @aac_rkt_init, ptr @.str.1, ptr @.str.7, ptr @.str.34, i16 2, i32 8 }, %struct.aac_driver_ident { ptr @aac_rx_init, ptr @.str.1, ptr @.str.7, ptr @.str.35, i16 1, i32 0 }, %struct.aac_driver_ident { ptr @aac_rx_init, ptr @.str.1, ptr @.str.7, ptr @.str.36, i16 1, i32 0 }, %struct.aac_driver_ident { ptr @aac_rx_init, ptr @.str.1, ptr @.str.7, ptr @.str.37, i16 1, i32 16 }, %struct.aac_driver_ident { ptr @aac_rx_init, ptr @.str.1, ptr @.str.5, ptr @.str.38, i16 1, i32 16 }, %struct.aac_driver_ident { ptr @aac_rx_init, ptr @.str.1, ptr @.str.7, ptr @.str.39, i16 1, i32 16 }, %struct.aac_driver_ident { ptr @aac_rx_init, ptr @.str.1, ptr @.str.7, ptr @.str.40, i16 1, i32 16 }, %struct.aac_driver_ident { ptr @aac_rx_init, ptr @.str.1, ptr @.str.7, ptr @.str.41, i16 1, i32 0 }, %struct.aac_driver_ident { ptr @aac_rx_init, ptr @.str.1, ptr @.str.7, ptr @.str.42, i16 1, i32 0 }, %struct.aac_driver_ident { ptr @aac_rx_init, ptr @.str.1, ptr @.str.7, ptr @.str.43, i16 1, i32 0 }, %struct.aac_driver_ident { ptr @aac_rx_init, ptr @.str.1, ptr @.str.7, ptr @.str.44, i16 1, i32 0 }, %struct.aac_driver_ident { ptr @aac_rx_init, ptr @.str.45, ptr @.str.46, ptr @.str.47, i16 1, i32 0 }, %struct.aac_driver_ident { ptr @aac_rkt_init, ptr @.str.45, ptr @.str.46, ptr @.str.48, i16 1, i32 0 }, %struct.aac_driver_ident { ptr @aac_rkt_init, ptr @.str.45, ptr @.str.46, ptr @.str.49, i16 1, i32 0 }, %struct.aac_driver_ident { ptr @aac_rx_init, ptr @.str.1, ptr @.str.7, ptr @.str.50, i16 1, i32 0 }, %struct.aac_driver_ident { ptr @aac_rx_init, ptr @.str.1, ptr @.str.7, ptr @.str.51, i16 1, i32 0 }, %struct.aac_driver_ident { ptr @aac_rx_init, ptr @.str.1, ptr @.str.7, ptr @.str.52, i16 1, i32 0 }, %struct.aac_driver_ident { ptr @aac_rkt_init, ptr @.str.1, ptr @.str.7, ptr @.str.53, i16 1, i32 0 }, %struct.aac_driver_ident { ptr @aac_rx_init, ptr @.str.4, ptr @.str.5, ptr @.str.54, i16 2, i32 3 }, %struct.aac_driver_ident { ptr @aac_sa_init, ptr @.str.1, ptr @.str.7, ptr @.str.55, i16 4, i32 2 }, %struct.aac_driver_ident { ptr @aac_sa_init, ptr @.str.1, ptr @.str.7, ptr @.str.56, i16 4, i32 2 }, %struct.aac_driver_ident { ptr @aac_sa_init, ptr @.str.4, ptr @.str.5, ptr @.str.6, i16 4, i32 2 }, %struct.aac_driver_ident { ptr @aac_sa_init, ptr @.str.57, ptr @.str.58, ptr @.str.59, i16 4, i32 2 }, %struct.aac_driver_ident { ptr @aac_rx_init, ptr @.str.1, ptr @.str.5, ptr @.str.60, i16 2, i32 35 }, %struct.aac_driver_ident { ptr @aac_rx_init, ptr @.str.1, ptr @.str.12, ptr @.str.60, i16 2, i32 35 }, %struct.aac_driver_ident { ptr @aac_rx_init, ptr @.str.1, ptr @.str.7, ptr @.str.60, i16 2, i32 0 }, %struct.aac_driver_ident { ptr @aac_rkt_init, ptr @.str.1, ptr @.str.7, ptr @.str.60, i16 2, i32 0 }, %struct.aac_driver_ident { ptr @aac_nark_init, ptr @.str.1, ptr @.str.7, ptr @.str.61, i16 2, i32 0 }, %struct.aac_driver_ident { ptr @aac_src_init, ptr @.str.1, ptr @.str.7, ptr @.str.60, i16 2, i32 64 }, %struct.aac_driver_ident { ptr @aac_srcv_init, ptr @.str.1, ptr @.str.7, ptr @.str.60, i16 2, i32 64 }, %struct.aac_driver_ident { ptr @aac_srcv_init, ptr @.str.1, ptr @.str.7, ptr @.str.60, i16 2, i32 64 }], [392 x i8] zeroinitializer }, align 32
@aac_serial_number = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.64, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @aac_show_serial_number, ptr null }, [36 x i8] zeroinitializer }, align 32
@aac_cfg_major = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"aac\00", [28 x i8] zeroinitializer }, align 32
@aac_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @aac_pci_tbl, ptr @aac_probe_one, ptr @aac_remove_one, ptr null, ptr null, ptr @aac_shutdown, ptr null, ptr null, ptr null, ptr @aac_pci_err_handler, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @aac_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_aacraid__315_2075_aac_init6 = internal global ptr @aac_init, section ".initcall6.init", align 4
@__exitcall_aac_exit = internal global ptr @aac_exit, section ".exitcall.exit", align 4
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"percraid\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DELL    \00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PERCRAID        \00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ADAPTEC \00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"catapult        \00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tomcat          \00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Adaptec 2120S   \00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Adaptec 2200S   \00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Legend  \00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Legend S220     \00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Legend S230     \00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Adaptec 3230S   \00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Adaptec 3240S   \00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ASR-2020ZCR     \00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ASR-2025ZCR     \00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ASR-2230S PCI-X \00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ASR-2130S PCI-X \00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"AAR-2820SA      \00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"AAR-2620SA      \00", [47 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"AAR-2420SA      \00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ICP     \00", [23 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ICP9024RO       \00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ICP9014RO       \00", [47 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ICP9047MA       \00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ICP9087MA       \00", [47 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ICP5445AU       \00", [47 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ICP9085LI       \00", [47 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ICP5085BR       \00", [47 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ICP9067MA       \00", [47 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Themisto        \00", [47 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Callisto        \00", [47 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ASR-2020SA       \00", [46 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ASR-2025SA       \00", [46 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"AAR-2410SA SATA \00", [47 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CERC SR2        \00", [47 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"AAR-2810SA SATA \00", [47 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"AAR-21610SA SATA\00", [47 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ASR-2026ZCR     \00", [47 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"AAR-2610SA      \00", [47 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ASR-2240S       \00", [47 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ASR-4005        \00", [47 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ServeRAID\00", [22 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IBM     \00", [23 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ServeRAID 8i    \00", [47 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ServeRAID 8k-l8 \00", [47 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ServeRAID 8k-l4 \00", [47 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ASR-4000        \00", [47 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ASR-4800SAS     \00", [47 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ASR-4805SAS     \00", [47 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ASR-3800        \00", [47 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PERC 320/DC     \00", [47 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Adaptec 5400S   \00", [47 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"AAC-364         \00", [47 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hpnraid\00", [24 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"HP      \00", [23 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"NetRAID         \00", [47 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RAID            \00", [47 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RAID           \00", [16 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%06X\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%.*s\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"serial_number\00", [18 x i8] zeroinitializer }, align 32
@aac_pci_tbl = internal constant { [68 x %struct.pci_device_id], [544 x i8] } { [68 x %struct.pci_device_id] [%struct.pci_device_id { i32 4136, i32 1, i32 4136, i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4136, i32 2, i32 4136, i32 2, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4136, i32 3, i32 4136, i32 3, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4136, i32 4, i32 4136, i32 208, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 4136, i32 2, i32 4136, i32 209, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 4136, i32 2, i32 4136, i32 217, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 4136, i32 10, i32 4136, i32 262, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 4136, i32 10, i32 4136, i32 283, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 4136, i32 10, i32 4136, i32 289, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 36869, i32 643, i32 36869, i32 643, i32 0, i32 0, i32 9, i32 0 }, %struct.pci_device_id { i32 36869, i32 644, i32 36869, i32 644, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 36869, i32 645, i32 36869, i32 646, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 36869, i32 645, i32 36869, i32 645, i32 0, i32 0, i32 12, i32 0 }, %struct.pci_device_id { i32 36869, i32 645, i32 36869, i32 647, i32 0, i32 0, i32 13, i32 0 }, %struct.pci_device_id { i32 36869, i32 645, i32 6058, i32 646, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 36869, i32 645, i32 6058, i32 647, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 36869, i32 645, i32 36869, i32 648, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 36869, i32 645, i32 36869, i32 649, i32 0, i32 0, i32 17, i32 0 }, %struct.pci_device_id { i32 36869, i32 645, i32 36869, i32 650, i32 0, i32 0, i32 18, i32 0 }, %struct.pci_device_id { i32 36869, i32 645, i32 36869, i32 651, i32 0, i32 0, i32 19, i32 0 }, %struct.pci_device_id { i32 36869, i32 646, i32 36869, i32 652, i32 0, i32 0, i32 20, i32 0 }, %struct.pci_device_id { i32 36869, i32 646, i32 36869, i32 653, i32 0, i32 0, i32 21, i32 0 }, %struct.pci_device_id { i32 36869, i32 646, i32 36869, i32 667, i32 0, i32 0, i32 22, i32 0 }, %struct.pci_device_id { i32 36869, i32 646, i32 36869, i32 668, i32 0, i32 0, i32 23, i32 0 }, %struct.pci_device_id { i32 36869, i32 646, i32 36869, i32 669, i32 0, i32 0, i32 24, i32 0 }, %struct.pci_device_id { i32 36869, i32 646, i32 36869, i32 670, i32 0, i32 0, i32 25, i32 0 }, %struct.pci_device_id { i32 36869, i32 646, i32 36869, i32 671, i32 0, i32 0, i32 26, i32 0 }, %struct.pci_device_id { i32 36869, i32 646, i32 36869, i32 672, i32 0, i32 0, i32 27, i32 0 }, %struct.pci_device_id { i32 36869, i32 646, i32 36869, i32 673, i32 0, i32 0, i32 28, i32 0 }, %struct.pci_device_id { i32 36869, i32 646, i32 36869, i32 675, i32 0, i32 0, i32 29, i32 0 }, %struct.pci_device_id { i32 36869, i32 645, i32 36869, i32 676, i32 0, i32 0, i32 30, i32 0 }, %struct.pci_device_id { i32 36869, i32 645, i32 36869, i32 677, i32 0, i32 0, i32 31, i32 0 }, %struct.pci_device_id { i32 36869, i32 646, i32 36869, i32 678, i32 0, i32 0, i32 32, i32 0 }, %struct.pci_device_id { i32 36869, i32 647, i32 36869, i32 2048, i32 0, i32 0, i32 33, i32 0 }, %struct.pci_device_id { i32 36869, i32 512, i32 36869, i32 512, i32 0, i32 0, i32 33, i32 0 }, %struct.pci_device_id { i32 36869, i32 646, i32 36869, i32 2048, i32 0, i32 0, i32 34, i32 0 }, %struct.pci_device_id { i32 36869, i32 645, i32 36869, i32 654, i32 0, i32 0, i32 35, i32 0 }, %struct.pci_device_id { i32 36869, i32 645, i32 36869, i32 655, i32 0, i32 0, i32 36, i32 0 }, %struct.pci_device_id { i32 36869, i32 645, i32 36869, i32 656, i32 0, i32 0, i32 37, i32 0 }, %struct.pci_device_id { i32 36869, i32 645, i32 4136, i32 657, i32 0, i32 0, i32 38, i32 0 }, %struct.pci_device_id { i32 36869, i32 645, i32 36869, i32 658, i32 0, i32 0, i32 39, i32 0 }, %struct.pci_device_id { i32 36869, i32 645, i32 36869, i32 659, i32 0, i32 0, i32 40, i32 0 }, %struct.pci_device_id { i32 36869, i32 645, i32 36869, i32 660, i32 0, i32 0, i32 41, i32 0 }, %struct.pci_device_id { i32 36869, i32 645, i32 4156, i32 12839, i32 0, i32 0, i32 42, i32 0 }, %struct.pci_device_id { i32 36869, i32 645, i32 36869, i32 662, i32 0, i32 0, i32 43, i32 0 }, %struct.pci_device_id { i32 36869, i32 645, i32 36869, i32 663, i32 0, i32 0, i32 44, i32 0 }, %struct.pci_device_id { i32 36869, i32 645, i32 4116, i32 754, i32 0, i32 0, i32 45, i32 0 }, %struct.pci_device_id { i32 36869, i32 645, i32 4116, i32 786, i32 0, i32 0, i32 45, i32 0 }, %struct.pci_device_id { i32 36869, i32 646, i32 4116, i32 38272, i32 0, i32 0, i32 46, i32 0 }, %struct.pci_device_id { i32 36869, i32 646, i32 4116, i32 38208, i32 0, i32 0, i32 47, i32 0 }, %struct.pci_device_id { i32 36869, i32 645, i32 36869, i32 664, i32 0, i32 0, i32 48, i32 0 }, %struct.pci_device_id { i32 36869, i32 645, i32 36869, i32 665, i32 0, i32 0, i32 49, i32 0 }, %struct.pci_device_id { i32 36869, i32 645, i32 36869, i32 666, i32 0, i32 0, i32 50, i32 0 }, %struct.pci_device_id { i32 36869, i32 646, i32 36869, i32 674, i32 0, i32 0, i32 51, i32 0 }, %struct.pci_device_id { i32 36869, i32 645, i32 4136, i32 647, i32 0, i32 0, i32 52, i32 0 }, %struct.pci_device_id { i32 4113, i32 70, i32 36869, i32 869, i32 0, i32 0, i32 53, i32 0 }, %struct.pci_device_id { i32 4113, i32 70, i32 36869, i32 868, i32 0, i32 0, i32 54, i32 0 }, %struct.pci_device_id { i32 4113, i32 70, i32 36869, i32 4964, i32 0, i32 0, i32 55, i32 0 }, %struct.pci_device_id { i32 4113, i32 70, i32 4156, i32 4290, i32 0, i32 0, i32 56, i32 0 }, %struct.pci_device_id { i32 36869, i32 645, i32 4136, i32 -1, i32 0, i32 0, i32 57, i32 0 }, %struct.pci_device_id { i32 36869, i32 645, i32 6058, i32 -1, i32 0, i32 0, i32 58, i32 0 }, %struct.pci_device_id { i32 36869, i32 645, i32 -1, i32 -1, i32 0, i32 0, i32 59, i32 0 }, %struct.pci_device_id { i32 36869, i32 646, i32 -1, i32 -1, i32 0, i32 0, i32 60, i32 0 }, %struct.pci_device_id { i32 36869, i32 648, i32 -1, i32 -1, i32 0, i32 0, i32 61, i32 0 }, %struct.pci_device_id { i32 36869, i32 651, i32 -1, i32 -1, i32 0, i32 0, i32 62, i32 0 }, %struct.pci_device_id { i32 36869, i32 652, i32 -1, i32 -1, i32 0, i32 0, i32 63, i32 0 }, %struct.pci_device_id { i32 36869, i32 653, i32 -1, i32 -1, i32 0, i32 0, i32 64, i32 0 }, %struct.pci_device_id zeroinitializer], [544 x i8] zeroinitializer }, align 32
@aac_pci_err_handler = internal global { %struct.pci_error_handlers, [40 x i8] } { %struct.pci_error_handlers { ptr @aac_pci_error_detected, ptr @aac_pci_mmio_enabled, ptr @aac_pci_slot_reset, ptr null, ptr null, ptr @aac_pci_resume }, [40 x i8] zeroinitializer }, align 32
@aac_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @aac_suspend, ptr @aac_resume, ptr @aac_suspend, ptr @aac_resume, ptr @aac_suspend, ptr @aac_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@aac_devices = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @aac_devices, ptr @aac_devices }, [24 x i8] zeroinitializer }, align 32
@aac_probe_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.67, i32 1611, ptr @.str.68, ptr @.str.69 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"PCI 32 BIT dma mask set failed\00", [33 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"aac_probe_one\00", [18 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/scsi/aacraid/linit.c\00", [35 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@aac_probe_one._entry_ptr = internal global ptr @aac_probe_one._entry, section ".printk_index", align 4
@aac_probe_one._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.66, ptr @.str.67, i32 1631, ptr @.str.68, ptr @.str.69 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"PCI %d B consistent dma mask set failed\0A\00", [55 x i8] zeroinitializer }, align 32
@aac_probe_one._entry_ptr.72 = internal global ptr @aac_probe_one._entry.70, section ".printk_index", align 4
@aac_driver_template = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @aac_queuecommand, ptr null, ptr null, ptr @.str.95, ptr @aac_info, ptr @aac_ioctl, ptr null, ptr null, ptr @aac_eh_abort, ptr @aac_eh_dev_reset, ptr @aac_eh_target_reset, ptr @aac_eh_bus_reset, ptr @aac_eh_host_reset, ptr null, ptr @aac_slave_configure, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @aac_change_queue_depth, ptr null, ptr null, ptr null, ptr @aac_biosparm, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.1, ptr null, i32 1016, i32 32, i16 16, i16 0, i32 128, i32 0, i32 0, i32 0, i16 256, i8 0, i32 0, i8 20, i32 0, ptr @aac_host_groups, ptr @aac_dev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@aac_reset_devices = external dso_local local_unnamed_addr global i32, align 4
@reset_devices = external dso_local local_unnamed_addr global i32, align 4
@aac_probe_one.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.73 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&aac->fib_lock\00", [17 x i8] zeroinitializer }, align 32
@aac_probe_one.__key.74 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.75 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&aac->ioctl_mutex\00", [46 x i8] zeroinitializer }, align 32
@aac_probe_one.__key.76 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.77 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&aac->scan_mutex\00", [47 x i8] zeroinitializer }, align 32
@aac_probe_one.__key.78 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.79 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"(work_completion)(&(&aac->safw_rescan_work)->work)\00", [45 x i8] zeroinitializer }, align 32
@aac_probe_one.__key.80 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.81 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"&(&aac->safw_rescan_work)->timer\00", [63 x i8] zeroinitializer }, align 32
@aac_probe_one.__key.82 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.83 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"(work_completion)(&(&aac->src_reinit_aif_worker)->work)\00", [40 x i8] zeroinitializer }, align 32
@aac_probe_one.__key.84 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.85 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"&(&aac->src_reinit_aif_worker)->timer\00", [58 x i8] zeroinitializer }, align 32
@aac_sync_mode = external dso_local local_unnamed_addr global i32, align 4
@aac_probe_one._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.66, ptr @.str.67, i32 1693, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [102 x i8], [58 x i8] } { [102 x i8] c"\016%s%d: Sync. mode enforced by driver parameter. This will cause a significant performance decrease!\0A\00", [58 x i8] zeroinitializer }, align 32
@aac_probe_one._entry_ptr.88 = internal global ptr @aac_probe_one._entry.86, section ".printk_index", align 4
@aac_probe_one._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.66, ptr @.str.67, i32 1699, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [121 x i8], [39 x i8] } { [121 x i8] c"\016%s%d: Async. mode not supported by current driver, sync. mode enforced.\0APlease update driver to get full performance.\0A\00", [39 x i8] zeroinitializer }, align 32
@aac_probe_one._entry_ptr.91 = internal global ptr @aac_probe_one._entry.89, section ".printk_index", align 4
@aac_probe_one._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.66, ptr @.str.67, i32 1707, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013aacraid: Unable to create command thread.\0A\00", [51 x i8] zeroinitializer }, align 32
@aac_probe_one._entry_ptr.94 = internal global ptr @aac_probe_one._entry.92, section ".printk_index", align 4
@expose_physicals = external dso_local local_unnamed_addr global i32, align 4
@.str.95 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"AAC\00", [28 x i8] zeroinitializer }, align 32
@aac_host_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @aac_host_group, ptr null], [24 x i8] zeroinitializer }, align 32
@aac_dev_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @aac_dev_group, ptr null], [24 x i8] zeroinitializer }, align 32
@aac_eh_abort._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.67, i32 703, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013%s: Host adapter abort request (%d,%d,%d,%d)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"aac_eh_abort\00", [19 x i8] zeroinitializer }, align 32
@aac_eh_abort._entry_ptr = internal global ptr @aac_eh_abort._entry, section ".printk_index", align 4
@aac_eh_abort._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.97, ptr @.str.67, i32 756, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s: Host adapter abort request timed out\0A\00", [52 x i8] zeroinitializer }, align 32
@aac_eh_abort._entry_ptr.100 = internal global ptr @aac_eh_abort._entry.98, section ".printk_index", align 4
@aac_eh_abort._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.97, ptr @.str.67, i32 763, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\013%s: Host adapter abort request.\0A%s: Outstanding commands on (%d,%d,%d,%d):\0A\00", [50 x i8] zeroinitializer }, align 32
@aac_eh_abort._entry_ptr.103 = internal global ptr @aac_eh_abort._entry.101, section ".printk_index", align 4
@aac_eh_dev_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.67, i32 928, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s: Host device reset request. SCSI hang ?\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"aac_eh_dev_reset\00", [47 x i8] zeroinitializer }, align 32
@aac_eh_dev_reset._entry_ptr = internal global ptr @aac_eh_dev_reset._entry, section ".printk_index", align 4
@aac_eh_target_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.107, ptr @.str.67, i32 991, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s: Host target reset request. SCSI hang ?\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"aac_eh_target_reset\00", [44 x i8] zeroinitializer }, align 32
@aac_eh_target_reset._entry_ptr = internal global ptr @aac_eh_target_reset._entry, section ".printk_index", align 4
@aac_eh_bus_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str.67, i32 1066, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s: Host bus reset request. SCSI hang ?\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"aac_eh_bus_reset\00", [47 x i8] zeroinitializer }, align 32
@aac_eh_bus_reset._entry_ptr = internal global ptr @aac_eh_bus_reset._entry, section ".printk_index", align 4
@aac_eh_bus_reset._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.109, ptr @.str.67, i32 1073, ptr @.str.68, ptr @.str.69 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Adapter health - %d\0A\00", [43 x i8] zeroinitializer }, align 32
@aac_eh_bus_reset._entry_ptr.112 = internal global ptr @aac_eh_bus_reset._entry.110, section ".printk_index", align 4
@get_num_of_incomplete_fibs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.114, ptr @.str.67, i32 672, ptr @.str.115, ptr @.str.69 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"outstanding cmd: midlevel-%d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"get_num_of_incomplete_fibs\00", [37 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@get_num_of_incomplete_fibs._entry_ptr = internal global ptr @get_num_of_incomplete_fibs._entry, section ".printk_index", align 4
@get_num_of_incomplete_fibs._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.114, ptr @.str.67, i32 673, ptr @.str.115, ptr @.str.69 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"outstanding cmd: lowlevel-%d\0A\00", [34 x i8] zeroinitializer }, align 32
@get_num_of_incomplete_fibs._entry_ptr.118 = internal global ptr @get_num_of_incomplete_fibs._entry.116, section ".printk_index", align 4
@get_num_of_incomplete_fibs._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.114, ptr @.str.67, i32 674, ptr @.str.115, ptr @.str.69 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"outstanding cmd: error handler-%d\0A\00", [61 x i8] zeroinitializer }, align 32
@get_num_of_incomplete_fibs._entry_ptr.121 = internal global ptr @get_num_of_incomplete_fibs._entry.119, section ".printk_index", align 4
@get_num_of_incomplete_fibs._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.114, ptr @.str.67, i32 675, ptr @.str.115, ptr @.str.69 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"outstanding cmd: firmware-%d\0A\00", [34 x i8] zeroinitializer }, align 32
@get_num_of_incomplete_fibs._entry_ptr.124 = internal global ptr @get_num_of_incomplete_fibs._entry.122, section ".printk_index", align 4
@get_num_of_incomplete_fibs._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.114, ptr @.str.67, i32 676, ptr @.str.115, ptr @.str.69 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"outstanding cmd: kernel-%d\0A\00", [36 x i8] zeroinitializer }, align 32
@get_num_of_incomplete_fibs._entry_ptr.127 = internal global ptr @get_num_of_incomplete_fibs._entry.125, section ".printk_index", align 4
@aac_check_reset = external dso_local local_unnamed_addr global i32, align 4
@.str.128 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ATA\00", [28 x i8] zeroinitializer }, align 32
@aac_host_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @aac_host_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@aac_host_attrs = internal global { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr @aac_model, ptr @aac_vendor, ptr @aac_flags, ptr @aac_kernel_version, ptr @aac_monitor_version, ptr @aac_bios_version, ptr @aac_lld_version, ptr @aac_serial_number, ptr @aac_max_channel, ptr @aac_max_id, ptr @aac_reset, ptr null], [48 x i8] zeroinitializer }, align 32
@aac_model = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.129, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @aac_show_model, ptr null }, [36 x i8] zeroinitializer }, align 32
@aac_vendor = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.131, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @aac_show_vendor, ptr null }, [36 x i8] zeroinitializer }, align 32
@aac_flags = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.132, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @aac_show_flags, ptr null }, [36 x i8] zeroinitializer }, align 32
@aac_kernel_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.137, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @aac_show_kernel_version, ptr null }, [36 x i8] zeroinitializer }, align 32
@aac_monitor_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.139, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @aac_show_monitor_version, ptr null }, [36 x i8] zeroinitializer }, align 32
@aac_bios_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.140, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @aac_show_bios_version, ptr null }, [36 x i8] zeroinitializer }, align 32
@aac_lld_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.141, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @aac_show_driver_version, ptr null }, [36 x i8] zeroinitializer }, align 32
@aac_max_channel = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.142, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @aac_show_max_channel, ptr null }, [36 x i8] zeroinitializer }, align 32
@aac_max_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.144, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @aac_show_max_id, ptr null }, [36 x i8] zeroinitializer }, align 32
@aac_reset = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.145, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @aac_show_reset_adapter, ptr @aac_store_reset_adapter }, [36 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"model\00", [26 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vendor\00", [25 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flags\00", [26 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SAI_READ_CAPACITY_16\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SUPPORTED_JBOD\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SUPPORTED_POWER_MANAGEMENT\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PCI_HAS_MSI\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hba_kernel_version\00", [45 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%d.%d-%d[%d]\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hba_monitor_version\00", [44 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hba_bios_version\00", [47 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"driver_version\00", [17 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"max_channel\00", [20 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"max_id\00", [25 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"reset_host\00", [21 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0x%x\0A\00", [26 x i8] zeroinitializer }, align 32
@aac_dev_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @aac_dev_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@aac_dev_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @aac_raid_level_attr, ptr @aac_unique_id_attr, ptr null], [20 x i8] zeroinitializer }, align 32
@aac_raid_level_attr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.147, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @aac_show_raid_level, ptr null }, [36 x i8] zeroinitializer }, align 32
@aac_unique_id_attr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.151, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @aac_show_unique_id, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"level\00", [26 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Hidden\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"JBOD\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.151 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"unique_id\00", [22 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X\0A\00", [62 x i8] zeroinitializer }, align 32
@aac_cfg_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @aac_cfg_ioctl, ptr null, ptr null, i32 0, ptr @aac_cfg_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@aac_init_char._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.154, ptr @.str.67, i32 1559, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013aacraid: unable to register \22aac\22 device.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"aac_init_char\00", [18 x i8] zeroinitializer }, align 32
@aac_init_char._entry_ptr = internal global ptr @aac_init_char._entry, section ".printk_index", align 4
@aac_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.155, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @aac_mutex, i64 52), ptr getelementptr (i8, ptr @aac_mutex, i64 52) }, ptr @aac_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.156, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"aac_mutex.wait_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"aac_mutex\00", [22 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/scsi/aacraid/aacraid.h\00", [33 x i8] zeroinitializer }, align 32
@aac_pci_error_detected._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.159, ptr @.str.67, i32 1938, ptr @.str.68, ptr @.str.69 }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"aacraid: PCI error detected %x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"aac_pci_error_detected\00", [41 x i8] zeroinitializer }, align 32
@aac_pci_error_detected._entry_ptr = internal global ptr @aac_pci_error_detected._entry, section ".printk_index", align 4
@aac_pci_mmio_enabled._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.161, ptr @.str.67, i32 1967, ptr @.str.68, ptr @.str.69 }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"aacraid: PCI error - mmio enabled\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"aac_pci_mmio_enabled\00", [43 x i8] zeroinitializer }, align 32
@aac_pci_mmio_enabled._entry_ptr = internal global ptr @aac_pci_mmio_enabled._entry, section ".printk_index", align 4
@aac_pci_slot_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.163, ptr @.str.67, i32 1973, ptr @.str.68, ptr @.str.69 }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"aacraid: PCI error - slot reset\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"aac_pci_slot_reset\00", [45 x i8] zeroinitializer }, align 32
@aac_pci_slot_reset._entry_ptr = internal global ptr @aac_pci_slot_reset._entry, section ".printk_index", align 4
@aac_pci_slot_reset._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.163, ptr @.str.67, i32 1977, ptr @.str.166, ptr @.str.69 }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"aacraid: failed to enable slave\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@aac_pci_slot_reset._entry_ptr.167 = internal global ptr @aac_pci_slot_reset._entry.164, section ".printk_index", align 4
@aac_pci_slot_reset._entry.168 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.163, ptr @.str.67, i32 1984, ptr @.str.68, ptr @.str.69 }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"pci_enable_device_mem failed\0A\00", [34 x i8] zeroinitializer }, align 32
@aac_pci_slot_reset._entry_ptr.170 = internal global ptr @aac_pci_slot_reset._entry.168, section ".printk_index", align 4
@aac_pci_slot_reset._entry.171 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.163, ptr @.str.67, i32 1991, ptr @.str.68, ptr @.str.69 }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"aacraid: PCI error - slot reset failed\0A\00", [56 x i8] zeroinitializer }, align 32
@aac_pci_slot_reset._entry_ptr.173 = internal global ptr @aac_pci_slot_reset._entry.171, section ".printk_index", align 4
@aac_pci_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.175, ptr @.str.67, i32 2003, ptr @.str.68, ptr @.str.69 }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"aacraid: ioremap failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aac_pci_resume\00", [17 x i8] zeroinitializer }, align 32
@aac_pci_resume._entry_ptr = internal global ptr @aac_pci_resume._entry, section ".printk_index", align 4
@aac_pci_resume._entry.176 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.175, ptr @.str.67, i32 2008, ptr @.str.166, ptr @.str.69 }, [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"aacraid: unable to map adapter.\0A\00", [63 x i8] zeroinitializer }, align 32
@aac_pci_resume._entry_ptr.178 = internal global ptr @aac_pci_resume._entry.176, section ".printk_index", align 4
@aac_pci_resume._entry.179 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.180, ptr @.str.175, ptr @.str.67, i32 2029, ptr @.str.68, ptr @.str.69 }, [40 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"aacraid: PCI error - resume\0A\00", [35 x i8] zeroinitializer }, align 32
@aac_pci_resume._entry_ptr.181 = internal global ptr @aac_pci_resume._entry.179, section ".printk_index", align 4
@aac_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.183, ptr @.str.67, i32 1891, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016%s%d: resume failed.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"aac_resume\00", [21 x i8] zeroinitializer }, align 32
@aac_resume._entry_ptr = internal global ptr @aac_resume._entry, section ".printk_index", align 4
@aac_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.185, ptr @.str.67, i32 2056, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016Adaptec %s driver %s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"aac_init\00", [23 x i8] zeroinitializer }, align 32
@aac_init._entry_ptr = internal global ptr @aac_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 18, i64 37, i64 158]
@__sancov_gen_cov_switch_values.186 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.187 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.188 = internal global [5 x i64] [i64 3, i64 8, i64 63, i64 127, i64 254]
@__sancov_gen_cov_switch_values.189 = internal global [5 x i64] [i64 3, i64 8, i64 63, i64 127, i64 254]
@__sancov_gen_cov_switch_values.190 = internal global [5 x i64] [i64 3, i64 8, i64 63, i64 127, i64 254]
@__sancov_gen_cov_switch_values.191 = internal global [5 x i64] [i64 3, i64 8, i64 63, i64 127, i64 254]
@__sancov_gen_cov_switch_values.192 = internal global [6 x i64] [i64 4, i64 32, i64 257, i64 258, i64 259, i64 262]
@__sancov_gen_cov_switch_values.193 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 32]
@__sancov_gen_cov_switch_values.194 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 32]
@__sancov_gen_cov_switch_values.195 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 67, i32 1 }
@___asan_gen_.205 = private unnamed_addr constant [19 x i8] c"aac_driver_version\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 72, i32 6 }
@___asan_gen_.208 = private unnamed_addr constant [12 x i8] c"aac_drivers\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 160, i32 32 }
@___asan_gen_.211 = private unnamed_addr constant [18 x i8] c"aac_serial_number\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1417, i32 32 }
@___asan_gen_.214 = private unnamed_addr constant [14 x i8] c"aac_cfg_major\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 71, i32 12 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 2071, i32 36 }
@___asan_gen_.220 = private unnamed_addr constant [15 x i8] c"aac_pci_driver\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 2041, i32 26 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 161, i32 17 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 161, i32 29 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 161, i32 41 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 170, i32 29 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 170, i32 41 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 171, i32 41 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 172, i32 41 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 173, i32 41 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 175, i32 29 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 175, i32 41 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 176, i32 41 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 178, i32 41 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 179, i32 41 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 180, i32 41 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 181, i32 41 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 182, i32 42 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 183, i32 42 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 184, i32 42 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 185, i32 42 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 186, i32 42 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 187, i32 30 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 187, i32 42 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 188, i32 42 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 189, i32 42 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 190, i32 42 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 191, i32 42 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 192, i32 41 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 193, i32 41 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 194, i32 42 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 195, i32 42 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 196, i32 42 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 197, i32 41 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 198, i32 41 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 199, i32 41 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 200, i32 41 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 201, i32 41 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 202, i32 41 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 203, i32 41 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 204, i32 41 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 205, i32 41 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 206, i32 41 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 207, i32 17 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 207, i32 29 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 207, i32 41 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 208, i32 42 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 209, i32 42 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 210, i32 41 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 211, i32 41 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 212, i32 41 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 213, i32 42 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 215, i32 41 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 216, i32 41 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 217, i32 41 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 219, i32 17 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 219, i32 29 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 219, i32 41 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 221, i32 41 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 225, i32 42 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1310, i32 27 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1316, i32 27 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1419, i32 11 }
@___asan_gen_.406 = private unnamed_addr constant [12 x i8] c"aac_pci_tbl\00", align 1
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 80, i32 35 }
@___asan_gen_.409 = private unnamed_addr constant [20 x i8] c"aac_pci_err_handler\00", align 1
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 2032, i32 34 }
@___asan_gen_.412 = private unnamed_addr constant [11 x i8] c"aac_pm_ops\00", align 1
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 2039, i32 8 }
@___asan_gen_.415 = private unnamed_addr constant [12 x i8] c"aac_devices\00", align 1
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 70, i32 8 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1611, i32 4 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1630, i32 3 }
@___asan_gen_.442 = private unnamed_addr constant [20 x i8] c"aac_driver_template\00", align 1
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1479, i32 34 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1670, i32 2 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1672, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1673, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1675, i32 2 }
@___asan_gen_.481 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1676, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1689, i32 4 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1695, i32 4 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1707, i32 3 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1481, i32 13 }
@___asan_gen_.508 = private unnamed_addr constant [16 x i8] c"aac_host_groups\00", align 1
@___asan_gen_.511 = private unnamed_addr constant [15 x i8] c"aac_dev_groups\00", align 1
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 701, i32 3 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 755, i32 4 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 758, i32 3 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 927, i32 2 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 990, i32 2 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1066, i32 2 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1073, i32 3 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 672, i32 2 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 673, i32 2 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 674, i32 2 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 675, i32 2 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 676, i32 2 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 481, i32 29 }
@___asan_gen_.607 = private unnamed_addr constant [15 x i8] c"aac_host_group\00", align 1
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1462, i32 1 }
@___asan_gen_.610 = private unnamed_addr constant [15 x i8] c"aac_host_attrs\00", align 1
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1447, i32 26 }
@___asan_gen_.613 = private unnamed_addr constant [10 x i8] c"aac_model\00", align 1
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1368, i32 32 }
@___asan_gen_.616 = private unnamed_addr constant [11 x i8] c"aac_vendor\00", align 1
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1375, i32 32 }
@___asan_gen_.619 = private unnamed_addr constant [10 x i8] c"aac_flags\00", align 1
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1382, i32 32 }
@___asan_gen_.622 = private unnamed_addr constant [19 x i8] c"aac_kernel_version\00", align 1
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1389, i32 32 }
@___asan_gen_.625 = private unnamed_addr constant [20 x i8] c"aac_monitor_version\00", align 1
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1396, i32 32 }
@___asan_gen_.628 = private unnamed_addr constant [17 x i8] c"aac_bios_version\00", align 1
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1403, i32 32 }
@___asan_gen_.631 = private unnamed_addr constant [16 x i8] c"aac_lld_version\00", align 1
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1410, i32 32 }
@___asan_gen_.634 = private unnamed_addr constant [16 x i8] c"aac_max_channel\00", align 1
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1424, i32 32 }
@___asan_gen_.637 = private unnamed_addr constant [11 x i8] c"aac_max_id\00", align 1
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1431, i32 32 }
@___asan_gen_.640 = private unnamed_addr constant [10 x i8] c"aac_reset\00", align 1
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1438, i32 32 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1370, i32 11 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1199, i32 34 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1377, i32 11 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1384, i32 11 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1241, i32 6 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1244, i32 6 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1248, i32 6 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1250, i32 48 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1391, i32 11 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1262, i32 33 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1398, i32 11 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1405, i32 11 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1412, i32 11 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1426, i32 11 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1326, i32 34 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1433, i32 11 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1440, i32 11 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1364, i32 33 }
@___asan_gen_.697 = private unnamed_addr constant [14 x i8] c"aac_dev_group\00", align 1
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 614, i32 1 }
@___asan_gen_.700 = private unnamed_addr constant [14 x i8] c"aac_dev_attrs\00", align 1
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 608, i32 26 }
@___asan_gen_.703 = private unnamed_addr constant [20 x i8] c"aac_raid_level_attr\00", align 1
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 570, i32 32 }
@___asan_gen_.706 = private unnamed_addr constant [19 x i8] c"aac_unique_id_attr\00", align 1
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 598, i32 32 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 572, i32 11 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 564, i32 7 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 565, i32 49 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 565, i32 60 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 600, i32 11 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 591, i32 3 }
@___asan_gen_.727 = private unnamed_addr constant [13 x i8] c"aac_cfg_fops\00", align 1
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1469, i32 37 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1559, i32 3 }
@___asan_gen_.739 = private unnamed_addr constant [10 x i8] c"aac_mutex\00", align 1
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 69, i32 8 }
@___asan_gen_.749 = private unnamed_addr constant [34 x i8] c"../drivers/scsi/aacraid/aacraid.h\00", align 1
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 2664, i32 2 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1938, i32 2 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1967, i32 2 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1973, i32 2 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1976, i32 3 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1984, i32 3 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1991, i32 2 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 2003, i32 3 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 2007, i32 4 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 2029, i32 2 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1891, i32 2 }
@___asan_gen_.829 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.835 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.836 = private constant [32 x i8] c"../drivers/scsi/aacraid/linit.c\00", align 1
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 2055, i32 2 }
@llvm.compiler.used = appending global [252 x ptr] [ptr @__UNIQUE_ID_author308, ptr @__UNIQUE_ID_description309, ptr @__UNIQUE_ID_file310, ptr @__UNIQUE_ID_license311, ptr @__UNIQUE_ID_version312, ptr @__exitcall_aac_exit, ptr @__initcall__kmod_aacraid__315_2075_aac_init6, ptr @__modver_attr, ptr @aac_eh_abort._entry, ptr @aac_eh_abort._entry.101, ptr @aac_eh_abort._entry.98, ptr @aac_eh_abort._entry_ptr, ptr @aac_eh_abort._entry_ptr.100, ptr @aac_eh_abort._entry_ptr.103, ptr @aac_eh_bus_reset._entry, ptr @aac_eh_bus_reset._entry.110, ptr @aac_eh_bus_reset._entry_ptr, ptr @aac_eh_bus_reset._entry_ptr.112, ptr @aac_eh_dev_reset._entry, ptr @aac_eh_dev_reset._entry_ptr, ptr @aac_eh_target_reset._entry, ptr @aac_eh_target_reset._entry_ptr, ptr @aac_exit, ptr @aac_init._entry, ptr @aac_init._entry_ptr, ptr @aac_init_char._entry, ptr @aac_init_char._entry_ptr, ptr @aac_pci_error_detected._entry, ptr @aac_pci_error_detected._entry_ptr, ptr @aac_pci_mmio_enabled._entry, ptr @aac_pci_mmio_enabled._entry_ptr, ptr @aac_pci_resume._entry, ptr @aac_pci_resume._entry.176, ptr @aac_pci_resume._entry.179, ptr @aac_pci_resume._entry_ptr, ptr @aac_pci_resume._entry_ptr.178, ptr @aac_pci_resume._entry_ptr.181, ptr @aac_pci_slot_reset._entry, ptr @aac_pci_slot_reset._entry.164, ptr @aac_pci_slot_reset._entry.168, ptr @aac_pci_slot_reset._entry.171, ptr @aac_pci_slot_reset._entry_ptr, ptr @aac_pci_slot_reset._entry_ptr.167, ptr @aac_pci_slot_reset._entry_ptr.170, ptr @aac_pci_slot_reset._entry_ptr.173, ptr @aac_probe_one._entry, ptr @aac_probe_one._entry.70, ptr @aac_probe_one._entry.86, ptr @aac_probe_one._entry.89, ptr @aac_probe_one._entry.92, ptr @aac_probe_one._entry_ptr, ptr @aac_probe_one._entry_ptr.72, ptr @aac_probe_one._entry_ptr.88, ptr @aac_probe_one._entry_ptr.91, ptr @aac_probe_one._entry_ptr.94, ptr @aac_resume._entry, ptr @aac_resume._entry_ptr, ptr @get_num_of_incomplete_fibs._entry, ptr @get_num_of_incomplete_fibs._entry.116, ptr @get_num_of_incomplete_fibs._entry.119, ptr @get_num_of_incomplete_fibs._entry.122, ptr @get_num_of_incomplete_fibs._entry.125, ptr @get_num_of_incomplete_fibs._entry_ptr, ptr @get_num_of_incomplete_fibs._entry_ptr.118, ptr @get_num_of_incomplete_fibs._entry_ptr.121, ptr @get_num_of_incomplete_fibs._entry_ptr.124, ptr @get_num_of_incomplete_fibs._entry_ptr.127, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @aac_driver_version, ptr @aac_drivers, ptr @aac_serial_number, ptr @aac_cfg_major, ptr @.str.3, ptr @aac_pci_driver, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @aac_pci_tbl, ptr @aac_pci_err_handler, ptr @aac_pm_ops, ptr @aac_devices, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.71, ptr @aac_driver_template, ptr @aac_probe_one.__key, ptr @.str.73, ptr @aac_probe_one.__key.74, ptr @.str.75, ptr @aac_probe_one.__key.76, ptr @.str.77, ptr @aac_probe_one.__key.78, ptr @.str.79, ptr @aac_probe_one.__key.80, ptr @.str.81, ptr @aac_probe_one.__key.82, ptr @.str.83, ptr @aac_probe_one.__key.84, ptr @.str.85, ptr @.str.87, ptr @.str.90, ptr @.str.93, ptr @.str.95, ptr @aac_host_groups, ptr @aac_dev_groups, ptr @.str.96, ptr @.str.97, ptr @.str.99, ptr @.str.102, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.111, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.117, ptr @.str.120, ptr @.str.123, ptr @.str.126, ptr @.str.128, ptr @aac_host_group, ptr @aac_host_attrs, ptr @aac_model, ptr @aac_vendor, ptr @aac_flags, ptr @aac_kernel_version, ptr @aac_monitor_version, ptr @aac_bios_version, ptr @aac_lld_version, ptr @aac_max_channel, ptr @aac_max_id, ptr @aac_reset, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @aac_dev_group, ptr @aac_dev_attrs, ptr @aac_raid_level_attr, ptr @aac_unique_id_attr, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @aac_cfg_fops, ptr @.str.153, ptr @.str.154, ptr @aac_mutex, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.165, ptr @.str.166, ptr @.str.169, ptr @.str.172, ptr @.str.174, ptr @.str.175, ptr @.str.177, ptr @.str.180, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185], section "llvm.metadata"
@0 = internal global [214 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_driver_version to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_drivers to i32), i32 1560, i32 1952, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_serial_number to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_cfg_major to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_pci_tbl to i32), i32 2176, i32 2720, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_pci_err_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_devices to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_probe_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_probe_one._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_driver_template to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_probe_one.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_probe_one.__key.74 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_probe_one.__key.76 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_probe_one.__key.78 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_probe_one.__key.80 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_probe_one.__key.82 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_probe_one.__key.84 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_probe_one._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 102, i32 160, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_probe_one._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 121, i32 160, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_probe_one._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_host_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_dev_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_eh_abort._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_eh_abort._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_eh_abort._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_eh_dev_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_eh_target_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_eh_bus_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_eh_bus_reset._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_num_of_incomplete_fibs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_num_of_incomplete_fibs._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_num_of_incomplete_fibs._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_num_of_incomplete_fibs._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_num_of_incomplete_fibs._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_host_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_host_attrs to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_model to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_vendor to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_flags to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_kernel_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_monitor_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_bios_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_lld_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_max_channel to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_max_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_reset to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_dev_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_dev_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_raid_level_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_unique_id_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_cfg_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_init_char._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_pci_error_detected._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_pci_mmio_enabled._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_pci_slot_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_pci_slot_reset._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_pci_slot_reset._entry.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_pci_slot_reset._entry.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_pci_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_pci_resume._entry.176 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_pci_resume._entry.179 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @aac_get_driver_ident(i32 noundef %devtype) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [65 x %struct.aac_driver_ident], ptr @aac_drivers, i32 0, i32 %devtype
  ret ptr %arrayidx
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aac_get_serial_number(ptr noundef %device, ptr nocapture noundef %buf) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %serial.i = getelementptr i8, ptr %device, i32 1976
  %0 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %serial.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -793116672, i32 %1)
  %cmp.not.i = icmp eq i32 %1, -793116672
  br i1 %cmp.not.i, label %entry.if.end13.thread.i_crit_edge, label %if.end.i

entry.if.end13.thread.i_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13.thread.i

if.end.i:                                         ; preds = %entry
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #15
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 16, ptr noundef nonnull @.str.62, i32 noundef %2) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end13.thread.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end13.thread.i_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13.thread.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %mfg_pcba_serial_no.i = getelementptr i8, ptr %device, i32 2124
  %sub.i = sub i32 12, %call.i
  %arrayidx4.i = getelementptr [12 x i8], ptr %mfg_pcba_serial_no.i, i32 0, i32 %sub.i
  %sub5.i = add i32 %call.i, -1
  %bcmp.i = tail call i32 @bcmp(ptr %arrayidx4.i, ptr %buf, i32 %sub5.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool7.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool7.not.i, label %if.then8.i, label %land.lhs.true.i.if.end13.i_crit_edge

land.lhs.true.i.if.end13.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13.i

if.then8.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  %call12.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 16, ptr noundef nonnull @.str.63, i32 noundef 12, ptr noundef %mfg_pcba_serial_no.i) #15
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then8.i, %land.lhs.true.i.if.end13.i_crit_edge
  %len.1.i = phi i32 [ %call.i, %land.lhs.true.i.if.end13.i_crit_edge ], [ %call12.i, %if.then8.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %len.1.i)
  %cmp15.i = icmp slt i32 %len.1.i, 16
  br i1 %cmp15.i, label %if.end13.i.if.end13.thread.i_crit_edge, label %if.end13.i.aac_show_serial_number.exit_crit_edge

if.end13.i.aac_show_serial_number.exit_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aac_show_serial_number.exit

if.end13.i.if.end13.thread.i_crit_edge:           ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13.thread.i

if.end13.thread.i:                                ; preds = %if.end13.i.if.end13.thread.i_crit_edge, %if.end.i.if.end13.thread.i_crit_edge, %entry.if.end13.thread.i_crit_edge
  %len.130.i = phi i32 [ %len.1.i, %if.end13.i.if.end13.thread.i_crit_edge ], [ 0, %if.end.i.if.end13.thread.i_crit_edge ], [ 0, %entry.if.end13.thread.i_crit_edge ]
  br label %aac_show_serial_number.exit

aac_show_serial_number.exit:                      ; preds = %if.end13.thread.i, %if.end13.i.aac_show_serial_number.exit_crit_edge
  %3 = phi i32 [ %len.130.i, %if.end13.thread.i ], [ 16, %if.end13.i.aac_show_serial_number.exit_crit_edge ]
  ret i32 %3
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aac_show_serial_number(ptr noundef %device, ptr nocapture noundef readnone %attr, ptr nocapture noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %serial = getelementptr i8, ptr %device, i32 1976
  %0 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %serial, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -793116672, i32 %1)
  %cmp.not = icmp eq i32 %1, -793116672
  br i1 %cmp.not, label %entry.if.end13.thread_crit_edge, label %if.end

entry.if.end13.thread_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13.thread

if.end:                                           ; preds = %entry
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 16, ptr noundef nonnull @.str.62, i32 noundef %2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end.if.end13.thread_crit_edge, label %land.lhs.true

if.end.if.end13.thread_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13.thread

land.lhs.true:                                    ; preds = %if.end
  %mfg_pcba_serial_no = getelementptr i8, ptr %device, i32 2124
  %sub = sub i32 12, %call
  %arrayidx4 = getelementptr [12 x i8], ptr %mfg_pcba_serial_no, i32 0, i32 %sub
  %sub5 = add i32 %call, -1
  %bcmp = tail call i32 @bcmp(ptr %arrayidx4, ptr %buf, i32 %sub5) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool7.not = icmp eq i32 %bcmp, 0
  br i1 %tobool7.not, label %if.then8, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %call12 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 16, ptr noundef nonnull @.str.63, i32 noundef 12, ptr noundef %mfg_pcba_serial_no)
  br label %if.end13

if.end13:                                         ; preds = %if.then8, %land.lhs.true.if.end13_crit_edge
  %len.1 = phi i32 [ %call, %land.lhs.true.if.end13_crit_edge ], [ %call12, %if.then8 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %len.1)
  %cmp15 = icmp slt i32 %len.1, 16
  br i1 %cmp15, label %if.end13.if.end13.thread_crit_edge, label %if.end13._crit_edge

if.end13._crit_edge:                              ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %3

if.end13.if.end13.thread_crit_edge:               ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13.thread

if.end13.thread:                                  ; preds = %if.end13.if.end13.thread_crit_edge, %if.end.if.end13.thread_crit_edge, %entry.if.end13.thread_crit_edge
  %len.130 = phi i32 [ %len.1, %if.end13.if.end13.thread_crit_edge ], [ 0, %if.end.if.end13.thread_crit_edge ], [ 0, %entry.if.end13.thread_crit_edge ]
  br label %3

3:                                                ; preds = %if.end13.thread, %if.end13._crit_edge
  %4 = phi i32 [ %len.130, %if.end13.thread ], [ 16, %if.end13._crit_edge ]
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aac_reinit_aif(ptr noundef %aac, i32 noundef %index) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %quirks = getelementptr [65 x %struct.aac_driver_ident], ptr @aac_drivers, i32 0, i32 %index, i32 5
  %0 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %quirks, align 4
  %and = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 @aac_intr_normal(ptr noundef %aac, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aac_intr_normal(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @aac_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %0 = load i32, ptr @aac_cfg_major, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %0)
  %cmp = icmp sgt i32 %0, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__unregister_chrdev(i32 noundef %0, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str.3) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @pci_unregister_driver(ptr noundef nonnull @aac_pci_driver) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @aac_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.1, ptr noundef nonnull @aac_driver_version) #20
  %call1 = tail call i32 @__pci_register_driver(ptr noundef nonnull @aac_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = tail call i32 @__register_chrdev(i32 noundef 0, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str.3, ptr noundef nonnull @aac_cfg_fops) #15
  store i32 %call.i.i, ptr @aac_cfg_major, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153) #20
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aac_rx_init(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aac_rkt_init(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aac_sa_init(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aac_nark_init(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aac_src_init(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aac_srcv_init(ptr noundef) #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__unregister_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aac_probe_one(ptr noundef %pdev, ptr nocapture noundef readonly %id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 652, i16 %3)
  %cmp = icmp eq i16 %3, 652
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %needs_freset = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 49
  %4 = ptrtoint ptr %needs_freset to i32
  call void @__asan_loadN_noabort(i32 %4, i32 5)
  %bf.load = load i40, ptr %needs_freset, align 1
  %bf.set = or i40 %bf.load, 524288
  store i40 %bf.set, ptr %needs_freset, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %aac.0430 = load ptr, ptr @aac_devices, align 4
  %cmp3.not431 = icmp eq ptr %aac.0430, @aac_devices
  br i1 %cmp3.not431, label %if.end.for.end_crit_edge, label %for.body.preheader

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.preheader:                               ; preds = %if.end
  %id5438 = getelementptr inbounds %struct.aac_dev, ptr %aac.0430, i32 0, i32 2
  %5 = ptrtoint ptr %id5438 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id5438, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp6439 = icmp sgt i32 %6, 0
  br i1 %cmp6439, label %for.body.preheader.for.end_crit_edge, label %for.body.preheader.if.end9_crit_edge

for.body.preheader.if.end9_crit_edge:             ; preds = %for.body.preheader
  br label %if.end9

for.body.preheader.for.end_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %if.end9
  %id5 = getelementptr inbounds %struct.aac_dev, ptr %aac.0, i32 0, i32 2
  %7 = ptrtoint ptr %id5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id5, align 4
  %cmp6 = icmp sgt i32 %8, %inc
  br i1 %cmp6, label %for.body.for.end_crit_edge, label %for.body.if.end9_crit_edge

for.body.if.end9_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.end9:                                          ; preds = %for.body.if.end9_crit_edge, %for.body.preheader.if.end9_crit_edge
  %unique_id.0432441 = phi i32 [ %inc, %for.body.if.end9_crit_edge ], [ 0, %for.body.preheader.if.end9_crit_edge ]
  %aac.0434440 = phi ptr [ %aac.0, %for.body.if.end9_crit_edge ], [ %aac.0430, %for.body.preheader.if.end9_crit_edge ]
  %inc = add i32 %unique_id.0432441, 1
  %9 = ptrtoint ptr %aac.0434440 to i32
  call void @__asan_load4_noabort(i32 %9)
  %aac.0 = load ptr, ptr %aac.0434440, align 4
  %cmp3.not = icmp eq ptr %aac.0, @aac_devices
  br i1 %cmp3.not, label %if.end9.for.end_crit_edge, label %for.body

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %if.end9.for.end_crit_edge, %for.body.for.end_crit_edge, %for.body.preheader.for.end_crit_edge, %if.end.for.end_crit_edge
  %unique_id.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ 0, %for.body.preheader.for.end_crit_edge ], [ %inc, %if.end9.for.end_crit_edge ], [ %inc, %for.body.for.end_crit_edge ]
  %insert.0.lcssa = phi ptr [ @aac_devices, %if.end.for.end_crit_edge ], [ @aac_devices, %for.body.preheader.for.end_crit_edge ], [ %aac.0434440, %if.end9.for.end_crit_edge ], [ %aac.0434440, %for.body.for.end_crit_edge ]
  %call = tail call i32 @pci_disable_link_state(ptr noundef %pdev, i32 noundef 7) #15
  %call15 = tail call i32 @pci_enable_device(ptr noundef %pdev) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool.not = icmp eq i32 %call15, 0
  br i1 %tobool.not, label %if.end17, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end17:                                         ; preds = %for.end
  %arrayidx = getelementptr [65 x %struct.aac_driver_ident], ptr @aac_drivers, i32 0, i32 %1
  %quirks = getelementptr [65 x %struct.aac_driver_ident], ptr @aac_drivers, i32 0, i32 %1, i32 5
  %10 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %quirks, align 4
  %and = and i32 %11, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %if.then19, label %if.end17.if.end25_crit_edge

if.end17.if.end25_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25

if.then19:                                        ; preds = %if.end17
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call20 = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then19.if.end25_crit_edge, label %do.end

if.then19.if.end25_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25

do.end:                                           ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.65) #20
  br label %out_disable_pdev

if.end25:                                         ; preds = %if.then19.if.end25_crit_edge, %if.end17.if.end25_crit_edge
  %12 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %quirks, align 4
  %and28 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  %.413 = select i1 %tobool29.not, i64 4294967295, i64 2147483647
  %dev32 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call33 = tail call i32 @dma_set_coherent_mask(ptr noundef %dev32, i64 noundef %.413) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end40, label %do.end38

do.end38:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  %. = select i1 %tobool29.not, i32 32, i32 31
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev32, ptr noundef nonnull @.str.71, i32 noundef %.) #20
  br label %out_disable_pdev

if.end40:                                         ; preds = %if.end25
  tail call void @pci_set_master(ptr noundef %pdev) #15
  %call41 = tail call ptr @scsi_host_alloc(ptr noundef nonnull @aac_driver_template, i32 noundef 22704) #15
  %tobool42.not = icmp eq ptr %call41, null
  br i1 %tobool42.not, label %if.end40.out_disable_pdev_crit_edge, label %if.end44

if.end40.out_disable_pdev_crit_edge:              ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_disable_pdev

if.end44:                                         ; preds = %if.end40
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq, align 4
  %irq45 = getelementptr inbounds %struct.Scsi_Host, ptr %call41, i32 0, i32 47
  %16 = ptrtoint ptr %irq45 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %irq45, align 8
  %unique_id46 = getelementptr inbounds %struct.Scsi_Host, ptr %call41, i32 0, i32 23
  %17 = ptrtoint ptr %unique_id46 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %unique_id.0.lcssa, ptr %unique_id46, align 8
  %max_cmd_len = getelementptr inbounds %struct.Scsi_Host, ptr %call41, i32 0, i32 24
  %18 = ptrtoint ptr %max_cmd_len to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 16, ptr %max_cmd_len, align 4
  %19 = load i32, ptr @aac_cfg_major, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %19)
  %cmp47 = icmp eq i32 %19, -2
  br i1 %cmp47, label %if.then49, label %if.end44.if.end50_crit_edge

if.end44.if.end50_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end50

if.then49:                                        ; preds = %if.end44
  %call.i.i = tail call i32 @__register_chrdev(i32 noundef 0, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str.3, ptr noundef nonnull @aac_cfg_fops) #15
  store i32 %call.i.i, ptr @aac_cfg_major, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.then49.if.end50_crit_edge

if.then49.if.end50_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end50

do.end.i:                                         ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153) #20
  br label %if.end50

if.end50:                                         ; preds = %do.end.i, %if.then49.if.end50_crit_edge, %if.end44.if.end50_crit_edge
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %call41, i32 0, i32 53
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %20 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %resource, align 8
  %base_start = getelementptr inbounds %struct.Scsi_Host, ptr %call41, i32 1, i32 13, i32 13, i32 1, i32 4, i32 1, i32 1
  %22 = ptrtoint ptr %base_start to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %base_start, align 8
  %scsi_host_ptr = getelementptr inbounds %struct.Scsi_Host, ptr %call41, i32 1, i32 49, i32 0, i32 7, i32 1, i32 2
  %23 = ptrtoint ptr %scsi_host_ptr to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call41, ptr %scsi_host_ptr, align 8
  %pdev52 = getelementptr inbounds %struct.Scsi_Host, ptr %call41, i32 1, i32 49, i32 0, i32 7, i32 0, i32 3, i32 6
  %24 = ptrtoint ptr %pdev52 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %pdev, ptr %pdev52, align 4
  %25 = load ptr, ptr getelementptr inbounds (%struct.scsi_host_template, ptr @aac_driver_template, i32 0, i32 4), align 8
  %name = getelementptr inbounds %struct.Scsi_Host, ptr %call41, i32 1, i32 1
  %26 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %name, align 8
  %27 = ptrtoint ptr %unique_id46 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %unique_id46, align 8
  %id54 = getelementptr inbounds %struct.Scsi_Host, ptr %call41, i32 1, i32 1, i32 1
  %29 = ptrtoint ptr %id54 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %id54, align 4
  %cardtype = getelementptr inbounds %struct.Scsi_Host, ptr %call41, i32 1, i32 49, i32 10, i32 3
  %30 = ptrtoint ptr %cardtype to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %1, ptr %cardtype, align 8
  %31 = ptrtoint ptr %hostdata to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %hostdata, ptr %hostdata, align 4
  %prev.i = getelementptr inbounds %struct.Scsi_Host, ptr %call41, i32 1, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %hostdata, ptr %prev.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aac_reset_devices to i32))
  %33 = load i32, ptr @aac_reset_devices, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool56.not = icmp eq i32 %33, 0
  br i1 %tobool56.not, label %lor.lhs.false, label %if.end50.if.then58_crit_edge

if.end50.if.then58_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then58

lor.lhs.false:                                    ; preds = %if.end50
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @reset_devices to i32))
  %34 = load i32, ptr @reset_devices, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool57.not = icmp eq i32 %34, 0
  br i1 %tobool57.not, label %lor.lhs.false.if.end59_crit_edge, label %lor.lhs.false.if.then58_crit_edge

lor.lhs.false.if.then58_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then58

lor.lhs.false.if.end59_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end59

if.then58:                                        ; preds = %lor.lhs.false.if.then58_crit_edge, %if.end50.if.then58_crit_edge
  %init_reset = getelementptr inbounds %struct.Scsi_Host, ptr %call41, i32 10, i32 49, i32 0, i32 7, i32 1, i32 0, i32 1
  %35 = ptrtoint ptr %init_reset to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %init_reset, align 8
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %lor.lhs.false.if.end59_crit_edge
  %can_queue = getelementptr inbounds %struct.Scsi_Host, ptr %call41, i32 0, i32 26
  %36 = ptrtoint ptr %can_queue to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %can_queue, align 4
  %add = add i32 %37, 8
  %38 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 164) #15
  %39 = extractvalue { i32, i1 } %38, 1
  br i1 %39, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !417

kcalloc.exit.thread:                              ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #17
  %fibs421 = getelementptr inbounds %struct.Scsi_Host, ptr %call41, i32 1, i32 3, i32 0, i32 0, i32 4, i32 1
  %40 = ptrtoint ptr %fibs421 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %fibs421, align 4
  br label %out_free_host

if.end7.i.i:                                      ; preds = %if.end59
  %41 = extractvalue { i32, i1 } %38, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %41, i32 noundef 3520) #21
  %fibs = getelementptr inbounds %struct.Scsi_Host, ptr %call41, i32 1, i32 3, i32 0, i32 0, i32 4, i32 1
  %42 = ptrtoint ptr %fibs to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call8.i.i, ptr %fibs, align 4
  %tobool62.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool62.not, label %if.end7.i.i.out_free_host_crit_edge, label %do.body65

if.end7.i.i.out_free_host_crit_edge:              ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free_host

do.body65:                                        ; preds = %if.end7.i.i
  %fib_lock = getelementptr inbounds %struct.Scsi_Host, ptr %call41, i32 1, i32 3, i32 0, i32 0, i32 4, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %fib_lock, ptr noundef nonnull @.str.73, ptr noundef nonnull @aac_probe_one.__key, i16 noundef signext 3) #15
  %ioctl_mutex = getelementptr inbounds %struct.Scsi_Host, ptr %call41, i32 1, i32 5, i32 1, i32 4, i32 1
  tail call void @__mutex_init(ptr noundef %ioctl_mutex, ptr noundef nonnull @.str.75, ptr noundef nonnull @aac_probe_one.__key.74) #15
  %scan_mutex = getelementptr inbounds %struct.Scsi_Host, ptr %call41, i32 1, i32 10
  tail call void @__mutex_init(ptr noundef %scan_mutex, ptr noundef nonnull @.str.77, ptr noundef nonnull @aac_probe_one.__key.76) #15
  %safw_rescan_work = getelementptr inbounds %struct.Scsi_Host, ptr %call41, i32 1, i32 49, i32 0, i32 7, i32 1, i32 4, i32 3
  tail call void @__init_work(ptr noundef %safw_rescan_work, i32 noundef 0) #15
  %43 = ptrtoint ptr %safw_rescan_work to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -64, ptr %safw_rescan_work, align 8
  %lockdep_map = getelementptr inbounds %struct.Scsi_Host, ptr %call41, i32 1, i32 49, i32 0, i32 7, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.79, ptr noundef nonnull @aac_probe_one.__key.78, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %entry83 = getelementptr inbounds %struct.Scsi_Host, ptr %call41, i32 1, i32 49, i32 0, i32 7, i32 1, i32 4, i32 6
  %44 = ptrtoint ptr %entry83 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %entry83, ptr %entry83, align 4
  %prev.i414 = getelementptr inbounds %struct.Scsi_Host, ptr %call41, i32 1, i32 49, i32 0, i32 7, i32 1, i32 4, i32 7
  %45 = ptrtoint ptr %prev.i414 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %entry83, ptr %prev.i414, align 4
  %func = getelementptr inbounds %struct.Scsi_Host, ptr %call41, i32 1, i32 49, i32 0, i32 7, i32 2
  %46 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @aac_safw_rescan_worker, ptr %func, align 4
  %timer = getelementptr inbounds %struct.Scsi_Host, ptr %call41, i32 1, i32 49, i32 6
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.81, ptr noundef nonnull @aac_probe_one.__key.80) #15
  %src_reinit_aif_worker = getelementptr inbounds %struct.Scsi_Host, ptr %call41, i32 1, i32 49, i32 9, i32 1, i32 4, i32 7
  tail call void @__init_work(ptr noundef %src_reinit_aif_worker, i32 noundef 0) #15
  %47 = ptrtoint ptr %src_reinit_aif_worker to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -64, ptr %src_reinit_aif_worker, align 4
  %lockdep_map104 = getelementptr inbounds %struct.Scsi_Host, ptr %call41, i32 1, i32 49, i32 9, i32 4
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map104, ptr noundef nonnull @.str.83, ptr noundef nonnull @aac_probe_one.__key.82, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %entry107 = getelementptr inbounds %struct.Scsi_Host, ptr %call41, i32 1, i32 49, i32 9, i32 2
  %48 = ptrtoint ptr %entry107 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %entry107, ptr %entry107, align 4
  %prev.i415 = getelementptr inbounds %struct.Scsi_Host, ptr %call41, i32 1, i32 49, i32 9, i32 3
  %49 = ptrtoint ptr %prev.i415 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %entry107, ptr %prev.i415, align 4
  %func110 = getelementptr inbounds %struct.Scsi_Host, ptr %call41, i32 1, i32 49, i32 9, i32 3, i32 1
  %50 = ptrtoint ptr %func110 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @aac_src_reinit_aif_worker, ptr %func110, align 4
  %timer115 = getelementptr inbounds %struct.Scsi_Host, ptr %call41, i32 1, i32 49, i32 9, i32 5, i32 7
  tail call void @init_timer_key(ptr noundef %timer115, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.85, ptr noundef nonnull @aac_probe_one.__key.84) #15
  %base_size = getelementptr inbounds %struct.Scsi_Host, ptr %call41, i32 1, i32 13, i32 13, i32 1, i32 4, i32 3
  %51 = ptrtoint ptr %base_size to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 8192, ptr %base_size, align 8
  %52 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx, align 4
  %call121 = tail call i32 %53(ptr noundef %hostdata) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %if.end124, label %do.body65.out_unmap_crit_edge

do.body65.out_unmap_crit_edge:                    ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_unmap

if.end124:                                        ; preds = %do.body65
  %sync_mode = getelementptr inbounds %struct.Scsi_Host, ptr %call41, i32 1, i32 50, i32 2
  %54 = ptrtoint ptr %sync_mode to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %sync_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool125.not = icmp eq i32 %55, 0
  br i1 %tobool125.not, label %if.end124.if.end145_crit_edge, label %if.then126

if.end124.if.end145_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end145

if.then126:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aac_sync_mode to i32))
  %56 = load i32, ptr @aac_sync_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool127.not = icmp eq i32 %56, 0
  %57 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %name, align 8
  %59 = ptrtoint ptr %id54 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %id54, align 4
  %.str.90..str.87 = select i1 %tobool127.not, ptr @.str.90, ptr @.str.87
  %call135 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.90..str.87, ptr noundef %58, i32 noundef %60) #20
  br label %if.end145

if.end145:                                        ; preds = %if.then126, %if.end124.if.end145_crit_edge
  %call146 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @aac_command_thread, ptr noundef %hostdata, i32 noundef -1, ptr noundef nonnull @.str.1) #15
  %cmp.i416 = icmp ugt ptr %call146, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i416, label %do.end157, label %if.end163

do.end157:                                        ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #17
  %thread428 = getelementptr inbounds %struct.Scsi_Host, ptr %call41, i32 1, i32 49, i32 0, i32 7, i32 1, i32 4, i32 2
  %61 = ptrtoint ptr %thread428 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call146, ptr %thread428, align 4
  %call159 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93) #20
  %62 = ptrtoint ptr %thread428 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %thread428, align 4
  %64 = ptrtoint ptr %63 to i32
  store ptr null, ptr %thread428, align 4
  br label %out_deinit

if.end163:                                        ; preds = %if.end145
  %call149 = tail call i32 @wake_up_process(ptr noundef %call146) #15
  %thread = getelementptr inbounds %struct.Scsi_Host, ptr %call41, i32 1, i32 49, i32 0, i32 7, i32 1, i32 4, i32 2
  %65 = ptrtoint ptr %thread to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call146, ptr %thread, align 4
  %channels = getelementptr [65 x %struct.aac_driver_ident], ptr @aac_drivers, i32 0, i32 %1, i32 4
  %66 = ptrtoint ptr %channels to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %channels, align 4
  %conv165 = zext i16 %67 to i32
  %maximum_num_channels = getelementptr inbounds %struct.Scsi_Host, ptr %call41, i32 1, i32 49, i32 0, i32 7, i32 1, i32 4, i32 1
  %68 = ptrtoint ptr %maximum_num_channels to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %conv165, ptr %maximum_num_channels, align 4
  %call166 = tail call i32 @aac_get_adapter_info(ptr noundef %hostdata) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call166)
  %cmp167 = icmp slt i32 %call166, 0
  br i1 %cmp167, label %if.end163.out_deinit_crit_edge, label %if.end170

if.end163.out_deinit_crit_edge:                   ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_deinit

if.end170:                                        ; preds = %if.end163
  %69 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %quirks, align 4
  %and173 = and i32 %70, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and173)
  %tobool174.not = icmp eq i32 %and173, 0
  br i1 %tobool174.not, label %if.end170.if.end183_crit_edge, label %land.lhs.true

if.end170.if.end183_crit_edge:                    ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end183

land.lhs.true:                                    ; preds = %if.end170
  %sg_tablesize = getelementptr inbounds %struct.Scsi_Host, ptr %call41, i32 0, i32 28
  %71 = ptrtoint ptr %sg_tablesize to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %sg_tablesize, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 34, i16 %72)
  %cmp176 = icmp ugt i16 %72, 34
  br i1 %cmp176, label %if.then178, label %land.lhs.true.if.end183_crit_edge

land.lhs.true.if.end183_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end183

if.then178:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %73 = ptrtoint ptr %sg_tablesize to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 34, ptr %sg_tablesize, align 2
  %max_sectors = getelementptr inbounds %struct.Scsi_Host, ptr %call41, i32 0, i32 30
  %74 = ptrtoint ptr %max_sectors to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 384, ptr %max_sectors, align 8
  br label %if.end183

if.end183:                                        ; preds = %if.then178, %land.lhs.true.if.end183_crit_edge, %if.end170.if.end183_crit_edge
  %75 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %quirks, align 4
  %and186 = and i32 %76, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and186)
  %tobool187.not = icmp eq i32 %and186, 0
  br i1 %tobool187.not, label %if.end183.if.end200_crit_edge, label %land.lhs.true188

if.end183.if.end200_crit_edge:                    ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end200

land.lhs.true188:                                 ; preds = %if.end183
  %sg_tablesize189 = getelementptr inbounds %struct.Scsi_Host, ptr %call41, i32 0, i32 28
  %77 = ptrtoint ptr %sg_tablesize189 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %sg_tablesize189, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 17, i16 %78)
  %cmp191 = icmp ugt i16 %78, 17
  br i1 %cmp191, label %if.then193, label %land.lhs.true188.if.end200_crit_edge

land.lhs.true188.if.end200_crit_edge:             ; preds = %land.lhs.true188
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end200

if.then193:                                       ; preds = %land.lhs.true188
  call void @__sanitizer_cov_trace_pc() #17
  %79 = ptrtoint ptr %sg_tablesize189 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 17, ptr %sg_tablesize189, align 2
  %max_sectors199 = getelementptr inbounds %struct.Scsi_Host, ptr %call41, i32 0, i32 30
  %80 = ptrtoint ptr %max_sectors199 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 248, ptr %max_sectors199, align 8
  br label %if.end200

if.end200:                                        ; preds = %if.then193, %land.lhs.true188.if.end200_crit_edge, %if.end183.if.end200_crit_edge
  %options = getelementptr inbounds %struct.Scsi_Host, ptr %call41, i32 1, i32 49, i32 12, i32 5, i32 1, i32 0, i32 4
  %81 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %options, align 4
  %and201 = and i32 %82, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and201)
  %tobool202.not = icmp eq i32 %and201, 0
  br i1 %tobool202.not, label %if.end200.if.end207_crit_edge, label %if.then203

if.end200.if.end207_crit_edge:                    ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end207

if.then203:                                       ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #17
  %max_sectors204 = getelementptr inbounds %struct.Scsi_Host, ptr %call41, i32 0, i32 30
  %83 = ptrtoint ptr %max_sectors204 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %max_sectors204, align 8
  %shl = shl i32 %84, 9
  br label %if.end207

if.end207:                                        ; preds = %if.then203, %if.end200.if.end207_crit_edge
  %shl.sink = phi i32 [ %shl, %if.then203 ], [ 65536, %if.end200.if.end207_crit_edge ]
  %85 = getelementptr inbounds %struct.Scsi_Host, ptr %call41, i32 0, i32 31
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %shl.sink, ptr %85, align 4
  %87 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %quirks, align 4
  %89 = trunc i32 %88 to i8
  %90 = lshr i8 %89, 1
  %91 = and i8 %90, 1
  %92 = getelementptr inbounds %struct.aac_dev, ptr %hostdata, i32 0, i32 62
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %91, ptr %92, align 1
  %nondasd_support = getelementptr inbounds %struct.Scsi_Host, ptr %call41, i32 1, i32 50, i32 0, i32 7
  %94 = ptrtoint ptr %nondasd_support to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %nondasd_support, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool217.not = icmp eq i8 %95, 0
  br i1 %tobool217.not, label %lor.lhs.false218, label %if.end207.if.then223_crit_edge

if.end207.if.then223_crit_edge:                   ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then223

lor.lhs.false218:                                 ; preds = %if.end207
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @expose_physicals to i32))
  %96 = load i32, ptr @expose_physicals, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool219.not = icmp eq i32 %96, 0
  br i1 %tobool219.not, label %lor.lhs.false220, label %lor.lhs.false218.if.then223_crit_edge

lor.lhs.false218.if.then223_crit_edge:            ; preds = %lor.lhs.false218
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then223

lor.lhs.false220:                                 ; preds = %lor.lhs.false218
  %jbod = getelementptr inbounds %struct.aac_dev, ptr %hostdata, i32 0, i32 54
  %97 = ptrtoint ptr %jbod to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %jbod, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool222.not = icmp eq i8 %98, 0
  br i1 %tobool222.not, label %lor.lhs.false220.if.end227_crit_edge, label %lor.lhs.false220.if.then223_crit_edge

lor.lhs.false220.if.then223_crit_edge:            ; preds = %lor.lhs.false220
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then223

lor.lhs.false220.if.end227_crit_edge:             ; preds = %lor.lhs.false220
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end227

if.then223:                                       ; preds = %lor.lhs.false220.if.then223_crit_edge, %lor.lhs.false218.if.then223_crit_edge, %if.end207.if.then223_crit_edge
  %99 = ptrtoint ptr %maximum_num_channels to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %maximum_num_channels, align 4
  br label %if.end227

if.end227:                                        ; preds = %if.then223, %lor.lhs.false220.if.end227_crit_edge
  %.sink = phi i32 [ %100, %if.then223 ], [ 0, %lor.lhs.false220.if.end227_crit_edge ]
  %max_channel226 = getelementptr inbounds %struct.Scsi_Host, ptr %call41, i32 0, i32 20
  %101 = ptrtoint ptr %max_channel226 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %.sink, ptr %max_channel226, align 8
  %call228 = tail call i32 @aac_get_config_status(ptr noundef %hostdata, i32 noundef 0) #15
  %call229 = tail call i32 @aac_get_containers(ptr noundef %hostdata) #15
  %102 = ptrtoint ptr %insert.0.lcssa to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %insert.0.lcssa, align 4
  %call.i.i418 = tail call zeroext i1 @__list_add_valid(ptr noundef %hostdata, ptr noundef %insert.0.lcssa, ptr noundef %103) #15
  br i1 %call.i.i418, label %if.end.i.i419, label %if.end227.list_add.exit_crit_edge

if.end227.list_add.exit_crit_edge:                ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add.exit

if.end.i.i419:                                    ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #17
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %hostdata, ptr %prev1.i.i, align 4
  %105 = ptrtoint ptr %hostdata to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %103, ptr %hostdata, align 4
  %106 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %insert.0.lcssa, ptr %prev.i, align 4
  %107 = ptrtoint ptr %insert.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %107)
  store volatile ptr %hostdata, ptr %insert.0.lcssa, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i419, %if.end227.list_add.exit_crit_edge
  %maximum_num_containers = getelementptr inbounds %struct.Scsi_Host, ptr %call41, i32 1, i32 49, i32 0, i32 7, i32 1, i32 3
  %108 = ptrtoint ptr %maximum_num_containers to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %maximum_num_containers, align 4
  %max_id = getelementptr inbounds %struct.Scsi_Host, ptr %call41, i32 0, i32 21
  %maximum_num_physicals = getelementptr inbounds %struct.Scsi_Host, ptr %call41, i32 1, i32 49, i32 0, i32 7, i32 1, i32 4
  %110 = ptrtoint ptr %maximum_num_physicals to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %maximum_num_physicals, align 8
  %112 = tail call i32 @llvm.umax.i32(i32 %109, i32 %111)
  %113 = ptrtoint ptr %max_id to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %max_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %112)
  %cmp239 = icmp ult i32 %112, 32
  br i1 %cmp239, label %if.then241, label %if.else243

if.then241:                                       ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #17
  %114 = ptrtoint ptr %max_id to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 32, ptr %max_id, align 4
  br label %if.end245

if.else243:                                       ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #17
  %this_id = getelementptr inbounds %struct.Scsi_Host, ptr %call41, i32 0, i32 25
  %115 = ptrtoint ptr %this_id to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %112, ptr %this_id, align 8
  br label %if.end245

if.end245:                                        ; preds = %if.else243, %if.then241
  %sa_firmware = getelementptr inbounds %struct.aac_dev, ptr %hostdata, i32 0, i32 66
  %116 = ptrtoint ptr %sa_firmware to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %sa_firmware, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool246.not = icmp eq i8 %117, 0
  br i1 %tobool246.not, label %land.lhs.true247, label %if.end245.if.end254_crit_edge

if.end245.if.end254_crit_edge:                    ; preds = %if.end245
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end254

land.lhs.true247:                                 ; preds = %if.end245
  %118 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %quirks, align 4
  %and250 = and i32 %119, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and250)
  %tobool251.not = icmp eq i32 %and250, 0
  br i1 %tobool251.not, label %land.lhs.true247.if.end254_crit_edge, label %if.then252

land.lhs.true247.if.end254_crit_edge:             ; preds = %land.lhs.true247
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end254

if.then252:                                       ; preds = %land.lhs.true247
  call void @__sanitizer_cov_trace_pc() #17
  %call253 = tail call i32 @aac_intr_normal(ptr noundef %hostdata, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null) #15
  br label %if.end254

if.end254:                                        ; preds = %if.then252, %land.lhs.true247.if.end254_crit_edge, %if.end245.if.end254_crit_edge
  %max_lun = getelementptr inbounds %struct.Scsi_Host, ptr %call41, i32 0, i32 22
  %120 = ptrtoint ptr %max_lun to i32
  call void @__asan_store8_noabort(i32 %120)
  store i64 256, ptr %max_lun, align 8
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %121 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %call41, ptr %driver_data.i.i, align 4
  %call.i = tail call i32 @scsi_add_host_with_dma(ptr noundef nonnull %call41, ptr noundef %dev32, ptr noundef %dev32) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool257.not = icmp eq i32 %call.i, 0
  br i1 %tobool257.not, label %if.end259, label %if.end254.out_deinit_crit_edge

if.end254.out_deinit_crit_edge:                   ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_deinit

if.end259:                                        ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #17
  %call260 = tail call i32 @aac_scan_host(ptr noundef %hostdata) #15
  %call261 = tail call i32 @pci_enable_pcie_error_reporting(ptr noundef %pdev) #15
  %call262 = tail call i32 @pci_save_state(ptr noundef %pdev) #15
  br label %cleanup

out_deinit:                                       ; preds = %if.end254.out_deinit_crit_edge, %if.end163.out_deinit_crit_edge, %do.end157
  %error.0 = phi i32 [ %64, %do.end157 ], [ %call166, %if.end163.out_deinit_crit_edge ], [ %call.i, %if.end254.out_deinit_crit_edge ]
  tail call fastcc void @__aac_shutdown(ptr noundef %hostdata)
  br label %out_unmap

out_unmap:                                        ; preds = %out_deinit, %do.body65.out_unmap_crit_edge
  %error.1 = phi i32 [ %error.0, %out_deinit ], [ -19, %do.body65.out_unmap_crit_edge ]
  tail call void @aac_fib_map_free(ptr noundef %hostdata) #15
  %comm_addr = getelementptr inbounds %struct.Scsi_Host, ptr %call41, i32 1, i32 49, i32 0, i32 7, i32 1
  %122 = ptrtoint ptr %comm_addr to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %comm_addr, align 4
  %tobool263.not = icmp eq ptr %123, null
  br i1 %tobool263.not, label %out_unmap.if.end268_crit_edge, label %if.then264

out_unmap.if.end268_crit_edge:                    ; preds = %out_unmap
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end268

if.then264:                                       ; preds = %out_unmap
  call void @__sanitizer_cov_trace_pc() #17
  %124 = ptrtoint ptr %pdev52 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %pdev52, align 4
  %dev266 = getelementptr inbounds %struct.pci_dev, ptr %125, i32 0, i32 44
  %comm_size = getelementptr inbounds %struct.Scsi_Host, ptr %call41, i32 1, i32 49, i32 0, i32 7, i32 1, i32 1
  %126 = ptrtoint ptr %comm_size to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %comm_size, align 4
  %comm_phys = getelementptr inbounds %struct.Scsi_Host, ptr %call41, i32 1, i32 49, i32 0, i32 7, i32 1, i32 0, i32 1
  %128 = ptrtoint ptr %comm_phys to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %comm_phys, align 8
  tail call void @dma_free_attrs(ptr noundef %dev266, i32 noundef %127, ptr noundef nonnull %123, i32 noundef %129, i32 noundef 0) #15
  br label %if.end268

if.end268:                                        ; preds = %if.then264, %out_unmap.if.end268_crit_edge
  %queues = getelementptr inbounds %struct.Scsi_Host, ptr %call41, i32 1, i32 13, i32 0, i32 2, i32 2
  %130 = ptrtoint ptr %queues to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %queues, align 8
  tail call void @kfree(ptr noundef %131) #15
  %adapter_ioremap = getelementptr inbounds %struct.Scsi_Host, ptr %call41, i32 1, i32 13, i32 11
  %132 = ptrtoint ptr %adapter_ioremap to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %adapter_ioremap, align 4
  %call269 = tail call i32 %133(ptr noundef %hostdata, i32 noundef 0) #15
  %134 = ptrtoint ptr %fibs to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %fibs, align 4
  tail call void @kfree(ptr noundef %135) #15
  %fsa_dev = getelementptr inbounds %struct.Scsi_Host, ptr %call41, i32 1, i32 49, i32 0, i32 7, i32 1, i32 4, i32 1, i32 1
  %136 = ptrtoint ptr %fsa_dev to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %fsa_dev, align 8
  tail call void @kfree(ptr noundef %137) #15
  br label %out_free_host

out_free_host:                                    ; preds = %if.end268, %if.end7.i.i.out_free_host_crit_edge, %kcalloc.exit.thread
  %error.2 = phi i32 [ %error.1, %if.end268 ], [ -12, %if.end7.i.i.out_free_host_crit_edge ], [ -12, %kcalloc.exit.thread ]
  tail call void @scsi_host_put(ptr noundef nonnull %call41) #15
  br label %out_disable_pdev

out_disable_pdev:                                 ; preds = %out_free_host, %if.end40.out_disable_pdev_crit_edge, %do.end38, %do.end
  %error.3 = phi i32 [ %call33, %do.end38 ], [ %error.2, %out_free_host ], [ %call20, %do.end ], [ -12, %if.end40.out_disable_pdev_crit_edge ]
  tail call void @pci_disable_device(ptr noundef %pdev) #15
  br label %cleanup

cleanup:                                          ; preds = %out_disable_pdev, %if.end259, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end259 ], [ %call15, %for.end.cleanup_crit_edge ], [ %error.3, %out_disable_pdev ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aac_remove_one(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %safw_rescan_work.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 49, i32 0, i32 7, i32 1, i32 4, i32 3
  %call.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %safw_rescan_work.i) #15
  %src_reinit_aif_worker.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 49, i32 9, i32 1, i32 4, i32 7
  %call1.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %src_reinit_aif_worker.i) #15
  tail call void @scsi_remove_host(ptr noundef %1) #15
  tail call fastcc void @__aac_shutdown(ptr noundef %hostdata)
  tail call void @aac_fib_map_free(ptr noundef %hostdata) #15
  %pdev1 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 49, i32 0, i32 7, i32 0, i32 3, i32 6
  %2 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev1, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %comm_size = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 49, i32 0, i32 7, i32 1, i32 1
  %4 = ptrtoint ptr %comm_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %comm_size, align 4
  %comm_addr = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 49, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %comm_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %comm_addr, align 4
  %comm_phys = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 49, i32 0, i32 7, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %comm_phys to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %comm_phys, align 8
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %5, ptr noundef %7, i32 noundef %9, i32 noundef 0) #15
  %queues = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 13, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %queues to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %queues, align 8
  tail call void @kfree(ptr noundef %11) #15
  %adapter_ioremap = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 13, i32 11
  %12 = ptrtoint ptr %adapter_ioremap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter_ioremap, align 4
  %call2 = tail call i32 %13(ptr noundef %hostdata, i32 noundef 0) #15
  %fibs = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 3, i32 0, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %fibs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fibs, align 4
  tail call void @kfree(ptr noundef %15) #15
  %fsa_dev = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 49, i32 0, i32 7, i32 1, i32 4, i32 1, i32 1
  %16 = ptrtoint ptr %fsa_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fsa_dev, align 8
  tail call void @kfree(ptr noundef %17) #15
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %hostdata) #15
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i, align 4
  %20 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hostdata, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %24 = ptrtoint ptr %hostdata to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 256 to ptr), ptr %hostdata, align 4
  %prev.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @scsi_host_put(ptr noundef %1) #15
  tail call void @pci_disable_device(ptr noundef %pdev) #15
  %26 = load volatile ptr, ptr @aac_devices, align 4
  %cmp.i.not = icmp eq ptr %26, @aac_devices
  br i1 %cmp.i.not, label %if.then, label %list_del.exit.if.end_crit_edge

list_del.exit.if.end_crit_edge:                   ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  %27 = load i32, ptr @aac_cfg_major, align 4
  tail call void @__unregister_chrdev(i32 noundef %27, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str.3) #15
  store i32 -2, ptr @aac_cfg_major, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %list_del.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aac_shutdown(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @scsi_host_block(ptr noundef %1) #15
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  tail call fastcc void @__aac_shutdown(ptr noundef %hostdata)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_disable_link_state(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_host_alloc(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aac_safw_rescan_worker(ptr noundef %work) #9 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__might_sleep(ptr noundef nonnull @.str.157, i32 noundef 2665) #15
  %scsi_host_ptr = getelementptr i8, ptr %work, i32 -24
  %0 = ptrtoint ptr %scsi_host_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scsi_host_ptr, align 8
  %shost_state.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %shost_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %shost_state.i, align 4
  %.off.i = add i32 %3, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 3
  br i1 %switch.i, label %entry.if.end_crit_edge, label %scsi_host_in_recovery.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

scsi_host_in_recovery.exit:                       ; preds = %entry
  %tmf_in_progress.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 36
  %4 = ptrtoint ptr %tmf_in_progress.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %tmf_in_progress.i, align 8
  %5 = and i16 %bf.load.i, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %scsi_host_in_recovery.exit.do.end17_crit_edge, label %scsi_host_in_recovery.exit.if.end_crit_edge

scsi_host_in_recovery.exit.if.end_crit_edge:      ; preds = %scsi_host_in_recovery.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

scsi_host_in_recovery.exit.do.end17_crit_edge:    ; preds = %scsi_host_in_recovery.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end17

if.end:                                           ; preds = %scsi_host_in_recovery.exit.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #15
  %6 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #15
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %if.end
  %7 = ptrtoint ptr %scsi_host_ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %scsi_host_ptr, align 8
  %host_wait = getelementptr inbounds %struct.Scsi_Host, ptr %8, i32 0, i32 10
  %call7 = call i32 @prepare_to_wait_event(ptr noundef %host_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #15
  %9 = ptrtoint ptr %scsi_host_ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %scsi_host_ptr, align 8
  %shost_state.i23 = getelementptr inbounds %struct.Scsi_Host, ptr %10, i32 0, i32 48
  %11 = ptrtoint ptr %shost_state.i23 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %shost_state.i23, align 4
  %.off.i24 = add i32 %12, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i24)
  %switch.i25 = icmp ult i32 %.off.i24, 3
  br i1 %switch.i25, label %for.cond.cleanup_crit_edge, label %scsi_host_in_recovery.exit30

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

scsi_host_in_recovery.exit30:                     ; preds = %for.cond
  %tmf_in_progress.i26 = getelementptr inbounds %struct.Scsi_Host, ptr %10, i32 0, i32 36
  %13 = ptrtoint ptr %tmf_in_progress.i26 to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load.i27 = load i16, ptr %tmf_in_progress.i26, align 8
  %14 = and i16 %bf.load.i27, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool10.not = icmp eq i16 %14, 0
  br i1 %tobool10.not, label %for.end, label %scsi_host_in_recovery.exit30.cleanup_crit_edge

scsi_host_in_recovery.exit30.cleanup_crit_edge:   ; preds = %scsi_host_in_recovery.exit30
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %scsi_host_in_recovery.exit30.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  call void @schedule() #15
  br label %for.cond

for.end:                                          ; preds = %scsi_host_in_recovery.exit30
  call void @__sanitizer_cov_trace_pc() #17
  %15 = ptrtoint ptr %scsi_host_ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %scsi_host_ptr, align 8
  %host_wait14 = getelementptr inbounds %struct.Scsi_Host, ptr %16, i32 0, i32 10
  call void @finish_wait(ptr noundef %host_wait14, ptr noundef nonnull %__wq_entry) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #15
  br label %do.end17

do.end17:                                         ; preds = %for.end, %scsi_host_in_recovery.exit.do.end17_crit_edge
  %add.ptr = getelementptr i8, ptr %work, i32 -696
  %call18 = call i32 @aac_scan_host(ptr noundef %add.ptr) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @aac_src_reinit_aif_worker(ptr noundef) #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aac_command_thread(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aac_get_adapter_info(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aac_get_config_status(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aac_get_containers(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aac_scan_host(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_pcie_error_reporting(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_save_state(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__aac_shutdown(ptr noundef %aac) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ioctl_mutex = getelementptr inbounds %struct.aac_dev, ptr %aac, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %ioctl_mutex, i32 noundef 0) #15
  %adapter_shutdown = getelementptr inbounds %struct.aac_dev, ptr %aac, i32 0, i32 83
  %0 = ptrtoint ptr %adapter_shutdown to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %adapter_shutdown, align 8
  tail call void @mutex_unlock(ptr noundef %ioctl_mutex) #15
  %aif_thread = getelementptr inbounds %struct.aac_dev, ptr %aac, i32 0, i32 50
  %1 = ptrtoint ptr %aif_thread to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %aif_thread, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %for.cond.preheader

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

for.cond.preheader:                               ; preds = %entry
  %scsi_host_ptr = getelementptr inbounds %struct.aac_dev, ptr %aac, i32 0, i32 35
  %3 = ptrtoint ptr %scsi_host_ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %scsi_host_ptr, align 8
  %can_queue78 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 26
  %5 = ptrtoint ptr %can_queue78 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %can_queue78, align 4
  %add79 = add i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add79)
  %cmp80 = icmp sgt i32 %add79, 0
  br i1 %cmp80, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %fibs = getelementptr inbounds %struct.aac_dev, ptr %aac, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i2.081 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %7 = ptrtoint ptr %fibs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fibs, align 4
  %hw_fib_va = getelementptr %struct.fib, ptr %8, i32 %i2.081, i32 13
  %9 = ptrtoint ptr %hw_fib_va to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw_fib_va, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %13 = and i32 %12, -2145320960
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %13)
  %.not = icmp eq i32 %13, -2147483648
  br i1 %.not, label %if.then9, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then9:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %event_wait = getelementptr %struct.fib, ptr %8, i32 %i2.081, i32 4
  tail call void @complete(ptr noundef %event_wait) #15
  br label %if.end

if.end:                                           ; preds = %if.then9, %for.body.if.end_crit_edge
  %inc = add nuw nsw i32 %i2.081, 1
  %14 = ptrtoint ptr %scsi_host_ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %scsi_host_ptr, align 8
  %can_queue = getelementptr inbounds %struct.Scsi_Host, ptr %15, i32 0, i32 26
  %16 = ptrtoint ptr %can_queue to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %can_queue, align 4
  %add = add i32 %17, 8
  %cmp = icmp slt i32 %inc, %add
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %thread = getelementptr inbounds %struct.aac_dev, ptr %aac, i32 0, i32 40
  %18 = ptrtoint ptr %thread to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %thread, align 4
  %call = tail call i32 @kthread_stop(ptr noundef %19) #15
  %20 = ptrtoint ptr %thread to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %thread, align 4
  br label %if.end11

if.end11:                                         ; preds = %for.end, %entry.if.end11_crit_edge
  %call12 = tail call i32 @aac_send_shutdown(ptr noundef %aac) #15
  %adapter_disable_int = getelementptr inbounds %struct.aac_dev, ptr %aac, i32 0, i32 17, i32 2
  %21 = ptrtoint ptr %adapter_disable_int to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %adapter_disable_int, align 4
  tail call void %22(ptr noundef %aac) #15
  %pdev.i = getelementptr inbounds %struct.aac_dev, ptr %aac, i32 0, i32 30
  %23 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev.i, align 4
  %device1.i = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 8
  %25 = ptrtoint ptr %device1.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %device1.i, align 2
  %27 = add i16 %26, -654
  call void @__sanitizer_cov_trace_const_cmp2(i16 -3, i16 %27)
  %switch.i = icmp ult i16 %27, -3
  br i1 %switch.i, label %if.else33, label %if.then15

if.then15:                                        ; preds = %if.end11
  %max_msix = getelementptr inbounds %struct.aac_dev, ptr %aac, i32 0, i32 74
  %28 = ptrtoint ptr %max_msix to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %max_msix, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp16 = icmp ugt i32 %29, 1
  br i1 %cmp16, label %for.cond18.preheader, label %if.else

for.cond18.preheader:                             ; preds = %if.then15
  %30 = ptrtoint ptr %max_msix to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %max_msix, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp2083.not = icmp eq i32 %31, 0
  br i1 %cmp2083.not, label %for.cond18.preheader.if.end37_crit_edge, label %for.cond18.preheader.for.body21_crit_edge

for.cond18.preheader.for.body21_crit_edge:        ; preds = %for.cond18.preheader
  br label %for.body21

for.cond18.preheader.if.end37_crit_edge:          ; preds = %for.cond18.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end37

for.body21:                                       ; preds = %for.body21.for.body21_crit_edge, %for.cond18.preheader.for.body21_crit_edge
  %i.084 = phi i32 [ %inc26, %for.body21.for.body21_crit_edge ], [ 0, %for.cond18.preheader.for.body21_crit_edge ]
  %32 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdev.i, align 4
  %call22 = tail call i32 @pci_irq_vector(ptr noundef %33, i32 noundef %i.084) #15
  %arrayidx23 = getelementptr %struct.aac_dev, ptr %aac, i32 0, i32 80, i32 %i.084
  %call24 = tail call ptr @free_irq(i32 noundef %call22, ptr noundef %arrayidx23) #15
  %inc26 = add nuw i32 %i.084, 1
  %34 = ptrtoint ptr %max_msix to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %max_msix, align 8
  %cmp20 = icmp ult i32 %inc26, %35
  br i1 %cmp20, label %for.body21.for.body21_crit_edge, label %for.body21.if.end37_crit_edge

for.body21.if.end37_crit_edge:                    ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end37

for.body21.for.body21_crit_edge:                  ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body21

if.else:                                          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #17
  %irq = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 46
  %36 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %irq, align 4
  %aac_msix29 = getelementptr inbounds %struct.aac_dev, ptr %aac, i32 0, i32 80
  %call31 = tail call ptr @free_irq(i32 noundef %37, ptr noundef %aac_msix29) #15
  br label %if.end37

if.else33:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  %irq35 = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 46
  %38 = ptrtoint ptr %irq35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %irq35, align 4
  %call36 = tail call ptr @free_irq(i32 noundef %39, ptr noundef %aac) #15
  br label %if.end37

if.end37:                                         ; preds = %if.else33, %if.else, %for.body21.if.end37_crit_edge, %for.cond18.preheader.if.end37_crit_edge
  %msi = getelementptr inbounds %struct.aac_dev, ptr %aac, i32 0, i32 65
  %40 = ptrtoint ptr %msi to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %msi, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool38.not = icmp eq i8 %41, 0
  br i1 %tobool38.not, label %if.else41, label %if.then39

if.then39:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #17
  %42 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pdev.i, align 4
  tail call void @pci_disable_msi(ptr noundef %43) #15
  br label %if.end47

if.else41:                                        ; preds = %if.end37
  %max_msix42 = getelementptr inbounds %struct.aac_dev, ptr %aac, i32 0, i32 74
  %44 = ptrtoint ptr %max_msix42 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %max_msix42, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %45)
  %cmp43 = icmp ugt i32 %45, 1
  br i1 %cmp43, label %if.then44, label %if.else41.if.end47_crit_edge

if.else41.if.end47_crit_edge:                     ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end47

if.then44:                                        ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #17
  %46 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pdev.i, align 4
  tail call void @pci_disable_msix(ptr noundef %47) #15
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %if.else41.if.end47_crit_edge, %if.then39
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @aac_fib_map_free(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_host_put(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aac_queuecommand(ptr nocapture noundef readnone %shost, ptr noundef %cmd) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %phase = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 22, i32 9
  %0 = ptrtoint ptr %phase to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 258, ptr %phase, align 4
  %call = tail call i32 @aac_scsi_cmd(ptr noundef %cmd) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %cond = select i1 %tobool.not, i32 0, i32 8195
  ret i32 %cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @aac_info(ptr nocapture noundef readonly %shost) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cardtype = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 49, i32 10, i32 3
  %0 = ptrtoint ptr %cardtype to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cardtype, align 8
  %name = getelementptr [65 x %struct.aac_driver_ident], ptr @aac_drivers, i32 0, i32 %1, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aac_ioctl(ptr nocapture noundef readonly %sdev, i32 noundef %cmd, ptr noundef %arg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev, align 8
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %call = tail call zeroext i1 @capable(i32 noundef 17) #15
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 49, i32 0, i32 7, i32 0, i32 3, i32 6
  %2 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev.i.i, align 4
  %error_state.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 43
  %4 = ptrtoint ptr %error_state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %error_state.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i.not.i.i = icmp eq i32 %5, 1
  br i1 %cmp.i.not.i.i, label %aac_pci_offline.exit.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

aac_pci_offline.exit.i:                           ; preds = %if.end
  %handle_pci_error.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 10, i32 49, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %handle_pci_error.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %handle_pci_error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.i.not.i = icmp eq i32 %7, 0
  br i1 %tobool1.i.not.i, label %aac_adapter_check_health.exit, label %aac_pci_offline.exit.i.cleanup_crit_edge, !prof !418

aac_pci_offline.exit.i.cleanup_crit_edge:         ; preds = %aac_pci_offline.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

aac_adapter_check_health.exit:                    ; preds = %aac_pci_offline.exit.i
  %adapter_check_health.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 13, i32 8
  %8 = ptrtoint ptr %adapter_check_health.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adapter_check_health.i, align 4
  %call3.i = tail call i32 %9(ptr noundef %hostdata) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not = icmp eq i32 %call3.i, 0
  br i1 %tobool.not, label %if.end4, label %aac_adapter_check_health.exit.cleanup_crit_edge

aac_adapter_check_health.exit.cleanup_crit_edge:  ; preds = %aac_adapter_check_health.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end4:                                          ; preds = %aac_adapter_check_health.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call5 = tail call i32 @aac_do_ioctl(ptr noundef %hostdata, i32 noundef %cmd, ptr noundef %arg) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %aac_adapter_check_health.exit.cleanup_crit_edge, %aac_pci_offline.exit.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ -1, %entry.cleanup_crit_edge ], [ -16, %aac_adapter_check_health.exit.cleanup_crit_edge ], [ -16, %aac_pci_offline.exit.i.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aac_eh_abort(ptr noundef %cmd) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %pdev.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 49, i32 0, i32 7, i32 0, i32 3, i32 6
  %4 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev.i.i, align 4
  %error_state.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 43
  %6 = ptrtoint ptr %error_state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %error_state.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i.not.i.i = icmp eq i32 %7, 1
  br i1 %cmp.i.not.i.i, label %aac_pci_offline.exit.i, label %entry.cleanup170_crit_edge

entry.cleanup170_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup170

aac_pci_offline.exit.i:                           ; preds = %entry
  %handle_pci_error.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 10, i32 49, i32 0, i32 7, i32 1
  %8 = ptrtoint ptr %handle_pci_error.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %handle_pci_error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool1.i.not.i = icmp eq i32 %9, 0
  br i1 %tobool1.i.not.i, label %aac_adapter_check_health.exit, label %aac_pci_offline.exit.i.cleanup170_crit_edge, !prof !418

aac_pci_offline.exit.i.cleanup170_crit_edge:      ; preds = %aac_pci_offline.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup170

aac_adapter_check_health.exit:                    ; preds = %aac_pci_offline.exit.i
  %adapter_check_health.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 13, i32 8
  %10 = ptrtoint ptr %adapter_check_health.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter_check_health.i, align 4
  %call3.i = tail call i32 %11(ptr noundef %hostdata) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not = icmp eq i32 %call3.i, 0
  br i1 %tobool.not, label %if.end, label %aac_adapter_check_health.exit.cleanup170_crit_edge

aac_adapter_check_health.exit.cleanup170_crit_edge: ; preds = %aac_adapter_check_health.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup170

if.end:                                           ; preds = %aac_adapter_check_health.exit
  %12 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device, align 4
  %channel.i = getelementptr inbounds %struct.scsi_device, ptr %13, i32 0, i32 17
  %14 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %channel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool4.not = icmp eq i32 %15, 0
  %sub = add i32 %15, -1
  %spec.select264 = select i1 %tobool4.not, i32 0, i32 %sub
  %id.i = getelementptr inbounds %struct.scsi_device, ptr %13, i32 0, i32 16
  %16 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id.i, align 8
  %hba_map = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 50, i32 12, i32 19
  %arrayidx9 = getelementptr [5 x [256 x %struct.aac_hba_map_info]], ptr %hba_map, i32 0, i32 %spec.select264, i32 %17
  %devtype = getelementptr [5 x [256 x %struct.aac_hba_map_info]], ptr %hba_map, i32 0, i32 %spec.select264, i32 %17, i32 1
  %18 = ptrtoint ptr %devtype to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %devtype, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %19)
  %cmp = icmp eq i8 %19, 3
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 17
  %20 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %host_no, align 4
  %channel.i255 = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 17
  %22 = ptrtoint ptr %channel.i255 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %channel.i255, align 4
  %id.i256 = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 16
  %24 = ptrtoint ptr %id.i256 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %id.i256, align 8
  %lun = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 18
  %26 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %lun, align 8
  %conv14 = trunc i64 %27 to i32
  br i1 %cmp, label %if.then11, label %do.end81

if.then11:                                        ; preds = %if.end
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.1, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %conv14) #20
  %can_queue = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 26
  %28 = ptrtoint ptr %can_queue to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %can_queue, align 4
  %add = add i32 %29, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp16279 = icmp sgt i32 %add, 0
  br i1 %cmp16279, label %for.body.lr.ph, label %if.then11.cleanup170_crit_edge

if.then11.cleanup170_crit_edge:                   ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup170

for.body.lr.ph:                                   ; preds = %if.then11
  %fibs = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 3, i32 0, i32 0, i32 4, i32 1
  %30 = ptrtoint ptr %fibs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fibs, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %count.0280 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %hw_fib_va = getelementptr %struct.fib, ptr %31, i32 %count.0280, i32 13
  %32 = ptrtoint ptr %hw_fib_va to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw_fib_va, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %33, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp20.not = icmp eq i8 %35, 0
  br i1 %cmp20.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %flags = getelementptr %struct.fib, ptr %31, i32 %count.0280, i32 9
  %36 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags, align 4
  %and = and i32 %37, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true23

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true23:                                  ; preds = %land.lhs.true
  %callback_data = getelementptr %struct.fib, ptr %31, i32 %count.0280, i32 8
  %38 = ptrtoint ptr %callback_data to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %callback_data, align 4
  %cmp24 = icmp eq ptr %39, %cmd
  br i1 %cmp24, label %if.end30, label %land.lhs.true23.for.inc_crit_edge

land.lhs.true23.for.inc_crit_edge:                ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true23.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %count.0280, 1
  %exitcond.not = icmp eq i32 %inc, %add
  br i1 %exitcond.not, label %for.inc.cleanup170_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.cleanup170_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup170

if.end30:                                         ; preds = %land.lhs.true23
  %call31 = tail call ptr @aac_fib_alloc(ptr noundef %hostdata) #15
  %tobool32.not = icmp eq ptr %call31, null
  br i1 %tobool32.not, label %if.end30.cleanup170_crit_edge, label %if.end34

if.end30.cleanup170_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup170

if.end34:                                         ; preds = %if.end30
  %hw_fib_va35 = getelementptr inbounds %struct.fib, ptr %call31, i32 0, i32 13
  %40 = ptrtoint ptr %hw_fib_va35 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hw_fib_va35, align 4
  %42 = call ptr @memset(ptr %41, i32 0, i32 44)
  %tmf36 = getelementptr inbounds %struct.aac_hba_tm_req, ptr %41, i32 0, i32 2
  %43 = ptrtoint ptr %tmf36 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %tmf36, align 2
  %44 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx9, align 4
  %it_nexus = getelementptr inbounds %struct.aac_hba_tm_req, ptr %41, i32 0, i32 4
  %46 = ptrtoint ptr %it_nexus to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %it_nexus, align 4
  %47 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %device, align 4
  %lun41 = getelementptr inbounds %struct.scsi_device, ptr %48, i32 0, i32 18
  %49 = ptrtoint ptr %lun41 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %lun41, align 8
  %conv42 = trunc i64 %50 to i8
  %arrayidx44 = getelementptr %struct.aac_hba_tm_req, ptr %41, i32 0, i32 5, i32 1
  %51 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv42, ptr %arrayidx44, align 1
  %hw_error_pa = getelementptr inbounds %struct.fib, ptr %call31, i32 0, i32 16
  %52 = ptrtoint ptr %hw_error_pa to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %hw_error_pa, align 4
  %error_ptr_hi = getelementptr inbounds %struct.aac_hba_tm_req, ptr %41, i32 0, i32 11
  %54 = ptrtoint ptr %error_ptr_hi to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %error_ptr_hi, align 4
  %55 = tail call i32 @llvm.bswap.i32(i32 %53)
  %error_ptr_lo = getelementptr inbounds %struct.aac_hba_tm_req, ptr %41, i32 0, i32 10
  %56 = ptrtoint ptr %error_ptr_lo to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %error_ptr_lo, align 4
  %error_length = getelementptr inbounds %struct.aac_hba_tm_req, ptr %41, i32 0, i32 12
  %57 = ptrtoint ptr %error_length to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 131072, ptr %error_length, align 4
  %hbacmd_size = getelementptr inbounds %struct.fib, ptr %call31, i32 0, i32 17
  %58 = ptrtoint ptr %hbacmd_size to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 44, ptr %hbacmd_size, align 4
  %sent_command = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 22, i32 8
  %59 = ptrtoint ptr %sent_command to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile i32 0, ptr %sent_command, align 4
  %call49 = tail call i32 @aac_hba_send(i8 noundef zeroext 65, ptr noundef nonnull %call31, ptr noundef nonnull @aac_hba_callback, ptr noundef %cmd) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %call49)
  %cmp50.not = icmp eq i32 %call49, -115
  br i1 %cmp50.not, label %for.body58.preheader, label %if.then52

for.body58.preheader:                             ; preds = %if.end34
  %60 = ptrtoint ptr %sent_command to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %sent_command, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool61.not = icmp eq i32 %61, 0
  br i1 %tobool61.not, label %if.end63, label %for.body58.preheader.cleanup170_crit_edge

for.body58.preheader.cleanup170_crit_edge:        ; preds = %for.body58.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup170

if.then52:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #17
  %call53 = tail call i32 @aac_fib_complete(ptr noundef nonnull %call31) #15
  tail call void @aac_fib_free(ptr noundef nonnull %call31) #15
  br label %cleanup170

if.end63:                                         ; preds = %for.body58.preheader
  tail call void @msleep(i32 noundef 1000) #15
  %62 = ptrtoint ptr %sent_command to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %sent_command, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool61.not.1 = icmp eq i32 %63, 0
  br i1 %tobool61.not.1, label %if.end63.1, label %if.end63.cleanup170_crit_edge

if.end63.cleanup170_crit_edge:                    ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup170

if.end63.1:                                       ; preds = %if.end63
  tail call void @msleep(i32 noundef 1000) #15
  %64 = ptrtoint ptr %sent_command to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %sent_command, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool61.not.2 = icmp eq i32 %65, 0
  br i1 %tobool61.not.2, label %if.end63.2, label %if.end63.1.cleanup170_crit_edge

if.end63.1.cleanup170_crit_edge:                  ; preds = %if.end63.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup170

if.end63.2:                                       ; preds = %if.end63.1
  tail call void @msleep(i32 noundef 1000) #15
  %66 = ptrtoint ptr %sent_command to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %sent_command, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool61.not.3 = icmp eq i32 %67, 0
  br i1 %tobool61.not.3, label %if.end63.3, label %if.end63.2.cleanup170_crit_edge

if.end63.2.cleanup170_crit_edge:                  ; preds = %if.end63.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup170

if.end63.3:                                       ; preds = %if.end63.2
  tail call void @msleep(i32 noundef 1000) #15
  %68 = ptrtoint ptr %sent_command to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %sent_command, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool61.not.4 = icmp eq i32 %69, 0
  br i1 %tobool61.not.4, label %if.end63.4, label %if.end63.3.cleanup170_crit_edge

if.end63.3.cleanup170_crit_edge:                  ; preds = %if.end63.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup170

if.end63.4:                                       ; preds = %if.end63.3
  tail call void @msleep(i32 noundef 1000) #15
  %70 = ptrtoint ptr %sent_command to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %sent_command, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool61.not.5 = icmp eq i32 %71, 0
  br i1 %tobool61.not.5, label %if.end63.5, label %if.end63.4.cleanup170_crit_edge

if.end63.4.cleanup170_crit_edge:                  ; preds = %if.end63.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup170

if.end63.5:                                       ; preds = %if.end63.4
  tail call void @msleep(i32 noundef 1000) #15
  %72 = ptrtoint ptr %sent_command to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %sent_command, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool61.not.6 = icmp eq i32 %73, 0
  br i1 %tobool61.not.6, label %if.end63.6, label %if.end63.5.cleanup170_crit_edge

if.end63.5.cleanup170_crit_edge:                  ; preds = %if.end63.5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup170

if.end63.6:                                       ; preds = %if.end63.5
  tail call void @msleep(i32 noundef 1000) #15
  %74 = ptrtoint ptr %sent_command to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %sent_command, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool61.not.7 = icmp eq i32 %75, 0
  br i1 %tobool61.not.7, label %if.end63.7, label %if.end63.6.cleanup170_crit_edge

if.end63.6.cleanup170_crit_edge:                  ; preds = %if.end63.6
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup170

if.end63.7:                                       ; preds = %if.end63.6
  tail call void @msleep(i32 noundef 1000) #15
  %76 = ptrtoint ptr %sent_command to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %sent_command, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool61.not.8 = icmp eq i32 %77, 0
  br i1 %tobool61.not.8, label %if.end63.8, label %if.end63.7.cleanup170_crit_edge

if.end63.7.cleanup170_crit_edge:                  ; preds = %if.end63.7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup170

if.end63.8:                                       ; preds = %if.end63.7
  tail call void @msleep(i32 noundef 1000) #15
  %78 = ptrtoint ptr %sent_command to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %sent_command, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool61.not.9 = icmp eq i32 %79, 0
  br i1 %tobool61.not.9, label %if.end63.9, label %if.end63.8.cleanup170_crit_edge

if.end63.8.cleanup170_crit_edge:                  ; preds = %if.end63.8
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup170

if.end63.9:                                       ; preds = %if.end63.8
  tail call void @msleep(i32 noundef 1000) #15
  %80 = ptrtoint ptr %sent_command to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %sent_command, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool61.not.10 = icmp eq i32 %81, 0
  br i1 %tobool61.not.10, label %if.end63.10, label %if.end63.9.cleanup170_crit_edge

if.end63.9.cleanup170_crit_edge:                  ; preds = %if.end63.9
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup170

if.end63.10:                                      ; preds = %if.end63.9
  tail call void @msleep(i32 noundef 1000) #15
  %82 = ptrtoint ptr %sent_command to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %sent_command, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool61.not.11 = icmp eq i32 %83, 0
  br i1 %tobool61.not.11, label %if.end63.11, label %if.end63.10.cleanup170_crit_edge

if.end63.10.cleanup170_crit_edge:                 ; preds = %if.end63.10
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup170

if.end63.11:                                      ; preds = %if.end63.10
  tail call void @msleep(i32 noundef 1000) #15
  %84 = ptrtoint ptr %sent_command to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %sent_command, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool61.not.12 = icmp eq i32 %85, 0
  br i1 %tobool61.not.12, label %if.end63.12, label %if.end63.11.cleanup170_crit_edge

if.end63.11.cleanup170_crit_edge:                 ; preds = %if.end63.11
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup170

if.end63.12:                                      ; preds = %if.end63.11
  tail call void @msleep(i32 noundef 1000) #15
  %86 = ptrtoint ptr %sent_command to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %sent_command, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool61.not.13 = icmp eq i32 %87, 0
  br i1 %tobool61.not.13, label %if.end63.13, label %if.end63.12.cleanup170_crit_edge

if.end63.12.cleanup170_crit_edge:                 ; preds = %if.end63.12
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup170

if.end63.13:                                      ; preds = %if.end63.12
  tail call void @msleep(i32 noundef 1000) #15
  %88 = ptrtoint ptr %sent_command to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %sent_command, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool61.not.14 = icmp eq i32 %89, 0
  br i1 %tobool61.not.14, label %if.end63.14, label %if.end63.13.cleanup170_crit_edge

if.end63.13.cleanup170_crit_edge:                 ; preds = %if.end63.13
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup170

if.end63.14:                                      ; preds = %if.end63.13
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @msleep(i32 noundef 1000) #15
  %call74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.1) #20
  br label %cleanup170

do.end81:                                         ; preds = %if.end
  %call88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.1, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %conv14) #20
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 16
  %90 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %cmnd, align 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %91, align 1
  %94 = zext i8 %93 to i64
  call void @__sanitizer_cov_trace_switch(i64 %94, ptr @__sancov_gen_cov_switch_values)
  switch i8 %93, label %do.end81.cleanup170_crit_edge [
    i8 -98, label %sw.bb
    i8 18, label %do.end81.sw.bb102_crit_edge
    i8 37, label %do.end81.sw.bb102_crit_edge293
    i8 0, label %for.cond130.preheader
  ]

do.end81.sw.bb102_crit_edge293:                   ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb102

do.end81.sw.bb102_crit_edge:                      ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb102

do.end81.cleanup170_crit_edge:                    ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup170

for.cond130.preheader:                            ; preds = %do.end81
  %can_queue131 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 26
  %95 = ptrtoint ptr %can_queue131 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %can_queue131, align 4
  %add132268 = add i32 %96, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add132268)
  %cmp133269 = icmp sgt i32 %add132268, 0
  br i1 %cmp133269, label %for.body135.lr.ph, label %for.cond130.preheader.cleanup170_crit_edge

for.cond130.preheader.cleanup170_crit_edge:       ; preds = %for.cond130.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup170

for.body135.lr.ph:                                ; preds = %for.cond130.preheader
  %fibs137 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 3, i32 0, i32 0, i32 4, i32 1
  br label %for.body135

sw.bb:                                            ; preds = %do.end81
  %raw_io_interface = getelementptr inbounds %struct.aac_dev, ptr %hostdata, i32 0, i32 60
  %97 = ptrtoint ptr %raw_io_interface to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %raw_io_interface, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool91.not = icmp eq i8 %98, 0
  br i1 %tobool91.not, label %sw.bb.cleanup170_crit_edge, label %lor.lhs.false

sw.bb.cleanup170_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup170

lor.lhs.false:                                    ; preds = %sw.bb
  %raw_io_64 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 50, i32 0, i32 7, i32 0, i32 1, i32 1
  %99 = ptrtoint ptr %raw_io_64 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %raw_io_64, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool92.not = icmp eq i8 %100, 0
  br i1 %tobool92.not, label %lor.lhs.false.cleanup170_crit_edge, label %lor.lhs.false93

lor.lhs.false.cleanup170_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup170

lor.lhs.false93:                                  ; preds = %lor.lhs.false
  %arrayidx95 = getelementptr i8, ptr %91, i32 1
  %101 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx95, align 1
  %103 = and i8 %102, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %103)
  %cmp98.not = icmp eq i8 %103, 16
  br i1 %cmp98.not, label %lor.lhs.false93.sw.bb102_crit_edge, label %lor.lhs.false93.cleanup170_crit_edge

lor.lhs.false93.cleanup170_crit_edge:             ; preds = %lor.lhs.false93
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup170

lor.lhs.false93.sw.bb102_crit_edge:               ; preds = %lor.lhs.false93
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb102

sw.bb102:                                         ; preds = %lor.lhs.false93.sw.bb102_crit_edge, %do.end81.sw.bb102_crit_edge, %do.end81.sw.bb102_crit_edge293
  %can_queue104 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 26
  %104 = ptrtoint ptr %can_queue104 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %can_queue104, align 4
  %add105273 = add i32 %105, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add105273)
  %cmp106274 = icmp sgt i32 %add105273, 0
  br i1 %cmp106274, label %for.body108.lr.ph, label %sw.bb102.cleanup170_crit_edge

sw.bb102.cleanup170_crit_edge:                    ; preds = %sw.bb102
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup170

for.body108.lr.ph:                                ; preds = %sw.bb102
  %fibs110 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 3, i32 0, i32 0, i32 4, i32 1
  %phase = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 22, i32 9
  br label %for.body108

for.body108:                                      ; preds = %if.end125.for.body108_crit_edge, %for.body108.lr.ph
  %ret.2277 = phi i32 [ 8195, %for.body108.lr.ph ], [ %ret.3, %if.end125.for.body108_crit_edge ]
  %count.2275 = phi i32 [ 0, %for.body108.lr.ph ], [ %inc127, %if.end125.for.body108_crit_edge ]
  %106 = ptrtoint ptr %fibs110 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %fibs110, align 4
  %hw_fib_va112 = getelementptr %struct.fib, ptr %107, i32 %count.2275, i32 13
  %108 = ptrtoint ptr %hw_fib_va112 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %hw_fib_va112, align 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %109, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool113.not = icmp eq i32 %111, 0
  br i1 %tobool113.not, label %for.body108.if.end125_crit_edge, label %land.lhs.true114

for.body108.if.end125_crit_edge:                  ; preds = %for.body108
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end125

land.lhs.true114:                                 ; preds = %for.body108
  %flags115 = getelementptr %struct.fib, ptr %107, i32 %count.2275, i32 9
  %112 = ptrtoint ptr %flags115 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %flags115, align 4
  %and116 = and i32 %113, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  br i1 %tobool117.not, label %land.lhs.true114.if.end125_crit_edge, label %land.lhs.true118

land.lhs.true114.if.end125_crit_edge:             ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end125

land.lhs.true118:                                 ; preds = %land.lhs.true114
  %callback_data119 = getelementptr %struct.fib, ptr %107, i32 %count.2275, i32 8
  %114 = ptrtoint ptr %callback_data119 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %callback_data119, align 4
  %cmp120 = icmp eq ptr %115, %cmd
  br i1 %cmp120, label %if.then122, label %land.lhs.true118.if.end125_crit_edge

land.lhs.true118.if.end125_crit_edge:             ; preds = %land.lhs.true118
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end125

if.then122:                                       ; preds = %land.lhs.true118
  call void @__sanitizer_cov_trace_pc() #17
  %or = or i32 %113, 1
  %116 = ptrtoint ptr %flags115 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %or, ptr %flags115, align 4
  %117 = ptrtoint ptr %phase to i32
  call void @__asan_store4_noabort(i32 %117)
  store volatile i32 259, ptr %phase, align 4
  br label %if.end125

if.end125:                                        ; preds = %if.then122, %land.lhs.true118.if.end125_crit_edge, %land.lhs.true114.if.end125_crit_edge, %for.body108.if.end125_crit_edge
  %ret.3 = phi i32 [ 8194, %if.then122 ], [ %ret.2277, %land.lhs.true118.if.end125_crit_edge ], [ %ret.2277, %land.lhs.true114.if.end125_crit_edge ], [ %ret.2277, %for.body108.if.end125_crit_edge ]
  %inc127 = add nuw nsw i32 %count.2275, 1
  %118 = ptrtoint ptr %can_queue104 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %can_queue104, align 4
  %add105 = add i32 %119, 8
  %cmp106 = icmp slt i32 %inc127, %add105
  br i1 %cmp106, label %if.end125.for.body108_crit_edge, label %if.end125.cleanup170_crit_edge

if.end125.cleanup170_crit_edge:                   ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup170

if.end125.for.body108_crit_edge:                  ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body108

for.body135:                                      ; preds = %if.end165.for.body135_crit_edge, %for.body135.lr.ph
  %ret.4272 = phi i32 [ 8195, %for.body135.lr.ph ], [ %ret.5, %if.end165.for.body135_crit_edge ]
  %count.3270 = phi i32 [ 0, %for.body135.lr.ph ], [ %inc167, %if.end165.for.body135_crit_edge ]
  %120 = ptrtoint ptr %fibs137 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %fibs137, align 4
  %callback_data139 = getelementptr %struct.fib, ptr %121, i32 %count.3270, i32 8
  %122 = ptrtoint ptr %callback_data139 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %callback_data139, align 4
  %hw_fib_va140 = getelementptr %struct.fib, ptr %121, i32 %count.3270, i32 13
  %124 = ptrtoint ptr %hw_fib_va140 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %hw_fib_va140, align 4
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %125, align 4
  %and143 = and i32 %127, 2162688
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and143)
  %tobool144.not = icmp eq i32 %and143, 0
  br i1 %tobool144.not, label %for.body135.if.end165_crit_edge, label %land.lhs.true145

for.body135.if.end165_crit_edge:                  ; preds = %for.body135
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end165

land.lhs.true145:                                 ; preds = %for.body135
  %flags146 = getelementptr %struct.fib, ptr %121, i32 %count.3270, i32 9
  %128 = ptrtoint ptr %flags146 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %flags146, align 4
  %and147 = and i32 %129, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and147)
  %tobool148.not = icmp eq i32 %and147, 0
  %tobool150.not = icmp eq ptr %123, null
  %or.cond = select i1 %tobool148.not, i1 true, i1 %tobool150.not
  br i1 %or.cond, label %land.lhs.true145.if.end165_crit_edge, label %land.lhs.true151

land.lhs.true145.if.end165_crit_edge:             ; preds = %land.lhs.true145
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end165

land.lhs.true151:                                 ; preds = %land.lhs.true145
  %device152 = getelementptr inbounds %struct.scsi_cmnd, ptr %123, i32 0, i32 1
  %130 = ptrtoint ptr %device152 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %device152, align 4
  %132 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %device, align 4
  %cmp154 = icmp eq ptr %131, %133
  br i1 %cmp154, label %if.then156, label %land.lhs.true151.if.end165_crit_edge

land.lhs.true151.if.end165_crit_edge:             ; preds = %land.lhs.true151
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end165

if.then156:                                       ; preds = %land.lhs.true151
  call void @__sanitizer_cov_trace_pc() #17
  %or158 = or i32 %129, 1
  %134 = ptrtoint ptr %flags146 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %or158, ptr %flags146, align 4
  %phase160 = getelementptr inbounds %struct.scsi_cmnd, ptr %123, i32 0, i32 22, i32 9
  %135 = ptrtoint ptr %phase160 to i32
  call void @__asan_store4_noabort(i32 %135)
  store volatile i32 259, ptr %phase160, align 4
  %cmp161 = icmp eq ptr %123, %cmd
  %spec.select = select i1 %cmp161, i32 8194, i32 %ret.4272
  br label %if.end165

if.end165:                                        ; preds = %if.then156, %land.lhs.true151.if.end165_crit_edge, %land.lhs.true145.if.end165_crit_edge, %for.body135.if.end165_crit_edge
  %ret.5 = phi i32 [ %ret.4272, %land.lhs.true151.if.end165_crit_edge ], [ %ret.4272, %land.lhs.true145.if.end165_crit_edge ], [ %ret.4272, %for.body135.if.end165_crit_edge ], [ %spec.select, %if.then156 ]
  %inc167 = add nuw nsw i32 %count.3270, 1
  %136 = ptrtoint ptr %can_queue131 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %can_queue131, align 4
  %add132 = add i32 %137, 8
  %cmp133 = icmp slt i32 %inc167, %add132
  br i1 %cmp133, label %if.end165.for.body135_crit_edge, label %if.end165.cleanup170_crit_edge

if.end165.cleanup170_crit_edge:                   ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup170

if.end165.for.body135_crit_edge:                  ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body135

cleanup170:                                       ; preds = %if.end165.cleanup170_crit_edge, %if.end125.cleanup170_crit_edge, %sw.bb102.cleanup170_crit_edge, %lor.lhs.false93.cleanup170_crit_edge, %lor.lhs.false.cleanup170_crit_edge, %sw.bb.cleanup170_crit_edge, %for.cond130.preheader.cleanup170_crit_edge, %do.end81.cleanup170_crit_edge, %if.end63.14, %if.end63.13.cleanup170_crit_edge, %if.end63.12.cleanup170_crit_edge, %if.end63.11.cleanup170_crit_edge, %if.end63.10.cleanup170_crit_edge, %if.end63.9.cleanup170_crit_edge, %if.end63.8.cleanup170_crit_edge, %if.end63.7.cleanup170_crit_edge, %if.end63.6.cleanup170_crit_edge, %if.end63.5.cleanup170_crit_edge, %if.end63.4.cleanup170_crit_edge, %if.end63.3.cleanup170_crit_edge, %if.end63.2.cleanup170_crit_edge, %if.end63.1.cleanup170_crit_edge, %if.end63.cleanup170_crit_edge, %if.then52, %for.body58.preheader.cleanup170_crit_edge, %if.end30.cleanup170_crit_edge, %for.inc.cleanup170_crit_edge, %if.then11.cleanup170_crit_edge, %aac_adapter_check_health.exit.cleanup170_crit_edge, %aac_pci_offline.exit.i.cleanup170_crit_edge, %entry.cleanup170_crit_edge
  %retval.1 = phi i32 [ 8195, %aac_adapter_check_health.exit.cleanup170_crit_edge ], [ 8195, %do.end81.cleanup170_crit_edge ], [ 8195, %lor.lhs.false93.cleanup170_crit_edge ], [ 8195, %lor.lhs.false.cleanup170_crit_edge ], [ 8195, %sw.bb.cleanup170_crit_edge ], [ 8195, %if.end63.14 ], [ 8195, %aac_pci_offline.exit.i.cleanup170_crit_edge ], [ 8195, %entry.cleanup170_crit_edge ], [ 8195, %if.then52 ], [ 8195, %if.end30.cleanup170_crit_edge ], [ 8195, %if.then11.cleanup170_crit_edge ], [ 8195, %sw.bb102.cleanup170_crit_edge ], [ 8195, %for.cond130.preheader.cleanup170_crit_edge ], [ 8194, %if.end63.13.cleanup170_crit_edge ], [ 8194, %if.end63.12.cleanup170_crit_edge ], [ 8194, %if.end63.11.cleanup170_crit_edge ], [ 8194, %if.end63.10.cleanup170_crit_edge ], [ 8194, %if.end63.9.cleanup170_crit_edge ], [ 8194, %if.end63.8.cleanup170_crit_edge ], [ 8194, %if.end63.7.cleanup170_crit_edge ], [ 8194, %if.end63.6.cleanup170_crit_edge ], [ 8194, %if.end63.5.cleanup170_crit_edge ], [ 8194, %if.end63.4.cleanup170_crit_edge ], [ 8194, %if.end63.3.cleanup170_crit_edge ], [ 8194, %if.end63.2.cleanup170_crit_edge ], [ 8194, %if.end63.1.cleanup170_crit_edge ], [ 8194, %if.end63.cleanup170_crit_edge ], [ 8194, %for.body58.preheader.cleanup170_crit_edge ], [ 8195, %for.inc.cleanup170_crit_edge ], [ %ret.3, %if.end125.cleanup170_crit_edge ], [ %ret.5, %if.end165.cleanup170_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aac_eh_dev_reset(ptr nocapture noundef readonly %cmd) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %channel.i = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %sub = add i32 %5, -1
  %spec.select = select i1 %tobool.not, i32 0, i32 %sub
  %id.i = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %spec.select)
  %cmp = icmp ugt i32 %spec.select, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %7)
  %cmp7 = icmp ugt i32 %7, 255
  %or.cond = select i1 %cmp, i1 true, i1 %cmp7
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %hba_map = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 50, i32 12, i32 19
  %arrayidx8 = getelementptr [5 x [256 x %struct.aac_hba_map_info]], ptr %hba_map, i32 0, i32 %spec.select, i32 %7
  %devtype = getelementptr [5 x [256 x %struct.aac_hba_map_info]], ptr %hba_map, i32 0, i32 %spec.select, i32 %7, i32 1
  %8 = ptrtoint ptr %devtype to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %devtype, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %9)
  %cmp9 = icmp eq i8 %9, 3
  br i1 %cmp9, label %land.lhs.true, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %reset_state = getelementptr [5 x [256 x %struct.aac_hba_map_info]], ptr %hba_map, i32 0, i32 %spec.select, i32 %7, i32 2
  %10 = ptrtoint ptr %reset_state to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %reset_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp12 = icmp sgt i8 %11, 0
  br i1 %cmp12, label %land.lhs.true.cleanup_crit_edge, label %do.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end:                                           ; preds = %land.lhs.true
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.1) #20
  %call17 = tail call ptr @aac_fib_alloc(ptr noundef %hostdata) #15
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %do.end.cleanup_crit_edge, label %if.end20

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end20:                                         ; preds = %do.end
  %lun = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 18
  %12 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %lun, align 8
  tail call fastcc void @aac_eh_tmf_lun_reset_fib(ptr noundef %arrayidx8, ptr noundef nonnull %call17, i64 noundef %13)
  %14 = ptrtoint ptr %reset_state to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %reset_state, align 1
  %call23 = tail call i32 @aac_hba_send(i8 noundef zeroext 65, ptr noundef nonnull %call17, ptr noundef nonnull @aac_tmf_callback, ptr noundef %arrayidx8) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %call23)
  %cmp24.not = icmp eq i32 %call23, -115
  br i1 %cmp24.not, label %for.body.preheader, label %if.then26

for.body.preheader:                               ; preds = %if.end20
  %15 = ptrtoint ptr %reset_state to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %reset_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp34 = icmp eq i8 %16, 0
  br i1 %cmp34, label %for.body.preheader.cleanup_crit_edge, label %if.end42

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then26:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  %17 = ptrtoint ptr %reset_state to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %reset_state, align 1
  %call28 = tail call i32 @aac_fib_complete(ptr noundef nonnull %call17) #15
  tail call void @aac_fib_free(ptr noundef nonnull %call17) #15
  br label %cleanup

if.end42:                                         ; preds = %for.body.preheader
  tail call void @msleep(i32 noundef 1000) #15
  %18 = ptrtoint ptr %reset_state to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %reset_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp34.1 = icmp eq i8 %19, 0
  br i1 %cmp34.1, label %if.end42.cleanup_crit_edge, label %if.end42.1

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end42.1:                                       ; preds = %if.end42
  tail call void @msleep(i32 noundef 1000) #15
  %20 = ptrtoint ptr %reset_state to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %reset_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp34.2 = icmp eq i8 %21, 0
  br i1 %cmp34.2, label %if.end42.1.cleanup_crit_edge, label %if.end42.2

if.end42.1.cleanup_crit_edge:                     ; preds = %if.end42.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end42.2:                                       ; preds = %if.end42.1
  tail call void @msleep(i32 noundef 1000) #15
  %22 = ptrtoint ptr %reset_state to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %reset_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp34.3 = icmp eq i8 %23, 0
  br i1 %cmp34.3, label %if.end42.2.cleanup_crit_edge, label %if.end42.3

if.end42.2.cleanup_crit_edge:                     ; preds = %if.end42.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end42.3:                                       ; preds = %if.end42.2
  tail call void @msleep(i32 noundef 1000) #15
  %24 = ptrtoint ptr %reset_state to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %reset_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp34.4 = icmp eq i8 %25, 0
  br i1 %cmp34.4, label %if.end42.3.cleanup_crit_edge, label %if.end42.4

if.end42.3.cleanup_crit_edge:                     ; preds = %if.end42.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end42.4:                                       ; preds = %if.end42.3
  tail call void @msleep(i32 noundef 1000) #15
  %26 = ptrtoint ptr %reset_state to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %reset_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp34.5 = icmp eq i8 %27, 0
  br i1 %cmp34.5, label %if.end42.4.cleanup_crit_edge, label %if.end42.5

if.end42.4.cleanup_crit_edge:                     ; preds = %if.end42.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end42.5:                                       ; preds = %if.end42.4
  tail call void @msleep(i32 noundef 1000) #15
  %28 = ptrtoint ptr %reset_state to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %reset_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp34.6 = icmp eq i8 %29, 0
  br i1 %cmp34.6, label %if.end42.5.cleanup_crit_edge, label %if.end42.6

if.end42.5.cleanup_crit_edge:                     ; preds = %if.end42.5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end42.6:                                       ; preds = %if.end42.5
  tail call void @msleep(i32 noundef 1000) #15
  %30 = ptrtoint ptr %reset_state to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %reset_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp34.7 = icmp eq i8 %31, 0
  br i1 %cmp34.7, label %if.end42.6.cleanup_crit_edge, label %if.end42.7

if.end42.6.cleanup_crit_edge:                     ; preds = %if.end42.6
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end42.7:                                       ; preds = %if.end42.6
  tail call void @msleep(i32 noundef 1000) #15
  %32 = ptrtoint ptr %reset_state to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %reset_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp34.8 = icmp eq i8 %33, 0
  br i1 %cmp34.8, label %if.end42.7.cleanup_crit_edge, label %if.end42.8

if.end42.7.cleanup_crit_edge:                     ; preds = %if.end42.7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end42.8:                                       ; preds = %if.end42.7
  tail call void @msleep(i32 noundef 1000) #15
  %34 = ptrtoint ptr %reset_state to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %reset_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp34.9 = icmp eq i8 %35, 0
  br i1 %cmp34.9, label %if.end42.8.cleanup_crit_edge, label %if.end42.9

if.end42.8.cleanup_crit_edge:                     ; preds = %if.end42.8
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end42.9:                                       ; preds = %if.end42.8
  tail call void @msleep(i32 noundef 1000) #15
  %36 = ptrtoint ptr %reset_state to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %reset_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp34.10 = icmp eq i8 %37, 0
  br i1 %cmp34.10, label %if.end42.9.cleanup_crit_edge, label %if.end42.10

if.end42.9.cleanup_crit_edge:                     ; preds = %if.end42.9
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end42.10:                                      ; preds = %if.end42.9
  tail call void @msleep(i32 noundef 1000) #15
  %38 = ptrtoint ptr %reset_state to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %reset_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %cmp34.11 = icmp eq i8 %39, 0
  br i1 %cmp34.11, label %if.end42.10.cleanup_crit_edge, label %if.end42.11

if.end42.10.cleanup_crit_edge:                    ; preds = %if.end42.10
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end42.11:                                      ; preds = %if.end42.10
  tail call void @msleep(i32 noundef 1000) #15
  %40 = ptrtoint ptr %reset_state to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %reset_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %cmp34.12 = icmp eq i8 %41, 0
  br i1 %cmp34.12, label %if.end42.11.cleanup_crit_edge, label %if.end42.12

if.end42.11.cleanup_crit_edge:                    ; preds = %if.end42.11
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end42.12:                                      ; preds = %if.end42.11
  tail call void @msleep(i32 noundef 1000) #15
  %42 = ptrtoint ptr %reset_state to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %reset_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %cmp34.13 = icmp eq i8 %43, 0
  br i1 %cmp34.13, label %if.end42.12.cleanup_crit_edge, label %if.end42.13

if.end42.12.cleanup_crit_edge:                    ; preds = %if.end42.12
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end42.13:                                      ; preds = %if.end42.12
  tail call void @msleep(i32 noundef 1000) #15
  %44 = ptrtoint ptr %reset_state to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %reset_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp34.14 = icmp eq i8 %45, 0
  br i1 %cmp34.14, label %if.end42.13.cleanup_crit_edge, label %if.end42.14

if.end42.13.cleanup_crit_edge:                    ; preds = %if.end42.13
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end42.14:                                      ; preds = %if.end42.13
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @msleep(i32 noundef 1000) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end42.14, %if.end42.13.cleanup_crit_edge, %if.end42.12.cleanup_crit_edge, %if.end42.11.cleanup_crit_edge, %if.end42.10.cleanup_crit_edge, %if.end42.9.cleanup_crit_edge, %if.end42.8.cleanup_crit_edge, %if.end42.7.cleanup_crit_edge, %if.end42.6.cleanup_crit_edge, %if.end42.5.cleanup_crit_edge, %if.end42.4.cleanup_crit_edge, %if.end42.3.cleanup_crit_edge, %if.end42.2.cleanup_crit_edge, %if.end42.1.cleanup_crit_edge, %if.end42.cleanup_crit_edge, %if.then26, %for.body.preheader.cleanup_crit_edge, %do.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 8195, %if.then26 ], [ 8195, %entry.cleanup_crit_edge ], [ 8195, %land.lhs.true.cleanup_crit_edge ], [ 8195, %if.end.cleanup_crit_edge ], [ 8195, %do.end.cleanup_crit_edge ], [ 8194, %for.body.preheader.cleanup_crit_edge ], [ 8194, %if.end42.cleanup_crit_edge ], [ 8194, %if.end42.1.cleanup_crit_edge ], [ 8194, %if.end42.2.cleanup_crit_edge ], [ 8194, %if.end42.3.cleanup_crit_edge ], [ 8194, %if.end42.4.cleanup_crit_edge ], [ 8194, %if.end42.5.cleanup_crit_edge ], [ 8194, %if.end42.6.cleanup_crit_edge ], [ 8194, %if.end42.7.cleanup_crit_edge ], [ 8194, %if.end42.8.cleanup_crit_edge ], [ 8194, %if.end42.9.cleanup_crit_edge ], [ 8194, %if.end42.10.cleanup_crit_edge ], [ 8194, %if.end42.11.cleanup_crit_edge ], [ 8194, %if.end42.12.cleanup_crit_edge ], [ 8194, %if.end42.13.cleanup_crit_edge ], [ 8195, %if.end42.14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aac_eh_target_reset(ptr nocapture noundef readonly %cmd) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %channel.i = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %sub = add i32 %5, -1
  %spec.select = select i1 %tobool.not, i32 0, i32 %sub
  %id.i = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %spec.select)
  %cmp = icmp ugt i32 %spec.select, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %7)
  %cmp7 = icmp ugt i32 %7, 255
  %or.cond = select i1 %cmp, i1 true, i1 %cmp7
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %hba_map = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 50, i32 12, i32 19
  %arrayidx8 = getelementptr [5 x [256 x %struct.aac_hba_map_info]], ptr %hba_map, i32 0, i32 %spec.select, i32 %7
  %devtype = getelementptr [5 x [256 x %struct.aac_hba_map_info]], ptr %hba_map, i32 0, i32 %spec.select, i32 %7, i32 1
  %8 = ptrtoint ptr %devtype to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %devtype, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %9)
  %cmp9 = icmp eq i8 %9, 3
  br i1 %cmp9, label %land.lhs.true, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %reset_state = getelementptr [5 x [256 x %struct.aac_hba_map_info]], ptr %hba_map, i32 0, i32 %spec.select, i32 %7, i32 2
  %10 = ptrtoint ptr %reset_state to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %reset_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp12 = icmp sgt i8 %11, 0
  br i1 %cmp12, label %land.lhs.true.cleanup_crit_edge, label %do.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end:                                           ; preds = %land.lhs.true
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.1) #20
  %call17 = tail call ptr @aac_fib_alloc(ptr noundef %hostdata) #15
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %do.end.cleanup_crit_edge, label %if.end20

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end20:                                         ; preds = %do.end
  %hw_fib_va.i = getelementptr inbounds %struct.fib, ptr %call17, i32 0, i32 13
  %12 = ptrtoint ptr %hw_fib_va.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw_fib_va.i, align 4
  %14 = call ptr @memset(ptr %13, i32 0, i32 24)
  %15 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx8, align 4
  %it_nexus.i = getelementptr inbounds %struct.aac_hba_reset_req, ptr %13, i32 0, i32 4
  %17 = ptrtoint ptr %it_nexus.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %it_nexus.i, align 4
  %hw_error_pa.i = getelementptr inbounds %struct.fib, ptr %call17, i32 0, i32 16
  %18 = ptrtoint ptr %hw_error_pa.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hw_error_pa.i, align 4
  %error_ptr_hi.i = getelementptr inbounds %struct.aac_hba_reset_req, ptr %13, i32 0, i32 7
  %20 = ptrtoint ptr %error_ptr_hi.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %error_ptr_hi.i, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %19) #15
  %error_ptr_lo.i = getelementptr inbounds %struct.aac_hba_reset_req, ptr %13, i32 0, i32 6
  %22 = ptrtoint ptr %error_ptr_lo.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %error_ptr_lo.i, align 4
  %error_length.i = getelementptr inbounds %struct.aac_hba_reset_req, ptr %13, i32 0, i32 8
  %23 = ptrtoint ptr %error_length.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 131072, ptr %error_length.i, align 4
  %hbacmd_size.i = getelementptr inbounds %struct.fib, ptr %call17, i32 0, i32 17
  %24 = ptrtoint ptr %hbacmd_size.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 24, ptr %hbacmd_size.i, align 4
  %25 = ptrtoint ptr %reset_state to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 2, ptr %reset_state, align 1
  %call23 = tail call i32 @aac_hba_send(i8 noundef zeroext 66, ptr noundef nonnull %call17, ptr noundef nonnull @aac_tmf_callback, ptr noundef %arrayidx8) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %call23)
  %cmp24.not = icmp eq i32 %call23, -115
  br i1 %cmp24.not, label %for.body.preheader, label %if.then26

for.body.preheader:                               ; preds = %if.end20
  %26 = ptrtoint ptr %reset_state to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %reset_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %27)
  %cmp34 = icmp slt i8 %27, 1
  br i1 %cmp34, label %for.body.preheader.if.then36_crit_edge, label %if.end42

for.body.preheader.if.then36_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then36

if.then26:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  %28 = ptrtoint ptr %reset_state to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %reset_state, align 1
  %call28 = tail call i32 @aac_fib_complete(ptr noundef nonnull %call17) #15
  tail call void @aac_fib_free(ptr noundef nonnull %call17) #15
  br label %cleanup

if.then36:                                        ; preds = %if.end42.13.if.then36_crit_edge, %if.end42.12.if.then36_crit_edge, %if.end42.11.if.then36_crit_edge, %if.end42.10.if.then36_crit_edge, %if.end42.9.if.then36_crit_edge, %if.end42.8.if.then36_crit_edge, %if.end42.7.if.then36_crit_edge, %if.end42.6.if.then36_crit_edge, %if.end42.5.if.then36_crit_edge, %if.end42.4.if.then36_crit_edge, %if.end42.3.if.then36_crit_edge, %if.end42.2.if.then36_crit_edge, %if.end42.1.if.then36_crit_edge, %if.end42.if.then36_crit_edge, %for.body.preheader.if.then36_crit_edge
  %.lcssa = phi i8 [ %27, %for.body.preheader.if.then36_crit_edge ], [ %30, %if.end42.if.then36_crit_edge ], [ %32, %if.end42.1.if.then36_crit_edge ], [ %34, %if.end42.2.if.then36_crit_edge ], [ %36, %if.end42.3.if.then36_crit_edge ], [ %38, %if.end42.4.if.then36_crit_edge ], [ %40, %if.end42.5.if.then36_crit_edge ], [ %42, %if.end42.6.if.then36_crit_edge ], [ %44, %if.end42.7.if.then36_crit_edge ], [ %46, %if.end42.8.if.then36_crit_edge ], [ %48, %if.end42.9.if.then36_crit_edge ], [ %50, %if.end42.10.if.then36_crit_edge ], [ %52, %if.end42.11.if.then36_crit_edge ], [ %54, %if.end42.12.if.then36_crit_edge ], [ %56, %if.end42.13.if.then36_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.lcssa)
  %cmp39 = icmp eq i8 %.lcssa, 0
  %cond41 = select i1 %cmp39, i32 8194, i32 8195
  br label %cleanup

if.end42:                                         ; preds = %for.body.preheader
  tail call void @msleep(i32 noundef 1000) #15
  %29 = ptrtoint ptr %reset_state to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %reset_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %30)
  %cmp34.1 = icmp slt i8 %30, 1
  br i1 %cmp34.1, label %if.end42.if.then36_crit_edge, label %if.end42.1

if.end42.if.then36_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then36

if.end42.1:                                       ; preds = %if.end42
  tail call void @msleep(i32 noundef 1000) #15
  %31 = ptrtoint ptr %reset_state to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %reset_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %32)
  %cmp34.2 = icmp slt i8 %32, 1
  br i1 %cmp34.2, label %if.end42.1.if.then36_crit_edge, label %if.end42.2

if.end42.1.if.then36_crit_edge:                   ; preds = %if.end42.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then36

if.end42.2:                                       ; preds = %if.end42.1
  tail call void @msleep(i32 noundef 1000) #15
  %33 = ptrtoint ptr %reset_state to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %reset_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %34)
  %cmp34.3 = icmp slt i8 %34, 1
  br i1 %cmp34.3, label %if.end42.2.if.then36_crit_edge, label %if.end42.3

if.end42.2.if.then36_crit_edge:                   ; preds = %if.end42.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then36

if.end42.3:                                       ; preds = %if.end42.2
  tail call void @msleep(i32 noundef 1000) #15
  %35 = ptrtoint ptr %reset_state to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %reset_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %36)
  %cmp34.4 = icmp slt i8 %36, 1
  br i1 %cmp34.4, label %if.end42.3.if.then36_crit_edge, label %if.end42.4

if.end42.3.if.then36_crit_edge:                   ; preds = %if.end42.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then36

if.end42.4:                                       ; preds = %if.end42.3
  tail call void @msleep(i32 noundef 1000) #15
  %37 = ptrtoint ptr %reset_state to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %reset_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %38)
  %cmp34.5 = icmp slt i8 %38, 1
  br i1 %cmp34.5, label %if.end42.4.if.then36_crit_edge, label %if.end42.5

if.end42.4.if.then36_crit_edge:                   ; preds = %if.end42.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then36

if.end42.5:                                       ; preds = %if.end42.4
  tail call void @msleep(i32 noundef 1000) #15
  %39 = ptrtoint ptr %reset_state to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %reset_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %40)
  %cmp34.6 = icmp slt i8 %40, 1
  br i1 %cmp34.6, label %if.end42.5.if.then36_crit_edge, label %if.end42.6

if.end42.5.if.then36_crit_edge:                   ; preds = %if.end42.5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then36

if.end42.6:                                       ; preds = %if.end42.5
  tail call void @msleep(i32 noundef 1000) #15
  %41 = ptrtoint ptr %reset_state to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %reset_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %42)
  %cmp34.7 = icmp slt i8 %42, 1
  br i1 %cmp34.7, label %if.end42.6.if.then36_crit_edge, label %if.end42.7

if.end42.6.if.then36_crit_edge:                   ; preds = %if.end42.6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then36

if.end42.7:                                       ; preds = %if.end42.6
  tail call void @msleep(i32 noundef 1000) #15
  %43 = ptrtoint ptr %reset_state to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %reset_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %44)
  %cmp34.8 = icmp slt i8 %44, 1
  br i1 %cmp34.8, label %if.end42.7.if.then36_crit_edge, label %if.end42.8

if.end42.7.if.then36_crit_edge:                   ; preds = %if.end42.7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then36

if.end42.8:                                       ; preds = %if.end42.7
  tail call void @msleep(i32 noundef 1000) #15
  %45 = ptrtoint ptr %reset_state to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %reset_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %46)
  %cmp34.9 = icmp slt i8 %46, 1
  br i1 %cmp34.9, label %if.end42.8.if.then36_crit_edge, label %if.end42.9

if.end42.8.if.then36_crit_edge:                   ; preds = %if.end42.8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then36

if.end42.9:                                       ; preds = %if.end42.8
  tail call void @msleep(i32 noundef 1000) #15
  %47 = ptrtoint ptr %reset_state to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %reset_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %48)
  %cmp34.10 = icmp slt i8 %48, 1
  br i1 %cmp34.10, label %if.end42.9.if.then36_crit_edge, label %if.end42.10

if.end42.9.if.then36_crit_edge:                   ; preds = %if.end42.9
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then36

if.end42.10:                                      ; preds = %if.end42.9
  tail call void @msleep(i32 noundef 1000) #15
  %49 = ptrtoint ptr %reset_state to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %reset_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %50)
  %cmp34.11 = icmp slt i8 %50, 1
  br i1 %cmp34.11, label %if.end42.10.if.then36_crit_edge, label %if.end42.11

if.end42.10.if.then36_crit_edge:                  ; preds = %if.end42.10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then36

if.end42.11:                                      ; preds = %if.end42.10
  tail call void @msleep(i32 noundef 1000) #15
  %51 = ptrtoint ptr %reset_state to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %reset_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %52)
  %cmp34.12 = icmp slt i8 %52, 1
  br i1 %cmp34.12, label %if.end42.11.if.then36_crit_edge, label %if.end42.12

if.end42.11.if.then36_crit_edge:                  ; preds = %if.end42.11
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then36

if.end42.12:                                      ; preds = %if.end42.11
  tail call void @msleep(i32 noundef 1000) #15
  %53 = ptrtoint ptr %reset_state to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %reset_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %54)
  %cmp34.13 = icmp slt i8 %54, 1
  br i1 %cmp34.13, label %if.end42.12.if.then36_crit_edge, label %if.end42.13

if.end42.12.if.then36_crit_edge:                  ; preds = %if.end42.12
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then36

if.end42.13:                                      ; preds = %if.end42.12
  tail call void @msleep(i32 noundef 1000) #15
  %55 = ptrtoint ptr %reset_state to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %reset_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %56)
  %cmp34.14 = icmp slt i8 %56, 1
  br i1 %cmp34.14, label %if.end42.13.if.then36_crit_edge, label %if.end42.14

if.end42.13.if.then36_crit_edge:                  ; preds = %if.end42.13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then36

if.end42.14:                                      ; preds = %if.end42.13
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @msleep(i32 noundef 1000) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end42.14, %if.then36, %if.then26, %do.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 8195, %if.then26 ], [ 8195, %entry.cleanup_crit_edge ], [ 8195, %land.lhs.true.cleanup_crit_edge ], [ 8195, %if.end.cleanup_crit_edge ], [ 8195, %do.end.cleanup_crit_edge ], [ %cond41, %if.then36 ], [ 8195, %if.end42.14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aac_eh_bus_reset(ptr nocapture noundef readonly %cmd) #3 align 64 {
entry:
  %fcnt.i = alloca %struct.fib_count_data, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %channel.i = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %sub = add i32 %5, -1
  %spec.select = select i1 %tobool.not, i32 0, i32 %sub
  %can_queue = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 26
  %6 = ptrtoint ptr %can_queue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %can_queue, align 4
  %add92 = add i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add92)
  %cmp93 = icmp sgt i32 %add92, 0
  br i1 %cmp93, label %for.body.lr.ph, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

for.body.lr.ph:                                   ; preds = %entry
  %fibs = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 3, i32 0, i32 0, i32 4, i32 1
  %hba_map = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 50, i32 12, i32 19
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %spec.select)
  %cmp27 = icmp ugt i32 %spec.select, 4
  br label %for.body

for.body:                                         ; preds = %cleanup38.for.body_crit_edge, %for.body.lr.ph
  %count.094 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup38.for.body_crit_edge ]
  %8 = ptrtoint ptr %fibs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fibs, align 4
  %hw_fib_va = getelementptr %struct.fib, ptr %9, i32 %count.094, i32 13
  %10 = ptrtoint ptr %hw_fib_va to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw_fib_va, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool5.not = icmp eq i32 %13, 0
  br i1 %tobool5.not, label %for.body.cleanup38_crit_edge, label %land.lhs.true

for.body.cleanup38_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup38

land.lhs.true:                                    ; preds = %for.body
  %flags = getelementptr %struct.fib, ptr %9, i32 %count.094, i32 9
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %16 = and i32 %15, 66
  call void @__sanitizer_cov_trace_const_cmp4(i32 66, i32 %16)
  %.not = icmp eq i32 %16, 66
  br i1 %.not, label %if.then, label %land.lhs.true.cleanup38_crit_edge

land.lhs.true.cleanup38_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup38

if.then:                                          ; preds = %land.lhs.true
  %callback_data = getelementptr %struct.fib, ptr %9, i32 %count.094, i32 8
  %17 = ptrtoint ptr %callback_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %callback_data, align 4
  %device11 = getelementptr inbounds %struct.scsi_cmnd, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %device11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device11, align 4
  %channel.i86 = getelementptr inbounds %struct.scsi_device, ptr %20, i32 0, i32 17
  %21 = ptrtoint ptr %channel.i86 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %channel.i86, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool13.not = icmp eq i32 %22, 0
  %sub17 = add i32 %22, -1
  %spec.select91 = select i1 %tobool13.not, i32 0, i32 %sub17
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select91, i32 %spec.select)
  %cmp21.not = icmp eq i32 %spec.select91, %spec.select
  br i1 %cmp21.not, label %if.end, label %if.then.cleanup38_crit_edge

if.then.cleanup38_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup38

if.end:                                           ; preds = %if.then
  %id.i = getelementptr inbounds %struct.scsi_device, ptr %20, i32 0, i32 16
  %23 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %24)
  %cmp28 = icmp ugt i32 %24, 255
  %or.cond83 = select i1 %cmp27, i1 true, i1 %cmp28
  br i1 %or.cond83, label %if.end.if.then32_crit_edge, label %lor.lhs.false29

if.end.if.then32_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then32

lor.lhs.false29:                                  ; preds = %if.end
  %devtype = getelementptr [5 x [256 x %struct.aac_hba_map_info]], ptr %hba_map, i32 0, i32 %spec.select, i32 %24, i32 1
  %25 = ptrtoint ptr %devtype to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %devtype, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %26)
  %cmp30.not = icmp eq i8 %26, 3
  br i1 %cmp30.not, label %lor.lhs.false29.cleanup38_crit_edge, label %lor.lhs.false29.if.then32_crit_edge

lor.lhs.false29.if.then32_crit_edge:              ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then32

lor.lhs.false29.cleanup38_crit_edge:              ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup38

if.then32:                                        ; preds = %lor.lhs.false29.if.then32_crit_edge, %if.end.if.then32_crit_edge
  %or = or i32 %15, 128
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or, ptr %flags, align 4
  %phase = getelementptr inbounds %struct.scsi_cmnd, ptr %18, i32 0, i32 22, i32 9
  %28 = ptrtoint ptr %phase to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile i32 259, ptr %phase, align 4
  br label %cleanup38

cleanup38:                                        ; preds = %if.then32, %lor.lhs.false29.cleanup38_crit_edge, %if.then.cleanup38_crit_edge, %land.lhs.true.cleanup38_crit_edge, %for.body.cleanup38_crit_edge
  %inc = add nuw nsw i32 %count.094, 1
  %29 = ptrtoint ptr %can_queue to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %can_queue, align 4
  %add = add i32 %30, 8
  %cmp = icmp slt i32 %inc, %add
  br i1 %cmp, label %cleanup38.for.body_crit_edge, label %cleanup38.do.end_crit_edge

cleanup38.do.end_crit_edge:                       ; preds = %cleanup38
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

cleanup38.for.body_crit_edge:                     ; preds = %cleanup38
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

do.end:                                           ; preds = %cleanup38.do.end_crit_edge, %entry.do.end_crit_edge
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.1) #20
  %pdev.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 49, i32 0, i32 7, i32 0, i32 3, i32 6
  %31 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdev.i.i, align 4
  %error_state.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 43
  %33 = ptrtoint ptr %error_state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %error_state.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp.i.not.i.i = icmp eq i32 %34, 1
  br i1 %cmp.i.not.i.i, label %aac_pci_offline.exit.i, label %do.end.do.end47_crit_edge

do.end.do.end47_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end47

aac_pci_offline.exit.i:                           ; preds = %do.end
  %handle_pci_error.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 10, i32 49, i32 0, i32 7, i32 1
  %35 = ptrtoint ptr %handle_pci_error.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %handle_pci_error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool1.i.not.i = icmp eq i32 %36, 0
  br i1 %tobool1.i.not.i, label %aac_adapter_check_health.exit, label %aac_pci_offline.exit.i.do.end47_crit_edge, !prof !418

aac_pci_offline.exit.i.do.end47_crit_edge:        ; preds = %aac_pci_offline.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end47

aac_adapter_check_health.exit:                    ; preds = %aac_pci_offline.exit.i
  %adapter_check_health.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 13, i32 8
  %37 = ptrtoint ptr %adapter_check_health.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %adapter_check_health.i, align 4
  %call3.i = tail call i32 %38(ptr noundef %hostdata) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool43.not = icmp eq i32 %call3.i, 0
  br i1 %tobool43.not, label %aac_adapter_check_health.exit.if.end49_crit_edge, label %aac_adapter_check_health.exit.do.end47_crit_edge

aac_adapter_check_health.exit.do.end47_crit_edge: ; preds = %aac_adapter_check_health.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end47

aac_adapter_check_health.exit.if.end49_crit_edge: ; preds = %aac_adapter_check_health.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end49

do.end47:                                         ; preds = %aac_adapter_check_health.exit.do.end47_crit_edge, %aac_pci_offline.exit.i.do.end47_crit_edge, %do.end.do.end47_crit_edge
  %retval.0.i90 = phi i32 [ %call3.i, %aac_adapter_check_health.exit.do.end47_crit_edge ], [ -1, %aac_pci_offline.exit.i.do.end47_crit_edge ], [ -1, %do.end.do.end47_crit_edge ]
  %39 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pdev.i.i, align 4
  %dev48 = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev48, ptr noundef nonnull @.str.111, i32 noundef %retval.0.i90) #20
  br label %if.end49

if.end49:                                         ; preds = %do.end47, %aac_adapter_check_health.exit.if.end49_crit_edge
  %scsi_host_ptr.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 49, i32 0, i32 7, i32 1, i32 2
  %41 = ptrtoint ptr %scsi_host_ptr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %scsi_host_ptr.i, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %fcnt.i) #15
  %43 = call ptr @memset(ptr %fcnt.i, i32 0, i32 20)
  call void @scsi_host_busy_iter(ptr noundef %42, ptr noundef nonnull @fib_count_iter, ptr noundef nonnull %fcnt.i) #15
  %44 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pdev.i.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44
  %46 = ptrtoint ptr %fcnt.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %fcnt.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.113, i32 noundef %47) #20
  %llcnt.i = getelementptr inbounds %struct.fib_count_data, ptr %fcnt.i, i32 0, i32 1
  %48 = ptrtoint ptr %llcnt.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %llcnt.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.117, i32 noundef %49) #20
  %ehcnt.i = getelementptr inbounds %struct.fib_count_data, ptr %fcnt.i, i32 0, i32 2
  %50 = ptrtoint ptr %ehcnt.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ehcnt.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.120, i32 noundef %51) #20
  %fwcnt.i = getelementptr inbounds %struct.fib_count_data, ptr %fcnt.i, i32 0, i32 3
  %52 = ptrtoint ptr %fwcnt.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %fwcnt.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.123, i32 noundef %53) #20
  %krlcnt.i = getelementptr inbounds %struct.fib_count_data, ptr %fcnt.i, i32 0, i32 4
  %54 = ptrtoint ptr %krlcnt.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %krlcnt.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.126, i32 noundef %55) #20
  %56 = ptrtoint ptr %fcnt.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %fcnt.i, align 4
  %58 = ptrtoint ptr %llcnt.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %llcnt.i, align 4
  %add.i = add i32 %59, %57
  %60 = ptrtoint ptr %ehcnt.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ehcnt.i, align 4
  %add16.i = add i32 %add.i, %61
  %62 = ptrtoint ptr %fwcnt.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %fwcnt.i, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %fcnt.i) #15
  %add18.i = sub i32 0, %63
  call void @__sanitizer_cov_trace_cmp4(i32 %add16.i, i32 %add18.i)
  %cmp51 = icmp eq i32 %add16.i, %add18.i
  %cond53 = select i1 %cmp51, i32 8194, i32 8195
  ret i32 %cond53
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aac_eh_host_reset(ptr nocapture noundef readonly %cmd) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %supported_options22 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 49, i32 12, i32 11, i32 0, i32 0, i32 0, i32 3
  %4 = ptrtoint ptr %supported_options22 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %supported_options22, align 8
  %and6 = and i32 %5, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %6 = and i32 %5, 20971520
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %entry.if.end32_crit_edge, label %land.lhs.true

entry.if.end32_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

land.lhs.true:                                    ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aac_check_reset to i32))
  %8 = load i32, ptr @aac_check_reset, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.186)
  switch i32 %8, label %land.lhs.true.if.end17_crit_edge [
    i32 0, label %land.lhs.true.if.end32_crit_edge
    i32 -1, label %lor.lhs.false13
  ]

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17

lor.lhs.false13:                                  ; preds = %land.lhs.true
  br i1 %tobool7.not, label %lor.lhs.false13.if.end17_crit_edge, label %lor.lhs.false13.if.end32_crit_edge

lor.lhs.false13.if.end32_crit_edge:               ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

lor.lhs.false13.if.end17_crit_edge:               ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17

if.end17:                                         ; preds = %lor.lhs.false13.if.end17_crit_edge, %land.lhs.true.if.end17_crit_edge
  %call = tail call i32 @aac_reset_adapter(ptr noundef %hostdata, i32 noundef 2, i8 noundef zeroext 3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp15 = icmp eq i32 %call, 0
  %spec.select43 = select i1 %cmp15, i32 8194, i32 8195
  br i1 %cmp15, label %for.cond.preheader, label %if.end17.if.end32_crit_edge

if.end17.if.end32_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

for.cond.preheader:                               ; preds = %if.end17
  %hba_map = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 50, i32 12, i32 19
  br label %for.body23

for.body23:                                       ; preds = %for.inc.for.body23_crit_edge, %for.cond.preheader
  %cid.047 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body23_crit_edge ]
  %devtype = getelementptr [5 x [256 x %struct.aac_hba_map_info]], ptr %hba_map, i32 0, i32 0, i32 %cid.047, i32 1
  %10 = ptrtoint ptr %devtype to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %devtype, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %11)
  %cmp25 = icmp eq i8 %11, 3
  br i1 %cmp25, label %if.then27, label %for.body23.for.inc_crit_edge

for.body23.for.inc_crit_edge:                     ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then27:                                        ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #17
  %reset_state = getelementptr [5 x [256 x %struct.aac_hba_map_info]], ptr %hba_map, i32 0, i32 0, i32 %cid.047, i32 2
  %12 = ptrtoint ptr %reset_state to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %reset_state, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then27, %for.body23.for.inc_crit_edge
  %inc = add nuw nsw i32 %cid.047, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.inc.for.body23.1_crit_edge, label %for.inc.for.body23_crit_edge

for.inc.for.body23_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body23

for.inc.for.body23.1_crit_edge:                   ; preds = %for.inc
  br label %for.body23.1

for.body23.1:                                     ; preds = %for.inc.1.for.body23.1_crit_edge, %for.inc.for.body23.1_crit_edge
  %cid.047.1 = phi i32 [ %inc.1, %for.inc.1.for.body23.1_crit_edge ], [ 0, %for.inc.for.body23.1_crit_edge ]
  %devtype.1 = getelementptr [5 x [256 x %struct.aac_hba_map_info]], ptr %hba_map, i32 0, i32 1, i32 %cid.047.1, i32 1
  %13 = ptrtoint ptr %devtype.1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %devtype.1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %14)
  %cmp25.1 = icmp eq i8 %14, 3
  br i1 %cmp25.1, label %if.then27.1, label %for.body23.1.for.inc.1_crit_edge

for.body23.1.for.inc.1_crit_edge:                 ; preds = %for.body23.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.1

if.then27.1:                                      ; preds = %for.body23.1
  call void @__sanitizer_cov_trace_pc() #17
  %reset_state.1 = getelementptr [5 x [256 x %struct.aac_hba_map_info]], ptr %hba_map, i32 0, i32 1, i32 %cid.047.1, i32 2
  %15 = ptrtoint ptr %reset_state.1 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %reset_state.1, align 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then27.1, %for.body23.1.for.inc.1_crit_edge
  %inc.1 = add nuw nsw i32 %cid.047.1, 1
  %exitcond.1.not = icmp eq i32 %inc.1, 256
  br i1 %exitcond.1.not, label %for.inc.1.for.body23.2_crit_edge, label %for.inc.1.for.body23.1_crit_edge

for.inc.1.for.body23.1_crit_edge:                 ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body23.1

for.inc.1.for.body23.2_crit_edge:                 ; preds = %for.inc.1
  br label %for.body23.2

for.body23.2:                                     ; preds = %for.inc.2.for.body23.2_crit_edge, %for.inc.1.for.body23.2_crit_edge
  %cid.047.2 = phi i32 [ %inc.2, %for.inc.2.for.body23.2_crit_edge ], [ 0, %for.inc.1.for.body23.2_crit_edge ]
  %devtype.2 = getelementptr [5 x [256 x %struct.aac_hba_map_info]], ptr %hba_map, i32 0, i32 2, i32 %cid.047.2, i32 1
  %16 = ptrtoint ptr %devtype.2 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %devtype.2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %17)
  %cmp25.2 = icmp eq i8 %17, 3
  br i1 %cmp25.2, label %if.then27.2, label %for.body23.2.for.inc.2_crit_edge

for.body23.2.for.inc.2_crit_edge:                 ; preds = %for.body23.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.2

if.then27.2:                                      ; preds = %for.body23.2
  call void @__sanitizer_cov_trace_pc() #17
  %reset_state.2 = getelementptr [5 x [256 x %struct.aac_hba_map_info]], ptr %hba_map, i32 0, i32 2, i32 %cid.047.2, i32 2
  %18 = ptrtoint ptr %reset_state.2 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %reset_state.2, align 1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then27.2, %for.body23.2.for.inc.2_crit_edge
  %inc.2 = add nuw nsw i32 %cid.047.2, 1
  %exitcond.2.not = icmp eq i32 %inc.2, 256
  br i1 %exitcond.2.not, label %for.inc.2.for.body23.3_crit_edge, label %for.inc.2.for.body23.2_crit_edge

for.inc.2.for.body23.2_crit_edge:                 ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body23.2

for.inc.2.for.body23.3_crit_edge:                 ; preds = %for.inc.2
  br label %for.body23.3

for.body23.3:                                     ; preds = %for.inc.3.for.body23.3_crit_edge, %for.inc.2.for.body23.3_crit_edge
  %cid.047.3 = phi i32 [ %inc.3, %for.inc.3.for.body23.3_crit_edge ], [ 0, %for.inc.2.for.body23.3_crit_edge ]
  %devtype.3 = getelementptr [5 x [256 x %struct.aac_hba_map_info]], ptr %hba_map, i32 0, i32 3, i32 %cid.047.3, i32 1
  %19 = ptrtoint ptr %devtype.3 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %devtype.3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %20)
  %cmp25.3 = icmp eq i8 %20, 3
  br i1 %cmp25.3, label %if.then27.3, label %for.body23.3.for.inc.3_crit_edge

for.body23.3.for.inc.3_crit_edge:                 ; preds = %for.body23.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.3

if.then27.3:                                      ; preds = %for.body23.3
  call void @__sanitizer_cov_trace_pc() #17
  %reset_state.3 = getelementptr [5 x [256 x %struct.aac_hba_map_info]], ptr %hba_map, i32 0, i32 3, i32 %cid.047.3, i32 2
  %21 = ptrtoint ptr %reset_state.3 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %reset_state.3, align 1
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then27.3, %for.body23.3.for.inc.3_crit_edge
  %inc.3 = add nuw nsw i32 %cid.047.3, 1
  %exitcond.3.not = icmp eq i32 %inc.3, 256
  br i1 %exitcond.3.not, label %for.inc.3.for.body23.4_crit_edge, label %for.inc.3.for.body23.3_crit_edge

for.inc.3.for.body23.3_crit_edge:                 ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body23.3

for.inc.3.for.body23.4_crit_edge:                 ; preds = %for.inc.3
  br label %for.body23.4

for.body23.4:                                     ; preds = %for.inc.4.for.body23.4_crit_edge, %for.inc.3.for.body23.4_crit_edge
  %cid.047.4 = phi i32 [ %inc.4, %for.inc.4.for.body23.4_crit_edge ], [ 0, %for.inc.3.for.body23.4_crit_edge ]
  %devtype.4 = getelementptr [5 x [256 x %struct.aac_hba_map_info]], ptr %hba_map, i32 0, i32 4, i32 %cid.047.4, i32 1
  %22 = ptrtoint ptr %devtype.4 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %devtype.4, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %23)
  %cmp25.4 = icmp eq i8 %23, 3
  br i1 %cmp25.4, label %if.then27.4, label %for.body23.4.for.inc.4_crit_edge

for.body23.4.for.inc.4_crit_edge:                 ; preds = %for.body23.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.4

if.then27.4:                                      ; preds = %for.body23.4
  call void @__sanitizer_cov_trace_pc() #17
  %reset_state.4 = getelementptr [5 x [256 x %struct.aac_hba_map_info]], ptr %hba_map, i32 0, i32 4, i32 %cid.047.4, i32 2
  %24 = ptrtoint ptr %reset_state.4 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %reset_state.4, align 1
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then27.4, %for.body23.4.for.inc.4_crit_edge
  %inc.4 = add nuw nsw i32 %cid.047.4, 1
  %exitcond.4.not = icmp eq i32 %inc.4, 256
  br i1 %exitcond.4.not, label %for.inc.4.if.end32_crit_edge, label %for.inc.4.for.body23.4_crit_edge

for.inc.4.for.body23.4_crit_edge:                 ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body23.4

for.inc.4.if.end32_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

if.end32:                                         ; preds = %for.inc.4.if.end32_crit_edge, %if.end17.if.end32_crit_edge, %lor.lhs.false13.if.end32_crit_edge, %land.lhs.true.if.end32_crit_edge, %entry.if.end32_crit_edge
  %ret.046 = phi i32 [ 8195, %if.end17.if.end32_crit_edge ], [ 8195, %lor.lhs.false13.if.end32_crit_edge ], [ 8195, %land.lhs.true.if.end32_crit_edge ], [ 8195, %entry.if.end32_crit_edge ], [ %spec.select43, %for.inc.4.if.end32_crit_edge ]
  ret i32 %ret.046
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aac_slave_configure(ptr noundef %sdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev, align 8
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %channel.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 17
  %2 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %sub = add i32 %3, -1
  %spec.select294 = select i1 %tobool.not, i32 0, i32 %sub
  %id.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 16
  %4 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %spec.select294)
  %cmp = icmp slt i32 %spec.select294, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %5)
  %cmp3 = icmp slt i32 %5, 256
  %or.cond = select i1 %cmp, i1 %cmp3, i1 false
  br i1 %or.cond, label %land.lhs.true4, label %entry.if.end21_crit_edge

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21

land.lhs.true4:                                   ; preds = %entry
  %sa_firmware = getelementptr inbounds %struct.aac_dev, ptr %hostdata, i32 0, i32 66
  %6 = ptrtoint ptr %sa_firmware to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sa_firmware, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool5.not = icmp eq i8 %7, 0
  br i1 %tobool5.not, label %land.lhs.true4.if.end21_crit_edge, label %if.then

land.lhs.true4.if.end21_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21

if.then:                                          ; preds = %land.lhs.true4
  %hba_map = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 50, i32 12, i32 19
  %devtype7 = getelementptr [5 x [256 x %struct.aac_hba_map_info]], ptr %hba_map, i32 0, i32 %spec.select294, i32 %5, i32 1
  %8 = ptrtoint ptr %devtype7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %devtype7, align 4
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.187)
  switch i8 %9, label %if.then.if.end21_crit_edge [
    i8 3, label %if.end170
    i8 2, label %if.then.if.then163_crit_edge
  ]

if.then.if.then163_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then163

if.then.if.end21_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21

if.end21:                                         ; preds = %if.then.if.end21_crit_edge, %land.lhs.true4.if.end21_crit_edge, %entry.if.end21_crit_edge
  %jbod = getelementptr inbounds %struct.aac_dev, ptr %hostdata, i32 0, i32 54
  %11 = ptrtoint ptr %jbod to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %jbod, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool23.not = icmp eq i8 %12, 0
  br i1 %tobool23.not, label %if.end21.if.end29_crit_edge, label %land.lhs.true24

if.end21.if.end29_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29

land.lhs.true24:                                  ; preds = %if.end21
  %type = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 22
  %13 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp26 = icmp eq i8 %14, 0
  br i1 %cmp26, label %if.then28, label %land.lhs.true24.if.end29_crit_edge

land.lhs.true24.if.end29_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29

if.then28:                                        ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #17
  %removable = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 41
  %15 = ptrtoint ptr %removable to i32
  call void @__asan_loadN_noabort(i32 %15, i32 8)
  %bf.load = load i64, ptr %removable, align 4
  %bf.set = or i64 %bf.load, -9223372036854775808
  store i64 %bf.set, ptr %removable, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %land.lhs.true24.if.end29_crit_edge, %if.end21.if.end29_crit_edge
  %type30 = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 22
  %16 = ptrtoint ptr %type30 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %type30, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp32 = icmp eq i8 %17, 0
  br i1 %cmp32, label %land.lhs.true34, label %if.end29.if.end177.thread_crit_edge

if.end29.if.end177.thread_crit_edge:              ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end177.thread

land.lhs.true34:                                  ; preds = %if.end29
  br i1 %tobool.not, label %land.lhs.true34.if.end61_crit_edge, label %land.lhs.true38

land.lhs.true34.if.end61_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end61

land.lhs.true38:                                  ; preds = %land.lhs.true34
  %18 = ptrtoint ptr %jbod to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %jbod, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool40.not = icmp eq i8 %19, 0
  br i1 %tobool40.not, label %land.lhs.true38.land.lhs.true43_crit_edge, label %lor.lhs.false

land.lhs.true38.land.lhs.true43_crit_edge:        ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true43

lor.lhs.false:                                    ; preds = %land.lhs.true38
  %inq_periph_qual = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 24
  %20 = ptrtoint ptr %inq_periph_qual to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %inq_periph_qual, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool42.not = icmp eq i8 %21, 0
  br i1 %tobool42.not, label %lor.lhs.false.if.end61_crit_edge, label %lor.lhs.false.land.lhs.true43_crit_edge

lor.lhs.false.land.lhs.true43_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true43

lor.lhs.false.if.end61_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end61

land.lhs.true43:                                  ; preds = %lor.lhs.false.land.lhs.true43_crit_edge, %land.lhs.true38.land.lhs.true43_crit_edge
  %raid_scsi_mode = getelementptr inbounds %struct.aac_dev, ptr %hostdata, i32 0, i32 58
  %22 = ptrtoint ptr %raid_scsi_mode to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %raid_scsi_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool44.not = icmp ne i8 %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp47.not = icmp eq i32 %3, 2
  %or.cond295 = select i1 %tobool44.not, i1 %cmp47.not, i1 false
  br i1 %or.cond295, label %land.lhs.true43.if.end61_crit_edge, label %if.then49

land.lhs.true43.if.end61_crit_edge:               ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end61

if.then49:                                        ; preds = %land.lhs.true43
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @expose_physicals to i32))
  %24 = load i32, ptr @expose_physicals, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp50 = icmp eq i32 %24, 0
  br i1 %cmp50, label %if.then49.cleanup192_crit_edge, label %if.end53

if.then49.cleanup192_crit_edge:                   ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup192

if.end53:                                         ; preds = %if.then49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp54 = icmp slt i32 %24, 0
  br i1 %cmp54, label %if.then56, label %if.end53.if.end61_crit_edge

if.end53.if.end61_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end61

if.then56:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #17
  %no_uld_attach = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 41
  %25 = ptrtoint ptr %no_uld_attach to i32
  call void @__asan_loadN_noabort(i32 %25, i32 8)
  %bf.load57 = load i64, ptr %no_uld_attach, align 4
  %bf.set59 = or i64 %bf.load57, 8589934592
  store i64 %bf.set59, ptr %no_uld_attach, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then56, %if.end53.if.end61_crit_edge, %land.lhs.true43.if.end61_crit_edge, %lor.lhs.false.if.end61_crit_edge, %land.lhs.true34.if.end61_crit_edge
  %tagged_supported = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 41
  %26 = ptrtoint ptr %tagged_supported to i32
  call void @__asan_loadN_noabort(i32 %26, i32 8)
  %bf.load62 = load i64, ptr %tagged_supported, align 4
  %27 = and i64 %bf.load62, 4503599627370496
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %27)
  %tobool64.not = icmp eq i64 %27, 0
  br i1 %tobool64.not, label %if.end61.if.end177.thread_crit_edge, label %land.lhs.true70

if.end61.if.end177.thread_crit_edge:              ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end177.thread

land.lhs.true70:                                  ; preds = %if.end61
  %raid_scsi_mode71 = getelementptr inbounds %struct.aac_dev, ptr %hostdata, i32 0, i32 58
  %28 = ptrtoint ptr %raid_scsi_mode71 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %raid_scsi_mode71, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool72.not = icmp eq i8 %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp75.not = icmp ne i32 %3, 2
  %or.cond296.not = select i1 %tobool72.not, i1 true, i1 %cmp75.not
  %30 = and i64 %bf.load62, 8589934592
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %30)
  %tobool83.not = icmp eq i64 %30, 0
  %or.cond297 = select i1 %or.cond296.not, i1 %tobool83.not, i1 false
  br i1 %or.cond297, label %for.cond.preheader, label %land.lhs.true70.if.end177.thread_crit_edge

land.lhs.true70.if.end177.thread_crit_edge:       ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end177.thread

for.cond.preheader:                               ; preds = %land.lhs.true70
  %maximum_num_containers = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 49, i32 0, i32 7, i32 1, i32 3
  %31 = ptrtoint ptr %maximum_num_containers to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %maximum_num_containers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp87301.not = icmp eq i32 %32, 0
  br i1 %cmp87301.not, label %for.cond.preheader.for.cond94.preheader_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.cond94.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond94.preheader

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %fsa_dev = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 49, i32 0, i32 7, i32 1, i32 4, i32 1, i32 1
  %33 = ptrtoint ptr %fsa_dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fsa_dev, align 8
  br label %for.body

for.cond94.preheader:                             ; preds = %for.body.for.cond94.preheader_crit_edge, %for.cond.preheader.for.cond94.preheader_crit_edge
  %num_lsu.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.cond94.preheader_crit_edge ], [ %spec.select, %for.body.for.cond94.preheader_crit_edge ]
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pn304 = load ptr, ptr %1, align 8
  %cmp96.not305 = icmp eq ptr %.pn304, %1
  br i1 %cmp96.not305, label %for.cond94.preheader.common_config_crit_edge, label %for.body98.lr.ph

for.cond94.preheader.common_config_crit_edge:     ; preds = %for.cond94.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %common_config

for.body98.lr.ph:                                 ; preds = %for.cond94.preheader
  %fsa_dev129 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 49, i32 0, i32 7, i32 1, i32 4, i32 1, i32 1
  br label %for.body98

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %cid.0303 = phi i32 [ 0, %for.body.lr.ph ], [ %inc93, %for.body.for.body_crit_edge ]
  %num_lsu.0302 = phi i32 [ 0, %for.body.lr.ph ], [ %spec.select, %for.body.for.body_crit_edge ]
  %valid = getelementptr %struct.fsa_dev_info, ptr %34, i32 %cid.0303, i32 7
  %36 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %valid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool90.not = icmp ne i8 %37, 0
  %inc = zext i1 %tobool90.not to i32
  %spec.select = add i32 %num_lsu.0302, %inc
  %inc93 = add nuw i32 %cid.0303, 1
  %exitcond.not = icmp eq i32 %inc93, %32
  br i1 %exitcond.not, label %for.body.for.cond94.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.body.for.cond94.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond94.preheader

for.body98:                                       ; preds = %for.inc139.for.body98_crit_edge, %for.body98.lr.ph
  %.pn312 = phi ptr [ %.pn304, %for.body98.lr.ph ], [ %.pn, %for.inc139.for.body98_crit_edge ]
  %num_one.0309 = phi i32 [ 0, %for.body98.lr.ph ], [ %num_one.1, %for.inc139.for.body98_crit_edge ]
  %num_lsu.2306 = phi i32 [ %num_lsu.0.lcssa, %for.body98.lr.ph ], [ %num_lsu.3, %for.inc139.for.body98_crit_edge ]
  %tagged_supported99 = getelementptr i8, ptr %.pn312, i32 300
  %38 = ptrtoint ptr %tagged_supported99 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 8)
  %bf.load100 = load i64, ptr %tagged_supported99, align 4
  %39 = and i64 %bf.load100, 4503599627370496
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %39)
  %tobool104.not = icmp eq i64 %39, 0
  br i1 %tobool104.not, label %for.body98.if.else_crit_edge, label %land.lhs.true105

for.body98.if.else_crit_edge:                     ; preds = %for.body98
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

land.lhs.true105:                                 ; preds = %for.body98
  %type106 = getelementptr i8, ptr %.pn312, i32 148
  %40 = ptrtoint ptr %type106 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %type106, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %cmp108 = icmp eq i8 %41, 0
  %42 = and i64 %bf.load100, 8589934592
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %42)
  %tobool123.not = icmp eq i64 %42, 0
  %or.cond318 = select i1 %cmp108, i1 %tobool123.not, i1 false
  br i1 %or.cond318, label %if.then124, label %land.lhs.true105.if.else_crit_edge

land.lhs.true105.if.else_crit_edge:               ; preds = %land.lhs.true105
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

if.then124:                                       ; preds = %land.lhs.true105
  %channel.i264 = getelementptr i8, ptr %.pn312, i32 124
  %43 = ptrtoint ptr %channel.i264 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %channel.i264, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp126.not = icmp eq i32 %44, 0
  br i1 %cmp126.not, label %lor.lhs.false128, label %if.then124.if.then134_crit_edge

if.then124.if.then134_crit_edge:                  ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then134

lor.lhs.false128:                                 ; preds = %if.then124
  %45 = ptrtoint ptr %fsa_dev129 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %fsa_dev129, align 8
  %id.i265 = getelementptr i8, ptr %.pn312, i32 120
  %47 = ptrtoint ptr %id.i265 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %id.i265, align 8
  %valid132 = getelementptr %struct.fsa_dev_info, ptr %46, i32 %48, i32 7
  %49 = ptrtoint ptr %valid132 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %valid132, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool133.not = icmp eq i8 %50, 0
  br i1 %tobool133.not, label %lor.lhs.false128.if.then134_crit_edge, label %lor.lhs.false128.for.inc139_crit_edge

lor.lhs.false128.for.inc139_crit_edge:            ; preds = %lor.lhs.false128
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc139

lor.lhs.false128.if.then134_crit_edge:            ; preds = %lor.lhs.false128
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then134

if.then134:                                       ; preds = %lor.lhs.false128.if.then134_crit_edge, %if.then124.if.then134_crit_edge
  %inc135 = add i32 %num_lsu.2306, 1
  br label %for.inc139

if.else:                                          ; preds = %land.lhs.true105.if.else_crit_edge, %for.body98.if.else_crit_edge
  %inc137 = add i32 %num_one.0309, 1
  br label %for.inc139

for.inc139:                                       ; preds = %if.else, %if.then134, %lor.lhs.false128.for.inc139_crit_edge
  %num_lsu.3 = phi i32 [ %num_lsu.2306, %if.else ], [ %inc135, %if.then134 ], [ %num_lsu.2306, %lor.lhs.false128.for.inc139_crit_edge ]
  %num_one.1 = phi i32 [ %inc137, %if.else ], [ %num_one.0309, %if.then134 ], [ %num_one.0309, %lor.lhs.false128.for.inc139_crit_edge ]
  %51 = ptrtoint ptr %.pn312 to i32
  call void @__asan_load4_noabort(i32 %51)
  %.pn = load ptr, ptr %.pn312, align 8
  %cmp96.not = icmp eq ptr %.pn, %1
  br i1 %cmp96.not, label %for.inc139.common_config_crit_edge, label %for.inc139.for.body98_crit_edge

for.inc139.for.body98_crit_edge:                  ; preds = %for.inc139
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body98

for.inc139.common_config_crit_edge:               ; preds = %for.inc139
  call void @__sanitizer_cov_trace_pc() #17
  br label %common_config

common_config:                                    ; preds = %for.inc139.common_config_crit_edge, %for.cond94.preheader.common_config_crit_edge
  %num_lsu.2.lcssa = phi i32 [ %num_lsu.0.lcssa, %for.cond94.preheader.common_config_crit_edge ], [ %num_lsu.3, %for.inc139.common_config_crit_edge ]
  %num_one.0.lcssa = phi i32 [ 0, %for.cond94.preheader.common_config_crit_edge ], [ %num_one.1, %for.inc139.common_config_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_lsu.2.lcssa)
  %cmp146 = icmp eq i32 %num_lsu.2.lcssa, 0
  %spec.select258 = select i1 %cmp146, i32 1, i32 %num_lsu.2.lcssa
  %can_queue = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 26
  %52 = ptrtoint ptr %can_queue to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %can_queue, align 4
  %sub151 = sub i32 %53, %num_one.0.lcssa
  %div = udiv i32 %sub151, %spec.select258
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp153.not = icmp eq i32 %3, 1
  br i1 %cmp153.not, label %common_config.if.then163_crit_edge, label %common_config.if.end177_crit_edge

common_config.if.end177_crit_edge:                ; preds = %common_config
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end177

common_config.if.then163_crit_edge:               ; preds = %common_config
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then163

if.then163:                                       ; preds = %common_config.if.then163_crit_edge, %if.then.if.then163_crit_edge
  %vendor = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 30
  %54 = ptrtoint ptr %vendor to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %vendor, align 4
  %call164 = tail call i32 @strncmp(ptr noundef %55, ptr noundef nonnull dereferenceable(4) @.str.128, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164)
  %cmp165 = icmp eq i32 %call164, 0
  %. = select i1 %cmp165, i32 32, i32 64
  br label %if.end177

if.end170:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %qd_limit = getelementptr [5 x [256 x %struct.aac_hba_map_info]], ptr %hba_map, i32 0, i32 %spec.select294, i32 %5, i32 3
  %56 = ptrtoint ptr %qd_limit to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %qd_limit, align 2
  %conv15 = zext i16 %57 to i32
  br label %if.end177

if.end177:                                        ; preds = %if.end170, %if.then163, %common_config.if.end177_crit_edge
  %depth.1283 = phi i32 [ %conv15, %if.end170 ], [ %., %if.then163 ], [ %div, %common_config.if.end177_crit_edge ]
  %sa_firmware173 = getelementptr inbounds %struct.aac_dev, ptr %hostdata, i32 0, i32 66
  %58 = ptrtoint ptr %sa_firmware173 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %sa_firmware173, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool175.not = icmp eq i8 %59, 0
  %request_queue = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 1
  %60 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %request_queue, align 4
  %mul = select i1 %tobool175.not, i32 6000, i32 18000
  tail call void @blk_queue_rq_timeout(ptr noundef %61, i32 noundef %mul) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %depth.1283)
  %cmp178 = icmp ugt i32 %depth.1283, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %depth.1283)
  %cmp182 = icmp eq i32 %depth.1283, 0
  br i1 %cmp182, label %if.end177.if.end177.thread_crit_edge, label %if.end177._crit_edge

if.end177._crit_edge:                             ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #17
  br label %62

if.end177.if.end177.thread_crit_edge:             ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end177.thread

if.end177.thread:                                 ; preds = %if.end177.if.end177.thread_crit_edge, %land.lhs.true70.if.end177.thread_crit_edge, %if.end61.if.end177.thread_crit_edge, %if.end29.if.end177.thread_crit_edge
  %cmp178293 = phi i1 [ %cmp178, %if.end177.if.end177.thread_crit_edge ], [ false, %if.end61.if.end177.thread_crit_edge ], [ false, %if.end29.if.end177.thread_crit_edge ], [ false, %land.lhs.true70.if.end177.thread_crit_edge ]
  br label %62

62:                                               ; preds = %if.end177.thread, %if.end177._crit_edge
  %cmp178292 = phi i1 [ %cmp178293, %if.end177.thread ], [ %cmp178, %if.end177._crit_edge ]
  %63 = phi i32 [ 1, %if.end177.thread ], [ %depth.1283, %if.end177._crit_edge ]
  %depth.2 = select i1 %cmp178292, i32 256, i32 %63
  %call187 = tail call i32 @scsi_change_queue_depth(ptr noundef %sdev, i32 noundef %depth.2) #15
  %tagged_supported188 = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 41
  %64 = ptrtoint ptr %tagged_supported188 to i32
  call void @__asan_loadN_noabort(i32 %64, i32 8)
  %bf.load189 = load i64, ptr %tagged_supported188, align 4
  %bf.set191 = or i64 %bf.load189, 4503599627370496
  store i64 %bf.set191, ptr %tagged_supported188, align 4
  br label %cleanup192

cleanup192:                                       ; preds = %62, %if.then49.cleanup192_crit_edge
  %retval.0 = phi i32 [ 0, %62 ], [ -6, %if.then49.cleanup192_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aac_change_queue_depth(ptr noundef %sdev, i32 noundef %depth) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev, align 8
  %channel.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 17
  %2 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %sub = add i32 %3, -1
  %spec.select124 = select i1 %tobool.not, i32 0, i32 %sub
  %id.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 16
  %4 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %spec.select124)
  %cmp = icmp slt i32 %spec.select124, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %5)
  %cmp3 = icmp slt i32 %5, 256
  %or.cond = select i1 %cmp, i1 %cmp3, i1 false
  br i1 %or.cond, label %land.lhs.true4, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true4:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %hba_map = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 50, i32 12, i32 19
  %devtype = getelementptr [5 x [256 x %struct.aac_hba_map_info]], ptr %hba_map, i32 0, i32 %spec.select124, i32 %5, i32 1
  %6 = ptrtoint ptr %devtype to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %devtype, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp6 = icmp ne i8 %7, 3
  br label %if.end

if.end:                                           ; preds = %land.lhs.true4, %entry.if.end_crit_edge
  %tobool70.not = phi i1 [ true, %entry.if.end_crit_edge ], [ %cmp6, %land.lhs.true4 ]
  %tagged_supported = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 41
  %8 = ptrtoint ptr %tagged_supported to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %bf.load = load i64, ptr %tagged_supported, align 4
  %9 = and i64 %bf.load, 4503599627370496
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %tobool8.not = icmp eq i64 %9, 0
  br i1 %tobool8.not, label %if.end.if.else69_crit_edge, label %land.lhs.true9

if.end.if.else69_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else69

land.lhs.true9:                                   ; preds = %if.end
  %type = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 22
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp11 = icmp ne i8 %11, 0
  %tobool.not.not = xor i1 %tobool.not, true
  %brmerge = select i1 %cmp11, i1 true, i1 %tobool.not.not
  br i1 %brmerge, label %land.lhs.true9.if.else69_crit_edge, label %for.cond.preheader

land.lhs.true9.if.else69_crit_edge:               ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else69

for.cond.preheader:                               ; preds = %land.lhs.true9
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn125 = load ptr, ptr %1, align 8
  %cmp21.not126 = icmp eq ptr %.pn125, %1
  br i1 %cmp21.not126, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %if.end39.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %.pn128 = phi ptr [ %.pn, %if.end39.for.body_crit_edge ], [ %.pn125, %for.cond.preheader.for.body_crit_edge ]
  %num.0127 = phi i32 [ %inc40, %if.end39.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %tagged_supported23 = getelementptr i8, ptr %.pn128, i32 300
  %13 = ptrtoint ptr %tagged_supported23 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 8)
  %bf.load24 = load i64, ptr %tagged_supported23, align 4
  %14 = and i64 %bf.load24, 4503599627370496
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %14)
  %tobool28.not = icmp eq i64 %14, 0
  br i1 %tobool28.not, label %for.body.if.end39_crit_edge, label %land.lhs.true29

for.body.if.end39_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end39

land.lhs.true29:                                  ; preds = %for.body
  %type30 = getelementptr i8, ptr %.pn128, i32 148
  %15 = ptrtoint ptr %type30 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %type30, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp32 = icmp eq i8 %16, 0
  br i1 %cmp32, label %land.lhs.true34, label %land.lhs.true29.if.end39_crit_edge

land.lhs.true29.if.end39_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end39

land.lhs.true34:                                  ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #17
  %channel.i123 = getelementptr i8, ptr %.pn128, i32 124
  %17 = ptrtoint ptr %channel.i123 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %channel.i123, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp36 = icmp eq i32 %18, 0
  %inc = zext i1 %cmp36 to i32
  %spec.select119 = add i32 %num.0127, %inc
  br label %if.end39

if.end39:                                         ; preds = %land.lhs.true34, %land.lhs.true29.if.end39_crit_edge, %for.body.if.end39_crit_edge
  %num.1 = phi i32 [ %num.0127, %land.lhs.true29.if.end39_crit_edge ], [ %num.0127, %for.body.if.end39_crit_edge ], [ %spec.select119, %land.lhs.true34 ]
  %inc40 = add i32 %num.1, 1
  %19 = ptrtoint ptr %.pn128 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn = load ptr, ptr %.pn128, align 8
  %cmp21.not = icmp eq ptr %.pn, %1
  br i1 %cmp21.not, label %if.end39.for.end_crit_edge, label %if.end39.for.body_crit_edge

if.end39.for.body_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

if.end39.for.end_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %if.end39.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %num.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %inc40, %if.end39.for.end_crit_edge ]
  %can_queue = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 26
  %20 = ptrtoint ptr %can_queue to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %can_queue, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %num.0.lcssa, i32 %21)
  %cmp46.not = icmp ult i32 %num.0.lcssa, %21
  %sub50 = add i32 %21, -1
  %spec.select120 = select i1 %cmp46.not, i32 %num.0.lcssa, i32 %sub50
  %sub53 = sub i32 %21, %spec.select120
  %22 = tail call i32 @llvm.umin.i32(i32 %sub53, i32 %depth)
  %23 = tail call i32 @llvm.smax.i32(i32 %22, i32 2)
  %24 = tail call i32 @llvm.smin.i32(i32 %23, i32 256)
  %call68 = tail call i32 @scsi_change_queue_depth(ptr noundef %sdev, i32 noundef %24) #15
  br label %cleanup

if.else69:                                        ; preds = %land.lhs.true9.if.else69_crit_edge, %if.end.if.else69_crit_edge
  br i1 %tobool70.not, label %if.else69.if.end80_crit_edge, label %if.then71

if.else69.if.end80_crit_edge:                     ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end80

if.then71:                                        ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #17
  %hba_map72 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 50, i32 12, i32 19
  %qd_limit = getelementptr [5 x [256 x %struct.aac_hba_map_info]], ptr %hba_map72, i32 0, i32 %spec.select124, i32 %5, i32 3
  %25 = ptrtoint ptr %qd_limit to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %qd_limit, align 2
  %conv75 = zext i16 %26 to i32
  br label %if.end80

if.end80:                                         ; preds = %if.then71, %if.else69.if.end80_crit_edge
  %conv75.sink = phi i32 [ %conv75, %if.then71 ], [ 1, %if.else69.if.end80_crit_edge ]
  %call76 = tail call i32 @scsi_change_queue_depth(ptr noundef %sdev, i32 noundef %conv75.sink) #15
  %queue_depth = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 9
  %27 = ptrtoint ptr %queue_depth to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %queue_depth, align 4
  %conv81 = zext i16 %28 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end80, %for.end
  %retval.0 = phi i32 [ %call68, %for.end ], [ %conv81, %if.end80 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aac_biosparm(ptr nocapture noundef readnone %sdev, ptr noundef %bdev, i64 noundef %capacity, ptr nocapture noundef %geom) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 2097151, i64 %capacity)
  %cmp = icmp ugt i64 %capacity, 2097151
  call void @__sanitizer_cov_trace_const_cmp8(i64 4194303, i64 %capacity)
  %cmp1 = icmp ugt i64 %capacity, 4194303
  %. = select i1 %cmp1, i32 255, i32 128
  %.sink238 = select i1 %cmp, i32 %., i32 64
  %.sink = select i1 %cmp1, i32 63, i32 32
  %0 = ptrtoint ptr %geom to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %.sink238, ptr %geom, align 4
  %sectors = getelementptr inbounds %struct.diskparm, ptr %geom, i32 0, i32 1
  %1 = ptrtoint ptr %sectors to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %.sink, ptr %sectors, align 4
  %sectors10 = getelementptr inbounds %struct.diskparm, ptr %geom, i32 0, i32 1
  %mul = mul nuw nsw i32 %.sink, %.sink238
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %capacity)
  %cmp164.i = icmp ult i64 %capacity, 4294967296
  br i1 %cmp164.i, label %if.then168.i, label %if.else174.i, !prof !418

if.then168.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %conv169.i = trunc i64 %capacity to i32
  %div172.i = udiv i32 %conv169.i, %mul
  br label %cap_to_cyls.exit

if.else174.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %2 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul, i64 %capacity) #22, !srcloc !419
  %asmresult1.i.i = extractvalue { i64, i64 } %2, 1
  %extract.t285.i = trunc i64 %asmresult1.i.i to i32
  br label %cap_to_cyls.exit

cap_to_cyls.exit:                                 ; preds = %if.else174.i, %if.then168.i
  %capacity.addr.0.off0.i = phi i32 [ %div172.i, %if.then168.i ], [ %extract.t285.i, %if.else174.i ]
  %cylinders = getelementptr inbounds %struct.diskparm, ptr %geom, i32 0, i32 2
  %3 = ptrtoint ptr %cylinders to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %capacity.addr.0.off0.i, ptr %cylinders, align 4
  %call11 = tail call ptr @scsi_bios_ptable(ptr noundef %bdev) #15
  %tobool.not = icmp eq ptr %call11, null
  br i1 %tobool.not, label %cap_to_cyls.exit.cleanup_crit_edge, label %if.end13

cap_to_cyls.exit.cleanup_crit_edge:               ; preds = %cap_to_cyls.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end13:                                         ; preds = %cap_to_cyls.exit
  %add.ptr = getelementptr i8, ptr %call11, i32 64
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %add.ptr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 21930, i16 %5)
  %cmp14 = icmp eq i16 %5, 21930
  br i1 %cmp14, label %for.body.preheader, label %if.end13.if.end83_crit_edge

if.end13.if.end83_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end83

for.body.preheader:                               ; preds = %if.end13
  %end_head21 = getelementptr inbounds %struct.msdos_partition, ptr %call11, i32 0, i32 5
  %6 = ptrtoint ptr %end_head21 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %end_head21, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.188)
  switch i8 %7, label %if.end46 [
    i8 63, label %for.body.preheader.for.end.sink.split_crit_edge
    i8 127, label %for.body.preheader.if.then34_crit_edge
    i8 -2, label %for.body.preheader.if.then41_crit_edge
  ]

for.body.preheader.if.then41_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then41

for.body.preheader.if.then34_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then34

for.body.preheader.for.end.sink.split_crit_edge:  ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.sink.split

if.then34:                                        ; preds = %if.end46.2.if.then34_crit_edge, %if.end46.1.if.then34_crit_edge, %if.end46.if.then34_crit_edge, %for.body.preheader.if.then34_crit_edge
  br label %for.end.sink.split

if.then41:                                        ; preds = %if.end46.2.if.then41_crit_edge, %if.end46.1.if.then41_crit_edge, %if.end46.if.then41_crit_edge, %for.body.preheader.if.then41_crit_edge
  br label %for.end.sink.split

if.end46:                                         ; preds = %for.body.preheader
  %end_head21.1 = getelementptr %struct.msdos_partition, ptr %call11, i32 1, i32 5
  %9 = ptrtoint ptr %end_head21.1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %end_head21.1, align 1
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.189)
  switch i8 %10, label %if.end46.1 [
    i8 63, label %if.end46.for.end.sink.split_crit_edge
    i8 127, label %if.end46.if.then34_crit_edge
    i8 -2, label %if.end46.if.then41_crit_edge
  ]

if.end46.if.then41_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then41

if.end46.if.then34_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then34

if.end46.for.end.sink.split_crit_edge:            ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.sink.split

if.end46.1:                                       ; preds = %if.end46
  %end_head21.2 = getelementptr %struct.msdos_partition, ptr %call11, i32 2, i32 5
  %12 = ptrtoint ptr %end_head21.2 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %end_head21.2, align 1
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.190)
  switch i8 %13, label %if.end46.2 [
    i8 63, label %if.end46.1.for.end.sink.split_crit_edge
    i8 127, label %if.end46.1.if.then34_crit_edge
    i8 -2, label %if.end46.1.if.then41_crit_edge
  ]

if.end46.1.if.then41_crit_edge:                   ; preds = %if.end46.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then41

if.end46.1.if.then34_crit_edge:                   ; preds = %if.end46.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then34

if.end46.1.for.end.sink.split_crit_edge:          ; preds = %if.end46.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.sink.split

if.end46.2:                                       ; preds = %if.end46.1
  %end_head21.3 = getelementptr %struct.msdos_partition, ptr %call11, i32 3, i32 5
  %15 = ptrtoint ptr %end_head21.3 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %end_head21.3, align 1
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.191)
  switch i8 %16, label %if.end46.2.for.end_crit_edge [
    i8 63, label %if.end46.2.for.end.sink.split_crit_edge
    i8 127, label %if.end46.2.if.then34_crit_edge
    i8 -2, label %if.end46.2.if.then41_crit_edge
  ]

if.end46.2.if.then41_crit_edge:                   ; preds = %if.end46.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then41

if.end46.2.if.then34_crit_edge:                   ; preds = %if.end46.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then34

if.end46.2.for.end.sink.split_crit_edge:          ; preds = %if.end46.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.sink.split

if.end46.2.for.end_crit_edge:                     ; preds = %if.end46.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end.sink.split:                               ; preds = %if.end46.2.for.end.sink.split_crit_edge, %if.end46.1.for.end.sink.split_crit_edge, %if.end46.for.end.sink.split_crit_edge, %if.then41, %if.then34, %for.body.preheader.for.end.sink.split_crit_edge
  %.sink240 = phi i32 [ 255, %if.then41 ], [ 128, %if.then34 ], [ 64, %if.end46.2.for.end.sink.split_crit_edge ], [ 64, %if.end46.1.for.end.sink.split_crit_edge ], [ 64, %if.end46.for.end.sink.split_crit_edge ], [ 64, %for.body.preheader.for.end.sink.split_crit_edge ]
  %.sink239 = phi i32 [ 63, %if.then41 ], [ 32, %if.then34 ], [ 32, %if.end46.2.for.end.sink.split_crit_edge ], [ 32, %if.end46.1.for.end.sink.split_crit_edge ], [ 32, %if.end46.for.end.sink.split_crit_edge ], [ 32, %for.body.preheader.for.end.sink.split_crit_edge ]
  %18 = ptrtoint ptr %geom to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.sink240, ptr %geom, align 4
  %19 = ptrtoint ptr %sectors10 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %.sink239, ptr %sectors10, align 4
  br label %for.end

for.end:                                          ; preds = %for.end.sink.split, %if.end46.2.for.end_crit_edge
  %20 = ptrtoint ptr %geom to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %geom, align 4
  %22 = ptrtoint ptr %sectors10 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sectors10, align 4
  %mul58 = mul i32 %23, %21
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %capacity)
  %cmp164.i226 = icmp ult i64 %capacity, 4294967296
  br i1 %cmp164.i226, label %if.then168.i230, label %if.else174.i233, !prof !418

if.then168.i230:                                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  %conv169.i228 = trunc i64 %capacity to i32
  %div172.i229 = udiv i32 %conv169.i228, %mul58
  br label %cap_to_cyls.exit235

if.else174.i233:                                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  %24 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul58, i64 %capacity) #22, !srcloc !419
  %asmresult1.i.i231 = extractvalue { i64, i64 } %24, 1
  %extract.t285.i232 = trunc i64 %asmresult1.i.i231 to i32
  br label %cap_to_cyls.exit235

cap_to_cyls.exit235:                              ; preds = %if.else174.i233, %if.then168.i230
  %capacity.addr.0.off0.i234 = phi i32 [ %div172.i229, %if.then168.i230 ], [ %extract.t285.i232, %if.else174.i233 ]
  %25 = ptrtoint ptr %cylinders to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %capacity.addr.0.off0.i234, ptr %cylinders, align 4
  br label %if.end83

if.end83:                                         ; preds = %cap_to_cyls.exit235, %if.end13.if.end83_crit_edge
  tail call void @kfree(ptr noundef nonnull %call11) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end83, %cap_to_cyls.exit.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aac_scsi_cmd(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aac_do_ioctl(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @aac_fib_alloc(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aac_hba_send(i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @aac_hba_callback(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aac_fib_complete(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @aac_fib_free(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aac_eh_tmf_lun_reset_fib(ptr nocapture noundef readonly %info, ptr nocapture noundef %fib, i64 noundef %tmf_lun) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_fib_va = getelementptr inbounds %struct.fib, ptr %fib, i32 0, i32 13
  %0 = ptrtoint ptr %hw_fib_va to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_fib_va, align 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 44)
  %tmf1 = getelementptr inbounds %struct.aac_hba_tm_req, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %tmf1 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 8, ptr %tmf1, align 2
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %info, align 4
  %it_nexus = getelementptr inbounds %struct.aac_hba_tm_req, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %it_nexus to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %it_nexus, align 4
  %lun = getelementptr inbounds %struct.aac_hba_tm_req, ptr %1, i32 0, i32 5
  tail call void @int_to_scsilun(i64 noundef %tmf_lun, ptr noundef %lun) #15
  %hw_error_pa = getelementptr inbounds %struct.fib, ptr %fib, i32 0, i32 16
  %7 = ptrtoint ptr %hw_error_pa to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hw_error_pa, align 4
  %error_ptr_hi = getelementptr inbounds %struct.aac_hba_tm_req, ptr %1, i32 0, i32 11
  %9 = ptrtoint ptr %error_ptr_hi to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %error_ptr_hi, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %8)
  %error_ptr_lo = getelementptr inbounds %struct.aac_hba_tm_req, ptr %1, i32 0, i32 10
  %11 = ptrtoint ptr %error_ptr_lo to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %error_ptr_lo, align 4
  %error_length = getelementptr inbounds %struct.aac_hba_tm_req, ptr %1, i32 0, i32 12
  %12 = ptrtoint ptr %error_length to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 131072, ptr %error_length, align 4
  %hbacmd_size = getelementptr inbounds %struct.fib, ptr %fib, i32 0, i32 17
  %13 = ptrtoint ptr %hbacmd_size to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 44, ptr %hbacmd_size, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aac_tmf_callback(ptr nocapture noundef writeonly %context, ptr noundef %fibptr) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_fib_va = getelementptr inbounds %struct.fib, ptr %fibptr, i32 0, i32 13
  %0 = ptrtoint ptr %hw_fib_va to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_fib_va, align 4
  %service_response = getelementptr inbounds %struct.aac_native_hba, ptr %1, i32 0, i32 1, i32 0, i32 4
  %2 = ptrtoint ptr %service_response to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %service_response, align 4
  %switch.tableidx = add i8 %3, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx)
  %4 = icmp ult i8 %switch.tableidx, 4
  %switch.cast = zext i8 %switch.tableidx to i32
  %switch.shiftamt = shl nuw nsw i32 %switch.cast, 3
  %switch.downshift = lshr i32 16711680, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %res.0 = select i1 %4, i8 %switch.masked, i8 -2
  %call = tail call i32 @aac_fib_complete(ptr noundef %fibptr) #15
  %reset_state = getelementptr inbounds %struct.aac_hba_map_info, ptr %context, i32 0, i32 2
  %5 = ptrtoint ptr %reset_state to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %res.0, ptr %reset_state, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @int_to_scsilun(i64 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_host_busy_iter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @fib_count_iter(ptr noundef %scmnd, ptr nocapture noundef %data, i1 noundef zeroext %reserved) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %phase = getelementptr inbounds %struct.scsi_cmnd, ptr %scmnd, i32 0, i32 22, i32 9
  %0 = ptrtoint ptr %phase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %phase, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.192)
  switch i32 %1, label %sw.default [
    i32 262, label %sw.bb
    i32 259, label %sw.bb1
    i32 258, label %sw.bb3
    i32 257, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %fwcnt = getelementptr inbounds %struct.fib_count_data, ptr %data, i32 0, i32 3
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %ehcnt = getelementptr inbounds %struct.fib_count_data, ptr %data, i32 0, i32 2
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %llcnt = getelementptr inbounds %struct.fib_count_data, ptr %data, i32 0, i32 1
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %krlcnt = getelementptr inbounds %struct.fib_count_data, ptr %data, i32 0, i32 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  %krlcnt.sink12 = phi ptr [ %krlcnt, %sw.default ], [ %llcnt, %sw.bb3 ], [ %ehcnt, %sw.bb1 ], [ %fwcnt, %sw.bb ], [ %data, %entry.sw.epilog_crit_edge ]
  %3 = ptrtoint ptr %krlcnt.sink12 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %krlcnt.sink12, align 4
  %inc7 = add i32 %4, 1
  store i32 %inc7, ptr %krlcnt.sink12, align 4
  ret i1 true
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aac_reset_adapter(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_rq_timeout(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_change_queue_depth(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_bios_ptable(ptr noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aac_show_model(ptr noundef %device, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %supplement_adapter_info = getelementptr i8, ptr %device, i32 2000
  %0 = ptrtoint ptr %supplement_adapter_info to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %supplement_adapter_info, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %entry.while.cond_crit_edge

entry.while.cond_crit_edge:                       ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry.while.cond_crit_edge
  %2 = phi i8 [ %.pr, %while.body ], [ %1, %entry.while.cond_crit_edge ]
  %cp.0 = phi ptr [ %incdec.ptr, %while.body ], [ %supplement_adapter_info, %entry.while.cond_crit_edge ]
  %3 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.193)
  switch i8 %2, label %while.body [
    i8 0, label %while.cond.while.cond7.preheader_crit_edge
    i8 32, label %while.cond.while.cond7.preheader_crit_edge24
  ]

while.cond.while.cond7.preheader_crit_edge24:     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond7.preheader

while.cond.while.cond7.preheader_crit_edge:       ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond7.preheader

while.cond7.preheader:                            ; preds = %while.cond.while.cond7.preheader_crit_edge, %while.cond.while.cond7.preheader_crit_edge24
  br label %while.cond7

while.body:                                       ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  %incdec.ptr = getelementptr i8, ptr %cp.0, i32 1
  %4 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %4)
  %.pr = load i8, ptr %incdec.ptr, align 1
  br label %while.cond

while.cond7:                                      ; preds = %while.cond7.while.cond7_crit_edge, %while.cond7.preheader
  %cp.1 = phi ptr [ %incdec.ptr12, %while.cond7.while.cond7_crit_edge ], [ %cp.0, %while.cond7.preheader ]
  %5 = ptrtoint ptr %cp.1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %cp.1, align 1
  %cmp9 = icmp eq i8 %6, 32
  %incdec.ptr12 = getelementptr i8, ptr %cp.1, i32 1
  br i1 %cmp9, label %while.cond7.while.cond7_crit_edge, label %while.cond7.if.end_crit_edge

while.cond7.if.end_crit_edge:                     ; preds = %while.cond7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

while.cond7.while.cond7_crit_edge:                ; preds = %while.cond7
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond7

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %cardtype = getelementptr i8, ptr %device, i32 1832
  %7 = ptrtoint ptr %cardtype to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cardtype, align 8
  %model = getelementptr [65 x %struct.aac_driver_ident], ptr @aac_drivers, i32 0, i32 %8, i32 3
  %9 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %model, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %while.cond7.if.end_crit_edge
  %.sink = phi ptr [ %10, %if.else ], [ %cp.1, %while.cond7.if.end_crit_edge ]
  %call15 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.130, ptr noundef %.sink)
  ret i32 %call15
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aac_show_vendor(ptr noundef %device, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %supplement_adapter_info = getelementptr i8, ptr %device, i32 2000
  %0 = ptrtoint ptr %supplement_adapter_info to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %supplement_adapter_info, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %entry.while.cond_crit_edge

entry.while.cond_crit_edge:                       ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry.while.cond_crit_edge
  %2 = phi i8 [ %.pr, %while.body ], [ %1, %entry.while.cond_crit_edge ]
  %cp.0 = phi ptr [ %incdec.ptr, %while.body ], [ %supplement_adapter_info, %entry.while.cond_crit_edge ]
  %3 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.194)
  switch i8 %2, label %while.body [
    i8 0, label %while.cond.while.end_crit_edge
    i8 32, label %while.cond.while.end_crit_edge20
  ]

while.cond.while.end_crit_edge20:                 ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body:                                       ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  %incdec.ptr = getelementptr i8, ptr %cp.0, i32 1
  %4 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %4)
  %.pr = load i8, ptr %incdec.ptr, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %while.cond.while.end_crit_edge20
  %sub.ptr.lhs.cast = ptrtoint ptr %cp.0 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %supplement_adapter_info to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.63, i32 noundef %sub.ptr.sub, ptr noundef %supplement_adapter_info)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %cardtype = getelementptr i8, ptr %device, i32 1832
  %5 = ptrtoint ptr %cardtype to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cardtype, align 8
  %vname = getelementptr [65 x %struct.aac_driver_ident], ptr @aac_drivers, i32 0, i32 %6, i32 2
  %7 = ptrtoint ptr %vname to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vname, align 4
  %call11 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.130, ptr noundef %8)
  br label %if.end

if.end:                                           ; preds = %if.else, %while.end
  %len.0 = phi i32 [ %call, %while.end ], [ %call11, %if.else ]
  ret i32 %len.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aac_show_flags(ptr nocapture noundef readonly %cdev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %raw_io_interface = getelementptr i8, ptr %cdev, i32 2487
  %0 = ptrtoint ptr %raw_io_interface to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %raw_io_interface, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %raw_io_64 = getelementptr i8, ptr %cdev, i32 2488
  %2 = ptrtoint ptr %raw_io_64 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %raw_io_64, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.133) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %len.0 = phi i32 [ %call, %if.then ], [ 0, %land.lhs.true.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %jbod = getelementptr i8, ptr %cdev, i32 2481
  %4 = ptrtoint ptr %jbod to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %jbod, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  br i1 %tobool4.not, label %if.end.if.end10_crit_edge, label %if.then5

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr6 = getelementptr i8, ptr %buf, i32 %len.0
  %sub7 = sub i32 4096, %len.0
  %call8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr6, i32 noundef %sub7, ptr noundef nonnull @.str.134) #15
  %add9 = add i32 %call8, %len.0
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %if.end.if.end10_crit_edge
  %len.1 = phi i32 [ %add9, %if.then5 ], [ %len.0, %if.end.if.end10_crit_edge ]
  %supported_options2 = getelementptr i8, ptr %cdev, i32 2144
  %6 = ptrtoint ptr %supported_options2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %supported_options2, align 8
  %and = and i32 %7, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.end10.if.end17_crit_edge, label %if.then12

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr13 = getelementptr i8, ptr %buf, i32 %len.1
  %sub14 = sub i32 4096, %len.1
  %call15 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr13, i32 noundef %sub14, ptr noundef nonnull @.str.135) #15
  %add16 = add i32 %call15, %len.1
  br label %if.end17

if.end17:                                         ; preds = %if.then12, %if.end10.if.end17_crit_edge
  %len.2 = phi i32 [ %add16, %if.then12 ], [ %len.1, %if.end10.if.end17_crit_edge ]
  %msi = getelementptr i8, ptr %cdev, i32 2492
  %8 = ptrtoint ptr %msi to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %msi, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool18.not = icmp eq i8 %9, 0
  br i1 %tobool18.not, label %if.end17.if.end24_crit_edge, label %if.then19

if.end17.if.end24_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr20 = getelementptr i8, ptr %buf, i32 %len.2
  %sub21 = sub i32 4096, %len.2
  %call22 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr20, i32 noundef %sub21, ptr noundef nonnull @.str.136) #15
  %add23 = add i32 %call22, %len.2
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %if.end17.if.end24_crit_edge
  %len.3 = phi i32 [ %add23, %if.then19 ], [ %len.2, %if.end17.if.end24_crit_edge ]
  ret i32 %len.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aac_show_kernel_version(ptr nocapture noundef readonly %device, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %kernelrev = getelementptr i8, ptr %device, i32 1936
  %0 = ptrtoint ptr %kernelrev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %kernelrev, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %shr = ashr i32 %2, 24
  %3 = lshr i32 %2, 16
  %and = and i32 %3, 255
  %and3 = and i32 %2, 255
  %kernelbuild = getelementptr i8, ptr %device, i32 1940
  %4 = ptrtoint ptr %kernelbuild to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %kernelbuild, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.138, i32 noundef %shr, i32 noundef %and, i32 noundef %and3, i32 noundef %6)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aac_show_monitor_version(ptr nocapture noundef readonly %device, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %monitorrev = getelementptr i8, ptr %device, i32 1944
  %0 = ptrtoint ptr %monitorrev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %monitorrev, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %shr = ashr i32 %2, 24
  %3 = lshr i32 %2, 16
  %and = and i32 %3, 255
  %and3 = and i32 %2, 255
  %monitorbuild = getelementptr i8, ptr %device, i32 1948
  %4 = ptrtoint ptr %monitorbuild to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %monitorbuild, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.138, i32 noundef %shr, i32 noundef %and, i32 noundef %and3, i32 noundef %6)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aac_show_bios_version(ptr nocapture noundef readonly %device, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %biosrev = getelementptr i8, ptr %device, i32 1960
  %0 = ptrtoint ptr %biosrev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %biosrev, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %shr = ashr i32 %2, 24
  %3 = lshr i32 %2, 16
  %and = and i32 %3, 255
  %and3 = and i32 %2, 255
  %biosbuild = getelementptr i8, ptr %device, i32 1964
  %4 = ptrtoint ptr %biosbuild to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %biosbuild, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.138, i32 noundef %shr, i32 noundef %and, i32 noundef %and3, i32 noundef %6)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aac_show_driver_version(ptr nocapture noundef readnone %device, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.130, ptr noundef nonnull @aac_driver_version)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aac_show_max_channel(ptr nocapture noundef readonly %device, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %max_channel = getelementptr i8, ptr %device, i32 -1056
  %0 = ptrtoint ptr %max_channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_channel, align 8
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.143, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aac_show_max_id(ptr nocapture noundef readonly %device, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %max_id = getelementptr i8, ptr %device, i32 -1052
  %0 = ptrtoint ptr %max_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_id, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.143, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aac_show_reset_adapter(ptr noundef %device, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr i8, ptr %device, i32 936
  %pdev.i.i = getelementptr i8, ptr %device, i32 1588
  %0 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev.i.i, align 4
  %error_state.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 43
  %2 = ptrtoint ptr %error_state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %error_state.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i.not.i.i = icmp eq i32 %3, 1
  br i1 %cmp.i.not.i.i, label %aac_pci_offline.exit.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

aac_pci_offline.exit.i:                           ; preds = %entry
  %handle_pci_error.i.i = getelementptr i8, ptr %device, i32 23628
  %4 = ptrtoint ptr %handle_pci_error.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %handle_pci_error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.i.not.i = icmp eq i32 %5, 0
  br i1 %tobool1.i.not.i, label %aac_adapter_check_health.exit, label %aac_pci_offline.exit.i.if.end_crit_edge, !prof !418

aac_pci_offline.exit.i.if.end_crit_edge:          ; preds = %aac_pci_offline.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

aac_adapter_check_health.exit:                    ; preds = %aac_pci_offline.exit.i
  %adapter_check_health.i = getelementptr i8, ptr %device, i32 1248
  %6 = ptrtoint ptr %adapter_check_health.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter_check_health.i, align 4
  %call3.i = tail call i32 %7(ptr noundef %hostdata) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp = icmp eq i32 %call3.i, 0
  br i1 %cmp, label %land.lhs.true, label %aac_adapter_check_health.exit.if.end_crit_edge

aac_adapter_check_health.exit.if.end_crit_edge:   ; preds = %aac_adapter_check_health.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %aac_adapter_check_health.exit
  call void @__sanitizer_cov_trace_pc() #17
  %in_reset = getelementptr i8, ptr %device, i32 2490
  %8 = ptrtoint ptr %in_reset to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %in_reset, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -16
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %aac_adapter_check_health.exit.if.end_crit_edge, %aac_pci_offline.exit.i.if.end_crit_edge, %entry.if.end_crit_edge
  %tmp1.0 = phi i32 [ %call3.i, %aac_adapter_check_health.exit.if.end_crit_edge ], [ %spec.select, %land.lhs.true ], [ -1, %aac_pci_offline.exit.i.if.end_crit_edge ], [ -1, %entry.if.end_crit_edge ]
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.146, i32 noundef %tmp1.0)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aac_store_reset_adapter(ptr noundef %device, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @capable(i32 noundef 21) #15
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %hostdata.i = getelementptr i8, ptr %device, i32 936
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %1)
  %cmp = icmp eq i8 %1, 33
  %conv3 = zext i1 %cmp to i32
  %call4 = tail call i32 @aac_reset_adapter(ptr noundef %hostdata.i, i32 noundef %conv3, i8 noundef zeroext 3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp511 = icmp slt i32 %call4, 0
  %spec.select = select i1 %cmp511, i32 %call4, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end ], [ -13, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aac_show_raid_level(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -408
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %channel.i = getelementptr i8, ptr %dev, i32 -276
  %2 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %no_uld_attach = getelementptr i8, ptr %dev, i32 -100
  %4 = ptrtoint ptr %no_uld_attach to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %bf.load = load i64, ptr %no_uld_attach, align 4
  %5 = and i64 %bf.load, 8589934592
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool.not = icmp eq i64 %5, 0
  br i1 %tobool.not, label %cond.false, label %if.then.cond.end_crit_edge

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %jbod = getelementptr inbounds %struct.aac_dev, ptr %hostdata, i32 0, i32 54
  %6 = ptrtoint ptr %jbod to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %jbod, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not = icmp eq i8 %7, 0
  br i1 %tobool1.not, label %cond.false.cond.end_crit_edge, label %land.rhs

cond.false.cond.end_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

land.rhs:                                         ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #17
  %type = getelementptr i8, ptr %dev, i32 -252
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp3 = icmp eq i8 %9, 0
  %phi.sel = select i1 %cmp3, ptr @.str.149, ptr @.str.150
  br label %cond.end

cond.end:                                         ; preds = %land.rhs, %cond.false.cond.end_crit_edge, %if.then.cond.end_crit_edge
  %cond5 = phi ptr [ @.str.148, %if.then.cond.end_crit_edge ], [ @.str.150, %cond.false.cond.end_crit_edge ], [ %phi.sel, %land.rhs ]
  %call6 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull %cond5)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %fsa_dev = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 49, i32 0, i32 7, i32 1, i32 4, i32 1, i32 1
  %10 = ptrtoint ptr %fsa_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fsa_dev, align 8
  %id.i = getelementptr i8, ptr %dev, i32 -280
  %12 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id.i, align 8
  %type8 = getelementptr %struct.fsa_dev_info, ptr %11, i32 %13, i32 2
  %14 = ptrtoint ptr %type8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type8, align 8
  %call9 = tail call ptr @get_container_type(i32 noundef %15) #15
  %call10 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.130, ptr noundef %call9)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %cond.end
  %retval.0 = phi i32 [ %call6, %cond.end ], [ %call10, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_container_type(i32 noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aac_show_unique_id(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %channel.i = getelementptr i8, ptr %dev, i32 -276
  %0 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr = getelementptr i8, ptr %dev, i32 -408
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %fsa_dev = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 49, i32 0, i32 7, i32 1, i32 4, i32 1, i32 1
  %4 = ptrtoint ptr %fsa_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fsa_dev, align 8
  %id.i = getelementptr i8, ptr %dev, i32 -280
  %6 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id.i, align 8
  %identifier = getelementptr %struct.fsa_dev_info, ptr %5, i32 %7, i32 14
  %8 = ptrtoint ptr %identifier to i32
  call void @__asan_load1_noabort(i32 %8)
  %sn.sroa.0.0.copyload = load i8, ptr %identifier, align 4
  %sn.sroa.6.0.arraydecay4.sroa_idx = getelementptr inbounds i8, ptr %identifier, i32 1
  %9 = ptrtoint ptr %sn.sroa.6.0.arraydecay4.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %9)
  %sn.sroa.6.0.copyload = load i8, ptr %sn.sroa.6.0.arraydecay4.sroa_idx, align 1
  %sn.sroa.8.0.arraydecay4.sroa_idx = getelementptr inbounds i8, ptr %identifier, i32 2
  %10 = ptrtoint ptr %sn.sroa.8.0.arraydecay4.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %10)
  %sn.sroa.8.0.copyload = load i8, ptr %sn.sroa.8.0.arraydecay4.sroa_idx, align 2
  %sn.sroa.10.0.arraydecay4.sroa_idx = getelementptr inbounds i8, ptr %identifier, i32 3
  %11 = ptrtoint ptr %sn.sroa.10.0.arraydecay4.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %11)
  %sn.sroa.10.0.copyload = load i8, ptr %sn.sroa.10.0.arraydecay4.sroa_idx, align 1
  %sn.sroa.12.0.arraydecay4.sroa_idx = getelementptr inbounds i8, ptr %identifier, i32 4
  %12 = ptrtoint ptr %sn.sroa.12.0.arraydecay4.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %12)
  %sn.sroa.12.0.copyload = load i8, ptr %sn.sroa.12.0.arraydecay4.sroa_idx, align 4
  %sn.sroa.14.0.arraydecay4.sroa_idx = getelementptr inbounds i8, ptr %identifier, i32 5
  %13 = ptrtoint ptr %sn.sroa.14.0.arraydecay4.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %13)
  %sn.sroa.14.0.copyload = load i8, ptr %sn.sroa.14.0.arraydecay4.sroa_idx, align 1
  %sn.sroa.16.0.arraydecay4.sroa_idx = getelementptr inbounds i8, ptr %identifier, i32 6
  %14 = ptrtoint ptr %sn.sroa.16.0.arraydecay4.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %14)
  %sn.sroa.16.0.copyload = load i8, ptr %sn.sroa.16.0.arraydecay4.sroa_idx, align 2
  %sn.sroa.18.0.arraydecay4.sroa_idx = getelementptr inbounds i8, ptr %identifier, i32 7
  %15 = ptrtoint ptr %sn.sroa.18.0.arraydecay4.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %15)
  %sn.sroa.18.0.copyload = load i8, ptr %sn.sroa.18.0.arraydecay4.sroa_idx, align 1
  %sn.sroa.20.0.arraydecay4.sroa_idx = getelementptr inbounds i8, ptr %identifier, i32 8
  %16 = ptrtoint ptr %sn.sroa.20.0.arraydecay4.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %16)
  %sn.sroa.20.0.copyload = load i8, ptr %sn.sroa.20.0.arraydecay4.sroa_idx, align 4
  %sn.sroa.22.0.arraydecay4.sroa_idx = getelementptr inbounds i8, ptr %identifier, i32 9
  %17 = ptrtoint ptr %sn.sroa.22.0.arraydecay4.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %17)
  %sn.sroa.22.0.copyload = load i8, ptr %sn.sroa.22.0.arraydecay4.sroa_idx, align 1
  %sn.sroa.24.0.arraydecay4.sroa_idx = getelementptr inbounds i8, ptr %identifier, i32 10
  %18 = ptrtoint ptr %sn.sroa.24.0.arraydecay4.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %18)
  %sn.sroa.24.0.copyload = load i8, ptr %sn.sroa.24.0.arraydecay4.sroa_idx, align 2
  %sn.sroa.26.0.arraydecay4.sroa_idx = getelementptr inbounds i8, ptr %identifier, i32 11
  %19 = ptrtoint ptr %sn.sroa.26.0.arraydecay4.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %19)
  %sn.sroa.26.0.copyload = load i8, ptr %sn.sroa.26.0.arraydecay4.sroa_idx, align 1
  %sn.sroa.28.0.arraydecay4.sroa_idx = getelementptr inbounds i8, ptr %identifier, i32 12
  %20 = ptrtoint ptr %sn.sroa.28.0.arraydecay4.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %20)
  %sn.sroa.28.0.copyload = load i8, ptr %sn.sroa.28.0.arraydecay4.sroa_idx, align 4
  %sn.sroa.30.0.arraydecay4.sroa_idx = getelementptr inbounds i8, ptr %identifier, i32 13
  %21 = ptrtoint ptr %sn.sroa.30.0.arraydecay4.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %21)
  %sn.sroa.30.0.copyload = load i8, ptr %sn.sroa.30.0.arraydecay4.sroa_idx, align 1
  %sn.sroa.32.0.arraydecay4.sroa_idx = getelementptr inbounds i8, ptr %identifier, i32 14
  %22 = ptrtoint ptr %sn.sroa.32.0.arraydecay4.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %22)
  %sn.sroa.32.0.copyload = load i8, ptr %sn.sroa.32.0.arraydecay4.sroa_idx, align 2
  %sn.sroa.34.0.arraydecay4.sroa_idx = getelementptr inbounds i8, ptr %identifier, i32 15
  %23 = ptrtoint ptr %sn.sroa.34.0.arraydecay4.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %23)
  %sn.sroa.34.0.copyload = load i8, ptr %sn.sroa.34.0.arraydecay4.sroa_idx, align 1
  %phi.cast = zext i8 %sn.sroa.0.0.copyload to i32
  %phi.cast39 = zext i8 %sn.sroa.6.0.copyload to i32
  %phi.cast40 = zext i8 %sn.sroa.8.0.copyload to i32
  %phi.cast41 = zext i8 %sn.sroa.10.0.copyload to i32
  %phi.cast42 = zext i8 %sn.sroa.12.0.copyload to i32
  %phi.cast43 = zext i8 %sn.sroa.14.0.copyload to i32
  %phi.cast44 = zext i8 %sn.sroa.16.0.copyload to i32
  %phi.cast45 = zext i8 %sn.sroa.18.0.copyload to i32
  %phi.cast46 = zext i8 %sn.sroa.20.0.copyload to i32
  %phi.cast47 = zext i8 %sn.sroa.22.0.copyload to i32
  %phi.cast48 = zext i8 %sn.sroa.24.0.copyload to i32
  %phi.cast49 = zext i8 %sn.sroa.26.0.copyload to i32
  %phi.cast50 = zext i8 %sn.sroa.28.0.copyload to i32
  %phi.cast51 = zext i8 %sn.sroa.30.0.copyload to i32
  %phi.cast52 = zext i8 %sn.sroa.32.0.copyload to i32
  %phi.cast53 = zext i8 %sn.sroa.34.0.copyload to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %sn.sroa.0.0 = phi i32 [ %phi.cast, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %sn.sroa.6.0 = phi i32 [ %phi.cast39, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %sn.sroa.8.0 = phi i32 [ %phi.cast40, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %sn.sroa.10.0 = phi i32 [ %phi.cast41, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %sn.sroa.12.0 = phi i32 [ %phi.cast42, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %sn.sroa.14.0 = phi i32 [ %phi.cast43, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %sn.sroa.16.0 = phi i32 [ %phi.cast44, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %sn.sroa.18.0 = phi i32 [ %phi.cast45, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %sn.sroa.20.0 = phi i32 [ %phi.cast46, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %sn.sroa.22.0 = phi i32 [ %phi.cast47, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %sn.sroa.24.0 = phi i32 [ %phi.cast48, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %sn.sroa.26.0 = phi i32 [ %phi.cast49, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %sn.sroa.28.0 = phi i32 [ %phi.cast50, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %sn.sroa.30.0 = phi i32 [ %phi.cast51, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %sn.sroa.32.0 = phi i32 [ %phi.cast52, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %sn.sroa.34.0 = phi i32 [ %phi.cast53, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %call36 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 34, ptr noundef nonnull @.str.152, i32 noundef %sn.sroa.0.0, i32 noundef %sn.sroa.6.0, i32 noundef %sn.sroa.8.0, i32 noundef %sn.sroa.10.0, i32 noundef %sn.sroa.12.0, i32 noundef %sn.sroa.14.0, i32 noundef %sn.sroa.16.0, i32 noundef %sn.sroa.18.0, i32 noundef %sn.sroa.20.0, i32 noundef %sn.sroa.22.0, i32 noundef %sn.sroa.24.0, i32 noundef %sn.sroa.26.0, i32 noundef %sn.sroa.28.0, i32 noundef %sn.sroa.30.0, i32 noundef %sn.sroa.32.0, i32 noundef %sn.sroa.34.0)
  ret i32 %call36
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aac_cfg_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call zeroext i1 @capable(i32 noundef 17) #15
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %2 = inttoptr i32 %arg to ptr
  %call1 = tail call i32 @aac_do_ioctl(ptr noundef %1, i32 noundef %cmd, ptr noundef %2) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aac_cfg_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %0 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %1, 1048575
  tail call void @mutex_lock_nested(ptr noundef nonnull @aac_mutex, i32 noundef 0) #15
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %aac.0.in = phi ptr [ @aac_devices, %entry ], [ %aac.0, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %aac.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %aac.0 = load ptr, ptr %aac.0.in, align 4
  %cmp.not = icmp eq ptr %aac.0, @aac_devices
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %for.cond
  %id = getelementptr inbounds %struct.aac_dev, ptr %aac.0, i32 0, i32 2
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 4
  %cmp2 = icmp eq i32 %4, %and.i
  br i1 %cmp2, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %5 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %aac.0, ptr %private_data, align 4
  br label %for.end

for.end:                                          ; preds = %if.then, %for.cond.for.end_crit_edge
  %err.0 = phi i32 [ 0, %if.then ], [ -19, %for.cond.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @aac_mutex) #15
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_add_host_with_dma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aac_send_shutdown(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_msi(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_msix(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_remove_host(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_host_block(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aac_pci_error_detected(ptr noundef %pdev, i32 noundef %error) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.158, i32 noundef %error) #20
  %2 = zext i32 %error to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.195)
  switch i32 %error, label %sw.epilog [
    i32 1, label %entry.cleanup_crit_edge
    i32 2, label %sw.bb2
    i32 3, label %sw.bb6
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %handle_pci_error = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 10, i32 49, i32 0, i32 7, i32 1
  %3 = ptrtoint ptr %handle_pci_error to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %handle_pci_error, align 4
  %call3 = tail call i32 @scsi_host_block(ptr noundef %1) #15
  %safw_rescan_work.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 49, i32 0, i32 7, i32 1, i32 4, i32 3
  %call.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %safw_rescan_work.i) #15
  %src_reinit_aif_worker.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 49, i32 9, i32 1, i32 4, i32 7
  %call1.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %src_reinit_aif_worker.i) #15
  tail call void @scsi_host_complete_all_commands(ptr noundef %1, i32 noundef 1) #15
  %adapter_disable_int.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 13, i32 5
  %4 = ptrtoint ptr %adapter_disable_int.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adapter_disable_int.i, align 4
  tail call void %5(ptr noundef %hostdata.i) #15
  tail call void @aac_free_irq(ptr noundef %hostdata.i) #15
  %call4 = tail call i32 @pci_disable_pcie_error_reporting(ptr noundef %pdev) #15
  %adapter_ioremap = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 13, i32 11
  %6 = ptrtoint ptr %adapter_ioremap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter_ioremap, align 4
  %call5 = tail call i32 %7(ptr noundef %hostdata.i, i32 noundef 0) #15
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %handle_pci_error7 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 10, i32 49, i32 0, i32 7, i32 1
  %8 = ptrtoint ptr %handle_pci_error7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %handle_pci_error7, align 4
  tail call void @scsi_host_complete_all_commands(ptr noundef %1, i32 noundef 1) #15
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb6, %sw.bb2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 3, %sw.epilog ], [ 4, %sw.bb6 ], [ 3, %sw.bb2 ], [ 2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aac_pci_mmio_enabled(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.160) #20
  ret i32 3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aac_pci_slot_reset(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.162) #20
  tail call void @pci_restore_state(ptr noundef %pdev) #15
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end2

do.end2:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.165) #20
  br label %do.end12

if.end:                                           ; preds = %entry
  tail call void @pci_set_master(ptr noundef %pdev) #15
  %call4 = tail call i32 @pci_enable_device_mem(ptr noundef %pdev) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end.return_crit_edge, label %do.end8

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.169) #20
  br label %do.end12

do.end12:                                         ; preds = %do.end8, %do.end2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.172) #20
  br label %return

return:                                           ; preds = %do.end12, %if.end.return_crit_edge
  %retval.0 = phi i32 [ 4, %do.end12 ], [ 5, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aac_pci_resume(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %adapter_ioremap = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 13, i32 11
  %2 = ptrtoint ptr %adapter_ioremap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter_ioremap, align 4
  %base_size = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 13, i32 13, i32 1, i32 4, i32 3
  %4 = ptrtoint ptr %base_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base_size, align 8
  %call2 = tail call i32 %3(ptr noundef %hostdata.i, i32 noundef %5) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.end12_crit_edge, label %do.end

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

do.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.174) #20
  %comm_interface = getelementptr inbounds %struct.aac_dev, ptr %hostdata.i, i32 0, i32 59
  %6 = ptrtoint ptr %comm_interface to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %comm_interface, align 2
  %7 = ptrtoint ptr %adapter_ioremap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adapter_ioremap, align 4
  %call5 = tail call i32 %8(ptr noundef %hostdata.i, i32 noundef 8192) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %do.end.if.end12_crit_edge, label %do.end10

do.end.if.end12_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

do.end10:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.177) #20
  br label %cleanup

if.end12:                                         ; preds = %do.end.if.end12_crit_edge, %entry.if.end12_crit_edge
  tail call void @msleep(i32 noundef 10000) #15
  %call13 = tail call fastcc i32 @aac_acquire_resources(ptr noundef %hostdata.i)
  %adapter_shutdown = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 10, i32 49, i32 0, i32 7, i32 0, i32 3, i32 7
  %9 = ptrtoint ptr %adapter_shutdown to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %adapter_shutdown, align 8
  %handle_pci_error = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 10, i32 49, i32 0, i32 7, i32 1
  %10 = ptrtoint ptr %handle_pci_error to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %handle_pci_error, align 4
  %call14 = tail call i32 @scsi_host_unblock(ptr noundef %1, i32 noundef 2) #15
  %call15 = tail call i32 @aac_scan_host(ptr noundef %hostdata.i) #15
  %call16 = tail call i32 @pci_save_state(ptr noundef %pdev) #15
  %dev20 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.180) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_host_complete_all_commands(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_disable_pcie_error_reporting(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @aac_free_irq(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_restore_state(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device_mem(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aac_acquire_resources(ptr noundef %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 45
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %OMR35 = getelementptr inbounds %struct.src_mu_registers, ptr %1, i32 0, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %OMR35) #15, !srcloc !420
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !421
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %2)
  %3 = icmp sgt i32 %2, -2
  br i1 %3, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  tail call void @msleep(i32 noundef 20) #15
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 8
  %OMR = getelementptr inbounds %struct.src_mu_registers, ptr %5, i32 0, i32 12
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %OMR) #15, !srcloc !420
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !421
  %7 = icmp sgt i32 %6, -2
  br i1 %7, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %adapter_disable_int = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17, i32 2
  %8 = ptrtoint ptr %adapter_disable_int to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adapter_disable_int, align 4
  tail call void %9(ptr noundef %dev) #15
  %adapter_enable_int = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17, i32 3
  %10 = ptrtoint ptr %adapter_enable_int to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter_enable_int, align 4
  tail call void %11(ptr noundef %dev) #15
  %pdev.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 30
  %12 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev.i, align 4
  %device1.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %device1.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %device1.i, align 2
  %16 = add i16 %15, -654
  call void @__sanitizer_cov_trace_const_cmp2(i16 -3, i16 %16)
  %switch.i = icmp ult i16 %16, -3
  br i1 %switch.i, label %while.end.if.end_crit_edge, label %if.then

while.end.if.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @aac_define_int_mode(ptr noundef %dev) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end.if.end_crit_edge
  %msi_enabled = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 76
  %17 = ptrtoint ptr %msi_enabled to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %msi_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool5.not = icmp eq i32 %18, 0
  br i1 %tobool5.not, label %if.end.if.end7_crit_edge, label %if.then6

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @aac_src_access_devreg(ptr noundef %dev, i32 noundef 2) #15
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  %call8 = tail call i32 @aac_acquire_irq(ptr noundef %dev) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %19 = ptrtoint ptr %adapter_enable_int to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %adapter_enable_int, align 4
  tail call void %20(ptr noundef %dev) #15
  tail call void @aac_fib_vector_assign(ptr noundef %dev) #15
  %sync_mode = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 70
  %21 = ptrtoint ptr %sync_mode to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sync_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool14.not = icmp eq i32 %22, 0
  br i1 %tobool14.not, label %if.then15, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  %max_msix = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 74
  %23 = ptrtoint ptr %max_msix to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_msix, align 8
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %init = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 23
  %26 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %init, align 8
  %no_of_msix_vectors = getelementptr inbounds %struct._r7, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %no_of_msix_vectors to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %25, ptr %no_of_msix_vectors, align 4
  %adapter_start = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17, i32 7
  %29 = ptrtoint ptr %adapter_start to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %adapter_start, align 4
  tail call void %30(ptr noundef %dev) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end11.cleanup_crit_edge, %if.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then15 ], [ 0, %if.end11.cleanup_crit_edge ], [ -1, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_host_unblock(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @aac_define_int_mode(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @aac_src_access_devreg(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aac_acquire_irq(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @aac_fib_vector_assign(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aac_suspend(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %call1 = tail call i32 @scsi_host_block(ptr noundef %1) #15
  %safw_rescan_work.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 49, i32 0, i32 7, i32 1, i32 4, i32 3
  %call.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %safw_rescan_work.i) #15
  %src_reinit_aif_worker.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 49, i32 9, i32 1, i32 4, i32 7
  %call1.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %src_reinit_aif_worker.i) #15
  %call2 = tail call i32 @aac_send_shutdown(ptr noundef %hostdata) #15
  %adapter_disable_int.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 13, i32 5
  %2 = ptrtoint ptr %adapter_disable_int.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter_disable_int.i, align 4
  tail call void %3(ptr noundef %hostdata) #15
  tail call void @aac_free_irq(ptr noundef %hostdata) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aac_resume(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %call1 = tail call fastcc i32 @aac_acquire_resources(ptr noundef %hostdata)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %adapter_shutdown = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 10, i32 49, i32 0, i32 7, i32 0, i32 3, i32 7
  %2 = ptrtoint ptr %adapter_shutdown to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %adapter_shutdown, align 8
  %call2 = tail call i32 @scsi_host_unblock(ptr noundef %1, i32 noundef 2) #15
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %name = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 1
  %3 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name, align 8
  %id = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 1, i32 1
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.182, ptr noundef %4, i32 noundef %6) #20
  tail call void @scsi_host_put(ptr noundef %1) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end
  %retval.0 = phi i32 [ -19, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 214)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 214)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { argmemonly nofree nounwind readonly willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { nobuiltin nounwind }
attributes #19 = { nobuiltin }
attributes #20 = { cold nounwind }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !156, !157, !158, !159, !160, !161, !163, !164, !165, !167, !168, !170, !171, !173, !174, !176, !177, !178, !179, !181, !182, !183, !184, !186, !187, !188, !190, !191, !192, !194, !195, !196, !198, !200, !202, !204, !205, !206, !207, !209, !210, !211, !213, !214, !215, !217, !218, !219, !220, !222, !223, !224, !225, !227, !228, !229, !230, !232, !233, !234, !236, !237, !238, !239, !240, !242, !243, !244, !246, !247, !248, !250, !251, !252, !254, !255, !256, !258, !260, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !343, !344, !345, !347, !349, !350, !351, !353, !355, !357, !358, !359, !360, !362, !363, !364, !365, !367, !368, !369, !370, !372, !373, !374, !375, !377, !378, !379, !381, !382, !383, !385, !386, !387, !388, !390, !391, !392, !394, !395, !396, !398, !400, !401, !402, !403, !405, !406, !407}
!llvm.module.flags = !{!408, !409, !410, !411, !412, !413, !414, !415}
!llvm.ident = !{!416}

!0 = !{ptr @__UNIQUE_ID_author308, !1, !"__UNIQUE_ID_author308", i1 false, i1 false}
!1 = !{!"../drivers/scsi/aacraid/linit.c", i32 62, i32 1}
!2 = !{ptr @__UNIQUE_ID_description309, !3, !"__UNIQUE_ID_description309", i1 false, i1 false}
!3 = !{!"../drivers/scsi/aacraid/linit.c", i32 63, i32 1}
!4 = !{ptr @__UNIQUE_ID_file310, !5, !"__UNIQUE_ID_file310", i1 false, i1 false}
!5 = !{!"../drivers/scsi/aacraid/linit.c", i32 66, i32 1}
!6 = !{ptr @__UNIQUE_ID_license311, !5, !"__UNIQUE_ID_license311", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_version312, !8, !"__UNIQUE_ID_version312", i1 false, i1 false}
!8 = !{!"../drivers/scsi/aacraid/linit.c", i32 67, i32 1}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__modver_attr, !8, !"__modver_attr", i1 false, i1 false}
!13 = !{ptr @aac_driver_version, !14, !"aac_driver_version", i1 false, i1 false}
!14 = !{!"../drivers/scsi/aacraid/linit.c", i32 72, i32 6}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/scsi/aacraid/linit.c", i32 2071, i32 36}
!17 = !{ptr @__initcall__kmod_aacraid__315_2075_aac_init6, !18, !"__initcall__kmod_aacraid__315_2075_aac_init6", i1 false, i1 false}
!18 = !{!"../drivers/scsi/aacraid/linit.c", i32 2075, i32 1}
!19 = !{ptr @__exitcall_aac_exit, !20, !"__exitcall_aac_exit", i1 false, i1 false}
!20 = !{!"../drivers/scsi/aacraid/linit.c", i32 2076, i32 1}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/scsi/aacraid/linit.c", i32 161, i32 17}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/scsi/aacraid/linit.c", i32 161, i32 29}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/scsi/aacraid/linit.c", i32 161, i32 41}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/scsi/aacraid/linit.c", i32 170, i32 29}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/scsi/aacraid/linit.c", i32 170, i32 41}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/scsi/aacraid/linit.c", i32 171, i32 41}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/scsi/aacraid/linit.c", i32 172, i32 41}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/scsi/aacraid/linit.c", i32 173, i32 41}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/scsi/aacraid/linit.c", i32 175, i32 29}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/scsi/aacraid/linit.c", i32 175, i32 41}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/scsi/aacraid/linit.c", i32 176, i32 41}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/scsi/aacraid/linit.c", i32 178, i32 41}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/scsi/aacraid/linit.c", i32 179, i32 41}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/scsi/aacraid/linit.c", i32 180, i32 41}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/scsi/aacraid/linit.c", i32 181, i32 41}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/scsi/aacraid/linit.c", i32 182, i32 42}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/scsi/aacraid/linit.c", i32 183, i32 42}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/scsi/aacraid/linit.c", i32 184, i32 42}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/scsi/aacraid/linit.c", i32 185, i32 42}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/scsi/aacraid/linit.c", i32 186, i32 42}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/scsi/aacraid/linit.c", i32 187, i32 30}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/scsi/aacraid/linit.c", i32 187, i32 42}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/scsi/aacraid/linit.c", i32 188, i32 42}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/scsi/aacraid/linit.c", i32 189, i32 42}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/scsi/aacraid/linit.c", i32 190, i32 42}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/scsi/aacraid/linit.c", i32 191, i32 42}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/scsi/aacraid/linit.c", i32 192, i32 41}
!75 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/scsi/aacraid/linit.c", i32 193, i32 41}
!77 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/scsi/aacraid/linit.c", i32 194, i32 42}
!79 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/scsi/aacraid/linit.c", i32 195, i32 42}
!81 = !{ptr @.str.34, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/scsi/aacraid/linit.c", i32 196, i32 42}
!83 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/scsi/aacraid/linit.c", i32 197, i32 41}
!85 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/scsi/aacraid/linit.c", i32 198, i32 41}
!87 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/scsi/aacraid/linit.c", i32 199, i32 41}
!89 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/scsi/aacraid/linit.c", i32 200, i32 41}
!91 = !{ptr @.str.39, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/scsi/aacraid/linit.c", i32 201, i32 41}
!93 = !{ptr @.str.40, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/scsi/aacraid/linit.c", i32 202, i32 41}
!95 = !{ptr @.str.41, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/scsi/aacraid/linit.c", i32 203, i32 41}
!97 = !{ptr @.str.42, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/scsi/aacraid/linit.c", i32 204, i32 41}
!99 = !{ptr @.str.43, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/scsi/aacraid/linit.c", i32 205, i32 41}
!101 = !{ptr @.str.44, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/scsi/aacraid/linit.c", i32 206, i32 41}
!103 = !{ptr @.str.45, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/scsi/aacraid/linit.c", i32 207, i32 17}
!105 = !{ptr @.str.46, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/scsi/aacraid/linit.c", i32 207, i32 29}
!107 = !{ptr @.str.47, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/scsi/aacraid/linit.c", i32 207, i32 41}
!109 = !{ptr @.str.48, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/scsi/aacraid/linit.c", i32 208, i32 42}
!111 = !{ptr @.str.49, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/scsi/aacraid/linit.c", i32 209, i32 42}
!113 = !{ptr @.str.50, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/scsi/aacraid/linit.c", i32 210, i32 41}
!115 = !{ptr @.str.51, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/scsi/aacraid/linit.c", i32 211, i32 41}
!117 = !{ptr @.str.52, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/scsi/aacraid/linit.c", i32 212, i32 41}
!119 = !{ptr @.str.53, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/scsi/aacraid/linit.c", i32 213, i32 42}
!121 = !{ptr @.str.54, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/scsi/aacraid/linit.c", i32 215, i32 41}
!123 = !{ptr @.str.55, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/scsi/aacraid/linit.c", i32 216, i32 41}
!125 = !{ptr @.str.56, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/scsi/aacraid/linit.c", i32 217, i32 41}
!127 = !{ptr @.str.57, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/scsi/aacraid/linit.c", i32 219, i32 17}
!129 = !{ptr @.str.58, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/scsi/aacraid/linit.c", i32 219, i32 29}
!131 = !{ptr @.str.59, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/scsi/aacraid/linit.c", i32 219, i32 41}
!133 = !{ptr @.str.60, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/scsi/aacraid/linit.c", i32 221, i32 41}
!135 = !{ptr @.str.61, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/scsi/aacraid/linit.c", i32 225, i32 42}
!137 = !{ptr @aac_drivers, !138, !"aac_drivers", i1 false, i1 false}
!138 = !{!"../drivers/scsi/aacraid/linit.c", i32 160, i32 32}
!139 = !{ptr @.str.62, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/scsi/aacraid/linit.c", i32 1310, i32 27}
!141 = !{ptr @.str.63, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/scsi/aacraid/linit.c", i32 1316, i32 27}
!143 = !{ptr @.str.64, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/scsi/aacraid/linit.c", i32 1419, i32 11}
!145 = !{ptr @aac_serial_number, !146, !"aac_serial_number", i1 false, i1 false}
!146 = !{!"../drivers/scsi/aacraid/linit.c", i32 1417, i32 32}
!147 = !{ptr @aac_cfg_major, !148, !"aac_cfg_major", i1 false, i1 false}
!148 = !{!"../drivers/scsi/aacraid/linit.c", i32 71, i32 12}
!149 = !{ptr @aac_pci_driver, !150, !"aac_pci_driver", i1 false, i1 false}
!150 = !{!"../drivers/scsi/aacraid/linit.c", i32 2041, i32 26}
!151 = !{ptr @aac_pci_tbl, !152, !"aac_pci_tbl", i1 false, i1 false}
!152 = !{!"../drivers/scsi/aacraid/linit.c", i32 80, i32 35}
!153 = !{ptr @.str.65, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/scsi/aacraid/linit.c", i32 1611, i32 4}
!155 = !{ptr @.str.66, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @.str.67, !154, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @.str.68, !154, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.69, !154, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @aac_probe_one._entry, !154, !"_entry", i1 false, i1 false}
!160 = !{ptr @aac_probe_one._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.71, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/scsi/aacraid/linit.c", i32 1630, i32 3}
!163 = !{ptr @aac_probe_one._entry.70, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @aac_probe_one._entry_ptr.72, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @aac_probe_one.__key, !166, !"__key", i1 false, i1 false}
!166 = !{!"../drivers/scsi/aacraid/linit.c", i32 1670, i32 2}
!167 = !{ptr @.str.73, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @aac_probe_one.__key.74, !169, !"__key", i1 false, i1 false}
!169 = !{!"../drivers/scsi/aacraid/linit.c", i32 1672, i32 2}
!170 = !{ptr @.str.75, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @aac_probe_one.__key.76, !172, !"__key", i1 false, i1 false}
!172 = !{!"../drivers/scsi/aacraid/linit.c", i32 1673, i32 2}
!173 = !{ptr @.str.77, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @aac_probe_one.__key.78, !175, !"__key", i1 false, i1 false}
!175 = !{!"../drivers/scsi/aacraid/linit.c", i32 1675, i32 2}
!176 = !{ptr @.str.79, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @aac_probe_one.__key.80, !175, !"__key", i1 false, i1 false}
!178 = !{ptr @.str.81, !175, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @aac_probe_one.__key.82, !180, !"__key", i1 false, i1 false}
!180 = !{!"../drivers/scsi/aacraid/linit.c", i32 1676, i32 2}
!181 = !{ptr @.str.83, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @aac_probe_one.__key.84, !180, !"__key", i1 false, i1 false}
!183 = !{ptr @.str.85, !180, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @.str.87, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/scsi/aacraid/linit.c", i32 1689, i32 4}
!186 = !{ptr @aac_probe_one._entry.86, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @aac_probe_one._entry_ptr.88, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.90, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/scsi/aacraid/linit.c", i32 1695, i32 4}
!190 = !{ptr @aac_probe_one._entry.89, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @aac_probe_one._entry_ptr.91, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.93, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/scsi/aacraid/linit.c", i32 1707, i32 3}
!194 = !{ptr @aac_probe_one._entry.92, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @aac_probe_one._entry_ptr.94, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @aac_devices, !197, !"aac_devices", i1 false, i1 false}
!197 = !{!"../drivers/scsi/aacraid/linit.c", i32 70, i32 8}
!198 = !{ptr @.str.95, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/scsi/aacraid/linit.c", i32 1481, i32 13}
!200 = !{ptr @aac_driver_template, !201, !"aac_driver_template", i1 false, i1 false}
!201 = !{!"../drivers/scsi/aacraid/linit.c", i32 1479, i32 34}
!202 = !{ptr @.str.96, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/scsi/aacraid/linit.c", i32 701, i32 3}
!204 = !{ptr @.str.97, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @aac_eh_abort._entry, !203, !"_entry", i1 false, i1 false}
!206 = !{ptr @aac_eh_abort._entry_ptr, !203, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.99, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/scsi/aacraid/linit.c", i32 755, i32 4}
!209 = !{ptr @aac_eh_abort._entry.98, !208, !"_entry", i1 false, i1 false}
!210 = !{ptr @aac_eh_abort._entry_ptr.100, !208, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.102, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/scsi/aacraid/linit.c", i32 758, i32 3}
!213 = !{ptr @aac_eh_abort._entry.101, !212, !"_entry", i1 false, i1 false}
!214 = !{ptr @aac_eh_abort._entry_ptr.103, !212, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.104, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/scsi/aacraid/linit.c", i32 927, i32 2}
!217 = !{ptr @.str.105, !216, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @aac_eh_dev_reset._entry, !216, !"_entry", i1 false, i1 false}
!219 = !{ptr @aac_eh_dev_reset._entry_ptr, !216, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.106, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/scsi/aacraid/linit.c", i32 990, i32 2}
!222 = !{ptr @.str.107, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @aac_eh_target_reset._entry, !221, !"_entry", i1 false, i1 false}
!224 = !{ptr @aac_eh_target_reset._entry_ptr, !221, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.108, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/scsi/aacraid/linit.c", i32 1066, i32 2}
!227 = !{ptr @.str.109, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @aac_eh_bus_reset._entry, !226, !"_entry", i1 false, i1 false}
!229 = !{ptr @aac_eh_bus_reset._entry_ptr, !226, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.111, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/scsi/aacraid/linit.c", i32 1073, i32 3}
!232 = !{ptr @aac_eh_bus_reset._entry.110, !231, !"_entry", i1 false, i1 false}
!233 = !{ptr @aac_eh_bus_reset._entry_ptr.112, !231, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.113, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/scsi/aacraid/linit.c", i32 672, i32 2}
!236 = !{ptr @.str.114, !235, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @.str.115, !235, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @get_num_of_incomplete_fibs._entry, !235, !"_entry", i1 false, i1 false}
!239 = !{ptr @get_num_of_incomplete_fibs._entry_ptr, !235, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.117, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/scsi/aacraid/linit.c", i32 673, i32 2}
!242 = !{ptr @get_num_of_incomplete_fibs._entry.116, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @get_num_of_incomplete_fibs._entry_ptr.118, !241, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.120, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/scsi/aacraid/linit.c", i32 674, i32 2}
!246 = !{ptr @get_num_of_incomplete_fibs._entry.119, !245, !"_entry", i1 false, i1 false}
!247 = !{ptr @get_num_of_incomplete_fibs._entry_ptr.121, !245, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.123, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/scsi/aacraid/linit.c", i32 675, i32 2}
!250 = !{ptr @get_num_of_incomplete_fibs._entry.122, !249, !"_entry", i1 false, i1 false}
!251 = !{ptr @get_num_of_incomplete_fibs._entry_ptr.124, !249, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.126, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/scsi/aacraid/linit.c", i32 676, i32 2}
!254 = !{ptr @get_num_of_incomplete_fibs._entry.125, !253, !"_entry", i1 false, i1 false}
!255 = !{ptr @get_num_of_incomplete_fibs._entry_ptr.127, !253, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.128, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/scsi/aacraid/linit.c", i32 481, i32 29}
!258 = !{ptr @aac_host_groups, !259, !"aac_host_groups", i1 false, i1 false}
!259 = !{!"../drivers/scsi/aacraid/linit.c", i32 1462, i32 1}
!260 = !{ptr @aac_host_group, !259, !"aac_host_group", i1 false, i1 false}
!261 = !{ptr @aac_host_attrs, !262, !"aac_host_attrs", i1 false, i1 false}
!262 = !{!"../drivers/scsi/aacraid/linit.c", i32 1447, i32 26}
!263 = !{ptr @.str.129, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/scsi/aacraid/linit.c", i32 1370, i32 11}
!265 = !{ptr @aac_model, !266, !"aac_model", i1 false, i1 false}
!266 = !{!"../drivers/scsi/aacraid/linit.c", i32 1368, i32 32}
!267 = !{ptr @.str.130, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/scsi/aacraid/linit.c", i32 1199, i32 34}
!269 = !{ptr @.str.131, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/scsi/aacraid/linit.c", i32 1377, i32 11}
!271 = !{ptr @aac_vendor, !272, !"aac_vendor", i1 false, i1 false}
!272 = !{!"../drivers/scsi/aacraid/linit.c", i32 1375, i32 32}
!273 = !{ptr @.str.132, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/scsi/aacraid/linit.c", i32 1384, i32 11}
!275 = !{ptr @aac_flags, !276, !"aac_flags", i1 false, i1 false}
!276 = !{!"../drivers/scsi/aacraid/linit.c", i32 1382, i32 32}
!277 = !{ptr @.str.133, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/scsi/aacraid/linit.c", i32 1241, i32 6}
!279 = !{ptr @.str.134, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/scsi/aacraid/linit.c", i32 1244, i32 6}
!281 = !{ptr @.str.135, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/scsi/aacraid/linit.c", i32 1248, i32 6}
!283 = !{ptr @.str.136, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/scsi/aacraid/linit.c", i32 1250, i32 48}
!285 = !{ptr @.str.137, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/scsi/aacraid/linit.c", i32 1391, i32 11}
!287 = !{ptr @aac_kernel_version, !288, !"aac_kernel_version", i1 false, i1 false}
!288 = !{!"../drivers/scsi/aacraid/linit.c", i32 1389, i32 32}
!289 = !{ptr @.str.138, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/scsi/aacraid/linit.c", i32 1262, i32 33}
!291 = !{ptr @.str.139, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/scsi/aacraid/linit.c", i32 1398, i32 11}
!293 = !{ptr @aac_monitor_version, !294, !"aac_monitor_version", i1 false, i1 false}
!294 = !{!"../drivers/scsi/aacraid/linit.c", i32 1396, i32 32}
!295 = !{ptr @.str.140, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/scsi/aacraid/linit.c", i32 1405, i32 11}
!297 = !{ptr @aac_bios_version, !298, !"aac_bios_version", i1 false, i1 false}
!298 = !{!"../drivers/scsi/aacraid/linit.c", i32 1403, i32 32}
!299 = !{ptr @.str.141, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/scsi/aacraid/linit.c", i32 1412, i32 11}
!301 = !{ptr @aac_lld_version, !302, !"aac_lld_version", i1 false, i1 false}
!302 = !{!"../drivers/scsi/aacraid/linit.c", i32 1410, i32 32}
!303 = !{ptr @.str.142, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/scsi/aacraid/linit.c", i32 1426, i32 11}
!305 = !{ptr @aac_max_channel, !306, !"aac_max_channel", i1 false, i1 false}
!306 = !{!"../drivers/scsi/aacraid/linit.c", i32 1424, i32 32}
!307 = !{ptr @.str.143, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/scsi/aacraid/linit.c", i32 1326, i32 34}
!309 = !{ptr @.str.144, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/scsi/aacraid/linit.c", i32 1433, i32 11}
!311 = !{ptr @aac_max_id, !312, !"aac_max_id", i1 false, i1 false}
!312 = !{!"../drivers/scsi/aacraid/linit.c", i32 1431, i32 32}
!313 = !{ptr @.str.145, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/scsi/aacraid/linit.c", i32 1440, i32 11}
!315 = !{ptr @aac_reset, !316, !"aac_reset", i1 false, i1 false}
!316 = !{!"../drivers/scsi/aacraid/linit.c", i32 1438, i32 32}
!317 = !{ptr @.str.146, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/scsi/aacraid/linit.c", i32 1364, i32 33}
!319 = !{ptr @aac_dev_groups, !320, !"aac_dev_groups", i1 false, i1 false}
!320 = !{!"../drivers/scsi/aacraid/linit.c", i32 614, i32 1}
!321 = !{ptr @aac_dev_group, !320, !"aac_dev_group", i1 false, i1 false}
!322 = !{ptr @aac_dev_attrs, !323, !"aac_dev_attrs", i1 false, i1 false}
!323 = !{!"../drivers/scsi/aacraid/linit.c", i32 608, i32 26}
!324 = !{ptr @.str.147, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/scsi/aacraid/linit.c", i32 572, i32 11}
!326 = !{ptr @aac_raid_level_attr, !327, !"aac_raid_level_attr", i1 false, i1 false}
!327 = !{!"../drivers/scsi/aacraid/linit.c", i32 570, i32 32}
!328 = !{ptr @.str.148, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/scsi/aacraid/linit.c", i32 564, i32 7}
!330 = !{ptr @.str.149, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/scsi/aacraid/linit.c", i32 565, i32 49}
!332 = !{ptr @.str.150, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/scsi/aacraid/linit.c", i32 565, i32 60}
!334 = !{ptr @.str.151, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/scsi/aacraid/linit.c", i32 600, i32 11}
!336 = !{ptr @aac_unique_id_attr, !337, !"aac_unique_id_attr", i1 false, i1 false}
!337 = !{!"../drivers/scsi/aacraid/linit.c", i32 598, i32 32}
!338 = !{ptr @.str.152, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/scsi/aacraid/linit.c", i32 591, i32 3}
!340 = !{ptr @.str.153, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/scsi/aacraid/linit.c", i32 1559, i32 3}
!342 = !{ptr @.str.154, !341, !"<string literal>", i1 false, i1 false}
!343 = !{ptr @aac_init_char._entry, !341, !"_entry", i1 false, i1 false}
!344 = !{ptr @aac_init_char._entry_ptr, !341, !"_entry_ptr", i1 false, i1 false}
!345 = !{ptr @aac_cfg_fops, !346, !"aac_cfg_fops", i1 false, i1 false}
!346 = !{!"../drivers/scsi/aacraid/linit.c", i32 1469, i32 37}
!347 = !{ptr @.str.155, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/scsi/aacraid/linit.c", i32 69, i32 8}
!349 = !{ptr @.str.156, !348, !"<string literal>", i1 false, i1 false}
!350 = !{ptr @aac_mutex, !348, !"aac_mutex", i1 false, i1 false}
!351 = !{ptr @.str.157, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/scsi/aacraid/aacraid.h", i32 2664, i32 2}
!353 = !{ptr @aac_pci_err_handler, !354, !"aac_pci_err_handler", i1 false, i1 false}
!354 = !{!"../drivers/scsi/aacraid/linit.c", i32 2032, i32 34}
!355 = !{ptr @.str.158, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/scsi/aacraid/linit.c", i32 1938, i32 2}
!357 = !{ptr @.str.159, !356, !"<string literal>", i1 false, i1 false}
!358 = !{ptr @aac_pci_error_detected._entry, !356, !"_entry", i1 false, i1 false}
!359 = !{ptr @aac_pci_error_detected._entry_ptr, !356, !"_entry_ptr", i1 false, i1 false}
!360 = !{ptr @.str.160, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/scsi/aacraid/linit.c", i32 1967, i32 2}
!362 = !{ptr @.str.161, !361, !"<string literal>", i1 false, i1 false}
!363 = !{ptr @aac_pci_mmio_enabled._entry, !361, !"_entry", i1 false, i1 false}
!364 = !{ptr @aac_pci_mmio_enabled._entry_ptr, !361, !"_entry_ptr", i1 false, i1 false}
!365 = !{ptr @.str.162, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/scsi/aacraid/linit.c", i32 1973, i32 2}
!367 = !{ptr @.str.163, !366, !"<string literal>", i1 false, i1 false}
!368 = !{ptr @aac_pci_slot_reset._entry, !366, !"_entry", i1 false, i1 false}
!369 = !{ptr @aac_pci_slot_reset._entry_ptr, !366, !"_entry_ptr", i1 false, i1 false}
!370 = !{ptr @.str.165, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/scsi/aacraid/linit.c", i32 1976, i32 3}
!372 = !{ptr @.str.166, !371, !"<string literal>", i1 false, i1 false}
!373 = !{ptr @aac_pci_slot_reset._entry.164, !371, !"_entry", i1 false, i1 false}
!374 = !{ptr @aac_pci_slot_reset._entry_ptr.167, !371, !"_entry_ptr", i1 false, i1 false}
!375 = !{ptr @.str.169, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/scsi/aacraid/linit.c", i32 1984, i32 3}
!377 = !{ptr @aac_pci_slot_reset._entry.168, !376, !"_entry", i1 false, i1 false}
!378 = !{ptr @aac_pci_slot_reset._entry_ptr.170, !376, !"_entry_ptr", i1 false, i1 false}
!379 = !{ptr @.str.172, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/scsi/aacraid/linit.c", i32 1991, i32 2}
!381 = !{ptr @aac_pci_slot_reset._entry.171, !380, !"_entry", i1 false, i1 false}
!382 = !{ptr @aac_pci_slot_reset._entry_ptr.173, !380, !"_entry_ptr", i1 false, i1 false}
!383 = !{ptr @.str.174, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/scsi/aacraid/linit.c", i32 2003, i32 3}
!385 = !{ptr @.str.175, !384, !"<string literal>", i1 false, i1 false}
!386 = !{ptr @aac_pci_resume._entry, !384, !"_entry", i1 false, i1 false}
!387 = !{ptr @aac_pci_resume._entry_ptr, !384, !"_entry_ptr", i1 false, i1 false}
!388 = !{ptr @.str.177, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/scsi/aacraid/linit.c", i32 2007, i32 4}
!390 = !{ptr @aac_pci_resume._entry.176, !389, !"_entry", i1 false, i1 false}
!391 = !{ptr @aac_pci_resume._entry_ptr.178, !389, !"_entry_ptr", i1 false, i1 false}
!392 = !{ptr @.str.180, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/scsi/aacraid/linit.c", i32 2029, i32 2}
!394 = !{ptr @aac_pci_resume._entry.179, !393, !"_entry", i1 false, i1 false}
!395 = !{ptr @aac_pci_resume._entry_ptr.181, !393, !"_entry_ptr", i1 false, i1 false}
!396 = !{ptr @aac_pm_ops, !397, !"aac_pm_ops", i1 false, i1 false}
!397 = !{!"../drivers/scsi/aacraid/linit.c", i32 2039, i32 8}
!398 = !{ptr @.str.182, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/scsi/aacraid/linit.c", i32 1891, i32 2}
!400 = !{ptr @.str.183, !399, !"<string literal>", i1 false, i1 false}
!401 = !{ptr @aac_resume._entry, !399, !"_entry", i1 false, i1 false}
!402 = !{ptr @aac_resume._entry_ptr, !399, !"_entry_ptr", i1 false, i1 false}
!403 = !{ptr @.str.184, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/scsi/aacraid/linit.c", i32 2055, i32 2}
!405 = !{ptr @.str.185, !404, !"<string literal>", i1 false, i1 false}
!406 = !{ptr @aac_init._entry, !404, !"_entry", i1 false, i1 false}
!407 = !{ptr @aac_init._entry_ptr, !404, !"_entry_ptr", i1 false, i1 false}
!408 = !{i32 1, !"wchar_size", i32 2}
!409 = !{i32 1, !"min_enum_size", i32 4}
!410 = !{i32 8, !"branch-target-enforcement", i32 0}
!411 = !{i32 8, !"sign-return-address", i32 0}
!412 = !{i32 8, !"sign-return-address-all", i32 0}
!413 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!414 = !{i32 7, !"uwtable", i32 1}
!415 = !{i32 7, !"frame-pointer", i32 2}
!416 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!417 = !{!"branch_weights", i32 1, i32 2000}
!418 = !{!"branch_weights", i32 2000, i32 1}
!419 = !{i64 2148089030, i64 2148089310, i64 2148089644, i64 2148089978}
!420 = !{i64 6114828}
!421 = !{i64 2156152739}
