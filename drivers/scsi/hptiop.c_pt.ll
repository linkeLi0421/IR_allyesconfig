; ModuleID = '/llk/IR_all_yes/drivers/scsi/hptiop.c_pt.bc'
source_filename = "../drivers/scsi/hptiop.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.hptiop_adapter_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i64 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.hpt_iop_request_get_config = type { %struct.hpt_iop_request_header, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hpt_iop_request_header = type { i32, i32, i32, i32, i32, i32 }
%struct.hpt_iop_request_set_config = type { %struct.hpt_iop_request_header, i32, i16, i16, [6 x i32] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%union.anon.78 = type { ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.hptiop_request = type { ptr, ptr, i32, ptr, i32 }
%struct.hptiop_hba = type { ptr, %union.anon.84, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, [256 x %struct.hptiop_request], [256 x ptr], [256 x i32], %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head }
%union.anon.84 = type { %struct.anon.87 }
%struct.anon.87 = type { ptr, ptr, i32, %struct.hptiop_request, i32, ptr, i32, i32, ptr, i32, ptr, i32, i32 }
%struct.hpt_iopmu_itl = type { [4 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32 }
%struct.hpt_ioctl_k = type { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32 }
%struct.hpt_iop_request_ioctl_command = type { %struct.hpt_iop_request_header, i32, i32, i32, i32, [1 x i8] }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.hpt_iop_request_scsi_command = type { %struct.hpt_iop_request_header, i8, i8, i8, i8, [16 x i8], i32, [1 x %struct.hpt_iopsg] }
%struct.hpt_iopsg = type { i32, i32, i64 }
%struct.hpt_iopmv_regs = type { [33024 x i32], i32, i32, i32, i32 }
%struct.hpt_iopmu_mv = type { i32, i32, i32, i32, i32, i32, [10 x i32], [512 x i64], [512 x i64] }
%struct.hpt_iopmu_mvfrey = type { [4096 x i32], i32, i32, [4 x i32], i32, [4 x i32], i32, [8 x i32], i32, i32, i32, i32, [10 x i32], i32, i32, [12383 x i32], i32, [124 x i32], i32, [7 x i32], i32, [23 x i32], i32, i32 }
%struct.mvfrey_outlist_entry = type { i32 }
%struct.mvfrey_inlist_entry = type { i32, i32, i32 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@__UNIQUE_ID_author287 = internal constant [43 x i8] c"hptiop.author=HighPoint Technologies, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_description288 = internal constant [68 x i8] c"hptiop.description=HighPoint RocketRAID 3xxx/4xxx Controller Driver\00", section ".modinfo", align 1
@hptiop_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @driver_name, ptr @hptiop_id_table, ptr @hptiop_probe, ptr @hptiop_remove, ptr null, ptr null, ptr @hptiop_shutdown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_hptiop__291_1697_hptiop_module_init6 = internal global ptr @hptiop_module_init, section ".initcall6.init", align 4
@__exitcall_hptiop_module_exit = internal global ptr @hptiop_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file292 = internal constant [32 x i8] c"hptiop.file=drivers/scsi/hptiop\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [19 x i8] c"hptiop.license=GPL\00", section ".modinfo", align 1
@driver_name = internal global { [7 x i8], [25 x i8] } { [7 x i8] c"hptiop\00", [25 x i8] zeroinitializer }, align 32
@hptiop_id_table = internal global { [33 x %struct.pci_device_id], [256 x i8] } { [33 x %struct.pci_device_id] [%struct.pci_device_id { i32 4355, i32 12832, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @hptiop_itl_ops to i32), i32 0 }, %struct.pci_device_id { i32 4355, i32 13088, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @hptiop_itl_ops to i32), i32 0 }, %struct.pci_device_id { i32 4355, i32 13328, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @hptiop_itl_ops to i32), i32 0 }, %struct.pci_device_id { i32 4355, i32 13584, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @hptiop_itl_ops to i32), i32 0 }, %struct.pci_device_id { i32 4355, i32 13585, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @hptiop_itl_ops to i32), i32 0 }, %struct.pci_device_id { i32 4355, i32 13600, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @hptiop_itl_ops to i32), i32 0 }, %struct.pci_device_id { i32 4355, i32 13601, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @hptiop_itl_ops to i32), i32 0 }, %struct.pci_device_id { i32 4355, i32 13602, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @hptiop_itl_ops to i32), i32 0 }, %struct.pci_device_id { i32 4355, i32 13616, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @hptiop_itl_ops to i32), i32 0 }, %struct.pci_device_id { i32 4355, i32 13632, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @hptiop_itl_ops to i32), i32 0 }, %struct.pci_device_id { i32 4355, i32 13664, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @hptiop_itl_ops to i32), i32 0 }, %struct.pci_device_id { i32 4355, i32 16912, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @hptiop_itl_ops to i32), i32 0 }, %struct.pci_device_id { i32 4355, i32 16913, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @hptiop_itl_ops to i32), i32 0 }, %struct.pci_device_id { i32 4355, i32 17168, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @hptiop_itl_ops to i32), i32 0 }, %struct.pci_device_id { i32 4355, i32 17169, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @hptiop_itl_ops to i32), i32 0 }, %struct.pci_device_id { i32 4355, i32 17184, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @hptiop_itl_ops to i32), i32 0 }, %struct.pci_device_id { i32 4355, i32 17185, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @hptiop_itl_ops to i32), i32 0 }, %struct.pci_device_id { i32 4355, i32 17186, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @hptiop_itl_ops to i32), i32 0 }, %struct.pci_device_id { i32 4355, i32 17408, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @hptiop_itl_ops to i32), i32 0 }, %struct.pci_device_id { i32 4355, i32 12576, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @hptiop_mv_ops to i32), i32 0 }, %struct.pci_device_id { i32 4355, i32 12578, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @hptiop_mv_ops to i32), i32 0 }, %struct.pci_device_id { i32 4355, i32 12320, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @hptiop_mv_ops to i32), i32 0 }, %struct.pci_device_id { i32 4355, i32 17696, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @hptiop_mvfrey_ops to i32), i32 0 }, %struct.pci_device_id { i32 4355, i32 17698, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @hptiop_mvfrey_ops to i32), i32 0 }, %struct.pci_device_id { i32 4355, i32 13840, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @hptiop_mvfrey_ops to i32), i32 0 }, %struct.pci_device_id { i32 4355, i32 13841, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @hptiop_mvfrey_ops to i32), i32 0 }, %struct.pci_device_id { i32 4355, i32 13856, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @hptiop_mvfrey_ops to i32), i32 0 }, %struct.pci_device_id { i32 4355, i32 13858, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @hptiop_mvfrey_ops to i32), i32 0 }, %struct.pci_device_id { i32 4355, i32 13888, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @hptiop_mvfrey_ops to i32), i32 0 }, %struct.pci_device_id { i32 4355, i32 13920, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @hptiop_mvfrey_ops to i32), i32 0 }, %struct.pci_device_id { i32 4355, i32 13952, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @hptiop_mvfrey_ops to i32), i32 0 }, %struct.pci_device_id { i32 4355, i32 13968, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @hptiop_mvfrey_ops to i32), i32 0 }, %struct.pci_device_id zeroinitializer], [256 x i8] zeroinitializer }, align 32
@hptiop_itl_ops = internal global { %struct.hptiop_adapter_ops, [56 x i8] } { %struct.hptiop_adapter_ops { i32 1, ptr @iop_wait_ready_itl, ptr @hptiop_internal_memalloc_itl, ptr @hptiop_internal_memfree_itl, ptr @hptiop_map_pci_bar_itl, ptr @hptiop_unmap_pci_bar_itl, ptr @hptiop_enable_intr_itl, ptr @hptiop_disable_intr_itl, ptr @iop_get_config_itl, ptr @iop_set_config_itl, ptr @iop_intr_itl, ptr @hptiop_post_msg_itl, ptr @hptiop_post_req_itl, i32 64, ptr @hptiop_reset_comm_itl, i64 0 }, [56 x i8] zeroinitializer }, align 32
@hptiop_mv_ops = internal global { %struct.hptiop_adapter_ops, [56 x i8] } { %struct.hptiop_adapter_ops { i32 2, ptr @iop_wait_ready_mv, ptr @hptiop_internal_memalloc_mv, ptr @hptiop_internal_memfree_mv, ptr @hptiop_map_pci_bar_mv, ptr @hptiop_unmap_pci_bar_mv, ptr @hptiop_enable_intr_mv, ptr @hptiop_disable_intr_mv, ptr @iop_get_config_mv, ptr @iop_set_config_mv, ptr @iop_intr_mv, ptr @hptiop_post_msg_mv, ptr @hptiop_post_req_mv, i32 33, ptr @hptiop_reset_comm_mv, i64 0 }, [56 x i8] zeroinitializer }, align 32
@hptiop_mvfrey_ops = internal global { %struct.hptiop_adapter_ops, [56 x i8] } { %struct.hptiop_adapter_ops { i32 3, ptr @iop_wait_ready_mvfrey, ptr @hptiop_internal_memalloc_mvfrey, ptr @hptiop_internal_memfree_mvfrey, ptr @hptiop_map_pci_bar_mvfrey, ptr @hptiop_unmap_pci_bar_mvfrey, ptr @hptiop_enable_intr_mvfrey, ptr @hptiop_disable_intr_mvfrey, ptr @iop_get_config_mvfrey, ptr @iop_set_config_mvfrey, ptr @iop_intr_mvfrey, ptr @hptiop_post_msg_mvfrey, ptr @hptiop_post_req_mvfrey, i32 64, ptr @hptiop_reset_comm_mvfrey, i64 72057594037927936 }, [56 x i8] zeroinitializer }, align 32
@hptiop_map_pci_bar._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 595, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013scsi%d: pci resource invalid\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hptiop_map_pci_bar\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/scsi/hptiop.c\00", [42 x i8] zeroinitializer }, align 32
@hptiop_map_pci_bar._entry_ptr = internal global ptr @hptiop_map_pci_bar._entry, section ".printk_index", align 4
@hptiop_map_pci_bar._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 605, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013scsi%d: Fail to ioremap memory space\0A\00", [56 x i8] zeroinitializer }, align 32
@hptiop_map_pci_bar._entry_ptr.5 = internal global ptr @hptiop_map_pci_bar._entry.3, section ".printk_index", align 4
@hptiop_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 1289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013hptiop: fail to enable pci device\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hptiop_probe\00", [19 x i8] zeroinitializer }, align 32
@hptiop_probe._entry_ptr = internal global ptr @hptiop_probe._entry, section ".printk_index", align 4
@hptiop_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 1295, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016adapter at PCI %d:%d:%d, IRQ %d\0A\00", [61 x i8] zeroinitializer }, align 32
@hptiop_probe._entry_ptr.10 = internal global ptr @hptiop_probe._entry.8, section ".printk_index", align 4
@hptiop_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.2, i32 1307, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013hptiop: fail to set dma_mask\0A\00", [32 x i8] zeroinitializer }, align 32
@hptiop_probe._entry_ptr.13 = internal global ptr @hptiop_probe._entry.11, section ".printk_index", align 4
@hptiop_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.7, ptr @.str.2, i32 1312, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013hptiop: pci_request_regions failed\0A\00", [58 x i8] zeroinitializer }, align 32
@hptiop_probe._entry_ptr.16 = internal global ptr @hptiop_probe._entry.14, section ".printk_index", align 4
@driver_template = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @hptiop_queuecommand, ptr null, ptr null, ptr @driver_name, ptr @hptiop_info, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hptiop_reset, ptr null, ptr @hptiop_slave_config, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hptiop_adjust_disk_queue_depth, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @driver_name, ptr null, i32 0, i32 -1, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i16 0, i8 0, i32 0, i8 0, i32 0, ptr @hptiop_host_groups, ptr null, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@hptiop_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.7, ptr @.str.2, i32 1318, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013hptiop: fail to alloc scsi host\0A\00", [61 x i8] zeroinitializer }, align 32
@hptiop_probe._entry_ptr.19 = internal global ptr @hptiop_probe._entry.17, section ".printk_index", align 4
@hptiop_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&hba->reset_wq\00", [17 x i8] zeroinitializer }, align 32
@hptiop_probe.__key.21 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&hba->ioctl_wq\00", [17 x i8] zeroinitializer }, align 32
@hptiop_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.7, ptr @.str.2, i32 1348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013scsi%d: firmware not ready\0A\00", [34 x i8] zeroinitializer }, align 32
@hptiop_probe._entry_ptr.25 = internal global ptr @hptiop_probe._entry.23, section ".printk_index", align 4
@hptiop_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.7, ptr @.str.2, i32 1355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013scsi%d: internal_memalloc failed\0A\00", [60 x i8] zeroinitializer }, align 32
@hptiop_probe._entry_ptr.28 = internal global ptr @hptiop_probe._entry.26, section ".printk_index", align 4
@hptiop_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.7, ptr @.str.2, i32 1362, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013scsi%d: get config failed\0A\00", [35 x i8] zeroinitializer }, align 32
@hptiop_probe._entry_ptr.31 = internal global ptr @hptiop_probe._entry.29, section ".printk_index", align 4
@hptiop_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.7, ptr @.str.2, i32 1378, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@hptiop_probe._entry_ptr.33 = internal global ptr @hptiop_probe._entry.32, section ".printk_index", align 4
@hptiop_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.7, ptr @.str.2, i32 1383, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013scsi%d: reset comm failed\0A\00", [35 x i8] zeroinitializer }, align 32
@hptiop_probe._entry_ptr.36 = internal global ptr @hptiop_probe._entry.34, section ".printk_index", align 4
@hptiop_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.7, ptr @.str.2, i32 1411, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013scsi%d: set config failed\0A\00", [35 x i8] zeroinitializer }, align 32
@hptiop_probe._entry_ptr.39 = internal global ptr @hptiop_probe._entry.37, section ".printk_index", align 4
@hptiop_probe._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.7, ptr @.str.2, i32 1420, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013scsi%d: request irq %d failed\0A\00", [63 x i8] zeroinitializer }, align 32
@hptiop_probe._entry_ptr.42 = internal global ptr @hptiop_probe._entry.40, section ".printk_index", align 4
@hptiop_probe._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.7, ptr @.str.2, i32 1438, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013scsi%d: fail to alloc request mem\0A\00", [59 x i8] zeroinitializer }, align 32
@hptiop_probe._entry_ptr.45 = internal global ptr @hptiop_probe._entry.43, section ".printk_index", align 4
@hptiop_probe._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.7, ptr @.str.2, i32 1464, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013scsi%d: scsi_add_host failed\0A\00", [32 x i8] zeroinitializer }, align 32
@hptiop_probe._entry_ptr.48 = internal global ptr @hptiop_probe._entry.46, section ".printk_index", align 4
@hptiop_host_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @hptiop_host_group, ptr null], [24 x i8] zeroinitializer }, align 32
@driver_name_long = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"RocketRAID 3xxx/4xxx Controller driver\00", [57 x i8] zeroinitializer }, align 32
@hptiop_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.2, i32 1099, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\014hptiop_reset(%d/%d/%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hptiop_reset\00", [19 x i8] zeroinitializer }, align 32
@hptiop_reset._entry_ptr = internal global ptr @hptiop_reset._entry, section ".printk_index", align 4
@hptiop_reset_hba._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 1081, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013scsi%d: reset failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hptiop_reset_hba\00", [47 x i8] zeroinitializer }, align 32
@hptiop_reset_hba._entry_ptr = internal global ptr @hptiop_reset_hba._entry, section ".printk_index", align 4
@hptiop_host_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @hptiop_host_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@hptiop_host_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @hptiop_attr_version, ptr @hptiop_attr_fw_version, ptr null], [20 x i8] zeroinitializer }, align 32
@hptiop_attr_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hptiop_show_version, ptr null }, [36 x i8] zeroinitializer }, align 32
@hptiop_attr_fw_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hptiop_show_fw_version, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"driver-version\00", [17 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@driver_ver = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"v1.10.0\00", [24 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"firmware-version\00", [47 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%d.%d.%d.%d\0A\00", [19 x i8] zeroinitializer }, align 32
@hptiop_initialize_iop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 579, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013scsi%d: fail to start background task\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hptiop_initialize_iop\00", [42 x i8] zeroinitializer }, align 32
@hptiop_initialize_iop._entry_ptr = internal global ptr @hptiop_initialize_iop._entry, section ".printk_index", align 4
@hptiop_shutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.2, i32 1514, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013scsi%d: shutdown the iop timeout\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hptiop_shutdown\00", [16 x i8] zeroinitializer }, align 32
@hptiop_shutdown._entry_ptr = internal global ptr @hptiop_shutdown._entry, section ".printk_index", align 4
@hptiop_module_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.2, i32 1687, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\016%s %s\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hptiop_module_init\00", [45 x i8] zeroinitializer }, align 32
@hptiop_module_init._entry_ptr = internal global ptr @hptiop_module_init._entry, section ".printk_index", align 4
@.str.63 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hptiop\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 6]
@__sancov_gen_cov_switch_values.64 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 6]
@__sancov_gen_cov_switch_values.66 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 6]
@__sancov_gen_cov_switch_values.68 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@___asan_gen_.69 = private unnamed_addr constant [18 x i8] c"hptiop_pci_driver\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1677, i32 26 }
@___asan_gen_.72 = private unnamed_addr constant [12 x i8] c"driver_name\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 35, i32 13 }
@___asan_gen_.75 = private unnamed_addr constant [16 x i8] c"hptiop_id_table\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1639, i32 29 }
@___asan_gen_.78 = private unnamed_addr constant [15 x i8] c"hptiop_itl_ops\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1582, i32 34 }
@___asan_gen_.81 = private unnamed_addr constant [14 x i8] c"hptiop_mv_ops\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1601, i32 34 }
@___asan_gen_.84 = private unnamed_addr constant [18 x i8] c"hptiop_mvfrey_ops\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1620, i32 34 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 594, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 604, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1289, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1293, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1307, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1312, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant [16 x i8] c"driver_template\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1165, i32 34 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1318, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1334, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1335, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1347, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1354, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1361, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1377, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1382, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1410, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1419, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1437, i32 4 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1463, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant [19 x i8] c"hptiop_host_groups\00", align 1
@___asan_gen_.207 = private unnamed_addr constant [17 x i8] c"driver_name_long\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 36, i32 19 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1098, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1081, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant [18 x i8] c"hptiop_host_group\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1155, i32 1 }
@___asan_gen_.231 = private unnamed_addr constant [18 x i8] c"hptiop_host_attrs\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1149, i32 26 }
@___asan_gen_.234 = private unnamed_addr constant [20 x i8] c"hptiop_attr_version\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1133, i32 32 }
@___asan_gen_.237 = private unnamed_addr constant [23 x i8] c"hptiop_attr_fw_version\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1141, i32 32 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1135, i32 11 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1117, i32 34 }
@___asan_gen_.246 = private unnamed_addr constant [11 x i8] c"driver_ver\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 37, i32 19 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1143, i32 11 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1126, i32 34 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 578, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1513, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1687, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.283 = private constant [25 x i8] c"../drivers/scsi/hptiop.c\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1688, i32 9 }
@llvm.compiler.used = appending global [100 x ptr] [ptr @__UNIQUE_ID_author287, ptr @__UNIQUE_ID_description288, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_hptiop_module_exit, ptr @__initcall__kmod_hptiop__291_1697_hptiop_module_init6, ptr @hptiop_initialize_iop._entry, ptr @hptiop_initialize_iop._entry_ptr, ptr @hptiop_map_pci_bar._entry, ptr @hptiop_map_pci_bar._entry.3, ptr @hptiop_map_pci_bar._entry_ptr, ptr @hptiop_map_pci_bar._entry_ptr.5, ptr @hptiop_module_exit, ptr @hptiop_module_init._entry, ptr @hptiop_module_init._entry_ptr, ptr @hptiop_probe._entry, ptr @hptiop_probe._entry.11, ptr @hptiop_probe._entry.14, ptr @hptiop_probe._entry.17, ptr @hptiop_probe._entry.23, ptr @hptiop_probe._entry.26, ptr @hptiop_probe._entry.29, ptr @hptiop_probe._entry.32, ptr @hptiop_probe._entry.34, ptr @hptiop_probe._entry.37, ptr @hptiop_probe._entry.40, ptr @hptiop_probe._entry.43, ptr @hptiop_probe._entry.46, ptr @hptiop_probe._entry.8, ptr @hptiop_probe._entry_ptr, ptr @hptiop_probe._entry_ptr.10, ptr @hptiop_probe._entry_ptr.13, ptr @hptiop_probe._entry_ptr.16, ptr @hptiop_probe._entry_ptr.19, ptr @hptiop_probe._entry_ptr.25, ptr @hptiop_probe._entry_ptr.28, ptr @hptiop_probe._entry_ptr.31, ptr @hptiop_probe._entry_ptr.33, ptr @hptiop_probe._entry_ptr.36, ptr @hptiop_probe._entry_ptr.39, ptr @hptiop_probe._entry_ptr.42, ptr @hptiop_probe._entry_ptr.45, ptr @hptiop_probe._entry_ptr.48, ptr @hptiop_reset._entry, ptr @hptiop_reset._entry_ptr, ptr @hptiop_reset_hba._entry, ptr @hptiop_reset_hba._entry_ptr, ptr @hptiop_shutdown._entry, ptr @hptiop_shutdown._entry_ptr, ptr @hptiop_pci_driver, ptr @driver_name, ptr @hptiop_id_table, ptr @hptiop_itl_ops, ptr @hptiop_mv_ops, ptr @hptiop_mvfrey_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @driver_template, ptr @.str.18, ptr @hptiop_probe.__key, ptr @.str.20, ptr @hptiop_probe.__key.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @hptiop_host_groups, ptr @driver_name_long, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @hptiop_host_group, ptr @hptiop_host_attrs, ptr @hptiop_attr_version, ptr @hptiop_attr_fw_version, ptr @.str.53, ptr @.str.54, ptr @driver_ver, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63], section "llvm.metadata"
@0 = internal global [72 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hptiop_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_name to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hptiop_id_table to i32), i32 1056, i32 1312, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hptiop_itl_ops to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hptiop_mv_ops to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hptiop_mvfrey_ops to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hptiop_map_pci_bar._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hptiop_map_pci_bar._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hptiop_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hptiop_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hptiop_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hptiop_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_template to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hptiop_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hptiop_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hptiop_probe.__key.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hptiop_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hptiop_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hptiop_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hptiop_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hptiop_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hptiop_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hptiop_probe._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hptiop_probe._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hptiop_probe._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hptiop_host_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_name_long to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hptiop_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hptiop_reset_hba._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hptiop_host_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hptiop_host_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hptiop_attr_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hptiop_attr_fw_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_ver to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hptiop_initialize_iop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hptiop_shutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hptiop_module_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hptiop_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @pci_unregister_driver(ptr noundef nonnull @hptiop_pci_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hptiop_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @driver_name_long, ptr noundef nonnull @driver_ver) #14
  %call1 = tail call i32 @__pci_register_driver(ptr noundef nonnull @hptiop_pci_driver, ptr noundef null, ptr noundef nonnull @.str.63) #11
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hptiop_probe(ptr noundef %pcidev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %iop_config = alloca %struct.hpt_iop_request_get_config, align 4
  %set_config = alloca %struct.hpt_iop_request_set_config, align 4
  %start_phy = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %iop_config) #11
  %0 = call ptr @memset(ptr %iop_config, i32 255, i32 60)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %set_config) #11
  %1 = call ptr @memset(ptr %set_config, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %start_phy) #11
  %2 = ptrtoint ptr %start_phy to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %start_phy, align 4, !annotation !154
  %call = tail call i32 @pci_enable_device(ptr noundef %pcidev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end4, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #14
  br label %cleanup

do.end4:                                          ; preds = %entry
  %bus = getelementptr inbounds %struct.pci_dev, ptr %pcidev, i32 0, i32 1
  %3 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bus, align 8
  %number = getelementptr inbounds %struct.pci_bus, ptr %4, i32 0, i32 12
  %5 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %number, align 4
  %conv = zext i8 %6 to i32
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %pcidev, i32 0, i32 6
  %7 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %devfn, align 4
  %shr = lshr i32 %8, 3
  %and = and i32 %8, 7
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pcidev, i32 0, i32 46
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq, align 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %conv, i32 noundef %shr, i32 noundef %and, i32 noundef %10) #14
  tail call void @pci_set_master(ptr noundef %pcidev) #11
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %11 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %driver_data, align 4
  %13 = inttoptr i32 %12 to ptr
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pcidev, i32 0, i32 44
  %hw_dma_bit_mask = getelementptr inbounds %struct.hptiop_adapter_ops, ptr %13, i32 0, i32 13
  %14 = ptrtoint ptr %hw_dma_bit_mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hw_dma_bit_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %15)
  %cmp = icmp eq i32 %15, 64
  br i1 %cmp, label %do.end4.cond.end_crit_edge, label %cond.false

do.end4.cond.end_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  %sh_prom = zext i32 %15 to i64
  %notmask = shl nsw i64 -1, %sh_prom
  %sub = xor i64 %notmask, -1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %do.end4.cond.end_crit_edge
  %cond = phi i64 [ %sub, %cond.false ], [ -1, %do.end4.cond.end_crit_edge ]
  %call10 = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef %cond) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %cond.end.if.end23_crit_edge, label %if.end15

cond.end.if.end23_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.end15:                                         ; preds = %cond.end
  %call14 = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool16.not = icmp eq i32 %call14, 0
  br i1 %tobool16.not, label %if.end15.if.end23_crit_edge, label %do.end20

if.end15.if.end23_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

do.end20:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #14
  br label %disable_pci_device

if.end23:                                         ; preds = %if.end15.if.end23_crit_edge, %cond.end.if.end23_crit_edge
  %call24 = tail call i32 @pci_request_regions(ptr noundef %pcidev, ptr noundef nonnull @driver_name) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end32, label %do.end29

do.end29:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  br label %disable_pci_device

if.end32:                                         ; preds = %if.end23
  %call33 = tail call ptr @scsi_host_alloc(ptr noundef nonnull @driver_template, i32 noundef 7400) #11
  %tobool34.not = icmp eq ptr %call33, null
  br i1 %tobool34.not, label %do.end38, label %if.end41

do.end38:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #14
  br label %free_pci_regions

if.end41:                                         ; preds = %if.end32
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %call33, i32 0, i32 53
  %16 = getelementptr inbounds %struct.Scsi_Host, ptr %call33, i32 1, i32 0, i32 1
  %17 = call ptr @memset(ptr %16, i32 0, i32 7396)
  %18 = ptrtoint ptr %hostdata to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %13, ptr %hostdata, align 4
  %pcidev42 = getelementptr inbounds %struct.Scsi_Host, ptr %call33, i32 1, i32 5, i32 1
  %19 = ptrtoint ptr %pcidev42 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %pcidev, ptr %pcidev42, align 4
  %host43 = getelementptr inbounds %struct.Scsi_Host, ptr %call33, i32 1, i32 5
  %20 = ptrtoint ptr %host43 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call33, ptr %host43, align 4
  %initialized = getelementptr inbounds %struct.Scsi_Host, ptr %call33, i32 1, i32 5, i32 1, i32 4, i32 6
  %resetting = getelementptr inbounds %struct.Scsi_Host, ptr %call33, i32 3, i32 50, i32 31, i32 0, i32 0, i32 4, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %resetting, i32 noundef 4) #11
  %21 = ptrtoint ptr %resetting to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 0, ptr %resetting, align 4
  %reset_count = getelementptr inbounds %struct.Scsi_Host, ptr %call33, i32 3, i32 50, i32 31, i32 0, i32 0, i32 4, i32 3
  %call.i.i434 = tail call zeroext i1 @__kasan_check_write(ptr noundef %reset_count, i32 noundef 4) #11
  %22 = ptrtoint ptr %reset_count to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 0, ptr %reset_count, align 4
  %reset_wq = getelementptr inbounds %struct.Scsi_Host, ptr %call33, i32 3, i32 50, i32 31, i32 0, i32 0, i32 4, i32 7
  tail call void @__init_waitqueue_head(ptr noundef %reset_wq, ptr noundef nonnull @.str.20, ptr noundef nonnull @hptiop_probe.__key) #11
  %ioctl_wq = getelementptr inbounds %struct.Scsi_Host, ptr %call33, i32 4, i32 0, i32 1
  tail call void @__init_waitqueue_head(ptr noundef %ioctl_wq, ptr noundef nonnull @.str.22, ptr noundef nonnull @hptiop_probe.__key.21) #11
  %max_lun = getelementptr inbounds %struct.Scsi_Host, ptr %call33, i32 0, i32 22
  %23 = ptrtoint ptr %max_lun to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 128, ptr %max_lun, align 8
  %max_channel = getelementptr inbounds %struct.Scsi_Host, ptr %call33, i32 0, i32 20
  %24 = ptrtoint ptr %max_channel to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %max_channel, align 8
  %io_port = getelementptr inbounds %struct.Scsi_Host, ptr %call33, i32 0, i32 44
  %25 = ptrtoint ptr %io_port to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %io_port, align 8
  %n_io_port = getelementptr inbounds %struct.Scsi_Host, ptr %call33, i32 0, i32 45
  %26 = ptrtoint ptr %n_io_port to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %n_io_port, align 4
  %27 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %irq, align 4
  %irq54 = getelementptr inbounds %struct.Scsi_Host, ptr %call33, i32 0, i32 47
  %29 = ptrtoint ptr %irq54 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %irq54, align 8
  %30 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hostdata, align 4
  %map_pci_bar = getelementptr inbounds %struct.hptiop_adapter_ops, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %map_pci_bar to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %map_pci_bar, align 8
  %call56 = tail call i32 %33(ptr noundef %hostdata) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %if.end41.free_scsi_host_crit_edge

if.end41.free_scsi_host_crit_edge:                ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_scsi_host

if.end59:                                         ; preds = %if.end41
  %34 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hostdata, align 4
  %iop_wait_ready = getelementptr inbounds %struct.hptiop_adapter_ops, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %iop_wait_ready to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %iop_wait_ready, align 4
  %call61 = tail call i32 %37(ptr noundef %hostdata, i32 noundef 20000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end70, label %do.end66

do.end66:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %host43 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %host43, align 4
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %39, i32 0, i32 17
  %40 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %host_no, align 4
  %call69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %41) #14
  br label %unmap_pci_bar

if.end70:                                         ; preds = %if.end59
  %42 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hostdata, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %45)
  %cmp72 = icmp eq i32 %45, 2
  br i1 %cmp72, label %if.then74, label %if.end70.if.end87_crit_edge

if.end70.if.end87_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end87

if.then74:                                        ; preds = %if.end70
  %internal_memalloc = getelementptr inbounds %struct.hptiop_adapter_ops, ptr %43, i32 0, i32 2
  %46 = ptrtoint ptr %internal_memalloc to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %internal_memalloc, align 8
  %call76 = tail call i32 %47(ptr noundef %hostdata) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.then74.if.end87_crit_edge, label %do.end81

if.then74.if.end87_crit_edge:                     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end87

do.end81:                                         ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #13
  %48 = ptrtoint ptr %host43 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %host43, align 4
  %host_no84 = getelementptr inbounds %struct.Scsi_Host, ptr %49, i32 0, i32 17
  %50 = ptrtoint ptr %host_no84 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %host_no84, align 4
  %call85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %51) #14
  br label %unmap_pci_bar

if.end87:                                         ; preds = %if.then74.if.end87_crit_edge, %if.end70.if.end87_crit_edge
  %52 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hostdata, align 4
  %get_config = getelementptr inbounds %struct.hptiop_adapter_ops, ptr %53, i32 0, i32 8
  %54 = ptrtoint ptr %get_config to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %get_config, align 8
  %call89 = call i32 %55(ptr noundef %hostdata, ptr noundef nonnull %iop_config) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end99, label %do.end94

do.end94:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  %56 = ptrtoint ptr %host43 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %host43, align 4
  %host_no97 = getelementptr inbounds %struct.Scsi_Host, ptr %57, i32 0, i32 17
  %58 = ptrtoint ptr %host_no97 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %host_no97, align 4
  %call98 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %59) #14
  br label %unmap_pci_bar

if.end99:                                         ; preds = %if.end87
  %max_requests = getelementptr inbounds %struct.hpt_iop_request_get_config, ptr %iop_config, i32 0, i32 3
  %60 = ptrtoint ptr %max_requests to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %max_requests, align 4
  %62 = call i32 @llvm.bswap.i32(i32 %61)
  %63 = call i32 @llvm.umin.i32(i32 %62, i32 256)
  %max_requests107 = getelementptr inbounds %struct.Scsi_Host, ptr %call33, i32 1, i32 5, i32 1, i32 4, i32 1
  %64 = ptrtoint ptr %max_requests107 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %max_requests107, align 4
  %max_devices = getelementptr inbounds %struct.hpt_iop_request_get_config, ptr %iop_config, i32 0, i32 8
  %65 = ptrtoint ptr %max_devices to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %max_devices, align 4
  %67 = call i32 @llvm.bswap.i32(i32 %66)
  %max_devices108 = getelementptr inbounds %struct.Scsi_Host, ptr %call33, i32 1, i32 5, i32 1, i32 4
  %68 = ptrtoint ptr %max_devices108 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %max_devices108, align 4
  %request_size = getelementptr inbounds %struct.hpt_iop_request_get_config, ptr %iop_config, i32 0, i32 4
  %69 = ptrtoint ptr %request_size to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %request_size, align 4
  %71 = call i32 @llvm.bswap.i32(i32 %70)
  %max_request_size = getelementptr inbounds %struct.Scsi_Host, ptr %call33, i32 1, i32 5, i32 1, i32 4, i32 1, i32 1
  %72 = ptrtoint ptr %max_request_size to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %max_request_size, align 4
  %max_sg_count = getelementptr inbounds %struct.hpt_iop_request_get_config, ptr %iop_config, i32 0, i32 5
  %73 = ptrtoint ptr %max_sg_count to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %max_sg_count, align 4
  %75 = call i32 @llvm.bswap.i32(i32 %74)
  %max_sg_descriptors = getelementptr inbounds %struct.Scsi_Host, ptr %call33, i32 1, i32 5, i32 1, i32 4, i32 2
  %76 = ptrtoint ptr %max_sg_descriptors to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %max_sg_descriptors, align 4
  %firmware_version = getelementptr inbounds %struct.hpt_iop_request_get_config, ptr %iop_config, i32 0, i32 2
  %77 = ptrtoint ptr %firmware_version to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %firmware_version, align 4
  %79 = call i32 @llvm.bswap.i32(i32 %78)
  %firmware_version109 = getelementptr inbounds %struct.Scsi_Host, ptr %call33, i32 1, i32 5, i32 1, i32 2
  %80 = ptrtoint ptr %firmware_version109 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %firmware_version109, align 4
  %interface_version = getelementptr inbounds %struct.hpt_iop_request_get_config, ptr %iop_config, i32 0, i32 1
  %81 = ptrtoint ptr %interface_version to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %interface_version, align 4
  %83 = call i32 @llvm.bswap.i32(i32 %82)
  %interface_version110 = getelementptr inbounds %struct.Scsi_Host, ptr %call33, i32 1, i32 5, i32 1, i32 1
  %84 = ptrtoint ptr %interface_version110 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %interface_version110, align 4
  %sdram_size = getelementptr inbounds %struct.hpt_iop_request_get_config, ptr %iop_config, i32 0, i32 9
  %85 = ptrtoint ptr %sdram_size to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %sdram_size, align 4
  %87 = call i32 @llvm.bswap.i32(i32 %86)
  %sdram_size111 = getelementptr inbounds %struct.Scsi_Host, ptr %call33, i32 1, i32 5, i32 1, i32 3
  %88 = ptrtoint ptr %sdram_size111 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %sdram_size111, align 4
  %89 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %hostdata, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %90, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %92)
  %cmp114 = icmp eq i32 %92, 3
  br i1 %cmp114, label %if.then116, label %if.end99.if.end142_crit_edge

if.end99.if.end142_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end142

if.then116:                                       ; preds = %if.end99
  %internal_memalloc118 = getelementptr inbounds %struct.hptiop_adapter_ops, ptr %90, i32 0, i32 2
  %93 = ptrtoint ptr %internal_memalloc118 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %internal_memalloc118, align 8
  %call119 = call i32 %94(ptr noundef %hostdata) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %if.end129, label %do.end124

do.end124:                                        ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #13
  %95 = ptrtoint ptr %host43 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %host43, align 4
  %host_no127 = getelementptr inbounds %struct.Scsi_Host, ptr %96, i32 0, i32 17
  %97 = ptrtoint ptr %host_no127 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %host_no127, align 4
  %call128 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %98) #14
  br label %unmap_pci_bar

if.end129:                                        ; preds = %if.then116
  %99 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %hostdata, align 4
  %reset_comm = getelementptr inbounds %struct.hptiop_adapter_ops, ptr %100, i32 0, i32 14
  %101 = ptrtoint ptr %reset_comm to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %reset_comm, align 8
  %call131 = call i32 %102(ptr noundef %hostdata) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %if.end129.if.end142_crit_edge, label %do.end136

if.end129.if.end142_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end142

do.end136:                                        ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #13
  %103 = ptrtoint ptr %host43 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %host43, align 4
  %host_no139 = getelementptr inbounds %struct.Scsi_Host, ptr %104, i32 0, i32 17
  %105 = ptrtoint ptr %host_no139 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %host_no139, align 4
  %call140 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %106) #14
  br label %unmap_pci_bar

if.end142:                                        ; preds = %if.end129.if.end142_crit_edge, %if.end99.if.end142_crit_edge
  %107 = ptrtoint ptr %firmware_version109 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %firmware_version109, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16908288, i32 %108)
  %cmp144 = icmp ugt i32 %108, 16908288
  br i1 %cmp144, label %if.end142.if.then149_crit_edge, label %lor.lhs.false

if.end142.if.then149_crit_edge:                   ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then149

lor.lhs.false:                                    ; preds = %if.end142
  %109 = ptrtoint ptr %interface_version110 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %interface_version110, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16908288, i32 %110)
  %cmp147 = icmp ugt i32 %110, 16908288
  br i1 %cmp147, label %lor.lhs.false.if.then149_crit_edge, label %lor.lhs.false.if.end154_crit_edge

lor.lhs.false.if.end154_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end154

lor.lhs.false.if.then149_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then149

if.then149:                                       ; preds = %lor.lhs.false.if.then149_crit_edge, %if.end142.if.then149_crit_edge
  %111 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %111)
  %bf.load151 = load i8, ptr %initialized, align 4
  %bf.set153 = or i8 %bf.load151, -128
  store i8 %bf.set153, ptr %initialized, align 4
  br label %if.end154

if.end154:                                        ; preds = %if.then149, %lor.lhs.false.if.end154_crit_edge
  %data_transfer_length = getelementptr inbounds %struct.hpt_iop_request_get_config, ptr %iop_config, i32 0, i32 6
  %112 = ptrtoint ptr %data_transfer_length to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %data_transfer_length, align 4
  %114 = call i32 @llvm.bswap.i32(i32 %113)
  %shr155 = lshr i32 %114, 9
  %max_sectors = getelementptr inbounds %struct.Scsi_Host, ptr %call33, i32 0, i32 30
  %115 = ptrtoint ptr %max_sectors to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %shr155, ptr %max_sectors, align 8
  %116 = ptrtoint ptr %max_devices to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %max_devices, align 4
  %118 = call i32 @llvm.bswap.i32(i32 %117)
  %max_id = getelementptr inbounds %struct.Scsi_Host, ptr %call33, i32 0, i32 21
  %119 = ptrtoint ptr %max_id to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %max_id, align 4
  %120 = ptrtoint ptr %max_sg_count to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %max_sg_count, align 4
  %122 = call i32 @llvm.bswap.i32(i32 %121)
  %conv158 = trunc i32 %122 to i16
  %sg_tablesize = getelementptr inbounds %struct.Scsi_Host, ptr %call33, i32 0, i32 28
  %123 = ptrtoint ptr %sg_tablesize to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %conv158, ptr %sg_tablesize, align 2
  %124 = ptrtoint ptr %max_requests to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %max_requests, align 4
  %126 = call i32 @llvm.bswap.i32(i32 %125)
  %can_queue = getelementptr inbounds %struct.Scsi_Host, ptr %call33, i32 0, i32 26
  %127 = ptrtoint ptr %can_queue to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %can_queue, align 4
  %conv161 = trunc i32 %126 to i16
  %cmd_per_lun = getelementptr inbounds %struct.Scsi_Host, ptr %call33, i32 0, i32 27
  %128 = ptrtoint ptr %cmd_per_lun to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 %conv161, ptr %cmd_per_lun, align 8
  %max_cmd_len = getelementptr inbounds %struct.Scsi_Host, ptr %call33, i32 0, i32 24
  %129 = ptrtoint ptr %max_cmd_len to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 16, ptr %max_cmd_len, align 4
  %130 = ptrtoint ptr %max_sg_descriptors to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %max_sg_descriptors, align 4
  %sub163 = shl i32 %131, 4
  %add = add i32 %sub163, 48
  %and164 = and i32 %add, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and164)
  %cmp165.not = icmp eq i32 %and164, 0
  %add168 = add i32 %sub163, 79
  %and169 = and i32 %add168, -32
  %req_size.0 = select i1 %cmp165.not, i32 %add, i32 %and169
  %132 = call ptr @memset(ptr %set_config, i32 0, i32 56)
  %host_no171 = getelementptr inbounds %struct.Scsi_Host, ptr %call33, i32 0, i32 17
  %133 = ptrtoint ptr %host_no171 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %host_no171, align 4
  %135 = call i32 @llvm.bswap.i32(i32 %134)
  %iop_id = getelementptr inbounds %struct.hpt_iop_request_set_config, ptr %set_config, i32 0, i32 1
  %136 = ptrtoint ptr %iop_id to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %iop_id, align 4
  %conv173 = trunc i32 %134 to i16
  %137 = call i16 @llvm.bswap.i16(i16 %conv173)
  %vbus_id = getelementptr inbounds %struct.hpt_iop_request_set_config, ptr %set_config, i32 0, i32 2
  %138 = ptrtoint ptr %vbus_id to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 %137, ptr %vbus_id, align 4
  %conv174 = trunc i32 %req_size.0 to i16
  %139 = call i16 @llvm.bswap.i16(i16 %conv174)
  %max_host_request_size = getelementptr inbounds %struct.hpt_iop_request_set_config, ptr %set_config, i32 0, i32 3
  %140 = ptrtoint ptr %max_host_request_size to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 %139, ptr %max_host_request_size, align 2
  %141 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %hostdata, align 4
  %set_config176 = getelementptr inbounds %struct.hptiop_adapter_ops, ptr %142, i32 0, i32 9
  %143 = ptrtoint ptr %set_config176 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %set_config176, align 4
  %call177 = call i32 %144(ptr noundef %hostdata, ptr noundef nonnull %set_config) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call177)
  %tobool178.not = icmp eq i32 %call177, 0
  br i1 %tobool178.not, label %if.end187, label %do.end182

do.end182:                                        ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #13
  %145 = ptrtoint ptr %host43 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %host43, align 4
  %host_no185 = getelementptr inbounds %struct.Scsi_Host, ptr %146, i32 0, i32 17
  %147 = ptrtoint ptr %host_no185 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %host_no185, align 4
  %call186 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %148) #14
  br label %unmap_pci_bar

if.end187:                                        ; preds = %if.end154
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pcidev, i32 0, i32 44, i32 8
  %149 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %call33, ptr %driver_data.i.i, align 4
  %150 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %irq, align 4
  %call.i = call i32 @request_threaded_irq(i32 noundef %151, ptr noundef nonnull @hptiop_intr, ptr noundef null, i32 noundef 128, ptr noundef nonnull @driver_name, ptr noundef %hostdata) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool190.not = icmp eq i32 %call.i, 0
  br i1 %tobool190.not, label %if.end200, label %do.end194

do.end194:                                        ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #13
  %152 = ptrtoint ptr %host43 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %host43, align 4
  %host_no197 = getelementptr inbounds %struct.Scsi_Host, ptr %153, i32 0, i32 17
  %154 = ptrtoint ptr %host_no197 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %host_no197, align 4
  %156 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %irq, align 4
  %call199 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %155, i32 noundef %157) #14
  br label %unmap_pci_bar

if.end200:                                        ; preds = %if.end187
  %req_size201 = getelementptr inbounds %struct.Scsi_Host, ptr %call33, i32 1, i32 5, i32 1, i32 4, i32 3
  %158 = ptrtoint ptr %req_size201 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %req_size.0, ptr %req_size201, align 4
  %req_list = getelementptr inbounds %struct.Scsi_Host, ptr %call33, i32 1, i32 5, i32 1, i32 4, i32 7
  %159 = ptrtoint ptr %req_list to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr null, ptr %req_list, align 4
  %160 = ptrtoint ptr %max_requests107 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %max_requests107, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %161)
  %cmp203442.not = icmp eq i32 %161, 0
  br i1 %cmp203442.not, label %if.end200.for.end_crit_edge, label %for.body.lr.ph

if.end200.for.end_crit_edge:                      ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end200
  %dma_coherent = getelementptr inbounds %struct.Scsi_Host, ptr %call33, i32 3, i32 13, i32 13, i32 1, i32 2
  %dma_coherent_handle = getelementptr inbounds %struct.Scsi_Host, ptr %call33, i32 3, i32 49, i32 19
  %reqs = getelementptr inbounds %struct.Scsi_Host, ptr %call33, i32 1, i32 5, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end228.for.body_crit_edge, %for.body.lr.ph
  %i.0443 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end228.for.body_crit_edge ]
  %162 = ptrtoint ptr %req_size201 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %req_size201, align 4
  %add207 = add i32 %163, 32
  %call.i435 = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %add207, ptr noundef nonnull %start_phy, i32 noundef 3264, i32 noundef 0) #11
  %tobool209.not = icmp eq ptr %call.i435, null
  br i1 %tobool209.not, label %for.body.free_request_mem_crit_edge, label %if.end218

for.body.free_request_mem_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_request_mem

if.end218:                                        ; preds = %for.body
  %arrayidx = getelementptr [256 x ptr], ptr %dma_coherent, i32 0, i32 %i.0443
  %164 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %call.i435, ptr %arrayidx, align 4
  %165 = ptrtoint ptr %start_phy to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %start_phy, align 4
  %arrayidx219 = getelementptr [256 x i32], ptr %dma_coherent_handle, i32 0, i32 %i.0443
  %167 = ptrtoint ptr %arrayidx219 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %166, ptr %arrayidx219, align 4
  %168 = load i32, ptr %start_phy, align 4
  %and220 = and i32 %168, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and220)
  %cmp221.not = icmp eq i32 %and220, 0
  br i1 %cmp221.not, label %if.end218.if.end228_crit_edge, label %if.then223

if.end218.if.end228_crit_edge:                    ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end228

if.then223:                                       ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #13
  %add224 = add i32 %168, 31
  %and225 = and i32 %add224, -32
  %sub226 = sub i32 %and225, %168
  %169 = ptrtoint ptr %start_phy to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %and225, ptr %start_phy, align 4
  %add.ptr = getelementptr i8, ptr %call.i435, i32 %sub226
  br label %if.end228

if.end228:                                        ; preds = %if.then223, %if.end218.if.end228_crit_edge
  %start_virt.0 = phi ptr [ %add.ptr, %if.then223 ], [ %call.i435, %if.end218.if.end228_crit_edge ]
  %arrayidx229 = getelementptr [256 x %struct.hptiop_request], ptr %reqs, i32 0, i32 %i.0443
  %170 = ptrtoint ptr %arrayidx229 to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr null, ptr %arrayidx229, align 4
  %req_virt = getelementptr [256 x %struct.hptiop_request], ptr %reqs, i32 0, i32 %i.0443, i32 1
  %171 = ptrtoint ptr %req_virt to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %start_virt.0, ptr %req_virt, align 4
  %172 = ptrtoint ptr %start_phy to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %start_phy, align 4
  %shr232 = lshr i32 %173, 5
  %req_shifted_phy = getelementptr [256 x %struct.hptiop_request], ptr %reqs, i32 0, i32 %i.0443, i32 2
  %174 = ptrtoint ptr %req_shifted_phy to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %shr232, ptr %req_shifted_phy, align 4
  %index = getelementptr [256 x %struct.hptiop_request], ptr %reqs, i32 0, i32 %i.0443, i32 4
  %175 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %i.0443, ptr %index, align 4
  %176 = ptrtoint ptr %req_list to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %req_list, align 4
  store ptr %177, ptr %arrayidx229, align 4
  store ptr %arrayidx229, ptr %req_list, align 4
  %inc = add nuw i32 %i.0443, 1
  %178 = ptrtoint ptr %max_requests107 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %max_requests107, align 4
  %cmp203 = icmp ult i32 %inc, %179
  br i1 %cmp203, label %if.end228.for.body_crit_edge, label %if.end228.for.end_crit_edge

if.end228.for.end_crit_edge:                      ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end228.for.body_crit_edge:                     ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %if.end228.for.end_crit_edge, %if.end200.for.end_crit_edge
  %180 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %hostdata, align 4
  %enable_intr.i = getelementptr inbounds %struct.hptiop_adapter_ops, ptr %181, i32 0, i32 6
  %182 = ptrtoint ptr %enable_intr.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %enable_intr.i, align 8
  call void %183(ptr noundef %hostdata) #11
  %184 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %184)
  %bf.load.i = load i8, ptr %initialized, align 4
  %bf.set.i = or i8 %bf.load.i, 64
  store i8 %bf.set.i, ptr %initialized, align 4
  %call.i436 = call fastcc i32 @iop_send_sync_msg(ptr noundef %hostdata, i32 noundef 5, i32 noundef 5000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i436)
  %tobool.not.i = icmp eq i32 %call.i436, 0
  br i1 %tobool.not.i, label %if.end242, label %for.end.free_request_mem_crit_edge

for.end.free_request_mem_crit_edge:               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_request_mem

if.end242:                                        ; preds = %for.end
  %call.i437 = call i32 @scsi_add_host_with_dma(ptr noundef %call33, ptr noundef %dev, ptr noundef %dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i437)
  %tobool245.not = icmp eq i32 %call.i437, 0
  br i1 %tobool245.not, label %if.end254, label %if.end242.free_request_mem_crit_edge

if.end242.free_request_mem_crit_edge:             ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_request_mem

if.end254:                                        ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #13
  call void @scsi_scan_host(ptr noundef %call33) #11
  br label %cleanup

free_request_mem:                                 ; preds = %if.end242.free_request_mem_crit_edge, %for.end.free_request_mem_crit_edge, %for.body.free_request_mem_crit_edge
  %.str.57.sink = phi ptr [ @.str.57, %for.end.free_request_mem_crit_edge ], [ @.str.47, %if.end242.free_request_mem_crit_edge ], [ @.str.44, %for.body.free_request_mem_crit_edge ]
  %185 = ptrtoint ptr %host43 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %host43, align 4
  %host_no.i = getelementptr inbounds %struct.Scsi_Host, ptr %186, i32 0, i32 17
  %187 = ptrtoint ptr %host_no.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %host_no.i, align 4
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.57.sink, i32 noundef %188) #14
  %dma_coherent260 = getelementptr inbounds %struct.Scsi_Host, ptr %call33, i32 3, i32 13, i32 13, i32 1, i32 2
  %dma_coherent_handle263 = getelementptr inbounds %struct.Scsi_Host, ptr %call33, i32 3, i32 49, i32 19
  %189 = ptrtoint ptr %max_requests107 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %max_requests107, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %190)
  %cmp257444.not = icmp eq i32 %190, 0
  br i1 %cmp257444.not, label %free_request_mem.for.end278_crit_edge, label %free_request_mem.for.body259_crit_edge

free_request_mem.for.body259_crit_edge:           ; preds = %free_request_mem
  br label %for.body259

free_request_mem.for.end278_crit_edge:            ; preds = %free_request_mem
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end278

for.body259:                                      ; preds = %if.then266.for.body259_crit_edge, %free_request_mem.for.body259_crit_edge
  %i.1445 = phi i32 [ %inc277, %if.then266.for.body259_crit_edge ], [ 0, %free_request_mem.for.body259_crit_edge ]
  %arrayidx261 = getelementptr [256 x ptr], ptr %dma_coherent260, i32 0, i32 %i.1445
  %191 = ptrtoint ptr %arrayidx261 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %arrayidx261, align 4
  %tobool262.not = icmp eq ptr %192, null
  br i1 %tobool262.not, label %for.body259.for.end278_crit_edge, label %land.lhs.true

for.body259.for.end278_crit_edge:                 ; preds = %for.body259
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end278

land.lhs.true:                                    ; preds = %for.body259
  %arrayidx264 = getelementptr [256 x i32], ptr %dma_coherent_handle263, i32 0, i32 %i.1445
  %193 = ptrtoint ptr %arrayidx264 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %arrayidx264, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %194)
  %tobool265.not = icmp eq i32 %194, 0
  br i1 %tobool265.not, label %land.lhs.true.for.end278_crit_edge, label %if.then266

land.lhs.true.for.end278_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end278

if.then266:                                       ; preds = %land.lhs.true
  %195 = ptrtoint ptr %pcidev42 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %pcidev42, align 4
  %dev268 = getelementptr inbounds %struct.pci_dev, ptr %196, i32 0, i32 44
  %197 = ptrtoint ptr %req_size201 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %req_size201, align 4
  %add270 = add i32 %198, 32
  call void @dma_free_attrs(ptr noundef %dev268, i32 noundef %add270, ptr noundef nonnull %192, i32 noundef %194, i32 noundef 0) #11
  %inc277 = add nuw i32 %i.1445, 1
  %199 = ptrtoint ptr %max_requests107 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %max_requests107, align 4
  %cmp257 = icmp ult i32 %inc277, %200
  br i1 %cmp257, label %if.then266.for.body259_crit_edge, label %if.then266.for.end278_crit_edge

if.then266.for.end278_crit_edge:                  ; preds = %if.then266
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end278

if.then266.for.body259_crit_edge:                 ; preds = %if.then266
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body259

for.end278:                                       ; preds = %if.then266.for.end278_crit_edge, %land.lhs.true.for.end278_crit_edge, %for.body259.for.end278_crit_edge, %free_request_mem.for.end278_crit_edge
  %201 = ptrtoint ptr %pcidev42 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %pcidev42, align 4
  %irq280 = getelementptr inbounds %struct.pci_dev, ptr %202, i32 0, i32 46
  %203 = ptrtoint ptr %irq280 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %irq280, align 4
  %call281 = call ptr @free_irq(i32 noundef %204, ptr noundef %hostdata) #11
  br label %unmap_pci_bar

unmap_pci_bar:                                    ; preds = %for.end278, %do.end194, %do.end182, %do.end136, %do.end124, %do.end94, %do.end81, %do.end66
  %205 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %hostdata, align 4
  %internal_memfree = getelementptr inbounds %struct.hptiop_adapter_ops, ptr %206, i32 0, i32 3
  %207 = ptrtoint ptr %internal_memfree to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %internal_memfree, align 4
  %call283 = call i32 %208(ptr noundef %hostdata) #11
  %209 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %hostdata, align 4
  %unmap_pci_bar285 = getelementptr inbounds %struct.hptiop_adapter_ops, ptr %210, i32 0, i32 5
  %211 = ptrtoint ptr %unmap_pci_bar285 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %unmap_pci_bar285, align 4
  call void %212(ptr noundef %hostdata) #11
  br label %free_scsi_host

free_scsi_host:                                   ; preds = %unmap_pci_bar, %if.end41.free_scsi_host_crit_edge
  call void @scsi_host_put(ptr noundef %call33) #11
  br label %free_pci_regions

free_pci_regions:                                 ; preds = %free_scsi_host, %do.end38
  call void @pci_release_regions(ptr noundef %pcidev) #11
  br label %disable_pci_device

disable_pci_device:                               ; preds = %free_pci_regions, %do.end29, %do.end20
  call void @pci_disable_device(ptr noundef %pcidev) #11
  br label %cleanup

cleanup:                                          ; preds = %disable_pci_device, %if.end254, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ -19, %disable_pci_device ], [ 0, %if.end254 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %start_phy) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %set_config) #11
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %iop_config) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hptiop_remove(ptr nocapture noundef readonly %pcidev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pcidev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  tail call void @scsi_remove_host(ptr noundef %1) #11
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %call1.i = tail call fastcc i32 @iop_send_sync_msg(ptr noundef %hostdata.i, i32 noundef 3, i32 noundef 60000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %entry.hptiop_shutdown.exit_crit_edge, label %do.end.i

entry.hptiop_shutdown.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %hptiop_shutdown.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %host2.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 5
  %4 = ptrtoint ptr %host2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host2.i, align 4
  %host_no.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 17
  %6 = ptrtoint ptr %host_no.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %host_no.i, align 4
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, i32 noundef %7) #14
  br label %hptiop_shutdown.exit

hptiop_shutdown.exit:                             ; preds = %do.end.i, %entry.hptiop_shutdown.exit_crit_edge
  %8 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hostdata.i, align 4
  %disable_intr.i = getelementptr inbounds %struct.hptiop_adapter_ops, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %disable_intr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %disable_intr.i, align 4
  tail call void %11(ptr noundef %hostdata.i) #11
  %pcidev1 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 5, i32 1
  %12 = ptrtoint ptr %pcidev1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pcidev1, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 46
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq, align 4
  %call2 = tail call ptr @free_irq(i32 noundef %15, ptr noundef %hostdata) #11
  %dma_coherent = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 3, i32 13, i32 13, i32 1, i32 2
  %dma_coherent_handle = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 3, i32 49, i32 19
  %max_requests = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 5, i32 1, i32 4, i32 1
  %16 = ptrtoint ptr %max_requests to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_requests, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp40.not = icmp eq i32 %17, 0
  br i1 %cmp40.not, label %hptiop_shutdown.exit.for.end_crit_edge, label %for.body.lr.ph

hptiop_shutdown.exit.for.end_crit_edge:           ; preds = %hptiop_shutdown.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %hptiop_shutdown.exit
  %req_size = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 5, i32 1, i32 4, i32 3
  br label %for.body

for.body:                                         ; preds = %if.then.for.body_crit_edge, %for.body.lr.ph
  %i.041 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.then.for.body_crit_edge ]
  %arrayidx = getelementptr [256 x ptr], ptr %dma_coherent, i32 0, i32 %i.041
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %19, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %land.lhs.true

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

land.lhs.true:                                    ; preds = %for.body
  %arrayidx3 = getelementptr [256 x i32], ptr %dma_coherent_handle, i32 0, i32 %i.041
  %20 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool4.not = icmp eq i32 %21, 0
  br i1 %tobool4.not, label %land.lhs.true.for.end_crit_edge, label %if.then

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.then:                                          ; preds = %land.lhs.true
  %22 = ptrtoint ptr %pcidev1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pcidev1, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %24 = ptrtoint ptr %req_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %req_size, align 4
  %add = add i32 %25, 32
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %add, ptr noundef nonnull %19, i32 noundef %21, i32 noundef 0) #11
  %inc = add nuw i32 %i.041, 1
  %26 = ptrtoint ptr %max_requests to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_requests, align 4
  %cmp = icmp ult i32 %inc, %27
  br i1 %cmp, label %if.then.for.body_crit_edge, label %if.then.for.end_crit_edge

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.then.for.body_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %if.then.for.end_crit_edge, %land.lhs.true.for.end_crit_edge, %for.body.for.end_crit_edge, %hptiop_shutdown.exit.for.end_crit_edge
  %28 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hostdata, align 4
  %internal_memfree = getelementptr inbounds %struct.hptiop_adapter_ops, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %internal_memfree to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %internal_memfree, align 4
  %call10 = tail call i32 %31(ptr noundef %hostdata) #11
  %32 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hostdata, align 4
  %unmap_pci_bar = getelementptr inbounds %struct.hptiop_adapter_ops, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %unmap_pci_bar to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %unmap_pci_bar, align 4
  tail call void %35(ptr noundef %hostdata) #11
  %36 = ptrtoint ptr %pcidev1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pcidev1, align 4
  tail call void @pci_release_regions(ptr noundef %37) #11
  %38 = ptrtoint ptr %pcidev1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pcidev1, align 4
  %driver_data.i.i39 = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44, i32 8
  %40 = ptrtoint ptr %driver_data.i.i39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %driver_data.i.i39, align 4
  %41 = load ptr, ptr %pcidev1, align 4
  tail call void @pci_disable_device(ptr noundef %41) #11
  tail call void @scsi_host_put(ptr noundef %1) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hptiop_shutdown(ptr nocapture noundef readonly %pcidev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pcidev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %call1 = tail call fastcc i32 @iop_send_sync_msg(ptr noundef %hostdata, i32 noundef 3, i32 noundef 60000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %host2 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 5
  %2 = ptrtoint ptr %host2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host2, align 4
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %host_no, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, i32 noundef %5) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hostdata, align 4
  %disable_intr = getelementptr inbounds %struct.hptiop_adapter_ops, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %disable_intr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %disable_intr, align 4
  tail call void %9(ptr noundef %hostdata) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iop_wait_ready_itl(ptr nocapture noundef readonly %hba, i32 noundef %millisec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %millisec)
  %cmp23.not = icmp eq i32 %millisec, 0
  br i1 %cmp23.not, label %entry.do.body_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.024 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u, align 4
  %inbound_queue = getelementptr inbounds %struct.hpt_iopmu_itl, ptr %1, i32 0, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %inbound_queue) #11, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !156
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp2.not = icmp eq i32 %2, -1
  br i1 %cmp2.not, label %if.end, label %for.end

if.end:                                           ; preds = %for.body
  tail call void @msleep(i32 noundef 1) #11
  %inc = add nuw i32 %i.024, 1
  %exitcond.not = icmp eq i32 %inc, %millisec
  br i1 %exitcond.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  br label %do.body

do.body:                                          ; preds = %for.end, %entry.do.body_crit_edge
  %req.131 = phi i32 [ %3, %for.end ], [ 0, %entry.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !157
  tail call void @arm_heavy_mb() #11
  %4 = tail call i32 @llvm.bswap.i32(i32 %req.131)
  %5 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %u, align 4
  %outbound_queue = getelementptr inbounds %struct.hpt_iopmu_itl, ptr %6, i32 0, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %outbound_queue, i32 %4) #11, !srcloc !158
  %7 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %u, align 4
  %outbound_intstatus = getelementptr inbounds %struct.hpt_iopmu_itl, ptr %8, i32 0, i32 9
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %outbound_intstatus) #11, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !159
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hptiop_internal_memalloc_itl(ptr nocapture noundef readnone %hba) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hptiop_internal_memfree_itl(ptr nocapture noundef readnone %hba) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hptiop_map_pci_bar_itl(ptr nocapture noundef %hba) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pcidev1 = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 3
  %0 = ptrtoint ptr %pcidev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcidev1, align 4
  %flags.i = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 0, i32 3
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.hptiop_map_pci_bar.exit.thread_crit_edge, label %if.end.i

entry.hptiop_map_pci_bar.exit.thread_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %hptiop_map_pci_bar.exit.thread

if.end.i:                                         ; preds = %entry
  %arrayidx.i = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 0
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 8
  %end.i = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 0, i32 1
  %6 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp eq i32 %7, 0
  %sub.i = sub i32 1, %5
  %add.i = add i32 %sub.i, %7
  %cond.i = select i1 %cmp.i, i32 0, i32 %add.i
  %call12.i = tail call ptr @ioremap(i32 noundef %5, i32 noundef %cond.i) #11
  %tobool13.not.i = icmp eq ptr %call12.i, null
  br i1 %tobool13.not.i, label %if.end.i.hptiop_map_pci_bar.exit.thread_crit_edge, label %if.end

if.end.i.hptiop_map_pci_bar.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hptiop_map_pci_bar.exit.thread

hptiop_map_pci_bar.exit.thread:                   ; preds = %if.end.i.hptiop_map_pci_bar.exit.thread_crit_edge, %entry.hptiop_map_pci_bar.exit.thread_crit_edge
  %.str.4.sink.i = phi ptr [ @.str, %entry.hptiop_map_pci_bar.exit.thread_crit_edge ], [ @.str.4, %if.end.i.hptiop_map_pci_bar.exit.thread_crit_edge ]
  %host19.i = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 2
  %8 = ptrtoint ptr %host19.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host19.i, align 4
  %host_no20.i = getelementptr inbounds %struct.Scsi_Host, ptr %9, i32 0, i32 17
  %10 = ptrtoint ptr %host_no20.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %host_no20.i, align 4
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.4.sink.i, i32 noundef %11) #14
  %u52 = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1
  %12 = ptrtoint ptr %u52 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %u52, align 4
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %u = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1
  %13 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call12.i, ptr %u, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %device, align 2
  %16 = and i16 %15, -256
  call void @__sanitizer_cov_trace_const_cmp2(i16 17408, i16 %16)
  %cmp4 = icmp eq i16 %16, 17408
  br i1 %cmp4, label %if.then6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then6:                                         ; preds = %if.end
  %plx = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1, i32 0, i32 1
  %17 = ptrtoint ptr %plx to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call12.i, ptr %plx, align 4
  %18 = ptrtoint ptr %pcidev1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pcidev1, align 4
  %flags.i32 = getelementptr %struct.pci_dev, ptr %19, i32 0, i32 47, i32 2, i32 3
  %20 = ptrtoint ptr %flags.i32 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags.i32, align 4
  %and.i33 = and i32 %21, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i33)
  %tobool.not.i34 = icmp eq i32 %and.i33, 0
  br i1 %tobool.not.i34, label %if.then6.if.then17_crit_edge, label %if.end.i43

if.then6.if.then17_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then17

if.end.i43:                                       ; preds = %if.then6
  %arrayidx.i35 = getelementptr %struct.pci_dev, ptr %19, i32 0, i32 47, i32 2
  %22 = ptrtoint ptr %arrayidx.i35 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i35, align 8
  %end.i36 = getelementptr %struct.pci_dev, ptr %19, i32 0, i32 47, i32 2, i32 1
  %24 = ptrtoint ptr %end.i36 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %end.i36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i37 = icmp eq i32 %25, 0
  %sub.i38 = sub i32 1, %23
  %add.i39 = add i32 %sub.i38, %25
  %cond.i40 = select i1 %cmp.i37, i32 0, i32 %add.i39
  %call12.i41 = tail call ptr @ioremap(i32 noundef %23, i32 noundef %cond.i40) #11
  %tobool13.not.i42 = icmp eq ptr %call12.i41, null
  br i1 %tobool13.not.i42, label %if.end.i43.if.then17_crit_edge, label %hptiop_map_pci_bar.exit50

if.end.i43.if.then17_crit_edge:                   ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then17

hptiop_map_pci_bar.exit50:                        ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call12.i41, ptr %u, align 4
  br label %cleanup

if.then17:                                        ; preds = %if.end.i43.if.then17_crit_edge, %if.then6.if.then17_crit_edge
  %.str.4.sink.i44 = phi ptr [ @.str, %if.then6.if.then17_crit_edge ], [ @.str.4, %if.end.i43.if.then17_crit_edge ]
  %host19.i45 = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 2
  %27 = ptrtoint ptr %host19.i45 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %host19.i45, align 4
  %host_no20.i46 = getelementptr inbounds %struct.Scsi_Host, ptr %28, i32 0, i32 17
  %29 = ptrtoint ptr %host_no20.i46 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %host_no20.i46, align 4
  %call21.i47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.4.sink.i44, i32 noundef %30) #14
  %31 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %u, align 4
  %32 = ptrtoint ptr %plx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %plx, align 4
  tail call void @iounmap(ptr noundef %33) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %hptiop_map_pci_bar.exit50, %if.end.cleanup_crit_edge, %hptiop_map_pci_bar.exit.thread
  %retval.0 = phi i32 [ -1, %if.then17 ], [ 0, %hptiop_map_pci_bar.exit50 ], [ 0, %if.end.cleanup_crit_edge ], [ -1, %hptiop_map_pci_bar.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hptiop_unmap_pci_bar_itl(ptr nocapture noundef readonly %hba) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %plx = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %plx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @iounmap(ptr noundef nonnull %1) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %u = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1
  %2 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %u, align 4
  tail call void @iounmap(ptr noundef %3) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hptiop_enable_intr_itl(ptr nocapture noundef readonly %hba) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !160
  tail call void @arm_heavy_mb() #11
  %u = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u, align 4
  %outbound_intmask = getelementptr inbounds %struct.hpt_iopmu_itl, ptr %1, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %outbound_intmask, i32 -150994945) #11, !srcloc !158
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hptiop_disable_intr_itl(ptr nocapture noundef readonly %hba) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u, align 4
  %outbound_intmask = getelementptr inbounds %struct.hpt_iopmu_itl, ptr %1, i32 0, i32 10
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %outbound_intmask) #11, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !162
  tail call void @arm_heavy_mb() #11
  %3 = or i32 %2, 150994944
  %4 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %u, align 4
  %outbound_intmask5 = getelementptr inbounds %struct.hpt_iopmu_itl, ptr %5, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %outbound_intmask5, i32 %3) #11, !srcloc !158
  %6 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %u, align 4
  %outbound_intmask10 = getelementptr inbounds %struct.hpt_iopmu_itl, ptr %7, i32 0, i32 10
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %outbound_intmask10) #11, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !163
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iop_get_config_itl(ptr noundef %hba, ptr noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u, align 4
  %inbound_queue = getelementptr inbounds %struct.hpt_iopmu_itl, ptr %1, i32 0, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %inbound_queue) #11, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !164
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp = icmp eq i32 %2, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %4 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %u, align 4
  %6 = ptrtoint ptr %5 to i32
  %add = add i32 %3, %6
  %7 = inttoptr i32 %add to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !165
  tail call void @arm_heavy_mb() #11
  %flags = getelementptr inbounds %struct.hpt_iop_request_header, ptr %7, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %flags, i32 0) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !166
  tail call void @arm_heavy_mb() #11
  %type = getelementptr inbounds %struct.hpt_iop_request_header, ptr %7, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %type, i32 0) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !167
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 1006632960) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !168
  tail call void @arm_heavy_mb() #11
  %result = getelementptr inbounds %struct.hpt_iop_request_header, ptr %7, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %result, i32 0) #11, !srcloc !158
  %call16 = tail call fastcc i32 @iop_send_sync_request_itl(ptr noundef %hba, ptr noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool.not = icmp eq i32 %call16, 0
  br i1 %tobool.not, label %if.end18, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mmiocpy(ptr noundef %config, ptr noundef %7, i32 noundef 60) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !169
  tail call void @arm_heavy_mb() #11
  %8 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %u, align 4
  %outbound_queue = getelementptr inbounds %struct.hpt_iopmu_itl, ptr %9, i32 0, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %outbound_queue, i32 %2) #11, !srcloc !158
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end18 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iop_set_config_itl(ptr noundef %hba, ptr noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u, align 4
  %inbound_queue = getelementptr inbounds %struct.hpt_iopmu_itl, ptr %1, i32 0, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %inbound_queue) #11, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !170
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp = icmp eq i32 %2, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %4 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %u, align 4
  %6 = ptrtoint ptr %5 to i32
  %add = add i32 %3, %6
  %7 = inttoptr i32 %add to ptr
  %add.ptr = getelementptr i8, ptr %7, i32 24
  %add.ptr4 = getelementptr i8, ptr %config, i32 24
  tail call void @mmiocpy(ptr noundef %add.ptr, ptr noundef %add.ptr4, i32 noundef 32) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !171
  tail call void @arm_heavy_mb() #11
  %flags = getelementptr inbounds %struct.hpt_iop_request_header, ptr %7, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %flags, i32 0) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !172
  tail call void @arm_heavy_mb() #11
  %type = getelementptr inbounds %struct.hpt_iop_request_header, ptr %7, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %type, i32 16777216) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !173
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 939524096) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !174
  tail call void @arm_heavy_mb() #11
  %result = getelementptr inbounds %struct.hpt_iop_request_header, ptr %7, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %result, i32 0) #11, !srcloc !158
  %call17 = tail call fastcc i32 @iop_send_sync_request_itl(ptr noundef %hba, ptr noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool.not = icmp eq i32 %call17, 0
  br i1 %tobool.not, label %do.body20, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !175
  tail call void @arm_heavy_mb() #11
  %8 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %u, align 4
  %outbound_queue = getelementptr inbounds %struct.hpt_iopmu_itl, ptr %9, i32 0, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %outbound_queue, i32 %2) #11, !srcloc !158
  br label %cleanup

cleanup:                                          ; preds = %do.body20, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body20 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iop_intr_itl(ptr noundef %hba) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u, align 4
  %plx3 = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %plx3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plx3, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %add.ptr = getelementptr i8, ptr %3, i32 72796
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !176
  %5 = and i32 %4, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool5.not = icmp eq i32 %5, 0
  br i1 %tobool5.not, label %land.lhs.true.if.end_crit_edge, label %do.body

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.body:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !177
  tail call void @arm_heavy_mb() #11
  %add.ptr6 = getelementptr i8, ptr %3, i32 72800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 16777216) #11, !srcloc !158
  br label %if.end

if.end:                                           ; preds = %do.body, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %outbound_intstatus = getelementptr inbounds %struct.hpt_iopmu_itl, ptr %1, i32 0, i32 9
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %outbound_intstatus) #11, !srcloc !155
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !178
  %and12 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end.if.end24_crit_edge, label %if.then14

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then14:                                        ; preds = %if.end
  %outbound_msgaddr0 = getelementptr inbounds %struct.hpt_iopmu_itl, ptr %1, i32 0, i32 3
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %outbound_msgaddr0) #11, !srcloc !155
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !180
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %outbound_intstatus, i32 16777216) #11, !srcloc !158
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %if.then14.if.end.i_crit_edge [
    i32 0, label %if.then14.if.then.i_crit_edge
    i32 6, label %if.then14.if.then.i_crit_edge40
  ]

if.then14.if.then.i_crit_edge40:                  ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then14.if.then.i_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then14.if.end.i_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %if.then14.if.then.i_crit_edge, %if.then14.if.then.i_crit_edge40
  %msg_done.i = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 12
  %11 = ptrtoint ptr %msg_done.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load.i = load i8, ptr %msg_done.i, align 4
  %bf.set.i = or i8 %bf.load.i, 32
  store i8 %bf.set.i, ptr %msg_done.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then14.if.end.i_crit_edge
  %initialized.i = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 12
  %12 = ptrtoint ptr %initialized.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load2.i = load i8, ptr %initialized.i, align 4
  %13 = and i8 %bf.load2.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %if.end.i.if.end24_crit_edge, label %if.end5.i

if.end.i.if.end24_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %8)
  %cmp6.i = icmp eq i32 %8, 16777216
  br i1 %cmp6.i, label %if.then7.i, label %if.else.i

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  %resetting.i = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 18
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %resetting.i, i32 noundef 4) #11
  %14 = ptrtoint ptr %resetting.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 0, ptr %resetting.i, align 4
  %reset_wq.i = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 19
  tail call void @__wake_up(ptr noundef %reset_wq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  br label %if.end24

if.else.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %9)
  %cmp8.i = icmp ult i32 %9, 256
  br i1 %cmp8.i, label %if.then9.i, label %if.else.i.if.end24_crit_edge

if.else.i.if.end24_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then9.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %bf.set13.i = or i8 %bf.load2.i, 32
  %15 = ptrtoint ptr %initialized.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %bf.set13.i, ptr %initialized.i, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then9.i, %if.else.i.if.end24_crit_edge, %if.then7.i, %if.end.i.if.end24_crit_edge, %if.end.if.end24_crit_edge
  %ret.0 = phi i32 [ 0, %if.end.if.end24_crit_edge ], [ 1, %if.end.i.if.end24_crit_edge ], [ 1, %if.then7.i ], [ 1, %if.else.i.if.end24_crit_edge ], [ 1, %if.then9.i ]
  %and25 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end24.if.end28_crit_edge, label %if.then27

if.end24.if.end28_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then27:                                        ; preds = %if.end24
  %16 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %u, align 4
  %outbound_queue34.i = getelementptr inbounds %struct.hpt_iopmu_itl, ptr %17, i32 0, i32 13
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %outbound_queue34.i) #11, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !181
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %cmp.not35.i = icmp eq i32 %18, -1
  br i1 %cmp.not35.i, label %if.then27.if.end28_crit_edge, label %while.body.preheader.i

if.then27.if.end28_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

while.body.preheader.i:                           ; preds = %if.then27
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #11
  br label %while.body.i

while.body.i:                                     ; preds = %if.end23.i.while.body.i_crit_edge, %while.body.preheader.i
  %20 = phi i32 [ %29, %if.end23.i.while.body.i_crit_edge ], [ %19, %while.body.preheader.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %20)
  %tobool.not.i37 = icmp ult i32 %20, 268435456
  br i1 %tobool.not.i37, label %if.else.i39, label %if.then.i38

if.then.i38:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @hptiop_request_callback_itl(ptr noundef %hba, i32 noundef %20) #11
  br label %if.end23.i

if.else.i39:                                      ; preds = %while.body.i
  %21 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %u, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 %20
  %flags.i = getelementptr inbounds %struct.hpt_iop_request_header, ptr %add.ptr.i, i32 0, i32 2
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %flags.i) #11, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !182
  %24 = and i32 %23, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool10.not.i = icmp eq i32 %24, 0
  br i1 %tobool10.not.i, label %if.else21.i, label %if.then11.i

if.then11.i:                                      ; preds = %if.else.i39
  %context.i = getelementptr inbounds %struct.hpt_iop_request_header, ptr %add.ptr.i, i32 0, i32 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %context.i) #11, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !183
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool17.not.i = icmp eq i32 %25, 0
  br i1 %tobool17.not.i, label %do.body.i, label %if.then18.i

if.then18.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @hptiop_request_callback_itl(ptr noundef %hba, i32 noundef %20) #11
  br label %if.end23.i

do.body.i:                                        ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !184
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %context.i, i32 16777216) #11, !srcloc !158
  br label %if.end23.i

if.else21.i:                                      ; preds = %if.else.i39
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @hptiop_request_callback_itl(ptr noundef %hba, i32 noundef %20) #11
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.else21.i, %do.body.i, %if.then18.i, %if.then.i38
  %26 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %u, align 4
  %outbound_queue.i = getelementptr inbounds %struct.hpt_iopmu_itl, ptr %27, i32 0, i32 13
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %outbound_queue.i) #11, !srcloc !155
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !181
  %cmp.not.i = icmp eq i32 %28, -1
  br i1 %cmp.not.i, label %if.end23.i.if.end28_crit_edge, label %if.end23.i.while.body.i_crit_edge

if.end23.i.while.body.i_crit_edge:                ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

if.end23.i.if.end28_crit_edge:                    ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.end28:                                         ; preds = %if.end23.i.if.end28_crit_edge, %if.then27.if.end28_crit_edge, %if.end24.if.end28_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.end24.if.end28_crit_edge ], [ 1, %if.then27.if.end28_crit_edge ], [ 1, %if.end23.i.if.end28_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hptiop_post_msg_itl(ptr nocapture noundef readonly %hba, i32 noundef %msg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !185
  tail call void @arm_heavy_mb() #11
  %0 = tail call i32 @llvm.bswap.i32(i32 %msg)
  %u = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1
  %1 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %u, align 4
  %inbound_msgaddr0 = getelementptr inbounds %struct.hpt_iopmu_itl, ptr %2, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %inbound_msgaddr0, i32 %0) #11, !srcloc !158
  %3 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %u, align 4
  %outbound_intstatus = getelementptr inbounds %struct.hpt_iopmu_itl, ptr %4, i32 0, i32 9
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %outbound_intstatus) #11, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !186
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hptiop_post_req_itl(ptr nocapture noundef readonly %hba, ptr nocapture noundef readonly %_req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %req_virt = getelementptr inbounds %struct.hptiop_request, ptr %_req, i32 0, i32 1
  %0 = ptrtoint ptr %req_virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req_virt, align 4
  %index = getelementptr inbounds %struct.hptiop_request, ptr %_req, i32 0, i32 4
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %or = or i32 %3, -2147483648
  %4 = tail call i32 @llvm.bswap.i32(i32 %or)
  %context = getelementptr inbounds %struct.hpt_iop_request_header, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %context, align 4
  %context_hi32 = getelementptr inbounds %struct.hpt_iop_request_header, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %context_hi32 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %context_hi32, align 4
  %iopintf_v2 = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 12
  %7 = ptrtoint ptr %iopintf_v2 to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %iopintf_v2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %do.body9, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %10)
  %cmp = icmp ult i32 %10, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %10)
  %cmp3 = icmp ult i32 %10, 512
  %. = select i1 %cmp3, i32 -2147483648, i32 -1073741824
  %size_bits.0 = select i1 %cmp, i32 1073741824, i32 %.
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !187
  tail call void @arm_heavy_mb() #11
  %req_shifted_phy = getelementptr inbounds %struct.hptiop_request, ptr %_req, i32 0, i32 2
  %11 = ptrtoint ptr %req_shifted_phy to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %req_shifted_phy, align 4
  %or7 = or i32 %size_bits.0, %12
  %13 = tail call i32 @llvm.bswap.i32(i32 %or7)
  %u = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1
  %14 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %u, align 4
  %inbound_queue = getelementptr inbounds %struct.hpt_iopmu_itl, ptr %15, i32 0, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %inbound_queue, i32 %13) #11, !srcloc !158
  br label %if.end17

do.body9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !188
  tail call void @arm_heavy_mb() #11
  %req_shifted_phy12 = getelementptr inbounds %struct.hptiop_request, ptr %_req, i32 0, i32 2
  %16 = ptrtoint ptr %req_shifted_phy12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %req_shifted_phy12, align 4
  %or13 = or i32 %17, -2147483648
  %18 = tail call i32 @llvm.bswap.i32(i32 %or13)
  %u14 = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1
  %19 = ptrtoint ptr %u14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %u14, align 4
  %inbound_queue16 = getelementptr inbounds %struct.hpt_iopmu_itl, ptr %20, i32 0, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %inbound_queue16, i32 %18) #11, !srcloc !158
  br label %if.end17

if.end17:                                         ; preds = %do.body9, %if.then
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hptiop_reset_comm_itl(ptr nocapture noundef readnone %hba) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iop_send_sync_request_itl(ptr noundef %hba, ptr noundef %_req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  tail call void @arm_heavy_mb() #11
  %flags = getelementptr inbounds %struct.hpt_iop_request_header, ptr %_req, i32 0, i32 2
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %flags) #11, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  %1 = or i32 %0, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %flags, i32 %1) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !191
  tail call void @arm_heavy_mb() #11
  %context = getelementptr inbounds %struct.hpt_iop_request_header, ptr %_req, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %context, i32 0) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !192
  tail call void @arm_heavy_mb() #11
  %2 = ptrtoint ptr %_req to i32
  %u = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1
  %3 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %u, align 4
  %5 = ptrtoint ptr %4 to i32
  %sub = sub i32 %2, %5
  %6 = tail call i32 @llvm.bswap.i32(i32 %sub)
  %inbound_queue = getelementptr inbounds %struct.hpt_iopmu_itl, ptr %4, i32 0, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %inbound_queue, i32 %6) #11, !srcloc !158
  %7 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %u, align 4
  %outbound_intstatus = getelementptr inbounds %struct.hpt_iopmu_itl, ptr %8, i32 0, i32 9
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %outbound_intstatus) #11, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !193
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.01 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  %call18 = tail call i32 @iop_intr_itl(ptr noundef %hba)
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %context) #11, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !194
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %for.body
  tail call void @msleep(i32 noundef 1) #11
  %inc = add nuw nsw i32 %i.01, 1
  %exitcond.not = icmp eq i32 %inc, 20000
  br i1 %exitcond.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.body.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hptiop_request_callback_itl(ptr noundef %hba, i32 noundef %tag) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %tag)
  %tobool.not = icmp sgt i32 %tag, -1
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %iopintf_v2.i = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 12
  %0 = ptrtoint ptr %iopintf_v2.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %iopintf_v2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %and.i = and i32 %tag, 1073741823
  %req_virt.i = getelementptr %struct.hptiop_hba, ptr %hba, i32 0, i32 14, i32 %and.i, i32 1
  %1 = ptrtoint ptr %req_virt.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %req_virt.i, align 4
  %and1.i = and i32 %tag, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.then.i.hptiop_host_request_callback_itl.exit_crit_edge, label %if.then5.i, !prof !195

if.then.i.hptiop_host_request_callback_itl.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hptiop_host_request_callback_itl.exit

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %result.i = getelementptr inbounds %struct.hpt_iop_request_header, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 16777216, ptr %result.i, align 4
  br label %hptiop_host_request_callback_itl.exit

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %and1 = and i32 %tag, 2147483647
  %req_virt8.i = getelementptr %struct.hptiop_hba, ptr %hba, i32 0, i32 14, i32 %and1, i32 1
  %4 = ptrtoint ptr %req_virt8.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %req_virt8.i, align 4
  br label %hptiop_host_request_callback_itl.exit

hptiop_host_request_callback_itl.exit:            ; preds = %if.else.i, %if.then5.i, %if.then.i.hptiop_host_request_callback_itl.exit_crit_edge
  %req.0.i = phi ptr [ %2, %if.then5.i ], [ %2, %if.then.i.hptiop_host_request_callback_itl.exit_crit_edge ], [ %5, %if.else.i ]
  %tag.0.i = phi i32 [ %and.i, %if.then5.i ], [ %and.i, %if.then.i.hptiop_host_request_callback_itl.exit_crit_edge ], [ %and1, %if.else.i ]
  tail call fastcc void @hptiop_finish_scsi_req(ptr noundef %hba, i32 noundef %tag.0.i, ptr noundef %req.0.i) #11
  br label %if.end

if.else:                                          ; preds = %entry
  %u.i = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1
  %6 = ptrtoint ptr %u.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %u.i, align 4
  %8 = ptrtoint ptr %7 to i32
  %add.i = add i32 %8, %tag
  %9 = inttoptr i32 %add.i to ptr
  %result.i5 = getelementptr inbounds %struct.hpt_iop_request_header, ptr %9, i32 0, i32 3
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %result.i5) #11, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !196
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i6 = icmp eq i32 %10, 0
  br i1 %tobool.not.i6, label %do.body5.i, label %do.body11.i, !prof !195

do.body5.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/hptiop.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 807, 0\0A.popsection", ""() #11, !srcloc !197
  unreachable

do.body11.i:                                      ; preds = %if.else
  %type.i = getelementptr inbounds %struct.hpt_iop_request_header, ptr %9, i32 0, i32 1
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %type.i) #11, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !198
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %11)
  %cmp.not.i = icmp eq i32 %11, 67108864
  br i1 %cmp.not.i, label %do.end32.i, label %do.body24.i, !prof !199

do.body24.i:                                      ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/hptiop.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 808, 0\0A.popsection", ""() #11, !srcloc !200
  unreachable

do.end32.i:                                       ; preds = %do.body11.i
  %context.i = getelementptr inbounds %struct.hpt_iop_request_header, ptr %9, i32 0, i32 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %context.i) #11, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !201
  %context_hi32.i = getelementptr inbounds %struct.hpt_iop_request_header, ptr %9, i32 0, i32 5
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %context_hi32.i) #11, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !202
  %14 = tail call i32 @llvm.bswap.i32(i32 %12) #11
  %15 = inttoptr i32 %14 to ptr
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %result.i5) #11, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !203
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %16)
  %cmp51.i = icmp eq i32 %16, 16777216
  %result54.i = getelementptr inbounds %struct.hpt_ioctl_k, ptr %15, i32 0, i32 8
  br i1 %cmp51.i, label %if.then53.i, label %if.else.i8

if.then53.i:                                      ; preds = %do.end32.i
  %17 = ptrtoint ptr %result54.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %result54.i, align 4
  %outbuf_size.i = getelementptr inbounds %struct.hpt_ioctl_k, ptr %15, i32 0, i32 3
  %18 = ptrtoint ptr %outbuf_size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %outbuf_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool55.not.i = icmp eq i32 %19, 0
  br i1 %tobool55.not.i, label %if.then53.i.if.end64.i_crit_edge, label %if.then56.i

if.then53.i.if.end64.i_crit_edge:                 ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64.i

if.then56.i:                                      ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #13
  %outbuf.i = getelementptr inbounds %struct.hpt_ioctl_k, ptr %15, i32 0, i32 5
  %20 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %outbuf.i, align 4
  %inbuf_size.i = getelementptr inbounds %struct.hpt_iop_request_ioctl_command, ptr %9, i32 0, i32 2
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %inbuf_size.i) #11, !srcloc !155
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !204
  %add62.i = add i32 %23, 3
  %and.i7 = and i32 %add62.i, -4
  %arrayidx.i = getelementptr %struct.hpt_iop_request_ioctl_command, ptr %9, i32 0, i32 5, i32 %and.i7
  %24 = ptrtoint ptr %outbuf_size.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %outbuf_size.i, align 4
  tail call void @mmiocpy(ptr noundef %21, ptr noundef %arrayidx.i, i32 noundef %25) #11
  br label %if.end64.i

if.end64.i:                                       ; preds = %if.then56.i, %if.then53.i.if.end64.i_crit_edge
  %bytes_returned.i = getelementptr inbounds %struct.hpt_ioctl_k, ptr %15, i32 0, i32 6
  %26 = ptrtoint ptr %bytes_returned.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bytes_returned.i, align 4
  %tobool65.not.i = icmp eq ptr %27, null
  br i1 %tobool65.not.i, label %if.end64.i.hptiop_iop_request_callback_itl.exit_crit_edge, label %if.then66.i

if.end64.i.hptiop_iop_request_callback_itl.exit_crit_edge: ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hptiop_iop_request_callback_itl.exit

if.then66.i:                                      ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %outbuf_size.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %outbuf_size.i, align 4
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %27, align 4
  br label %hptiop_iop_request_callback_itl.exit

if.else.i8:                                       ; preds = %do.end32.i
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %result54.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %result54.i, align 4
  br label %hptiop_iop_request_callback_itl.exit

hptiop_iop_request_callback_itl.exit:             ; preds = %if.else.i8, %if.then66.i, %if.end64.i.hptiop_iop_request_callback_itl.exit_crit_edge
  %done.i = getelementptr inbounds %struct.hpt_ioctl_k, ptr %15, i32 0, i32 7
  %32 = ptrtoint ptr %done.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %done.i, align 4
  tail call void %33(ptr noundef %15) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !205
  tail call void @arm_heavy_mb() #11
  %34 = tail call i32 @llvm.bswap.i32(i32 %tag) #11
  %35 = ptrtoint ptr %u.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %u.i, align 4
  %outbound_queue.i = getelementptr inbounds %struct.hpt_iopmu_itl, ptr %36, i32 0, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %outbound_queue.i, i32 %34) #11, !srcloc !158
  br label %if.end

if.end:                                           ; preds = %hptiop_iop_request_callback_itl.exit, %hptiop_host_request_callback_itl.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hptiop_finish_scsi_req(ptr noundef %hba, i32 noundef %tag, ptr nocapture noundef readonly %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %result = getelementptr inbounds %struct.hpt_iop_request_header, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %result, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.body4, label %do.body10, !prof !195

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/hptiop.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 726, 0\0A.popsection", ""() #11, !srcloc !206
  unreachable

do.body10:                                        ; preds = %entry
  %type = getelementptr inbounds %struct.hpt_iop_request_header, ptr %req, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %3)
  %cmp.not = icmp eq i32 %3, 50331648
  br i1 %cmp.not, label %do.end27, label %do.body19, !prof !199

do.body19:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/hptiop.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 727, 0\0A.popsection", ""() #11, !srcloc !207
  unreachable

do.end27:                                         ; preds = %do.body10
  %scp28 = getelementptr %struct.hptiop_hba, ptr %hba, i32 0, i32 14, i32 %tag, i32 3
  %4 = ptrtoint ptr %scp28 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %scp28, align 4
  %SCp = getelementptr inbounds %struct.scsi_cmnd, ptr %5, i32 0, i32 22
  %6 = ptrtoint ptr %SCp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %SCp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool29.not = icmp eq i32 %7, 0
  br i1 %tobool29.not, label %do.end27.if.end31_crit_edge, label %if.then30

do.end27.if.end31_crit_edge:                      ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then30:                                        ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @scsi_dma_unmap(ptr noundef %5) #11
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %do.end27.if.end31_crit_edge
  %8 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %result, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %10, label %sw.default [
    i32 1, label %sw.bb
    i32 6, label %if.end31.sw.epilog_crit_edge
    i32 3, label %sw.bb37
    i32 4, label %sw.bb39
    i32 2, label %sw.bb41
    i32 5, label %sw.bb43
    i32 7, label %sw.bb45
  ]

if.end31.sw.epilog_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %5, i32 0, i32 17, i32 1
  %12 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %length.i, align 4
  %dataxfer_length = getelementptr inbounds %struct.hpt_iop_request_scsi_command, ptr %req, i32 0, i32 6
  %14 = ptrtoint ptr %dataxfer_length to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dataxfer_length, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %sub = sub i32 %13, %16
  %resid_len.i = getelementptr inbounds %struct.scsi_request, ptr %5, i32 0, i32 5
  %17 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub, ptr %resid_len.i, align 4
  br label %sw.epilog

sw.bb37:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb39:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb41:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb43:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb45:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  %length.i82 = getelementptr inbounds %struct.scsi_cmnd, ptr %5, i32 0, i32 17, i32 1
  %18 = ptrtoint ptr %length.i82 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %length.i82, align 4
  %dataxfer_length47 = getelementptr inbounds %struct.hpt_iop_request_scsi_command, ptr %req, i32 0, i32 6
  %20 = ptrtoint ptr %dataxfer_length47 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dataxfer_length47, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %sub48 = sub i32 %19, %22
  %resid_len.i83 = getelementptr inbounds %struct.scsi_request, ptr %5, i32 0, i32 5
  %23 = ptrtoint ptr %resid_len.i83 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %sub48, ptr %resid_len.i83, align 4
  %result49 = getelementptr inbounds %struct.scsi_cmnd, ptr %5, i32 0, i32 24
  %24 = ptrtoint ptr %result49 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2, ptr %result49, align 4
  %sense_buffer = getelementptr inbounds %struct.scsi_cmnd, ptr %5, i32 0, i32 21
  %25 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sense_buffer, align 4
  %sg_list = getelementptr inbounds %struct.hpt_iop_request_scsi_command, ptr %req, i32 0, i32 7
  %27 = call ptr @memcpy(ptr %26, ptr %sg_list, i32 96)
  br label %skip_resid

sw.default:                                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb43, %sw.bb41, %sw.bb39, %sw.bb37, %sw.bb, %if.end31.sw.epilog_crit_edge
  %.sink = phi i32 [ 327680, %sw.default ], [ 327680, %sw.bb43 ], [ 458752, %sw.bb41 ], [ 524288, %sw.bb39 ], [ 131072, %sw.bb37 ], [ 0, %sw.bb ], [ 262144, %if.end31.sw.epilog_crit_edge ]
  %result50 = getelementptr inbounds %struct.scsi_cmnd, ptr %5, i32 0, i32 24
  %28 = ptrtoint ptr %result50 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %.sink, ptr %result50, align 4
  %length.i84 = getelementptr inbounds %struct.scsi_cmnd, ptr %5, i32 0, i32 17, i32 1
  %29 = ptrtoint ptr %length.i84 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %length.i84, align 4
  %dataxfer_length52 = getelementptr inbounds %struct.hpt_iop_request_scsi_command, ptr %req, i32 0, i32 6
  %31 = ptrtoint ptr %dataxfer_length52 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dataxfer_length52, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  %sub53 = sub i32 %30, %33
  %resid_len.i85 = getelementptr inbounds %struct.scsi_request, ptr %5, i32 0, i32 5
  %34 = ptrtoint ptr %resid_len.i85 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %sub53, ptr %resid_len.i85, align 4
  br label %skip_resid

skip_resid:                                       ; preds = %sw.epilog, %sw.bb45
  %arrayidx = getelementptr %struct.hptiop_hba, ptr %hba, i32 0, i32 14, i32 %tag
  tail call void @scsi_done(ptr noundef %5) #11
  %req_list.i = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 13
  %35 = ptrtoint ptr %req_list.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %req_list.i, align 4
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %arrayidx, align 4
  store ptr %arrayidx, ptr %req_list.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_dma_unmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iop_wait_ready_mv(ptr noundef %hba, i32 noundef %millisec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @iop_send_sync_msg(ptr noundef %hba, i32 noundef 0, i32 noundef %millisec)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hptiop_internal_memalloc_mv(ptr noundef %hba) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pcidev = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 3
  %0 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %internal_req_phy = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1, i32 0, i32 3
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 2048, ptr noundef %internal_req_phy, i32 noundef 3264, i32 noundef 0) #11
  %internal_req = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1, i32 0, i32 2
  %2 = ptrtoint ptr %internal_req to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %internal_req, align 4
  %tobool.not = icmp eq ptr %call.i, null
  %. = sext i1 %tobool.not to i32
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hptiop_internal_memfree_mv(ptr nocapture noundef readonly %hba) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %internal_req = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %internal_req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %internal_req, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %pcidev = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 3
  %2 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %internal_req_phy = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1, i32 0, i32 3
  %4 = ptrtoint ptr %internal_req_phy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %internal_req_phy, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 2048, ptr noundef nonnull %1, i32 noundef %5, i32 noundef 0) #11
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ -1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hptiop_map_pci_bar_mv(ptr nocapture noundef %hba) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pcidev1.i = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 3
  %0 = ptrtoint ptr %pcidev1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcidev1.i, align 4
  %flags.i = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 0, i32 3
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.hptiop_map_pci_bar.exit.thread_crit_edge, label %if.end.i

entry.hptiop_map_pci_bar.exit.thread_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %hptiop_map_pci_bar.exit.thread

if.end.i:                                         ; preds = %entry
  %arrayidx.i = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 0
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 8
  %end.i = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 0, i32 1
  %6 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp eq i32 %7, 0
  %sub.i = sub i32 1, %5
  %add.i = add i32 %sub.i, %7
  %cond.i = select i1 %cmp.i, i32 0, i32 %add.i
  %call12.i = tail call ptr @ioremap(i32 noundef %5, i32 noundef %cond.i) #11
  %tobool13.not.i = icmp eq ptr %call12.i, null
  br i1 %tobool13.not.i, label %if.end.i.hptiop_map_pci_bar.exit.thread_crit_edge, label %if.end

if.end.i.hptiop_map_pci_bar.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hptiop_map_pci_bar.exit.thread

hptiop_map_pci_bar.exit.thread:                   ; preds = %if.end.i.hptiop_map_pci_bar.exit.thread_crit_edge, %entry.hptiop_map_pci_bar.exit.thread_crit_edge
  %.str.4.sink.i = phi ptr [ @.str, %entry.hptiop_map_pci_bar.exit.thread_crit_edge ], [ @.str.4, %if.end.i.hptiop_map_pci_bar.exit.thread_crit_edge ]
  %host19.i = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 2
  %8 = ptrtoint ptr %host19.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host19.i, align 4
  %host_no20.i = getelementptr inbounds %struct.Scsi_Host, ptr %9, i32 0, i32 17
  %10 = ptrtoint ptr %host_no20.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %host_no20.i, align 4
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.4.sink.i, i32 noundef %11) #14
  %u39 = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1
  %12 = ptrtoint ptr %u39 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %u39, align 4
  br label %return

if.end:                                           ; preds = %if.end.i
  %u = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1
  %13 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call12.i, ptr %u, align 4
  %14 = ptrtoint ptr %pcidev1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pcidev1.i, align 4
  %flags.i19 = getelementptr %struct.pci_dev, ptr %15, i32 0, i32 47, i32 2, i32 3
  %16 = ptrtoint ptr %flags.i19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags.i19, align 4
  %and.i20 = and i32 %17, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20)
  %tobool.not.i21 = icmp eq i32 %and.i20, 0
  br i1 %tobool.not.i21, label %if.end.if.then8_crit_edge, label %if.end.i30

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

if.end.i30:                                       ; preds = %if.end
  %arrayidx.i22 = getelementptr %struct.pci_dev, ptr %15, i32 0, i32 47, i32 2
  %18 = ptrtoint ptr %arrayidx.i22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i22, align 8
  %end.i23 = getelementptr %struct.pci_dev, ptr %15, i32 0, i32 47, i32 2, i32 1
  %20 = ptrtoint ptr %end.i23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %end.i23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i24 = icmp eq i32 %21, 0
  %sub.i25 = sub i32 1, %19
  %add.i26 = add i32 %sub.i25, %21
  %cond.i27 = select i1 %cmp.i24, i32 0, i32 %add.i26
  %call12.i28 = tail call ptr @ioremap(i32 noundef %19, i32 noundef %cond.i27) #11
  %tobool13.not.i29 = icmp eq ptr %call12.i28, null
  br i1 %tobool13.not.i29, label %if.end.i30.if.then8_crit_edge, label %hptiop_map_pci_bar.exit37

if.end.i30.if.then8_crit_edge:                    ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

hptiop_map_pci_bar.exit37:                        ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #13
  %mu = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1, i32 0, i32 1
  %22 = ptrtoint ptr %mu to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call12.i28, ptr %mu, align 4
  br label %return

if.then8:                                         ; preds = %if.end.i30.if.then8_crit_edge, %if.end.if.then8_crit_edge
  %.str.4.sink.i31 = phi ptr [ @.str, %if.end.if.then8_crit_edge ], [ @.str.4, %if.end.i30.if.then8_crit_edge ]
  %host19.i32 = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 2
  %23 = ptrtoint ptr %host19.i32 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %host19.i32, align 4
  %host_no20.i33 = getelementptr inbounds %struct.Scsi_Host, ptr %24, i32 0, i32 17
  %25 = ptrtoint ptr %host_no20.i33 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %host_no20.i33, align 4
  %call21.i34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.4.sink.i31, i32 noundef %26) #14
  %mu42 = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1, i32 0, i32 1
  %27 = ptrtoint ptr %mu42 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %mu42, align 4
  %28 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %u, align 4
  tail call void @iounmap(ptr noundef %29) #11
  br label %return

return:                                           ; preds = %if.then8, %hptiop_map_pci_bar.exit37, %hptiop_map_pci_bar.exit.thread
  %retval.0 = phi i32 [ -1, %if.then8 ], [ 0, %hptiop_map_pci_bar.exit37 ], [ -1, %hptiop_map_pci_bar.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hptiop_unmap_pci_bar_mv(ptr nocapture noundef readonly %hba) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u, align 4
  tail call void @iounmap(ptr noundef %1) #11
  %mu = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %mu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mu, align 4
  tail call void @iounmap(ptr noundef %3) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hptiop_enable_intr_mv(ptr nocapture noundef readonly %hba) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !208
  tail call void @arm_heavy_mb() #11
  %u = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u, align 4
  %outbound_intmask = getelementptr inbounds %struct.hpt_iopmv_regs, ptr %1, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %outbound_intmask, i32 50331648) #11, !srcloc !158
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hptiop_disable_intr_mv(ptr nocapture noundef readonly %hba) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !209
  tail call void @arm_heavy_mb() #11
  %u = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u, align 4
  %outbound_intmask = getelementptr inbounds %struct.hpt_iopmv_regs, ptr %1, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %outbound_intmask, i32 0) #11, !srcloc !158
  %2 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %u, align 4
  %outbound_intmask3 = getelementptr inbounds %struct.hpt_iopmv_regs, ptr %3, i32 0, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %outbound_intmask3) #11, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !210
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iop_get_config_mv(ptr noundef %hba, ptr nocapture noundef writeonly %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %internal_req = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %internal_req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %internal_req, align 4
  %flags = getelementptr inbounds %struct.hpt_iop_request_header, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 134217728, ptr %flags, align 4
  %type = getelementptr inbounds %struct.hpt_iop_request_header, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %type, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1006632960, ptr %1, align 4
  %result = getelementptr inbounds %struct.hpt_iop_request_header, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %result, align 4
  %context = getelementptr inbounds %struct.hpt_iop_request_header, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %context, align 4
  %context_hi32 = getelementptr inbounds %struct.hpt_iop_request_header, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %context_hi32 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %context_hi32, align 4
  %call = tail call fastcc i32 @iop_send_sync_request_mv(ptr noundef %hba)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %8 = call ptr @memcpy(ptr %config, ptr %1, i32 60)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iop_set_config_mv(ptr noundef %hba, ptr nocapture noundef readonly %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %internal_req = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %internal_req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %internal_req, align 4
  %2 = call ptr @memcpy(ptr %1, ptr %config, i32 56)
  %flags = getelementptr inbounds %struct.hpt_iop_request_header, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 134217728, ptr %flags, align 4
  %type = getelementptr inbounds %struct.hpt_iop_request_header, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 16777216, ptr %type, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 939524096, ptr %1, align 4
  %result = getelementptr inbounds %struct.hpt_iop_request_header, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %result, align 4
  %context = getelementptr inbounds %struct.hpt_iop_request_header, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 536870912, ptr %context, align 4
  %context_hi32 = getelementptr inbounds %struct.hpt_iop_request_header, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %context_hi32 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %context_hi32, align 4
  %call = tail call fastcc i32 @iop_send_sync_request_mv(ptr noundef %hba)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp ne i32 %call, 0
  %. = sext i1 %tobool.not to i32
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iop_intr_mv(ptr noundef %hba) #2 align 64 {
entry:
  %p.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u, align 4
  %outbound_doorbell = getelementptr inbounds %struct.hpt_iopmv_regs, ptr %1, i32 0, i32 3
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %outbound_doorbell) #11, !srcloc !155
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !212
  tail call void @arm_heavy_mb() #11
  %neg = xor i32 %3, -1
  %4 = tail call i32 @llvm.bswap.i32(i32 %neg)
  %5 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %u, align 4
  %outbound_doorbell4 = getelementptr inbounds %struct.hpt_iopmv_regs, ptr %6, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %outbound_doorbell4, i32 %4) #11, !srcloc !158
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %mu = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %mu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mu, align 4
  %outbound_msg = getelementptr inbounds %struct.hpt_iopmu_mv, ptr %8, i32 0, i32 5
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %outbound_msg) #11, !srcloc !155
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !213
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %10, label %if.then.if.end.i_crit_edge [
    i32 0, label %if.then.if.then.i_crit_edge
    i32 6, label %if.then.if.then.i_crit_edge36
  ]

if.then.if.then.i_crit_edge36:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.if.then.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %if.then.if.then.i_crit_edge, %if.then.if.then.i_crit_edge36
  %msg_done.i = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 12
  %12 = ptrtoint ptr %msg_done.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i = load i8, ptr %msg_done.i, align 4
  %bf.set.i = or i8 %bf.load.i, 32
  store i8 %bf.set.i, ptr %msg_done.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %initialized.i = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 12
  %13 = ptrtoint ptr %initialized.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load2.i = load i8, ptr %initialized.i, align 4
  %14 = and i8 %bf.load2.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i, label %if.end.i.if.end_crit_edge, label %if.end5.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %9)
  %cmp6.i = icmp eq i32 %9, 16777216
  br i1 %cmp6.i, label %if.then7.i, label %if.else.i

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  %resetting.i = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 18
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %resetting.i, i32 noundef 4) #11
  %15 = ptrtoint ptr %resetting.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 0, ptr %resetting.i, align 4
  %reset_wq.i = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 19
  tail call void @__wake_up(ptr noundef %reset_wq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  br label %if.end

if.else.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %10)
  %cmp8.i = icmp ult i32 %10, 256
  br i1 %cmp8.i, label %if.then9.i, label %if.else.i.if.end_crit_edge

if.else.i.if.end_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then9.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %bf.set13.i = or i8 %bf.load2.i, 32
  %16 = ptrtoint ptr %initialized.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %bf.set13.i, ptr %initialized.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then9.i, %if.else.i.if.end_crit_edge, %if.then7.i, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ 1, %if.end.i.if.end_crit_edge ], [ 1, %if.then7.i ], [ 1, %if.else.i.if.end_crit_edge ], [ 1, %if.then9.i ]
  %and11 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end.if.end18_crit_edge, label %while.cond.preheader

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

while.cond.preheader:                             ; preds = %if.end
  %mu15 = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1, i32 0, i32 1
  %17 = ptrtoint ptr %mu15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mu15, align 4
  %outbound_tail1.i32 = getelementptr inbounds %struct.hpt_iopmu_mv, ptr %18, i32 0, i32 3
  %19 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %outbound_tail1.i32) #11, !srcloc !155
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  %outbound_head5.i33 = getelementptr inbounds %struct.hpt_iopmu_mv, ptr %18, i32 0, i32 2
  %20 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %outbound_head5.i33) #11, !srcloc !155
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !215
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %20)
  %cmp.not.i34 = icmp eq i32 %19, %20
  br i1 %cmp.not.i34, label %while.cond.preheader.if.end18_crit_edge, label %mv_outbound_read.exit.lr.ph

while.cond.preheader.if.end18_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

mv_outbound_read.exit.lr.ph:                      ; preds = %while.cond.preheader
  %msg_done.i27 = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 12
  br label %mv_outbound_read.exit

mv_outbound_read.exit:                            ; preds = %hptiop_request_callback_mv.exit.mv_outbound_read.exit_crit_edge, %mv_outbound_read.exit.lr.ph
  %21 = phi i32 [ %19, %mv_outbound_read.exit.lr.ph ], [ %39, %hptiop_request_callback_mv.exit.mv_outbound_read.exit_crit_edge ]
  %outbound_tail1.i35 = phi ptr [ %outbound_tail1.i32, %mv_outbound_read.exit.lr.ph ], [ %outbound_tail1.i, %hptiop_request_callback_mv.exit.mv_outbound_read.exit_crit_edge ]
  %22 = phi ptr [ %18, %mv_outbound_read.exit.lr.ph ], [ %38, %hptiop_request_callback_mv.exit.mv_outbound_read.exit_crit_edge ]
  %23 = call i32 @llvm.bswap.i32(i32 %21) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %p.i) #11
  %24 = ptrtoint ptr %p.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 -1, ptr %p.i, align 8, !annotation !154
  %25 = ptrtoint ptr %outbound_tail1.i35 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %outbound_tail1.i35, align 4
  %arrayidx.i = getelementptr %struct.hpt_iopmu_mv, ptr %22, i32 0, i32 8, i32 %26
  call void @mmiocpy(ptr noundef nonnull %p.i, ptr noundef %arrayidx.i, i32 noundef 8) #11
  %inc.i = add i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %inc.i)
  %cmp10.i = icmp eq i32 %inc.i, 512
  %spec.store.select.i = select i1 %cmp10.i, i32 0, i32 %inc.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !216
  call void @arm_heavy_mb() #11
  %27 = call i32 @llvm.bswap.i32(i32 %spec.store.select.i) #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %outbound_tail1.i35, i32 %27) #11, !srcloc !158
  %28 = ptrtoint ptr %p.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %p.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %p.i) #11
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %29)
  %tobool17.not = icmp eq i64 %29, 0
  br i1 %tobool17.not, label %mv_outbound_read.exit.if.end18_crit_edge, label %while.body

mv_outbound_read.exit.if.end18_crit_edge:         ; preds = %mv_outbound_read.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

while.body:                                       ; preds = %mv_outbound_read.exit
  %and1.i = and i64 %29, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i)
  %cmp.i = icmp eq i64 %and1.i, 0
  br i1 %cmp.i, label %do.body4.i, label %do.end9.i, !prof !195

do.body4.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/hptiop.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 182, 0\0A.popsection", ""() #11, !srcloc !217
  unreachable

do.end9.i:                                        ; preds = %while.body
  %30 = trunc i64 %29 to i32
  %31 = lshr i32 %30, 5
  %conv.i = and i32 %31, 7
  %32 = zext i32 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %conv.i, label %do.end9.i.hptiop_request_callback_mv.exit_crit_edge [
    i32 0, label %do.end9.i.sw.bb.i_crit_edge
    i32 1, label %do.end9.i.sw.bb.i_crit_edge37
    i32 3, label %sw.bb10.i
  ]

do.end9.i.sw.bb.i_crit_edge37:                    ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

do.end9.i.sw.bb.i_crit_edge:                      ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

do.end9.i.hptiop_request_callback_mv.exit_crit_edge: ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hptiop_request_callback_mv.exit

sw.bb.i:                                          ; preds = %do.end9.i.sw.bb.i_crit_edge, %do.end9.i.sw.bb.i_crit_edge37
  %33 = ptrtoint ptr %msg_done.i27 to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load.i28 = load i8, ptr %msg_done.i27, align 4
  %bf.set.i29 = or i8 %bf.load.i28, 32
  store i8 %bf.set.i29, ptr %msg_done.i27, align 4
  br label %hptiop_request_callback_mv.exit

sw.bb10.i:                                        ; preds = %do.end9.i
  %shr11.i = lshr i64 %29, 8
  %idxprom.i = trunc i64 %shr11.i to i32
  %req_virt.i = getelementptr %struct.hptiop_hba, ptr %hba, i32 0, i32 14, i32 %idxprom.i, i32 1
  %34 = ptrtoint ptr %req_virt.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %req_virt.i, align 4
  %and12.i = and i64 %29, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and12.i)
  %tobool13.not.i = icmp eq i64 %and12.i, 0
  br i1 %tobool13.not.i, label %sw.bb10.i.if.end21.i_crit_edge, label %if.then20.i, !prof !195

sw.bb10.i.if.end21.i_crit_edge:                   ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21.i

if.then20.i:                                      ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #13
  %result.i = getelementptr inbounds %struct.hpt_iop_request_header, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 16777216, ptr %result.i, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then20.i, %sw.bb10.i.if.end21.i_crit_edge
  call fastcc void @hptiop_finish_scsi_req(ptr noundef %hba, i32 noundef %idxprom.i, ptr noundef %35) #11
  br label %hptiop_request_callback_mv.exit

hptiop_request_callback_mv.exit:                  ; preds = %if.end21.i, %sw.bb.i, %do.end9.i.hptiop_request_callback_mv.exit_crit_edge
  %37 = ptrtoint ptr %mu15 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mu15, align 4
  %outbound_tail1.i = getelementptr inbounds %struct.hpt_iopmu_mv, ptr %38, i32 0, i32 3
  %39 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %outbound_tail1.i) #11, !srcloc !155
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  %outbound_head5.i = getelementptr inbounds %struct.hpt_iopmu_mv, ptr %38, i32 0, i32 2
  %40 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %outbound_head5.i) #11, !srcloc !155
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !215
  %cmp.not.i = icmp eq i32 %39, %40
  br i1 %cmp.not.i, label %hptiop_request_callback_mv.exit.if.end18_crit_edge, label %hptiop_request_callback_mv.exit.mv_outbound_read.exit_crit_edge

hptiop_request_callback_mv.exit.mv_outbound_read.exit_crit_edge: ; preds = %hptiop_request_callback_mv.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %mv_outbound_read.exit

hptiop_request_callback_mv.exit.if.end18_crit_edge: ; preds = %hptiop_request_callback_mv.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.end18:                                         ; preds = %hptiop_request_callback_mv.exit.if.end18_crit_edge, %mv_outbound_read.exit.if.end18_crit_edge, %while.cond.preheader.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.end.if.end18_crit_edge ], [ 1, %while.cond.preheader.if.end18_crit_edge ], [ 1, %hptiop_request_callback_mv.exit.if.end18_crit_edge ], [ 1, %mv_outbound_read.exit.if.end18_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hptiop_post_msg_mv(ptr nocapture noundef readonly %hba, i32 noundef %msg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !218
  tail call void @arm_heavy_mb() #11
  %0 = tail call i32 @llvm.bswap.i32(i32 %msg)
  %u = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1
  %mu = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1, i32 0, i32 1
  %1 = ptrtoint ptr %mu to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mu, align 4
  %inbound_msg = getelementptr inbounds %struct.hpt_iopmu_mv, ptr %2, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %inbound_msg, i32 %0) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !219
  tail call void @arm_heavy_mb() #11
  %3 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %u, align 4
  %inbound_doorbell = getelementptr inbounds %struct.hpt_iopmv_regs, ptr %4, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %inbound_doorbell, i32 16777216) #11, !srcloc !158
  %5 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %u, align 4
  %inbound_doorbell6 = getelementptr inbounds %struct.hpt_iopmv_regs, ptr %6, i32 0, i32 1
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %inbound_doorbell6) #11, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !220
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hptiop_post_req_mv(ptr nocapture noundef readonly %hba, ptr nocapture noundef readonly %_req) #2 align 64 {
entry:
  %p.addr.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %req_virt = getelementptr inbounds %struct.hptiop_request, ptr %_req, i32 0, i32 1
  %0 = ptrtoint ptr %req_virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req_virt, align 4
  %index = getelementptr inbounds %struct.hptiop_request, ptr %_req, i32 0, i32 4
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %shl = shl i32 %3, 8
  %or = or i32 %shl, 96
  %4 = tail call i32 @llvm.bswap.i32(i32 %or)
  %context = getelementptr inbounds %struct.hpt_iop_request_header, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %context, align 4
  %context_hi32 = getelementptr inbounds %struct.hpt_iop_request_header, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %context_hi32 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %context_hi32, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 257, i32 %9)
  %cmp = icmp ult i32 %9, 257
  br i1 %cmp, label %entry.if.end9_crit_edge, label %if.else

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 513, i32 %9)
  %cmp2 = icmp ult i32 %9, 513
  br i1 %cmp2, label %if.else.if.end9_crit_edge, label %if.else4

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.else4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 769, i32 %9)
  %cmp5 = icmp ult i32 %9, 769
  %. = select i1 %cmp5, i32 2, i32 3
  br label %if.end9

if.end9:                                          ; preds = %if.else4, %if.else.if.end9_crit_edge, %entry.if.end9_crit_edge
  %size_bit.0 = phi i32 [ 0, %entry.if.end9_crit_edge ], [ 1, %if.else.if.end9_crit_edge ], [ %., %if.else4 ]
  %req_shifted_phy = getelementptr inbounds %struct.hptiop_request, ptr %_req, i32 0, i32 2
  %10 = ptrtoint ptr %req_shifted_phy to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %req_shifted_phy, align 4
  %shl10 = shl i32 %11, 5
  %or11 = or i32 %shl10, %size_bit.0
  %or12 = or i32 %or11, 4
  %conv = zext i32 %or12 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %p.addr.i)
  %12 = ptrtoint ptr %p.addr.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %conv, ptr %p.addr.i, align 8
  %u.i = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1
  %mu.i = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %mu.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mu.i, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #11, !srcloc !155
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !221
  %add.i = add i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %add.i)
  %cmp.i = icmp eq i32 %add.i, 512
  %spec.store.select.i = select i1 %cmp.i, i32 0, i32 %add.i
  %17 = ptrtoint ptr %mu.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mu.i, align 4
  %arrayidx.i = getelementptr %struct.hpt_iopmu_mv, ptr %18, i32 0, i32 7, i32 %16
  call void @mmiocpy(ptr noundef %arrayidx.i, ptr noundef nonnull %p.addr.i, i32 noundef 8) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !222
  call void @arm_heavy_mb() #11
  %19 = call i32 @llvm.bswap.i32(i32 %spec.store.select.i) #11
  %20 = ptrtoint ptr %mu.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mu.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #11, !srcloc !158
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !223
  call void @arm_heavy_mb() #11
  %22 = ptrtoint ptr %u.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %u.i, align 4
  %inbound_doorbell.i = getelementptr inbounds %struct.hpt_iopmv_regs, ptr %23, i32 0, i32 1
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %inbound_doorbell.i, i32 33554432) #11, !srcloc !158
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %p.addr.i)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hptiop_reset_comm_mv(ptr nocapture noundef readnone %hba) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iop_send_sync_msg(ptr noundef %hba, i32 noundef %msg, i32 noundef %millisec) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_done = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 12
  %0 = ptrtoint ptr %msg_done to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %msg_done, align 4
  %bf.clear = and i8 %bf.load, -33
  store i8 %bf.clear, ptr %msg_done, align 4
  %1 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hba, align 4
  %disable_intr = getelementptr inbounds %struct.hptiop_adapter_ops, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %disable_intr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %disable_intr, align 4
  tail call void %4(ptr noundef %hba) #11
  %5 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hba, align 4
  %post_msg = getelementptr inbounds %struct.hptiop_adapter_ops, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %post_msg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %post_msg, align 4
  tail call void %8(ptr noundef %hba, i32 noundef %msg) #11
  %host = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %millisec)
  %cmp28.not = icmp eq i32 %millisec, 0
  br i1 %cmp28.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.029 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %9 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %host, align 4
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %12) #11
  %13 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hba, align 4
  %iop_intr = getelementptr inbounds %struct.hptiop_adapter_ops, ptr %14, i32 0, i32 10
  %15 = ptrtoint ptr %iop_intr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %iop_intr, align 8
  %call = tail call i32 %16(ptr noundef %hba) #11
  %17 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %host, align 4
  %host_lock4 = getelementptr inbounds %struct.Scsi_Host, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %host_lock4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %host_lock4, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %20) #11
  %21 = ptrtoint ptr %msg_done to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load6 = load i8, ptr %msg_done, align 4
  %22 = and i8 %bf.load6, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not = icmp eq i8 %22, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end:                                           ; preds = %for.body
  tail call void @msleep(i32 noundef 1) #11
  %inc = add nuw i32 %i.029, 1
  %exitcond.not = icmp eq i32 %inc, %millisec
  br i1 %exitcond.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %23 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hba, align 4
  %enable_intr = getelementptr inbounds %struct.hptiop_adapter_ops, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %enable_intr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %enable_intr, align 8
  tail call void %26(ptr noundef %hba) #11
  %27 = ptrtoint ptr %msg_done to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load10 = load i8, ptr %msg_done, align 4
  %28 = lshr i8 %bf.load10, 5
  %29 = and i8 %28, 1
  %sext = add nsw i8 %29, -1
  %cond = sext i8 %sext to i32
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iop_send_sync_request_mv(ptr noundef %hba) unnamed_addr #2 align 64 {
entry:
  %p.addr.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %internal_req = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %internal_req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %internal_req, align 4
  %msg_done = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 12
  %2 = ptrtoint ptr %msg_done to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %msg_done, align 4
  %bf.clear = and i8 %bf.load, -33
  store i8 %bf.clear, ptr %msg_done, align 4
  %flags = getelementptr inbounds %struct.hpt_iop_request_header, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %or = or i32 %4, 16777216
  store i32 %or, ptr %flags, align 4
  %internal_req_phy = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1, i32 0, i32 3
  %5 = ptrtoint ptr %internal_req_phy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %internal_req_phy, align 4
  %or2 = or i32 %6, 4
  %conv = zext i32 %or2 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %p.addr.i)
  %7 = ptrtoint ptr %p.addr.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %conv, ptr %p.addr.i, align 8
  %u.i = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1
  %mu.i = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %mu.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mu.i, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #11, !srcloc !155
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !221
  %add.i = add i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %add.i)
  %cmp.i = icmp eq i32 %add.i, 512
  %spec.store.select.i = select i1 %cmp.i, i32 0, i32 %add.i
  %12 = ptrtoint ptr %mu.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mu.i, align 4
  %arrayidx.i = getelementptr %struct.hpt_iopmu_mv, ptr %13, i32 0, i32 7, i32 %11
  call void @mmiocpy(ptr noundef %arrayidx.i, ptr noundef nonnull %p.addr.i, i32 noundef 8) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !222
  call void @arm_heavy_mb() #11
  %14 = call i32 @llvm.bswap.i32(i32 %spec.store.select.i) #11
  %15 = ptrtoint ptr %mu.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mu.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #11, !srcloc !158
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !223
  call void @arm_heavy_mb() #11
  %17 = ptrtoint ptr %u.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %u.i, align 4
  %inbound_doorbell.i = getelementptr inbounds %struct.hpt_iopmv_regs, ptr %18, i32 0, i32 1
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %inbound_doorbell.i, i32 33554432) #11, !srcloc !158
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %p.addr.i)
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.01 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  %call = call i32 @iop_intr_mv(ptr noundef %hba)
  %19 = ptrtoint ptr %msg_done to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load6 = load i8, ptr %msg_done, align 4
  %20 = and i8 %bf.load6, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not = icmp eq i8 %20, 0
  br i1 %tobool.not, label %if.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @msleep(i32 noundef 1) #11
  %inc = add nuw nsw i32 %i.01, 1
  %exitcond.not = icmp eq i32 %inc, 20000
  br i1 %exitcond.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.body.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iop_wait_ready_mvfrey(ptr noundef %hba, i32 noundef %millisec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @iop_send_sync_msg(ptr noundef %hba, i32 noundef 0, i32 noundef %millisec)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hptiop_internal_memalloc_mvfrey(ptr nocapture noundef %hba) #2 align 64 {
entry:
  %phy = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mu = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mu, align 4
  %inbound_conf_ctl = getelementptr inbounds %struct.hpt_iopmu_mvfrey, ptr %1, i32 0, i32 6
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %inbound_conf_ctl) #11, !srcloc !155
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !224
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phy) #11
  %4 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %phy, align 4, !annotation !154
  %max_request_size = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 9
  %5 = ptrtoint ptr %max_request_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_request_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %do.body3, label %do.end8, !prof !195

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/hptiop.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1200, 0\0A.popsection", ""() #11, !srcloc !225
  unreachable

do.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp9 = icmp eq i32 %2, 0
  br i1 %cmp9, label %do.body12, label %if.end20

do.body12:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/hptiop.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1203, 0\0A.popsection", ""() #11, !srcloc !226
  unreachable

if.end20:                                         ; preds = %do.end8
  %shr = lshr i32 %3, 16
  %list_count22 = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1, i32 0, i32 4
  %7 = ptrtoint ptr %list_count22 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %shr, ptr %list_count22, align 4
  %mul = mul nuw nsw i32 %shr, 12
  %mul23 = shl nuw nsw i32 %shr, 2
  %add24 = add nuw nsw i32 %mul, 2052
  %add25 = add nuw nsw i32 %add24, %mul23
  %internal_mem_size = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1, i32 0, i32 2
  %8 = ptrtoint ptr %internal_mem_size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add25, ptr %internal_mem_size, align 4
  %pcidev = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 3
  %9 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %add25, ptr noundef nonnull %phy, i32 noundef 3264, i32 noundef 0) #11
  %tobool30.not = icmp eq ptr %call.i, null
  br i1 %tobool30.not, label %if.end20.cleanup_crit_edge, label %if.end32

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end32:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  %internal_req = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1, i32 0, i32 3
  %req_virt = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %req_virt to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %req_virt, align 4
  %12 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %phy, align 4
  %shr34 = lshr i32 %13, 5
  %req_shifted_phy = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1, i32 0, i32 3, i32 2
  %14 = ptrtoint ptr %req_shifted_phy to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %shr34, ptr %req_shifted_phy, align 4
  %scp = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1, i32 0, i32 3, i32 3
  %15 = ptrtoint ptr %scp to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %scp, align 4
  %16 = ptrtoint ptr %internal_req to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %internal_req, align 4
  %add.ptr = getelementptr i8, ptr %call.i, i32 2048
  %add41 = add i32 %13, 2048
  %inlist = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1, i32 0, i32 5
  %17 = ptrtoint ptr %inlist to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr, ptr %inlist, align 4
  %inlist_phy = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1, i32 0, i32 6
  %18 = ptrtoint ptr %inlist_phy to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add41, ptr %inlist_phy, align 4
  %add.ptr45 = getelementptr i8, ptr %add.ptr, i32 %mul
  %add47 = add i32 %add41, %mul
  %outlist = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1, i32 0, i32 8
  %19 = ptrtoint ptr %outlist to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr45, ptr %outlist, align 4
  %outlist_phy = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1, i32 0, i32 9
  %20 = ptrtoint ptr %outlist_phy to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add47, ptr %outlist_phy, align 4
  %add.ptr51 = getelementptr i8, ptr %add.ptr45, i32 %mul23
  %add53 = add i32 %add47, %mul23
  %outlist_cptr = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1, i32 0, i32 10
  %21 = ptrtoint ptr %outlist_cptr to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr51, ptr %outlist_cptr, align 4
  %outlist_cptr_phy = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1, i32 0, i32 11
  %22 = ptrtoint ptr %outlist_cptr_phy to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add53, ptr %outlist_cptr_phy, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.end20.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end32 ], [ -1, %if.end20.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phy) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hptiop_internal_memfree_mvfrey(ptr nocapture noundef readonly %hba) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %req_virt = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %req_virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req_virt, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %pcidev = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 3
  %2 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %internal_mem_size = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %internal_mem_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %internal_mem_size, align 4
  %req_shifted_phy = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %req_shifted_phy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %req_shifted_phy, align 4
  %shl = shl i32 %7, 5
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %5, ptr noundef nonnull %1, i32 noundef %shl, i32 noundef 0) #11
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ -1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hptiop_map_pci_bar_mvfrey(ptr nocapture noundef %hba) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pcidev1.i = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 3
  %0 = ptrtoint ptr %pcidev1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcidev1.i, align 4
  %flags.i = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 0, i32 3
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.hptiop_map_pci_bar.exit.thread_crit_edge, label %if.end.i

entry.hptiop_map_pci_bar.exit.thread_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %hptiop_map_pci_bar.exit.thread

if.end.i:                                         ; preds = %entry
  %arrayidx.i = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 0
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 8
  %end.i = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 0, i32 1
  %6 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp eq i32 %7, 0
  %sub.i = sub i32 1, %5
  %add.i = add i32 %sub.i, %7
  %cond.i = select i1 %cmp.i, i32 0, i32 %add.i
  %call12.i = tail call ptr @ioremap(i32 noundef %5, i32 noundef %cond.i) #11
  %tobool13.not.i = icmp eq ptr %call12.i, null
  br i1 %tobool13.not.i, label %if.end.i.hptiop_map_pci_bar.exit.thread_crit_edge, label %if.end

if.end.i.hptiop_map_pci_bar.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hptiop_map_pci_bar.exit.thread

hptiop_map_pci_bar.exit.thread:                   ; preds = %if.end.i.hptiop_map_pci_bar.exit.thread_crit_edge, %entry.hptiop_map_pci_bar.exit.thread_crit_edge
  %.str.4.sink.i = phi ptr [ @.str, %entry.hptiop_map_pci_bar.exit.thread_crit_edge ], [ @.str.4, %if.end.i.hptiop_map_pci_bar.exit.thread_crit_edge ]
  %host19.i = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 2
  %8 = ptrtoint ptr %host19.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host19.i, align 4
  %host_no20.i = getelementptr inbounds %struct.Scsi_Host, ptr %9, i32 0, i32 17
  %10 = ptrtoint ptr %host_no20.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %host_no20.i, align 4
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.4.sink.i, i32 noundef %11) #14
  %u39 = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1
  %12 = ptrtoint ptr %u39 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %u39, align 4
  br label %return

if.end:                                           ; preds = %if.end.i
  %u = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1
  %13 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call12.i, ptr %u, align 4
  %14 = ptrtoint ptr %pcidev1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pcidev1.i, align 4
  %flags.i19 = getelementptr %struct.pci_dev, ptr %15, i32 0, i32 47, i32 2, i32 3
  %16 = ptrtoint ptr %flags.i19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags.i19, align 4
  %and.i20 = and i32 %17, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20)
  %tobool.not.i21 = icmp eq i32 %and.i20, 0
  br i1 %tobool.not.i21, label %if.end.if.then8_crit_edge, label %if.end.i30

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

if.end.i30:                                       ; preds = %if.end
  %arrayidx.i22 = getelementptr %struct.pci_dev, ptr %15, i32 0, i32 47, i32 2
  %18 = ptrtoint ptr %arrayidx.i22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i22, align 8
  %end.i23 = getelementptr %struct.pci_dev, ptr %15, i32 0, i32 47, i32 2, i32 1
  %20 = ptrtoint ptr %end.i23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %end.i23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i24 = icmp eq i32 %21, 0
  %sub.i25 = sub i32 1, %19
  %add.i26 = add i32 %sub.i25, %21
  %cond.i27 = select i1 %cmp.i24, i32 0, i32 %add.i26
  %call12.i28 = tail call ptr @ioremap(i32 noundef %19, i32 noundef %cond.i27) #11
  %tobool13.not.i29 = icmp eq ptr %call12.i28, null
  br i1 %tobool13.not.i29, label %if.end.i30.if.then8_crit_edge, label %hptiop_map_pci_bar.exit37

if.end.i30.if.then8_crit_edge:                    ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

hptiop_map_pci_bar.exit37:                        ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #13
  %mu = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1, i32 0, i32 1
  %22 = ptrtoint ptr %mu to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call12.i28, ptr %mu, align 4
  br label %return

if.then8:                                         ; preds = %if.end.i30.if.then8_crit_edge, %if.end.if.then8_crit_edge
  %.str.4.sink.i31 = phi ptr [ @.str, %if.end.if.then8_crit_edge ], [ @.str.4, %if.end.i30.if.then8_crit_edge ]
  %host19.i32 = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 2
  %23 = ptrtoint ptr %host19.i32 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %host19.i32, align 4
  %host_no20.i33 = getelementptr inbounds %struct.Scsi_Host, ptr %24, i32 0, i32 17
  %25 = ptrtoint ptr %host_no20.i33 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %host_no20.i33, align 4
  %call21.i34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.4.sink.i31, i32 noundef %26) #14
  %mu42 = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1, i32 0, i32 1
  %27 = ptrtoint ptr %mu42 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %mu42, align 4
  %28 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %u, align 4
  tail call void @iounmap(ptr noundef %29) #11
  br label %return

return:                                           ; preds = %if.then8, %hptiop_map_pci_bar.exit37, %hptiop_map_pci_bar.exit.thread
  %retval.0 = phi i32 [ -1, %if.then8 ], [ 0, %hptiop_map_pci_bar.exit37 ], [ -1, %hptiop_map_pci_bar.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hptiop_unmap_pci_bar_mvfrey(ptr nocapture noundef readonly %hba) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u, align 4
  tail call void @iounmap(ptr noundef %1) #11
  %mu = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %mu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mu, align 4
  tail call void @iounmap(ptr noundef %3) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hptiop_enable_intr_mvfrey(ptr nocapture noundef readonly %hba) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !227
  tail call void @arm_heavy_mb() #11
  %mu = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mu, align 4
  %f0_doorbell_enable = getelementptr inbounds %struct.hpt_iopmu_mvfrey, ptr %1, i32 0, i32 23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %f0_doorbell_enable, i32 2) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !228
  tail call void @arm_heavy_mb() #11
  %2 = ptrtoint ptr %mu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mu, align 4
  %isr_enable = getelementptr inbounds %struct.hpt_iopmu_mvfrey, ptr %3, i32 0, i32 14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %isr_enable, i32 16777216) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  tail call void @arm_heavy_mb() #11
  %4 = ptrtoint ptr %mu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mu, align 4
  %pcie_f0_int_enable = getelementptr inbounds %struct.hpt_iopmu_mvfrey, ptr %5, i32 0, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %pcie_f0_int_enable, i32 269484032) #11, !srcloc !158
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hptiop_disable_intr_mvfrey(ptr nocapture noundef readonly %hba) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !230
  tail call void @arm_heavy_mb() #11
  %mu = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mu, align 4
  %f0_doorbell_enable = getelementptr inbounds %struct.hpt_iopmu_mvfrey, ptr %1, i32 0, i32 23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %f0_doorbell_enable, i32 0) #11, !srcloc !158
  %2 = ptrtoint ptr %mu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mu, align 4
  %f0_doorbell_enable3 = getelementptr inbounds %struct.hpt_iopmu_mvfrey, ptr %3, i32 0, i32 23
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %f0_doorbell_enable3) #11, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !232
  tail call void @arm_heavy_mb() #11
  %5 = ptrtoint ptr %mu to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mu, align 4
  %isr_enable = getelementptr inbounds %struct.hpt_iopmu_mvfrey, ptr %6, i32 0, i32 14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %isr_enable, i32 0) #11, !srcloc !158
  %7 = ptrtoint ptr %mu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mu, align 4
  %isr_enable13 = getelementptr inbounds %struct.hpt_iopmu_mvfrey, ptr %8, i32 0, i32 14
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %isr_enable13) #11, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !233
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !234
  tail call void @arm_heavy_mb() #11
  %10 = ptrtoint ptr %mu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mu, align 4
  %pcie_f0_int_enable = getelementptr inbounds %struct.hpt_iopmu_mvfrey, ptr %11, i32 0, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %pcie_f0_int_enable, i32 0) #11, !srcloc !158
  %12 = ptrtoint ptr %mu to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mu, align 4
  %pcie_f0_int_enable25 = getelementptr inbounds %struct.hpt_iopmu_mvfrey, ptr %13, i32 0, i32 16
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %pcie_f0_int_enable25) #11, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @iop_get_config_mvfrey(ptr nocapture noundef readonly %hba, ptr nocapture noundef writeonly %config) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %3)
  %cmp.not = icmp eq i32 %3, 60
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %type = getelementptr inbounds %struct.hpt_iop_request_header, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp3.not = icmp eq i32 %5, 0
  br i1 %cmp3.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %interface_version = getelementptr inbounds %struct.hpt_iop_request_get_config, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %interface_version to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %interface_version, align 4
  %interface_version4 = getelementptr inbounds %struct.hpt_iop_request_get_config, ptr %config, i32 0, i32 1
  %8 = ptrtoint ptr %interface_version4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %interface_version4, align 4
  %firmware_version = getelementptr inbounds %struct.hpt_iop_request_get_config, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %firmware_version to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %firmware_version, align 4
  %firmware_version5 = getelementptr inbounds %struct.hpt_iop_request_get_config, ptr %config, i32 0, i32 2
  %11 = ptrtoint ptr %firmware_version5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %firmware_version5, align 4
  %max_requests = getelementptr inbounds %struct.hpt_iop_request_get_config, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %max_requests to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_requests, align 4
  %max_requests6 = getelementptr inbounds %struct.hpt_iop_request_get_config, ptr %config, i32 0, i32 3
  %14 = ptrtoint ptr %max_requests6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %max_requests6, align 4
  %request_size = getelementptr inbounds %struct.hpt_iop_request_get_config, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %request_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %request_size, align 4
  %request_size7 = getelementptr inbounds %struct.hpt_iop_request_get_config, ptr %config, i32 0, i32 4
  %17 = ptrtoint ptr %request_size7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %request_size7, align 4
  %max_sg_count = getelementptr inbounds %struct.hpt_iop_request_get_config, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %max_sg_count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_sg_count, align 4
  %max_sg_count8 = getelementptr inbounds %struct.hpt_iop_request_get_config, ptr %config, i32 0, i32 5
  %20 = ptrtoint ptr %max_sg_count8 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %max_sg_count8, align 4
  %data_transfer_length = getelementptr inbounds %struct.hpt_iop_request_get_config, ptr %1, i32 0, i32 6
  %21 = ptrtoint ptr %data_transfer_length to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %data_transfer_length, align 4
  %data_transfer_length9 = getelementptr inbounds %struct.hpt_iop_request_get_config, ptr %config, i32 0, i32 6
  %23 = ptrtoint ptr %data_transfer_length9 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %data_transfer_length9, align 4
  %alignment_mask = getelementptr inbounds %struct.hpt_iop_request_get_config, ptr %1, i32 0, i32 7
  %24 = ptrtoint ptr %alignment_mask to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %alignment_mask, align 4
  %alignment_mask10 = getelementptr inbounds %struct.hpt_iop_request_get_config, ptr %config, i32 0, i32 7
  %26 = ptrtoint ptr %alignment_mask10 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %alignment_mask10, align 4
  %max_devices = getelementptr inbounds %struct.hpt_iop_request_get_config, ptr %1, i32 0, i32 8
  %27 = ptrtoint ptr %max_devices to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %max_devices, align 4
  %max_devices11 = getelementptr inbounds %struct.hpt_iop_request_get_config, ptr %config, i32 0, i32 8
  %29 = ptrtoint ptr %max_devices11 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %max_devices11, align 4
  %sdram_size = getelementptr inbounds %struct.hpt_iop_request_get_config, ptr %1, i32 0, i32 9
  %30 = ptrtoint ptr %sdram_size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sdram_size, align 4
  %sdram_size12 = getelementptr inbounds %struct.hpt_iop_request_get_config, ptr %config, i32 0, i32 9
  %32 = ptrtoint ptr %sdram_size12 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %sdram_size12, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iop_set_config_mvfrey(ptr noundef %hba, ptr nocapture noundef readonly %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %req_virt = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %req_virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req_virt, align 4
  %2 = call ptr @memcpy(ptr %1, ptr %config, i32 56)
  %flags = getelementptr inbounds %struct.hpt_iop_request_header, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 134217728, ptr %flags, align 4
  %type = getelementptr inbounds %struct.hpt_iop_request_header, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 16777216, ptr %type, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 939524096, ptr %1, align 4
  %result = getelementptr inbounds %struct.hpt_iop_request_header, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %result, align 4
  %context = getelementptr inbounds %struct.hpt_iop_request_header, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 536870912, ptr %context, align 4
  %context_hi32 = getelementptr inbounds %struct.hpt_iop_request_header, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %context_hi32 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %context_hi32, align 4
  %internal_req.i = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1, i32 0, i32 3
  %9 = load ptr, ptr %req_virt, align 4
  %msg_done.i = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 12
  %10 = ptrtoint ptr %msg_done.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load.i = load i8, ptr %msg_done.i, align 4
  %bf.clear.i = and i8 %bf.load.i, -33
  store i8 %bf.clear.i, ptr %msg_done.i, align 4
  %flags.i = getelementptr inbounds %struct.hpt_iop_request_header, ptr %9, i32 0, i32 2
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %12, 16777216
  store i32 %or.i, ptr %flags.i, align 4
  %13 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hba, align 4
  %post_req.i = getelementptr inbounds %struct.hptiop_adapter_ops, ptr %14, i32 0, i32 12
  %15 = ptrtoint ptr %post_req.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %post_req.i, align 8
  tail call void %16(ptr noundef %hba, ptr noundef %internal_req.i) #11
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %i.01.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %call.i = tail call i32 @iop_intr_mvfrey(ptr noundef %hba) #11
  %17 = ptrtoint ptr %msg_done.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load4.i = load i8, ptr %msg_done.i, align 4
  %18 = and i8 %bf.load4.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.iop_send_sync_request_mvfrey.exit_crit_edge

for.body.i.iop_send_sync_request_mvfrey.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iop_send_sync_request_mvfrey.exit

if.end.i:                                         ; preds = %for.body.i
  tail call void @msleep(i32 noundef 1) #11
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 20000
  br i1 %exitcond.not.i, label %if.end.i.iop_send_sync_request_mvfrey.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

if.end.i.iop_send_sync_request_mvfrey.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iop_send_sync_request_mvfrey.exit

iop_send_sync_request_mvfrey.exit:                ; preds = %if.end.i.iop_send_sync_request_mvfrey.exit_crit_edge, %for.body.i.iop_send_sync_request_mvfrey.exit_crit_edge
  %19 = ptrtoint ptr %msg_done.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load7.i = load i8, ptr %msg_done.i, align 4
  %20 = lshr i8 %bf.load7.i, 5
  %21 = and i8 %20, 1
  %sext = add nsw i8 %21, -1
  %. = sext i8 %sext to i32
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iop_intr_mvfrey(ptr noundef %hba) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %initialized = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 12
  %0 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %initialized, align 4
  %1 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !236
  tail call void @arm_heavy_mb() #11
  %mu = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %mu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mu, align 4
  %pcie_f0_int_enable = getelementptr inbounds %struct.hpt_iopmu_mvfrey, ptr %3, i32 0, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %pcie_f0_int_enable, i32 0) #11, !srcloc !158
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %mu2 = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %mu2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mu2, align 4
  %f0_doorbell = getelementptr inbounds %struct.hpt_iopmu_mvfrey, ptr %5, i32 0, i32 22
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %f0_doorbell) #11, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !237
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.not = icmp eq i32 %6, 0
  br i1 %tobool4.not, label %if.end.if.end22_crit_edge, label %do.body6

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

do.body6:                                         ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !238
  tail call void @arm_heavy_mb() #11
  %7 = ptrtoint ptr %mu2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mu2, align 4
  %f0_doorbell11 = getelementptr inbounds %struct.hpt_iopmu_mvfrey, ptr %8, i32 0, i32 22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %f0_doorbell11, i32 %6) #11, !srcloc !158
  %9 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool12.not = icmp eq i32 %9, 0
  br i1 %tobool12.not, label %do.body6.if.end22_crit_edge, label %if.then13

do.body6.if.end22_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then13:                                        ; preds = %do.body6
  %10 = ptrtoint ptr %mu2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mu2, align 4
  %cpu_to_f0_msg_a = getelementptr inbounds %struct.hpt_iopmu_mvfrey, ptr %11, i32 0, i32 20
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cpu_to_f0_msg_a) #11, !srcloc !155
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !239
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %13, label %if.then13.if.end.i_crit_edge [
    i32 0, label %if.then13.if.then.i_crit_edge
    i32 6, label %if.then13.if.then.i_crit_edge124
  ]

if.then13.if.then.i_crit_edge124:                 ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then13.if.then.i_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then13.if.end.i_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %if.then13.if.then.i_crit_edge, %if.then13.if.then.i_crit_edge124
  %15 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load.i = load i8, ptr %initialized, align 4
  %bf.set.i = or i8 %bf.load.i, 32
  store i8 %bf.set.i, ptr %initialized, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then13.if.end.i_crit_edge
  %16 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load2.i = load i8, ptr %initialized, align 4
  %17 = and i8 %bf.load2.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i, label %if.end.i.if.end22_crit_edge, label %if.end5.i

if.end.i.if.end22_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %12)
  %cmp6.i = icmp eq i32 %12, 16777216
  br i1 %cmp6.i, label %if.then7.i, label %if.else.i

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  %resetting.i = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 18
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %resetting.i, i32 noundef 4) #11
  %18 = ptrtoint ptr %resetting.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 0, ptr %resetting.i, align 4
  %reset_wq.i = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 19
  tail call void @__wake_up(ptr noundef %reset_wq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  br label %if.end22

if.else.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %13)
  %cmp8.i = icmp ult i32 %13, 256
  br i1 %cmp8.i, label %if.then9.i, label %if.else.i.if.end22_crit_edge

if.else.i.if.end22_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then9.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %bf.set13.i = or i8 %bf.load2.i, 32
  %19 = ptrtoint ptr %initialized to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %bf.set13.i, ptr %initialized, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then9.i, %if.else.i.if.end22_crit_edge, %if.then7.i, %if.end.i.if.end22_crit_edge, %do.body6.if.end22_crit_edge, %if.end.if.end22_crit_edge
  %ret.0 = phi i32 [ 0, %if.end.if.end22_crit_edge ], [ 1, %do.body6.if.end22_crit_edge ], [ 1, %if.end.i.if.end22_crit_edge ], [ 1, %if.then7.i ], [ 1, %if.else.i.if.end22_crit_edge ], [ 1, %if.then9.i ]
  %20 = ptrtoint ptr %mu2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mu2, align 4
  %isr_cause = getelementptr inbounds %struct.hpt_iopmu_mvfrey, ptr %21, i32 0, i32 13
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %isr_cause) #11, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool30.not = icmp eq i32 %22, 0
  br i1 %tobool30.not, label %if.end22.if.end71_crit_edge, label %do.body32

if.end22.if.end71_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end71

do.body32:                                        ; preds = %if.end22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !241
  tail call void @arm_heavy_mb() #11
  %23 = ptrtoint ptr %mu2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mu2, align 4
  %isr_cause37 = getelementptr inbounds %struct.hpt_iopmu_mvfrey, ptr %24, i32 0, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %isr_cause37, i32 %22) #11, !srcloc !158
  %outlist_cptr = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1, i32 0, i32 10
  %outlist_rptr = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1, i32 0, i32 12
  %list_count = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1, i32 0, i32 4
  %outlist = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1, i32 0, i32 8
  br label %do.body38

do.body38:                                        ; preds = %while.end.do.body38_crit_edge, %do.body32
  %ret.1 = phi i32 [ %ret.0, %do.body32 ], [ %ret.2.lcssa, %while.end.do.body38_crit_edge ]
  %25 = ptrtoint ptr %outlist_cptr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %outlist_cptr, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %and40 = and i32 %28, 255
  %29 = ptrtoint ptr %outlist_rptr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %outlist_rptr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %and40)
  %cmp.not120 = icmp eq i32 %30, %and40
  br i1 %cmp.not120, label %do.body38.while.end_crit_edge, label %do.body38.while.body_crit_edge

do.body38.while.body_crit_edge:                   ; preds = %do.body38
  br label %while.body

do.body38.while.end_crit_edge:                    ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %hptiop_request_callback_mvfrey.exit.while.body_crit_edge, %do.body38.while.body_crit_edge
  %cur_rptr.0121 = phi i32 [ %spec.store.select, %hptiop_request_callback_mvfrey.exit.while.body_crit_edge ], [ %30, %do.body38.while.body_crit_edge ]
  %inc = add i32 %cur_rptr.0121, 1
  %31 = ptrtoint ptr %list_count to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %list_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %32)
  %cmp43 = icmp eq i32 %inc, %32
  %spec.store.select = select i1 %cmp43, i32 0, i32 %inc
  %33 = ptrtoint ptr %outlist to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %outlist, align 4
  %arrayidx = getelementptr %struct.mvfrey_outlist_entry, ptr %34, i32 %spec.store.select
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %36)
  %tobool49.not = icmp ult i32 %36, 268435456
  br i1 %tobool49.not, label %do.body54, label %do.end62, !prof !195

do.body54:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/hptiop.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 284, 0\0A.popsection", ""() #11, !srcloc !242
  unreachable

do.end62:                                         ; preds = %while.body
  %and.i = and i32 %36, 15
  %37 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %and.i, label %do.end62.hptiop_request_callback_mvfrey.exit_crit_edge [
    i32 0, label %do.end62.sw.bb.i_crit_edge
    i32 1, label %do.end62.sw.bb.i_crit_edge125
    i32 3, label %sw.bb1.i
  ]

do.end62.sw.bb.i_crit_edge125:                    ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

do.end62.sw.bb.i_crit_edge:                       ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

do.end62.hptiop_request_callback_mvfrey.exit_crit_edge: ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #13
  br label %hptiop_request_callback_mvfrey.exit

sw.bb.i:                                          ; preds = %do.end62.sw.bb.i_crit_edge, %do.end62.sw.bb.i_crit_edge125
  %38 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load.i113 = load i8, ptr %initialized, align 4
  %bf.set.i114 = or i8 %bf.load.i113, 32
  store i8 %bf.set.i114, ptr %initialized, align 4
  br label %hptiop_request_callback_mvfrey.exit

sw.bb1.i:                                         ; preds = %do.end62
  %shr.i = lshr i32 %36, 4
  %and2.i = and i32 %shr.i, 255
  %req_virt.i = getelementptr %struct.hptiop_hba, ptr %hba, i32 0, i32 14, i32 %and2.i, i32 1
  %39 = ptrtoint ptr %req_virt.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %req_virt.i, align 4
  %and3.i = and i32 %36, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool.not.i115 = icmp eq i32 %and3.i, 0
  br i1 %tobool.not.i115, label %sw.bb1.i.if.end.i117_crit_edge, label %if.then.i116, !prof !195

sw.bb1.i.if.end.i117_crit_edge:                   ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i117

if.then.i116:                                     ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #13
  %result.i = getelementptr inbounds %struct.hpt_iop_request_header, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %result.i, align 4
  br label %if.end.i117

if.end.i117:                                      ; preds = %if.then.i116, %sw.bb1.i.if.end.i117_crit_edge
  tail call fastcc void @hptiop_finish_scsi_req(ptr noundef %hba, i32 noundef %and2.i, ptr noundef %40) #11
  br label %hptiop_request_callback_mvfrey.exit

hptiop_request_callback_mvfrey.exit:              ; preds = %if.end.i117, %sw.bb.i, %do.end62.hptiop_request_callback_mvfrey.exit_crit_edge
  %cmp.not = icmp eq i32 %spec.store.select, %and40
  br i1 %cmp.not, label %hptiop_request_callback_mvfrey.exit.while.end_crit_edge, label %hptiop_request_callback_mvfrey.exit.while.body_crit_edge

hptiop_request_callback_mvfrey.exit.while.body_crit_edge: ; preds = %hptiop_request_callback_mvfrey.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

hptiop_request_callback_mvfrey.exit.while.end_crit_edge: ; preds = %hptiop_request_callback_mvfrey.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %hptiop_request_callback_mvfrey.exit.while.end_crit_edge, %do.body38.while.end_crit_edge
  %ret.2.lcssa = phi i32 [ %ret.1, %do.body38.while.end_crit_edge ], [ 1, %hptiop_request_callback_mvfrey.exit.while.end_crit_edge ]
  %42 = ptrtoint ptr %outlist_rptr to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %and40, ptr %outlist_rptr, align 4
  %43 = ptrtoint ptr %outlist_cptr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %outlist_cptr, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 4
  %and68 = and i32 %46, 255
  %cmp69.not = icmp eq i32 %and40, %and68
  br i1 %cmp69.not, label %while.end.if.end71_crit_edge, label %while.end.do.body38_crit_edge

while.end.do.body38_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body38

while.end.if.end71_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end71

if.end71:                                         ; preds = %while.end.if.end71_crit_edge, %if.end22.if.end71_crit_edge
  %ret.3 = phi i32 [ %ret.0, %if.end22.if.end71_crit_edge ], [ %ret.2.lcssa, %while.end.if.end71_crit_edge ]
  %47 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %47)
  %bf.load73 = load i8, ptr %initialized, align 4
  %48 = and i8 %bf.load73, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool77.not = icmp eq i8 %48, 0
  br i1 %tobool77.not, label %if.end71.if.end85_crit_edge, label %do.body79

if.end71.if.end85_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end85

do.body79:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !243
  tail call void @arm_heavy_mb() #11
  %49 = ptrtoint ptr %mu2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mu2, align 4
  %pcie_f0_int_enable84 = getelementptr inbounds %struct.hpt_iopmu_mvfrey, ptr %50, i32 0, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %pcie_f0_int_enable84, i32 269484032) #11, !srcloc !158
  br label %if.end85

if.end85:                                         ; preds = %do.body79, %if.end71.if.end85_crit_edge
  ret i32 %ret.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hptiop_post_msg_mvfrey(ptr nocapture noundef readonly %hba, i32 noundef %msg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  tail call void @arm_heavy_mb() #11
  %0 = tail call i32 @llvm.bswap.i32(i32 %msg)
  %mu = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1, i32 0, i32 1
  %1 = ptrtoint ptr %mu to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mu, align 4
  %f0_to_cpu_msg_a = getelementptr inbounds %struct.hpt_iopmu_mvfrey, ptr %2, i32 0, i32 18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %f0_to_cpu_msg_a, i32 %0) #11, !srcloc !158
  %3 = ptrtoint ptr %mu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mu, align 4
  %f0_to_cpu_msg_a3 = getelementptr inbounds %struct.hpt_iopmu_mvfrey, ptr %4, i32 0, i32 18
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %f0_to_cpu_msg_a3) #11, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hptiop_post_req_mvfrey(ptr nocapture noundef %hba, ptr nocapture noundef readonly %_req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %req_virt = getelementptr inbounds %struct.hptiop_request, ptr %_req, i32 0, i32 1
  %0 = ptrtoint ptr %req_virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req_virt, align 4
  %req_shifted_phy = getelementptr inbounds %struct.hptiop_request, ptr %_req, i32 0, i32 2
  %2 = ptrtoint ptr %req_shifted_phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %req_shifted_phy, align 4
  %shr = lshr i32 %3, 11
  %and = and i32 %shr, 2031616
  %or = or i32 %and, 72
  %4 = tail call i32 @llvm.bswap.i32(i32 %or)
  %flags = getelementptr inbounds %struct.hpt_iop_request_header, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %or1 = or i32 %4, %6
  store i32 %or1, ptr %flags, align 4
  %index2 = getelementptr inbounds %struct.hptiop_request, ptr %_req, i32 0, i32 4
  %7 = ptrtoint ptr %index2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index2, align 4
  %shl = shl i32 %8, 4
  %type = getelementptr inbounds %struct.hpt_iop_request_header, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type, align 4
  %or3 = or i32 %10, %shl
  %or4 = or i32 %or3, -2147483648
  %11 = tail call i32 @llvm.bswap.i32(i32 %or4)
  %context = getelementptr inbounds %struct.hpt_iop_request_header, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %context, align 4
  %13 = ptrtoint ptr %req_shifted_phy to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %req_shifted_phy, align 4
  %shl6 = shl i32 %14, 5
  %15 = tail call i32 @llvm.bswap.i32(i32 %shl6)
  %context_hi32 = getelementptr inbounds %struct.hpt_iop_request_header, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %context_hi32 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %context_hi32, align 4
  %inlist_wptr = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1, i32 0, i32 7
  %17 = ptrtoint ptr %inlist_wptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %inlist_wptr, align 4
  %inc = add i32 %18, 1
  store i32 %inc, ptr %inlist_wptr, align 4
  %and10 = and i32 %inc, 16383
  %list_count = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1, i32 0, i32 4
  %19 = ptrtoint ptr %list_count to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %list_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and10, i32 %20)
  %cmp = icmp eq i32 %and10, %20
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %and14 = and i32 %inc, -16384
  %xor = xor i32 %and14, 16384
  %21 = ptrtoint ptr %inlist_wptr to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %xor, ptr %inlist_wptr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %index.0 = phi i32 [ 0, %if.then ], [ %and10, %entry.if.end_crit_edge ]
  %22 = ptrtoint ptr %req_shifted_phy to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %req_shifted_phy, align 4
  %shl18 = shl i32 %23, 5
  %inlist = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1, i32 0, i32 5
  %24 = ptrtoint ptr %inlist to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %inlist, align 4
  %arrayidx = getelementptr %struct.mvfrey_inlist_entry, ptr %25, i32 %index.0
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %shl18, ptr %arrayidx, align 1
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %1, align 4
  %add = add i32 %28, 3
  %div49 = lshr i32 %add, 2
  %29 = load ptr, ptr %inlist, align 4
  %intrfc_len = getelementptr %struct.mvfrey_inlist_entry, ptr %29, i32 %index.0, i32 1
  %30 = ptrtoint ptr %intrfc_len to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 %div49, ptr %intrfc_len, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !246
  tail call void @arm_heavy_mb() #11
  %31 = ptrtoint ptr %inlist_wptr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %inlist_wptr, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  %mu = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1, i32 0, i32 1
  %34 = ptrtoint ptr %mu to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mu, align 4
  %inbound_write_ptr = getelementptr inbounds %struct.hpt_iopmu_mvfrey, ptr %35, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %inbound_write_ptr, i32 %33) #11, !srcloc !158
  %36 = ptrtoint ptr %mu to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mu, align 4
  %inbound_write_ptr28 = getelementptr inbounds %struct.hpt_iopmu_mvfrey, ptr %37, i32 0, i32 4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %inbound_write_ptr28) #11, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !247
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hptiop_reset_comm_mvfrey(ptr noundef %hba) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %list_count1 = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1, i32 0, i32 4
  %0 = ptrtoint ptr %list_count1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %list_count1, align 4
  %call = tail call fastcc i32 @iop_send_sync_msg(ptr noundef %hba, i32 noundef 6, i32 noundef 3000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @msleep(i32 noundef 100) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !248
  tail call void @arm_heavy_mb() #11
  %inlist_phy = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1, i32 0, i32 6
  %2 = ptrtoint ptr %inlist_phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %inlist_phy, align 4
  %mu = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %mu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mu, align 4
  %inbound_base = getelementptr inbounds %struct.hpt_iopmu_mvfrey, ptr %5, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %inbound_base, i32 %3) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !249
  tail call void @arm_heavy_mb() #11
  %6 = ptrtoint ptr %mu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mu, align 4
  %inbound_base_high = getelementptr inbounds %struct.hpt_iopmu_mvfrey, ptr %7, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %inbound_base_high, i32 0) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !250
  tail call void @arm_heavy_mb() #11
  %outlist_phy = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1, i32 0, i32 9
  %8 = ptrtoint ptr %outlist_phy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %outlist_phy, align 4
  %10 = ptrtoint ptr %mu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mu, align 4
  %outbound_base = getelementptr inbounds %struct.hpt_iopmu_mvfrey, ptr %11, i32 0, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %outbound_base, i32 %9) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !251
  tail call void @arm_heavy_mb() #11
  %12 = ptrtoint ptr %mu to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mu, align 4
  %outbound_base_high = getelementptr inbounds %struct.hpt_iopmu_mvfrey, ptr %13, i32 0, i32 9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %outbound_base_high, i32 0) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !252
  tail call void @arm_heavy_mb() #11
  %outlist_cptr_phy = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1, i32 0, i32 11
  %14 = ptrtoint ptr %outlist_cptr_phy to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %outlist_cptr_phy, align 4
  %16 = ptrtoint ptr %mu to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mu, align 4
  %outbound_shadow_base = getelementptr inbounds %struct.hpt_iopmu_mvfrey, ptr %17, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %outbound_shadow_base, i32 %15) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !253
  tail call void @arm_heavy_mb() #11
  %18 = ptrtoint ptr %mu to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mu, align 4
  %outbound_shadow_base_high = getelementptr inbounds %struct.hpt_iopmu_mvfrey, ptr %19, i32 0, i32 11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %outbound_shadow_base_high, i32 0) #11, !srcloc !158
  %sub = add i32 %1, -1
  %or = or i32 %sub, 16384
  %inlist_wptr = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1, i32 0, i32 7
  %20 = ptrtoint ptr %inlist_wptr to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or, ptr %inlist_wptr, align 4
  %outlist_cptr = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1, i32 0, i32 10
  %21 = ptrtoint ptr %outlist_cptr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %outlist_cptr, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or, ptr %22, align 4
  %outlist_rptr = getelementptr inbounds %struct.hptiop_hba, ptr %hba, i32 0, i32 1, i32 0, i32 12
  %24 = ptrtoint ptr %outlist_rptr to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub, ptr %outlist_rptr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_host_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hptiop_intr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.hptiop_hba, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host_lock, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #11
  %4 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_id, align 4
  %iop_intr = getelementptr inbounds %struct.hptiop_adapter_ops, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %iop_intr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iop_intr, align 8
  %call5 = tail call i32 %7(ptr noundef %dev_id) #11
  %8 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host, align 4
  %host_lock7 = getelementptr inbounds %struct.Scsi_Host, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %host_lock7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %host_lock7, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %call2) #11
  ret i32 %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_scan_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_host_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hptiop_queuecommand(ptr nocapture noundef readonly %shost, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 4
  %0 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_lock, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #11
  %device.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %2 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 53
  %req_list.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 5, i32 1, i32 4, i32 7
  %6 = ptrtoint ptr %req_list.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %req_list.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %entry.hptiop_queuecommand_lck.exit_crit_edge, label %if.end.i

entry.hptiop_queuecommand_lck.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %hptiop_queuecommand_lck.exit

if.end.i:                                         ; preds = %entry
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %10 = ptrtoint ptr %req_list.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %req_list.i.i, align 4
  %scp2.i = getelementptr inbounds %struct.hptiop_request, ptr %7, i32 0, i32 3
  %11 = ptrtoint ptr %scp2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %cmd, ptr %scp2.i, align 4
  %result.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 24
  %12 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %result.i, align 4
  %13 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device.i, align 4
  %channel.i = getelementptr inbounds %struct.scsi_device, ptr %14, i32 0, i32 17
  %15 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %channel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end.i.if.then13.i_crit_edge

if.end.i.if.then13.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %id.i = getelementptr inbounds %struct.scsi_device, ptr %14, i32 0, i32 16
  %17 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id.i, align 8
  %max_devices.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 5, i32 1, i32 4
  %19 = ptrtoint ptr %max_devices.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_devices.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp5.i = icmp ugt i32 %18, %20
  br i1 %cmp5.i, label %lor.lhs.false.i.if.then13.i_crit_edge, label %lor.lhs.false6.i

lor.lhs.false.i.if.then13.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i

lor.lhs.false6.i:                                 ; preds = %lor.lhs.false.i
  %sub.i = add i32 %20, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %sub.i)
  %cmp10.i = icmp eq i32 %18, %sub.i
  br i1 %cmp10.i, label %land.lhs.true.i, label %lor.lhs.false6.i.if.end15.i_crit_edge

lor.lhs.false6.i.if.end15.i_crit_edge:            ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false6.i
  %lun.i = getelementptr inbounds %struct.scsi_device, ptr %14, i32 0, i32 18
  %21 = ptrtoint ptr %lun.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %lun.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %22)
  %tobool12.not.i = icmp eq i64 %22, 0
  br i1 %tobool12.not.i, label %land.lhs.true.i.if.end15.i_crit_edge, label %land.lhs.true.i.if.then13.i_crit_edge

land.lhs.true.i.if.then13.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i

land.lhs.true.i.if.end15.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.i

if.then13.i:                                      ; preds = %land.lhs.true.i.if.then13.i_crit_edge, %lor.lhs.false.i.if.then13.i_crit_edge, %if.end.i.if.then13.i_crit_edge
  %23 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 262144, ptr %result.i, align 4
  %24 = ptrtoint ptr %req_list.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %req_list.i.i, align 4
  %26 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %7, align 4
  store ptr %7, ptr %req_list.i.i, align 4
  tail call void @scsi_done(ptr noundef %cmd) #11
  br label %hptiop_queuecommand_lck.exit

if.end15.i:                                       ; preds = %land.lhs.true.i.if.end15.i_crit_edge, %lor.lhs.false6.i.if.end15.i_crit_edge
  %req_virt.i = getelementptr inbounds %struct.hptiop_request, ptr %7, i32 0, i32 1
  %27 = ptrtoint ptr %req_virt.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %req_virt.i, align 4
  %sg_list.i = getelementptr inbounds %struct.hpt_iop_request_scsi_command, ptr %28, i32 0, i32 7
  %29 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %14, align 8
  %hostdata.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %30, i32 0, i32 53
  %call.i.i = tail call i32 @scsi_dma_map(ptr noundef %cmd) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.body3.i.i, label %do.end8.i.i, !prof !195

do.body3.i.i:                                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/hptiop.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 854, 0\0A.popsection", ""() #11, !srcloc !254
  unreachable

do.end8.i.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool9.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool9.not.i.i, label %do.end8.i.i.if.then19.i_crit_edge, label %if.end11.i.i

do.end8.i.i.if.then19.i_crit_edge:                ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then19.i

if.end11.i.i:                                     ; preds = %do.end8.i.i
  %SCp.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 22
  %sgcnt.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 22, i32 1
  %31 = ptrtoint ptr %sgcnt.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call.i.i, ptr %sgcnt.i.i, align 4
  %32 = ptrtoint ptr %SCp.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %SCp.i.i, align 4
  %max_sg_descriptors.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %30, i32 1, i32 5, i32 1, i32 4, i32 2
  %33 = ptrtoint ptr %max_sg_descriptors.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %max_sg_descriptors.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %34)
  %cmp16.i.i = icmp ugt i32 %call.i.i, %34
  br i1 %cmp16.i.i, label %do.body24.i.i, label %for.body.preheader.i.i, !prof !195

do.body24.i.i:                                    ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/hptiop.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 861, 0\0A.popsection", ""() #11, !srcloc !255
  unreachable

for.body.preheader.i.i:                           ; preds = %if.end11.i.i
  %sdb.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 17
  %35 = ptrtoint ptr %sdb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sdb.i.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %idx.072.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %sg.071.i.i = phi ptr [ %call43.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %36, %for.body.preheader.i.i ]
  %dma_address.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.071.i.i, i32 0, i32 3
  %37 = ptrtoint ptr %dma_address.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dma_address.i.i, align 4
  %conv.i.i = zext i32 %38 to i64
  %39 = tail call i64 @llvm.bswap.i64(i64 %conv.i.i) #11
  %40 = ptrtoint ptr %hostdata.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hostdata.i.i, align 4
  %host_phy_flag.i.i = getelementptr inbounds %struct.hptiop_adapter_ops, ptr %41, i32 0, i32 15
  %42 = ptrtoint ptr %host_phy_flag.i.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %host_phy_flag.i.i, align 8
  %or.i.i = or i64 %39, %43
  %arrayidx.i.i = getelementptr %struct.hpt_iopsg, ptr %sg_list.i, i32 %idx.072.i.i
  %pci_address.i.i = getelementptr %struct.hpt_iopsg, ptr %sg_list.i, i32 %idx.072.i.i, i32 2
  %44 = ptrtoint ptr %pci_address.i.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %or.i.i, ptr %pci_address.i.i, align 8
  %dma_length.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.071.i.i, i32 0, i32 4
  %45 = ptrtoint ptr %dma_length.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dma_length.i.i, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #11
  %48 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %arrayidx.i.i, align 8
  %49 = ptrtoint ptr %sgcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %sgcnt.i.i, align 4
  %sub.i.i = add i32 %50, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.072.i.i, i32 %sub.i.i)
  %cmp40.i.i = icmp eq i32 %idx.072.i.i, %sub.i.i
  %cond.i.i = select i1 %cmp40.i.i, i32 16777216, i32 0
  %eot.i.i = getelementptr %struct.hpt_iopsg, ptr %sg_list.i, i32 %idx.072.i.i, i32 1
  %51 = ptrtoint ptr %eot.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %cond.i.i, ptr %eot.i.i, align 4
  %inc.i.i = add nuw nsw i32 %idx.072.i.i, 1
  %call43.i.i = tail call ptr @sg_next(ptr noundef %sg.071.i.i) #11
  %52 = ptrtoint ptr %sgcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %sgcnt.i.i, align 4
  %cmp36.i.i = icmp slt i32 %inc.i.i, %53
  br i1 %cmp36.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %hptiop_buildsgl.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

hptiop_buildsgl.exit.i:                           ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool18.not.i = icmp eq i32 %53, 0
  br i1 %tobool18.not.i, label %hptiop_buildsgl.exit.i.if.then19.i_crit_edge, label %hptiop_buildsgl.exit.i.if.end20.i_crit_edge

hptiop_buildsgl.exit.i.if.end20.i_crit_edge:      ; preds = %hptiop_buildsgl.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.i

hptiop_buildsgl.exit.i.if.then19.i_crit_edge:     ; preds = %hptiop_buildsgl.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then19.i

if.then19.i:                                      ; preds = %hptiop_buildsgl.exit.i.if.then19.i_crit_edge, %do.end8.i.i.if.then19.i_crit_edge
  %SCp.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 22
  %54 = ptrtoint ptr %SCp.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %SCp.i, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then19.i, %hptiop_buildsgl.exit.i.if.end20.i_crit_edge
  %retval.0.i79.i = phi i32 [ 0, %if.then19.i ], [ %53, %hptiop_buildsgl.exit.i.if.end20.i_crit_edge ]
  %flags.i = getelementptr inbounds %struct.hpt_iop_request_header, ptr %28, i32 0, i32 2
  %55 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 134217728, ptr %flags.i, align 8
  %type.i = getelementptr inbounds %struct.hpt_iop_request_header, ptr %28, i32 0, i32 1
  %56 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 50331648, ptr %type.i, align 4
  %result23.i = getelementptr inbounds %struct.hpt_iop_request_header, ptr %28, i32 0, i32 3
  %57 = ptrtoint ptr %result23.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %result23.i, align 4
  %length.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 17, i32 1
  %58 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %length.i.i, align 4
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #11
  %dataxfer_length.i = getelementptr inbounds %struct.hpt_iop_request_scsi_command, ptr %28, i32 0, i32 6
  %61 = ptrtoint ptr %dataxfer_length.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %dataxfer_length.i, align 4
  %62 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %device.i, align 4
  %channel26.i = getelementptr inbounds %struct.scsi_device, ptr %63, i32 0, i32 17
  %64 = ptrtoint ptr %channel26.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %channel26.i, align 4
  %conv.i = trunc i32 %65 to i8
  %channel27.i = getelementptr inbounds %struct.hpt_iop_request_scsi_command, ptr %28, i32 0, i32 1
  %66 = ptrtoint ptr %channel27.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv.i, ptr %channel27.i, align 8
  %67 = load ptr, ptr %device.i, align 4
  %id29.i = getelementptr inbounds %struct.scsi_device, ptr %67, i32 0, i32 16
  %68 = ptrtoint ptr %id29.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %id29.i, align 8
  %conv30.i = trunc i32 %69 to i8
  %target.i = getelementptr inbounds %struct.hpt_iop_request_scsi_command, ptr %28, i32 0, i32 2
  %70 = ptrtoint ptr %target.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv30.i, ptr %target.i, align 1
  %71 = load ptr, ptr %device.i, align 4
  %lun32.i = getelementptr inbounds %struct.scsi_device, ptr %71, i32 0, i32 18
  %72 = ptrtoint ptr %lun32.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %lun32.i, align 8
  %conv33.i = trunc i64 %73 to i8
  %lun34.i = getelementptr inbounds %struct.hpt_iop_request_scsi_command, ptr %28, i32 0, i32 3
  %74 = ptrtoint ptr %lun34.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv33.i, ptr %lun34.i, align 2
  %mul.i = shl i32 %retval.0.i79.i, 4
  %add.i = add i32 %mul.i, 48
  %75 = tail call i32 @llvm.bswap.i32(i32 %add.i) #11
  %76 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %28, align 8
  %cdb.i = getelementptr inbounds %struct.hpt_iop_request_scsi_command, ptr %28, i32 0, i32 5
  %cmnd.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 16
  %77 = ptrtoint ptr %cmnd.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %cmnd.i, align 4
  %79 = call ptr @memcpy(ptr %cdb.i, ptr %78, i32 16)
  %80 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %hostdata.i, align 4
  %post_req.i = getelementptr inbounds %struct.hptiop_adapter_ops, ptr %81, i32 0, i32 12
  %82 = ptrtoint ptr %post_req.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %post_req.i, align 8
  tail call void %83(ptr noundef %hostdata.i, ptr noundef nonnull %7) #11
  br label %hptiop_queuecommand_lck.exit

hptiop_queuecommand_lck.exit:                     ; preds = %if.end20.i, %if.then13.i, %entry.hptiop_queuecommand_lck.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.then13.i ], [ 0, %if.end20.i ], [ 4181, %entry.hptiop_queuecommand_lck.exit_crit_edge ]
  %84 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %85, i32 noundef %call2) #11
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @hptiop_info(ptr nocapture noundef readnone %host) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @driver_name_long
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hptiop_reset(ptr nocapture noundef readonly %scp) #2 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %scp, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %host_no, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef %5, i32 noundef -1, i32 noundef -1) #14
  %resetting.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 3, i32 50, i32 31, i32 0, i32 0, i32 4, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %resetting.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !256
  tail call void @llvm.prefetch.p0(ptr %resetting.i, i32 1, i32 3, i32 1) #11
  %6 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 1, ptr %resetting.i) #11, !srcloc !257
  %asmresult.i.i.i = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !258
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %reset_count.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 3, i32 50, i32 31, i32 0, i32 0, i32 4, i32 3
  %call.i.i73.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %reset_count.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %reset_count.i, i32 1, i32 3, i32 1) #11
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %reset_count.i, ptr %reset_count.i, i32 1, ptr elementtype(i32) %reset_count.i) #11, !srcloc !259
  %8 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hostdata, align 4
  %post_msg.i = getelementptr inbounds %struct.hptiop_adapter_ops, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %post_msg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %post_msg.i, align 4
  tail call void %11(ptr noundef %hostdata, i32 noundef 1) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1077) #11
  %call.i.i74.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %resetting.i, i32 noundef 4) #11
  %12 = ptrtoint ptr %resetting.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %resetting.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp6.i = icmp eq i32 %13, 0
  br i1 %cmp6.i, label %if.end.i.if.end39.i_crit_edge, label %if.then13.i

if.end.i.if.end39.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39.i

if.then13.i:                                      ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #11
  %14 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #11
  %reset_wq.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 3, i32 50, i32 31, i32 0, i32 0, i32 4, i32 7
  %call1580.i = call i32 @prepare_to_wait_event(ptr noundef %reset_wq.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #11
  %call.i.i7581.i = call zeroext i1 @__kasan_check_read(ptr noundef %resetting.i, i32 noundef 4) #11
  %15 = ptrtoint ptr %resetting.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %resetting.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp1982.i = icmp eq i32 %16, 0
  br i1 %cmp1982.i, label %if.then13.i.for.end.i_crit_edge, label %if.then13.i.cleanup.i_crit_edge

if.then13.i.cleanup.i_crit_edge:                  ; preds = %if.then13.i
  br label %cleanup.i

if.then13.i.for.end.i_crit_edge:                  ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

cleanup.i:                                        ; preds = %cleanup.i.cleanup.i_crit_edge, %if.then13.i.cleanup.i_crit_edge
  %__ret14.183.i = phi i32 [ %__ret14.1.i, %cleanup.i.cleanup.i_crit_edge ], [ 6000, %if.then13.i.cleanup.i_crit_edge ]
  %call36.i = call i32 @schedule_timeout(i32 noundef %__ret14.183.i) #11
  %call15.i = call i32 @prepare_to_wait_event(ptr noundef %reset_wq.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #11
  %call.i.i75.i = call zeroext i1 @__kasan_check_read(ptr noundef %resetting.i, i32 noundef 4) #11
  %17 = ptrtoint ptr %resetting.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %resetting.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp19.i = icmp eq i32 %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool23.not.i = icmp eq i32 %call36.i, 0
  %19 = select i1 %cmp19.i, i1 %tobool23.not.i, i1 false
  %__ret14.1.i = select i1 %19, i32 1, i32 %call36.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret14.1.i)
  %tobool29.not.i = icmp eq i32 %__ret14.1.i, 0
  %20 = select i1 %cmp19.i, i1 true, i1 %tobool29.not.i
  br i1 %20, label %cleanup.i.for.end.i_crit_edge, label %cleanup.i.cleanup.i_crit_edge

cleanup.i.cleanup.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %if.then13.i.for.end.i_crit_edge
  call void @finish_wait(ptr noundef %reset_wq.i, ptr noundef nonnull %__wq_entry.i) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #11
  br label %if.end39.i

if.end39.i:                                       ; preds = %for.end.i, %if.end.i.if.end39.i_crit_edge
  %call.i.i76.i = call zeroext i1 @__kasan_check_read(ptr noundef %resetting.i, i32 noundef 4) #11
  %21 = ptrtoint ptr %resetting.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %resetting.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool43.not.i = icmp eq i32 %22, 0
  br i1 %tobool43.not.i, label %27, label %hptiop_reset_hba.exit

hptiop_reset_hba.exit:                            ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #13
  %host.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 5
  %23 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %host.i, align 4
  %host_no.i = getelementptr inbounds %struct.Scsi_Host, ptr %24, i32 0, i32 17
  %25 = ptrtoint ptr %host_no.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %host_no.i, align 4
  %call49.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %26) #14
  br label %28

27:                                               ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #13
  %call51.i = call fastcc i32 @iop_send_sync_msg(ptr noundef %hostdata, i32 noundef 5, i32 noundef 5000) #11
  br label %28

28:                                               ; preds = %27, %hptiop_reset_hba.exit
  %29 = phi i32 [ 8194, %27 ], [ 8195, %hptiop_reset_hba.exit ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hptiop_slave_config(ptr nocapture noundef readonly %sdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 22
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %request_queue = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 1
  %2 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %request_queue, align 4
  tail call void @blk_queue_max_hw_sectors(ptr noundef %3, i32 noundef 8192) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hptiop_adjust_disk_queue_depth(ptr noundef %sdev, i32 noundef %queue_depth) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev, align 8
  %max_requests = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 5, i32 1, i32 4, i32 1
  %2 = ptrtoint ptr %max_requests to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_requests, align 4
  %4 = tail call i32 @llvm.umin.i32(i32 %3, i32 %queue_depth)
  %call = tail call i32 @scsi_change_queue_depth(ptr noundef %sdev, i32 noundef %4) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_dma_map(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_hw_sectors(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_change_queue_depth(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hptiop_show_version(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.54, ptr noundef nonnull @driver_ver)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hptiop_show_fw_version(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %firmware_version = getelementptr i8, ptr %dev, i32 1020
  %0 = ptrtoint ptr %firmware_version to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %firmware_version, align 4
  %shr = lshr i32 %1, 24
  %shr2 = lshr i32 %1, 16
  %and = and i32 %shr2, 255
  %shr4 = lshr i32 %1, 8
  %and5 = and i32 %shr4, 255
  %and7 = and i32 %1, 255
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.56, i32 noundef %shr, i32 noundef %and, i32 noundef %and5, i32 noundef %and7)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_add_host_with_dma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !22, !23, !24, !25, !27, !28, !29, !31, !33, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !99, !101, !102, !103, !104, !106, !107, !108, !109, !111, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !131, !132, !133, !135, !136, !137, !138, !140, !141, !142, !143}
!llvm.module.flags = !{!145, !146, !147, !148, !149, !150, !151, !152}
!llvm.ident = !{!153}

!0 = !{ptr @__UNIQUE_ID_author287, !1, !"__UNIQUE_ID_author287", i1 false, i1 false}
!1 = !{!"../drivers/scsi/hptiop.c", i32 32, i32 1}
!2 = !{ptr @__UNIQUE_ID_description288, !3, !"__UNIQUE_ID_description288", i1 false, i1 false}
!3 = !{!"../drivers/scsi/hptiop.c", i32 33, i32 1}
!4 = !{ptr @__initcall__kmod_hptiop__291_1697_hptiop_module_init6, !5, !"__initcall__kmod_hptiop__291_1697_hptiop_module_init6", i1 false, i1 false}
!5 = !{!"../drivers/scsi/hptiop.c", i32 1697, i32 1}
!6 = !{ptr @__exitcall_hptiop_module_exit, !7, !"__exitcall_hptiop_module_exit", i1 false, i1 false}
!7 = !{!"../drivers/scsi/hptiop.c", i32 1698, i32 1}
!8 = !{ptr @__UNIQUE_ID_file292, !9, !"__UNIQUE_ID_file292", i1 false, i1 false}
!9 = !{!"../drivers/scsi/hptiop.c", i32 1700, i32 1}
!10 = !{ptr @__UNIQUE_ID_license293, !9, !"__UNIQUE_ID_license293", i1 false, i1 false}
!11 = !{ptr @hptiop_pci_driver, !12, !"hptiop_pci_driver", i1 false, i1 false}
!12 = !{!"../drivers/scsi/hptiop.c", i32 1677, i32 26}
!13 = !{ptr @driver_name, !14, !"driver_name", i1 false, i1 false}
!14 = !{!"../drivers/scsi/hptiop.c", i32 35, i32 13}
!15 = !{ptr @hptiop_id_table, !16, !"hptiop_id_table", i1 false, i1 false}
!16 = !{!"../drivers/scsi/hptiop.c", i32 1639, i32 29}
!17 = !{ptr @hptiop_itl_ops, !18, !"hptiop_itl_ops", i1 false, i1 false}
!18 = !{!"../drivers/scsi/hptiop.c", i32 1582, i32 34}
!19 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/scsi/hptiop.c", i32 594, i32 3}
!21 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @hptiop_map_pci_bar._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @hptiop_map_pci_bar._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/scsi/hptiop.c", i32 604, i32 3}
!27 = !{ptr @hptiop_map_pci_bar._entry.3, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @hptiop_map_pci_bar._entry_ptr.5, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @hptiop_mv_ops, !30, !"hptiop_mv_ops", i1 false, i1 false}
!30 = !{!"../drivers/scsi/hptiop.c", i32 1601, i32 34}
!31 = !{ptr @hptiop_mvfrey_ops, !32, !"hptiop_mvfrey_ops", i1 false, i1 false}
!32 = !{!"../drivers/scsi/hptiop.c", i32 1620, i32 34}
!33 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/scsi/hptiop.c", i32 1289, i32 3}
!35 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @hptiop_probe._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @hptiop_probe._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/scsi/hptiop.c", i32 1293, i32 2}
!40 = !{ptr @hptiop_probe._entry.8, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @hptiop_probe._entry_ptr.10, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/scsi/hptiop.c", i32 1307, i32 3}
!44 = !{ptr @hptiop_probe._entry.11, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @hptiop_probe._entry_ptr.13, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/scsi/hptiop.c", i32 1312, i32 3}
!48 = !{ptr @hptiop_probe._entry.14, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @hptiop_probe._entry_ptr.16, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/scsi/hptiop.c", i32 1318, i32 3}
!52 = !{ptr @hptiop_probe._entry.17, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @hptiop_probe._entry_ptr.19, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @hptiop_probe.__key, !55, !"__key", i1 false, i1 false}
!55 = !{!"../drivers/scsi/hptiop.c", i32 1334, i32 2}
!56 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @hptiop_probe.__key.21, !58, !"__key", i1 false, i1 false}
!58 = !{!"../drivers/scsi/hptiop.c", i32 1335, i32 2}
!59 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/scsi/hptiop.c", i32 1347, i32 3}
!62 = !{ptr @hptiop_probe._entry.23, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @hptiop_probe._entry_ptr.25, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/scsi/hptiop.c", i32 1354, i32 4}
!66 = !{ptr @hptiop_probe._entry.26, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @hptiop_probe._entry_ptr.28, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/scsi/hptiop.c", i32 1361, i32 3}
!70 = !{ptr @hptiop_probe._entry.29, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @hptiop_probe._entry_ptr.31, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @hptiop_probe._entry.32, !73, !"_entry", i1 false, i1 false}
!73 = !{!"../drivers/scsi/hptiop.c", i32 1377, i32 4}
!74 = !{ptr @hptiop_probe._entry_ptr.33, !73, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/scsi/hptiop.c", i32 1382, i32 4}
!77 = !{ptr @hptiop_probe._entry.34, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @hptiop_probe._entry_ptr.36, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/scsi/hptiop.c", i32 1410, i32 3}
!81 = !{ptr @hptiop_probe._entry.37, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @hptiop_probe._entry_ptr.39, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/scsi/hptiop.c", i32 1419, i32 3}
!85 = !{ptr @hptiop_probe._entry.40, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @hptiop_probe._entry_ptr.42, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.44, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/scsi/hptiop.c", i32 1437, i32 4}
!89 = !{ptr @hptiop_probe._entry.43, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @hptiop_probe._entry_ptr.45, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.47, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/scsi/hptiop.c", i32 1463, i32 3}
!93 = !{ptr @hptiop_probe._entry.46, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @hptiop_probe._entry_ptr.48, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @driver_template, !96, !"driver_template", i1 false, i1 false}
!96 = !{!"../drivers/scsi/hptiop.c", i32 1165, i32 34}
!97 = !{ptr @driver_name_long, !98, !"driver_name_long", i1 false, i1 false}
!98 = !{!"../drivers/scsi/hptiop.c", i32 36, i32 19}
!99 = !{ptr @.str.49, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/scsi/hptiop.c", i32 1098, i32 2}
!101 = !{ptr @.str.50, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @hptiop_reset._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @hptiop_reset._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.51, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/scsi/hptiop.c", i32 1081, i32 3}
!106 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @hptiop_reset_hba._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @hptiop_reset_hba._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @hptiop_host_groups, !110, !"hptiop_host_groups", i1 false, i1 false}
!110 = !{!"../drivers/scsi/hptiop.c", i32 1155, i32 1}
!111 = !{ptr @hptiop_host_group, !110, !"hptiop_host_group", i1 false, i1 false}
!112 = !{ptr @hptiop_host_attrs, !113, !"hptiop_host_attrs", i1 false, i1 false}
!113 = !{!"../drivers/scsi/hptiop.c", i32 1149, i32 26}
!114 = !{ptr @.str.53, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/scsi/hptiop.c", i32 1135, i32 11}
!116 = !{ptr @hptiop_attr_version, !117, !"hptiop_attr_version", i1 false, i1 false}
!117 = !{!"../drivers/scsi/hptiop.c", i32 1133, i32 32}
!118 = !{ptr @.str.54, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/scsi/hptiop.c", i32 1117, i32 34}
!120 = !{ptr @driver_ver, !121, !"driver_ver", i1 false, i1 false}
!121 = !{!"../drivers/scsi/hptiop.c", i32 37, i32 19}
!122 = !{ptr @.str.55, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/scsi/hptiop.c", i32 1143, i32 11}
!124 = !{ptr @hptiop_attr_fw_version, !125, !"hptiop_attr_fw_version", i1 false, i1 false}
!125 = !{!"../drivers/scsi/hptiop.c", i32 1141, i32 32}
!126 = !{ptr @.str.56, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/scsi/hptiop.c", i32 1126, i32 34}
!128 = !{ptr @.str.57, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/scsi/hptiop.c", i32 578, i32 3}
!130 = !{ptr @.str.58, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @hptiop_initialize_iop._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @hptiop_initialize_iop._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.59, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/scsi/hptiop.c", i32 1513, i32 3}
!135 = !{ptr @.str.60, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @hptiop_shutdown._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @hptiop_shutdown._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.61, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/scsi/hptiop.c", i32 1687, i32 2}
!140 = !{ptr @.str.62, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @hptiop_module_init._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @hptiop_module_init._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.63, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/scsi/hptiop.c", i32 1688, i32 9}
!145 = !{i32 1, !"wchar_size", i32 2}
!146 = !{i32 1, !"min_enum_size", i32 4}
!147 = !{i32 8, !"branch-target-enforcement", i32 0}
!148 = !{i32 8, !"sign-return-address", i32 0}
!149 = !{i32 8, !"sign-return-address-all", i32 0}
!150 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!151 = !{i32 7, !"uwtable", i32 1}
!152 = !{i32 7, !"frame-pointer", i32 2}
!153 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!154 = !{!"auto-init"}
!155 = !{i64 5024682}
!156 = !{i64 2155049471}
!157 = !{i64 2155049721}
!158 = !{i64 5024264}
!159 = !{i64 2155050468}
!160 = !{i64 2155081433}
!161 = !{i64 2155159682}
!162 = !{i64 2155159929}
!163 = !{i64 2155160709}
!164 = !{i64 2155073736}
!165 = !{i64 2155073960}
!166 = !{i64 2155074368}
!167 = !{i64 2155074867}
!168 = !{i64 2155075387}
!169 = !{i64 2155075895}
!170 = !{i64 2155077309}
!171 = !{i64 2155077756}
!172 = !{i64 2155078164}
!173 = !{i64 2155078663}
!174 = !{i64 2155079183}
!175 = !{i64 2155079635}
!176 = !{i64 2155052811}
!177 = !{i64 2155053019}
!178 = !{i64 2155053698}
!179 = !{i64 2155054210}
!180 = !{i64 2155054431}
!181 = !{i64 2155051032}
!182 = !{i64 2155051508}
!183 = !{i64 2155051972}
!184 = !{i64 2155052178}
!185 = !{i64 2155070088}
!186 = !{i64 2155070837}
!187 = !{i64 2155106009}
!188 = !{i64 2155106556}
!189 = !{i64 2155066771}
!190 = !{i64 2155067650}
!191 = !{i64 2155067874}
!192 = !{i64 2155068313}
!193 = !{i64 2155069200}
!194 = !{i64 2155069670}
!195 = !{!"branch_weights", i32 1, i32 2000}
!196 = !{i64 2155094092}
!197 = !{i64 2155094340, i64 2155094826, i64 2155094377, i64 2155094433, i64 2155094467, i64 2155094491, i64 2155094532, i64 2155094553, i64 2155094581, i64 2155094615}
!198 = !{i64 2155096626}
!199 = !{!"branch_weights", i32 2000, i32 1}
!200 = !{i64 2155096908, i64 2155097394, i64 2155096945, i64 2155097001, i64 2155097035, i64 2155097059, i64 2155097100, i64 2155097121, i64 2155097149, i64 2155097183}
!201 = !{i64 2155098624}
!202 = !{i64 2155099114}
!203 = !{i64 2155099580}
!204 = !{i64 2155100342}
!205 = !{i64 2155100612}
!206 = !{i64 2155089031, i64 2155089517, i64 2155089068, i64 2155089124, i64 2155089158, i64 2155089182, i64 2155089223, i64 2155089244, i64 2155089272, i64 2155089306}
!207 = !{i64 2155090960, i64 2155091446, i64 2155090997, i64 2155091053, i64 2155091087, i64 2155091111, i64 2155091152, i64 2155091173, i64 2155091201, i64 2155091235}
!208 = !{i64 2155081881}
!209 = !{i64 2155160937}
!210 = !{i64 2155161672}
!211 = !{i64 2155059832}
!212 = !{i64 2155060067}
!213 = !{i64 2155060799}
!214 = !{i64 2155055099}
!215 = !{i64 2155055589}
!216 = !{i64 2155055887}
!217 = !{i64 2155057870, i64 2155058356, i64 2155057907, i64 2155057963, i64 2155057997, i64 2155058021, i64 2155058062, i64 2155058083, i64 2155058111, i64 2155058145}
!218 = !{i64 2155071060}
!219 = !{i64 2155071474}
!220 = !{i64 2155072209}
!221 = !{i64 2155056619}
!222 = !{i64 2155056919}
!223 = !{i64 2155057337}
!224 = !{i64 2155123944}
!225 = !{i64 2155124314, i64 2155124801, i64 2155124351, i64 2155124407, i64 2155124441, i64 2155124465, i64 2155124506, i64 2155124527, i64 2155124555, i64 2155124589}
!226 = !{i64 2155125881, i64 2155126368, i64 2155125918, i64 2155125974, i64 2155126008, i64 2155126032, i64 2155126073, i64 2155126094, i64 2155126122, i64 2155126156}
!227 = !{i64 2155082332}
!228 = !{i64 2155082778}
!229 = !{i64 2155083206}
!230 = !{i64 2155161906}
!231 = !{i64 2155162671}
!232 = !{i64 2155162897}
!233 = !{i64 2155163622}
!234 = !{i64 2155163856}
!235 = !{i64 2155164621}
!236 = !{i64 2155061091}
!237 = !{i64 2155061828}
!238 = !{i64 2155062060}
!239 = !{i64 2155062832}
!240 = !{i64 2155063370}
!241 = !{i64 2155063600}
!242 = !{i64 2155064166, i64 2155064652, i64 2155064203, i64 2155064259, i64 2155064293, i64 2155064317, i64 2155064358, i64 2155064379, i64 2155064407, i64 2155064441}
!243 = !{i64 2155065651}
!244 = !{i64 2155072442}
!245 = !{i64 2155073198}
!246 = !{i64 2155108032}
!247 = !{i64 2155108864}
!248 = !{i64 2155109352}
!249 = !{i64 2155110324}
!250 = !{i64 2155111300}
!251 = !{i64 2155112280}
!252 = !{i64 2155113282}
!253 = !{i64 2155114306}
!254 = !{i64 2155101505, i64 2155101991, i64 2155101542, i64 2155101598, i64 2155101632, i64 2155101656, i64 2155101697, i64 2155101718, i64 2155101746, i64 2155101780}
!255 = !{i64 2155103354, i64 2155103840, i64 2155103391, i64 2155103447, i64 2155103481, i64 2155103505, i64 2155103546, i64 2155103567, i64 2155103595, i64 2155103629}
!256 = !{i64 2148644357}
!257 = !{i64 891225, i64 891242, i64 891266, i64 891292, i64 891310}
!258 = !{i64 2148644727}
!259 = !{i64 2148384457, i64 2148384483, i64 2148384512, i64 2148384546, i64 2148384577, i64 2148384600}
