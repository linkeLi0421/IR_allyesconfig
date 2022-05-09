; ModuleID = '/llk/IR_all_yes/drivers/scsi/sym53c8xx_2/sym_hipd.c_pt.bc'
source_filename = "../drivers/scsi/sym53c8xx_2/sym_hipd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.sym_driver_setup = type { i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i32] }
%struct.sym_chip = type { i16, i16, ptr, i8, i8, i8, i8, i32 }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.execute_work = type { %struct.work_struct }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.sym_hcb = type { %struct.sym_ccbh, %struct.sym_tcbh, %struct.sym_lcbh, %struct.sym_actscr, %struct.sym_actscr, %struct.sym_actscr, %struct.sym_actscr, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [16 x %struct.sym_tcb], ptr, i32, ptr, %struct.sym_shcb, i32, i32, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, %struct.sym_fwa_ba, %struct.sym_fwb_ba, %struct.sym_fwz_ba, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i16, i16, i16, ptr, i32, [8 x i8], [8 x i8], i32, i32, i8, i8, i8, ptr, %struct.sym_quehead, %struct.sym_quehead, %struct.sym_quehead, [4 x i8], %struct.sym_tblmove, %struct.sym_tblsel, i8, i8 }
%struct.sym_ccbh = type { %struct.sym_actscr, i32, i32, [4 x i8] }
%struct.sym_tcbh = type { i32, i32, i8, i8, i8, i8 }
%struct.sym_lcbh = type { i32, i32, i32 }
%struct.sym_actscr = type { i32, i32 }
%struct.sym_tcb = type { %struct.sym_tcbh, ptr, i32, ptr, ptr, %struct.sym_trans, %struct.sym_trans, ptr, i8, i8, i8, i8, i16, ptr }
%struct.sym_trans = type { i8, i8, i8, i8 }
%struct.sym_shcb = type { i32, [16 x i8], [8 x i8], ptr, ptr, ptr, %struct.timer_list, i32, i32, i8 }
%struct.sym_fwa_ba = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sym_fwb_ba = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sym_fwz_ba = type { i32, i32 }
%struct.sym_quehead = type { ptr, ptr }
%struct.sym_tblmove = type { i32, i32 }
%struct.sym_tblsel = type { i8, i8, i8, i8 }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.sym_ccb = type { %struct.sym_dsb, ptr, [16 x i8], [32 x i8], i32, i32, i8, i8, i8, i8, i32, [12 x i8], [12 x i8], [6 x i8], i8, i8, i32, i32, i16, i8, i8, ptr, %struct.sym_quehead, i32, i32, i32, i32, i8, i8 }
%struct.sym_dsb = type { %struct.sym_ccbh, %struct.sym_pmc, %struct.sym_pmc, %struct.sym_tblsel, %struct.sym_tblmove, %struct.sym_tblmove, %struct.sym_tblmove, %struct.sym_tblmove, %struct.sym_tblmove, [96 x %struct.sym_tblmove] }
%struct.sym_pmc = type { %struct.sym_tblmove, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.83, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.83 = type { ptr }
%struct.sym_lcb = type { %struct.sym_lcbh, ptr, i16, i16, i16, i16, ptr, %struct.sym_slcb, i8, [2 x i16], i16, i8, i8, i8 }
%struct.sym_slcb = type { i16, i16 }
%struct.scsi_target = type { ptr, %struct.list_head, %struct.list_head, %struct.device, %struct.kref, i32, i32, i8, %struct.atomic_t, %struct.atomic_t, i32, i32, i8, i32, ptr, [0 x i32] }
%struct.spi_transport_attrs = type { i32, i32, i32, i32, i16, i32, i8, i32, i32, i32, i8, %struct.mutex }
%struct.sym_fw = type { ptr, ptr, i32, ptr, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr }

@sym_print_xerr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 83, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unrecovered SCSI parity error.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sym_print_xerr\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/scsi/sym53c8xx_2/sym_hipd.c\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sym_print_xerr._entry_ptr = internal global ptr @sym_print_xerr._entry, section ".printk_index", align 4
@sym_print_xerr._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 86, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"extraneous data discarded.\0A\00", [36 x i8] zeroinitializer }, align 32
@sym_print_xerr._entry_ptr.7 = internal global ptr @sym_print_xerr._entry.5, section ".printk_index", align 4
@sym_print_xerr._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 89, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"illegal scsi phase (4/5).\0A\00", [37 x i8] zeroinitializer }, align 32
@sym_print_xerr._entry_ptr.10 = internal global ptr @sym_print_xerr._entry.8, section ".printk_index", align 4
@sym_print_xerr._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 92, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ODD transfer in DATA OUT phase.\0A\00", [63 x i8] zeroinitializer }, align 32
@sym_print_xerr._entry_ptr.13 = internal global ptr @sym_print_xerr._entry.11, section ".printk_index", align 4
@sym_print_xerr._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 95, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ODD transfer in DATA IN phase.\0A\00", [32 x i8] zeroinitializer }, align 32
@sym_print_xerr._entry_ptr.16 = internal global ptr @sym_print_xerr._entry.14, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@sym_driver_setup = external dso_local local_unnamed_addr global %struct.sym_driver_setup, align 4
@sym_reset_scsi_bus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s: suspicious SCSI data while resetting the BUS.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sym_reset_scsi_bus\00", [45 x i8] zeroinitializer }, align 32
@sym_reset_scsi_bus._entry_ptr = internal global ptr @sym_reset_scsi_bus._entry, section ".printk_index", align 4
@sym_reset_scsi_bus._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 220, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"%s: %sdp0,d7-0,rst,req,ack,bsy,sel,atn,msg,c/d,i/o = 0x%lx, expecting 0x%lx\0A\00", [51 x i8] zeroinitializer }, align 32
@sym_reset_scsi_bus._entry_ptr.21 = internal global ptr @sym_reset_scsi_bus._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dp1,d15-8,\00", [21 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@sym_dev_table = internal global { [18 x %struct.sym_chip], [64 x i8] } { [18 x %struct.sym_chip] [%struct.sym_chip { i16 1, i16 15, ptr @.str.80, i8 4, i8 8, i8 4, i8 64, i32 64 }, %struct.sym_chip { i16 1, i16 255, ptr @.str.81, i8 4, i8 8, i8 4, i8 1, i32 14272 }, %struct.sym_chip { i16 4, i16 255, ptr @.str.82, i8 4, i8 8, i8 4, i8 64, i32 1088 }, %struct.sym_chip { i16 3, i16 15, ptr @.str.83, i8 6, i8 8, i8 4, i8 64, i32 16778306 }, %struct.sym_chip { i16 3, i16 255, ptr @.str.84, i8 6, i8 8, i8 4, i8 2, i32 16809858 }, %struct.sym_chip { i16 6, i16 255, ptr @.str.85, i8 4, i8 8, i8 5, i8 1, i32 14276 }, %struct.sym_chip { i16 15, i16 1, ptr @.str.86, i8 6, i8 16, i8 5, i8 2, i32 16842630 }, %struct.sym_chip { i16 15, i16 255, ptr @.str.86, i8 6, i8 16, i8 5, i8 2, i32 16842646 }, %struct.sym_chip { i16 143, i16 255, ptr @.str.87, i8 6, i8 16, i8 5, i8 2, i32 16842646 }, %struct.sym_chip { i16 13, i16 255, ptr @.str.88, i8 6, i8 16, i8 5, i8 2, i32 16842646 }, %struct.sym_chip { i16 12, i16 255, ptr @.str.89, i8 6, i8 31, i8 7, i8 2, i32 67141610 }, %struct.sym_chip { i16 11, i16 255, ptr @.str.90, i8 6, i8 31, i8 7, i8 4, i32 606044138 }, %struct.sym_chip { i16 18, i16 255, ptr @.str.91, i8 6, i8 31, i8 7, i8 4, i32 605913066 }, %struct.sym_chip { i16 19, i16 255, ptr @.str.92, i8 6, i8 31, i8 7, i8 4, i32 605847526 }, %struct.sym_chip { i16 32, i16 0, ptr @.str.93, i8 6, i8 31, i8 7, i8 8, i32 717191138 }, %struct.sym_chip { i16 32, i16 255, ptr @.str.93, i8 6, i8 31, i8 7, i8 8, i32 985626594 }, %struct.sym_chip { i16 33, i16 255, ptr @.str.94, i8 6, i8 31, i8 7, i8 8, i32 989820898 }, %struct.sym_chip { i16 10, i16 255, ptr @.str.95, i8 6, i8 31, i8 7, i8 4, i32 1343466 }], [64 x i8] zeroinitializer }, align 32
@sym_debug_flags = external dso_local local_unnamed_addr global i32, align 4
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"queuepos=%d\0A\00", [19 x i8] zeroinitializer }, align 32
@sym_start_up._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 1904, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Downloading SCSI SCRIPTS.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sym_start_up\00", [19 x i8] zeroinitializer }, align 32
@sym_start_up._entry_ptr = internal global ptr @sym_start_up._entry, section ".printk_index", align 4
@sym_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 2823, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"F \00", [29 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sym_interrupt\00", [18 x i8] zeroinitializer }, align 32
@sym_interrupt._entry_ptr = internal global ptr @sym_interrupt._entry, section ".printk_index", align 4
@sym_interrupt._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.2, i32 2869, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"<%d|%x:%x|%x:%x>\00", [47 x i8] zeroinitializer }, align 32
@sym_interrupt._entry_ptr.32 = internal global ptr @sym_interrupt._entry.30, section ".printk_index", align 4
@sym_interrupt._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.29, ptr @.str.2, i32 2913, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: SCSI BUS reset detected.\0A\00", [34 x i8] zeroinitializer }, align 32
@sym_interrupt._entry_ptr.35 = internal global ptr @sym_interrupt._entry.33, section ".printk_index", align 4
@sym_interrupt._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.29, ptr @.str.2, i32 2952, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%s: unknown interrupt(s) ignored, ISTAT=0x%x DSTAT=0x%x SIST=0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@sym_interrupt._entry_ptr.38 = internal global ptr @sym_interrupt._entry.36, section ".printk_index", align 4
@sym_get_ccb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 4758, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ccb @%p using tag %d.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sym_get_ccb\00", [20 x i8] zeroinitializer }, align 32
@sym_get_ccb._entry_ptr = internal global ptr @sym_get_ccb._entry, section ".printk_index", align 4
@sym_free_ccb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 4778, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ccb @%p freeing tag %d.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sym_free_ccb\00", [19 x i8] zeroinitializer }, align 32
@sym_free_ccb._entry_ptr = internal global ptr @sym_free_ccb._entry, section ".printk_index", align 4
@.str.43 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LUNTBL\00", [25 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LCB\00", [28 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ITLQ_TBL\00", [23 x i8] zeroinitializer }, align 32
@sym_queue_scsiio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 5188, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ordered tag forced.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sym_queue_scsiio\00", [47 x i8] zeroinitializer }, align 32
@sym_queue_scsiio._entry_ptr = internal global ptr @sym_queue_scsiio._entry, section ".printk_index", align 4
@sym_hcb_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.2, i32 5620, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: PCI BUS clock seems too high: %u KHz.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sym_hcb_attach\00", [17 x i8] zeroinitializer }, align 32
@sym_hcb_attach._entry_ptr = internal global ptr @sym_hcb_attach._entry, section ".printk_index", align 4
@.str.50 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SQUEUE\00", [25 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DQUEUE\00", [25 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TARGTBL\00", [24 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SCRIPTA0\00", [23 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SCRIPTB0\00", [23 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SCRIPTZ0\00", [23 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"BADLUNTBL\00", [22 x i8] zeroinitializer }, align 32
@sym_hcb_attach._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.49, ptr @.str.2, i32 5784, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: CACHE INCORRECTLY CONFIGURED.\0A\00", [61 x i8] zeroinitializer }, align 32
@sym_hcb_attach._entry_ptr.59 = internal global ptr @sym_hcb_attach._entry.57, section ".printk_index", align 4
@.str.60 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CCB\00", [28 x i8] zeroinitializer }, align 32
@sym_soft_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.2, i32 162, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s: unable to abort current chip operation, ISTAT=0x%02x.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sym_soft_reset\00", [17 x i8] zeroinitializer }, align 32
@sym_soft_reset._entry_ptr = internal global ptr @sym_soft_reset._entry, section ".printk_index", align 4
@.str.63 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"scripta\00", [24 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"scriptb\00", [24 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mem\00", [28 x i8] zeroinitializer }, align 32
@sym_log_hard_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.2, i32 1155, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s:%d: ERROR (%x:%x) (%x-%x-%x) (%x/%x/%x) @ (%s %x:%08x).\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sym_log_hard_error\00", [45 x i8] zeroinitializer }, align 32
@sym_log_hard_error._entry_ptr = internal global ptr @sym_log_hard_error._entry, section ".printk_index", align 4
@sym_log_hard_error._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.2, i32 1160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: script cmd = %08x\0A\00", [41 x i8] zeroinitializer }, align 32
@sym_log_hard_error._entry_ptr.70 = internal global ptr @sym_log_hard_error._entry.68, section ".printk_index", align 4
@sym_log_hard_error._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.67, ptr @.str.2, i32 1163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s: regdump:\00", [19 x i8] zeroinitializer }, align 32
@sym_log_hard_error._entry_ptr.73 = internal global ptr @sym_log_hard_error._entry.71, section ".printk_index", align 4
@sym_log_hard_error._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.67, ptr @.str.2, i32 1165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %02x\00", [26 x i8] zeroinitializer }, align 32
@sym_log_hard_error._entry_ptr.76 = internal global ptr @sym_log_hard_error._entry.74, section ".printk_index", align 4
@sym_log_hard_error._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.67, ptr @.str.2, i32 1166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c".\0A\00", [29 x i8] zeroinitializer }, align 32
@sym_log_hard_error._entry_ptr.79 = internal global ptr @sym_log_hard_error._entry.77, section ".printk_index", align 4
@.str.80 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"810\00", [28 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"810a\00", [27 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"815\00", [28 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"825\00", [28 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"825a\00", [27 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"860\00", [28 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"875\00", [28 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"875J\00", [27 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"885\00", [28 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"895\00", [28 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"896\00", [28 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"895a\00", [27 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"875a\00", [27 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"1010-33\00", [24 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"1010-66\00", [24 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1510d\00", [26 x i8] zeroinitializer }, align 32
@sym_selectclock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.2, i32 243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: enabling clock multiplier\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sym_selectclock\00", [16 x i8] zeroinitializer }, align 32
@sym_selectclock._entry_ptr = internal global ptr @sym_selectclock._entry, section ".printk_index", align 4
@sym_selectclock._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.97, ptr @.str.2, i32 256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: the chip cannot lock the frequency\0A\00", [56 x i8] zeroinitializer }, align 32
@sym_selectclock._entry_ptr.100 = internal global ptr @sym_selectclock._entry.98, section ".printk_index", align 4
@sym_wakeup_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str.2, i32 1607, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: bad DSA (%x) in done queue.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sym_wakeup_done\00", [16 x i8] zeroinitializer }, align 32
@sym_wakeup_done._entry_ptr = internal global ptr @sym_wakeup_done._entry, section ".printk_index", align 4
@.str.103 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"assertion \22%s\22 failed: file \22%s\22, line %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cp->host_status == HS_COMPLETE\00", [33 x i8] zeroinitializer }, align 32
@__func__.sym_int_par = private unnamed_addr constant [12 x i8] c"sym_int_par\00", align 1
@sym_int_par._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @__func__.sym_int_par, ptr @.str.2, i32 2310, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s: SCSI parity error detected: SCR1=%d DBC=%x SBCL=%x\0A\00", [40 x i8] zeroinitializer }, align 32
@sym_int_par._entry_ptr = internal global ptr @sym_int_par._entry, section ".printk_index", align 4
@sym_int_ma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.107, ptr @.str.2, i32 2476, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"P%x%x RL=%d D=%d \00", [46 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sym_int_ma\00", [21 x i8] zeroinitializer }, align 32
@sym_int_ma._entry_ptr = internal global ptr @sym_int_ma._entry, section ".printk_index", align 4
@sym_int_ma._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.107, ptr @.str.2, i32 2500, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\0ACP=%p DSP=%x NXT=%x VDSP=%p CMD=%x \00", [59 x i8] zeroinitializer }, align 32
@sym_int_ma._entry_ptr.110 = internal global ptr @sym_int_ma._entry.108, section ".printk_index", align 4
@sym_int_ma._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.107, ptr @.str.2, i32 2505, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: interrupted SCRIPT address not found.\0A\00", [53 x i8] zeroinitializer }, align 32
@sym_int_ma._entry_ptr.113 = internal global ptr @sym_int_ma._entry.111, section ".printk_index", align 4
@sym_int_ma._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.107, ptr @.str.2, i32 2511, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s: SCSI phase error fixup: CCB already dequeued.\0A\00", [45 x i8] zeroinitializer }, align 32
@sym_int_ma._entry_ptr.116 = internal global ptr @sym_int_ma._entry.114, section ".printk_index", align 4
@sym_int_ma._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.107, ptr @.str.2, i32 2534, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"OCMD=%x\0ATBLP=%p OLEN=%x OADR=%x\0A\00", [63 x i8] zeroinitializer }, align 32
@sym_int_ma._entry_ptr.119 = internal global ptr @sym_int_ma._entry.117, section ".printk_index", align 4
@sym_int_ma._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.107, ptr @.str.2, i32 2545, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"internal error: cmd=%02x != %02x=(vdsp[0] >> 24)\0A\00", [46 x i8] zeroinitializer }, align 32
@sym_int_ma._entry_ptr.122 = internal global ptr @sym_int_ma._entry.120, section ".printk_index", align 4
@sym_int_ma._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.107, ptr @.str.2, i32 2557, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"phase change %x-%x %d@%08x resid=%d.\0A\00", [58 x i8] zeroinitializer }, align 32
@sym_int_ma._entry_ptr.125 = internal global ptr @sym_int_ma._entry.123, section ".printk_index", align 4
@sym_int_ma._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.107, ptr @.str.2, i32 2644, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"PM %x %x %x / %x %x %x.\0A\00", [39 x i8] zeroinitializer }, align 32
@sym_int_ma._entry_ptr.128 = internal global ptr @sym_int_ma._entry.126, section ".printk_index", align 4
@sym_int_sbmc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.130, ptr @.str.2, i32 2264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: SCSI BUS mode change from %s to %s.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sym_int_sbmc\00", [19 x i8] zeroinitializer }, align 32
@sym_int_sbmc._entry_ptr = internal global ptr @sym_int_sbmc._entry, section ".printk_index", align 4
@.str.131 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"HVD\00", [28 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"SE\00", [29 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LVD\00", [28 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"??\00", [29 x i8] zeroinitializer }, align 32
@sym_int_sto._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.136, ptr @.str.2, i32 2228, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"T\00", [30 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sym_int_sto\00", [20 x i8] zeroinitializer }, align 32
@sym_int_sto._entry_ptr = internal global ptr @sym_int_sto._entry, section ".printk_index", align 4
@sym_int_udc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.138, ptr @.str.2, i32 2241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: unexpected disconnect\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sym_int_udc\00", [20 x i8] zeroinitializer }, align 32
@sym_int_udc._entry_ptr = internal global ptr @sym_int_udc._entry, section ".printk_index", align 4
@sym_int_sir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.140, ptr @.str.2, i32 4380, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I#%d\00", [27 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sym_int_sir\00", [20 x i8] zeroinitializer }, align 32
@sym_int_sir._entry_ptr = internal global ptr @sym_int_sir._entry, section ".printk_index", align 4
@.str.141 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"No MSG OUT phase after selection with ATN\0A\00", [53 x i8] zeroinitializer }, align 32
@sym_int_sir._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.140, ptr @.str.2, i32 4414, ptr @.str.141, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@sym_int_sir._entry_ptr.144 = internal global ptr @sym_int_sir._entry.143, section ".printk_index", align 4
@.str.145 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"No MSG IN phase after reselection\0A\00", [61 x i8] zeroinitializer }, align 32
@sym_int_sir._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.140, ptr @.str.2, i32 4422, ptr @.str.141, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@sym_int_sir._entry_ptr.147 = internal global ptr @sym_int_sir._entry.146, section ".printk_index", align 4
@.str.148 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"No IDENTIFY after reselection\0A\00", [33 x i8] zeroinitializer }, align 32
@sym_int_sir._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.140, ptr @.str.2, i32 4430, ptr @.str.141, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@sym_int_sir._entry_ptr.150 = internal global ptr @sym_int_sir._entry.149, section ".printk_index", align 4
@.str.151 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"message %x sent on bad reselection\0A\00", [60 x i8] zeroinitializer }, align 32
@sym_int_sir._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.140, ptr @.str.2, i32 4459, ptr @.str.141, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@sym_int_sir._entry_ptr.153 = internal global ptr @sym_int_sir._entry.152, section ".printk_index", align 4
@.str.154 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"M_REJECT to send for \00", [42 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"extended msg \00", [18 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"1 or 2 byte \00", [19 x i8] zeroinitializer }, align 32
@sym_int_sir._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.140, ptr @.str.2, i32 4596, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"M_REJECT received (%x:%x).\0A\00", [36 x i8] zeroinitializer }, align 32
@sym_int_sir._entry_ptr.159 = internal global ptr @sym_int_sir._entry.157, section ".printk_index", align 4
@.str.160 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"WEIRD message received\00", [41 x i8] zeroinitializer }, align 32
@sym_complete_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.162, ptr @.str.2, i32 5371, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"CCB=%p STAT=%x/%x/%x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sym_complete_error\00", [45 x i8] zeroinitializer }, align 32
@sym_complete_error._entry_ptr = internal global ptr @sym_complete_error._entry, section ".printk_index", align 4
@.str.163 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(i >= 0) && (i < 2*MAX_QUEUE)\00", [34 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"cp\00", [29 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"i && sym_get_cam_status(cp->cmd) == DID_SOFT_ERROR\00", [45 x i8] zeroinitializer }, align 32
@sym_sir_task_recovery._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.167, ptr @.str.2, i32 3581, ptr @.str.168, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"has been reset\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sym_sir_task_recovery\00", [42 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@sym_sir_task_recovery._entry_ptr = internal global ptr @sym_sir_task_recovery._entry, section ".printk_index", align 4
@sym_sir_task_recovery._entry.169 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.167, ptr @.str.2, i32 3589, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"control msgout:\00", [16 x i8] zeroinitializer }, align 32
@sym_sir_task_recovery._entry_ptr.171 = internal global ptr @sym_sir_task_recovery._entry.169, section ".printk_index", align 4
@sym_printl_hex._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.173, ptr @.str.2, i32 56, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %x\00", [28 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sym_printl_hex\00", [17 x i8] zeroinitializer }, align 32
@sym_printl_hex._entry_ptr = internal global ptr @sym_printl_hex._entry, section ".printk_index", align 4
@sym_printl_hex._entry.174 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.173, ptr @.str.2, i32 57, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sym_printl_hex._entry_ptr.175 = internal global ptr @sym_printl_hex._entry.174, section ".printk_index", align 4
@sym_sir_bad_scsi_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.176, ptr @.str.177, ptr @.str.2, i32 3060, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sym_sir_bad_scsi_status\00", [40 x i8] zeroinitializer }, align 32
@sym_sir_bad_scsi_status._entry_ptr = internal global ptr @sym_sir_bad_scsi_status._entry, section ".printk_index", align 4
@.str.178 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BUSY\00", [27 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"QUEUE FULL\0A\00", [20 x i8] zeroinitializer }, align 32
@sym_print_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.180, ptr @.str.181, ptr @.str.2, i32 62, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s: \00", [27 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sym_print_msg\00", [18 x i8] zeroinitializer }, align 32
@sym_print_msg._entry_ptr = internal global ptr @sym_print_msg._entry, section ".printk_index", align 4
@sym_print_msg._entry.182 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.183, ptr @.str.181, ptr @.str.2, i32 65, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@sym_print_msg._entry_ptr.184 = internal global ptr @sym_print_msg._entry.182, section ".printk_index", align 4
@.str.185 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sync msgin\00", [21 x i8] zeroinitializer }, align 32
@sym_sync_nego_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.186, ptr @.str.187, ptr @.str.2, i32 3984, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"sdtr: ofs=%d per=%d div=%d fak=%d chg=%d.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sym_sync_nego_check\00", [44 x i8] zeroinitializer }, align 32
@sym_sync_nego_check._entry_ptr = internal global ptr @sym_sync_nego_check._entry, section ".printk_index", align 4
@.str.188 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sync msgout\00", [20 x i8] zeroinitializer }, align 32
@sym_print_nego_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.180, ptr @.str.189, ptr @.str.2, i32 71, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sym_print_nego_msg\00", [45 x i8] zeroinitializer }, align 32
@sym_print_nego_msg._entry_ptr = internal global ptr @sym_print_nego_msg._entry, section ".printk_index", align 4
@sym_print_nego_msg._entry.190 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.183, ptr @.str.189, ptr @.str.2, i32 74, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sym_print_nego_msg._entry_ptr.191 = internal global ptr @sym_print_nego_msg._entry.190, section ".printk_index", align 4
@div_10M = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 10000000, i32 15000000, i32 20000000, i32 30000000, i32 40000000, i32 60000000, i32 80000000], [36 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"target == (INB(np, nc_sdid) & 0x0f)\00", [60 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"np->features & FE_U3EN\00", [41 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ppr msgin\00", [22 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ppr msgout\00", [21 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wide msgin\00", [21 x i8] zeroinitializer }, align 32
@sym_wide_nego_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.197, ptr @.str.198, ptr @.str.2, i32 4222, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wdtr: wide=%d chg=%d.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sym_wide_nego_check\00", [44 x i8] zeroinitializer }, align 32
@sym_wide_nego_check._entry_ptr = internal global ptr @sym_wide_nego_check._entry, section ".printk_index", align 4
@.str.199 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wide msgout\00", [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sym_prepare_setting._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.200, ptr @.str.201, ptr @.str.2, i32 924, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: %s, ID %d, Fast-%d, %s, %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sym_prepare_setting\00", [44 x i8] zeroinitializer }, align 32
@sym_prepare_setting._entry_ptr = internal global ptr @sym_prepare_setting._entry, section ".printk_index", align 4
@.str.202 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"parity checking\00", [16 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"NO parity\00", [22 x i8] zeroinitializer }, align 32
@sym_prepare_setting._entry.204 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.205, ptr @.str.201, ptr @.str.2, i32 932, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: %s IRQ line driver%s\0A\00", [38 x i8] zeroinitializer }, align 32
@sym_prepare_setting._entry_ptr.206 = internal global ptr @sym_prepare_setting._entry.204, section ".printk_index", align 4
@.str.207 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"totem pole\00", [21 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"open drain\00", [21 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c", using on-chip SRAM\00", [43 x i8] zeroinitializer }, align 32
@sym_prepare_setting._entry.210 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.211, ptr @.str.201, ptr @.str.2, i32 933, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: using %s firmware.\0A\00", [40 x i8] zeroinitializer }, align 32
@sym_prepare_setting._entry_ptr.212 = internal global ptr @sym_prepare_setting._entry.210, section ".printk_index", align 4
@sym_prepare_setting._entry.213 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.201, ptr @.str.2, i32 936, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: handling phase mismatch from SCRIPTS.\0A\00", [53 x i8] zeroinitializer }, align 32
@sym_prepare_setting._entry_ptr.215 = internal global ptr @sym_prepare_setting._entry.213, section ".printk_index", align 4
@sym_prepare_setting._entry.216 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.217, ptr @.str.201, ptr @.str.2, i32 945, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"%s: initial SCNTL3/DMODE/DCNTL/CTEST3/4/5 = (hex) %02x/%02x/%02x/%02x/%02x/%02x\0A\00", [47 x i8] zeroinitializer }, align 32
@sym_prepare_setting._entry_ptr.218 = internal global ptr @sym_prepare_setting._entry.216, section ".printk_index", align 4
@sym_prepare_setting._entry.219 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.220, ptr @.str.201, ptr @.str.2, i32 950, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"%s: final   SCNTL3/DMODE/DCNTL/CTEST3/4/5 = (hex) %02x/%02x/%02x/%02x/%02x/%02x\0A\00", [47 x i8] zeroinitializer }, align 32
@sym_prepare_setting._entry_ptr.221 = internal global ptr @sym_prepare_setting._entry.219, section ".printk_index", align 4
@sym_getclock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.222, ptr @.str.223, ptr @.str.2, i32 389, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: clock multiplier found\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sym_getclock\00", [19 x i8] zeroinitializer }, align 32
@sym_getclock._entry_ptr = internal global ptr @sym_getclock._entry, section ".printk_index", align 4
@sym_getclock._entry.224 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.223, ptr @.str.2, i32 403, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: chip clock is %uKHz\0A\00", [39 x i8] zeroinitializer }, align 32
@sym_getclock._entry_ptr.226 = internal global ptr @sym_getclock._entry.224, section ".printk_index", align 4
@sym_getclock._entry.227 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.228, ptr @.str.223, ptr @.str.2, i32 412, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: clock multiplier assumed\0A\00", [34 x i8] zeroinitializer }, align 32
@sym_getclock._entry_ptr.229 = internal global ptr @sym_getclock._entry.227, section ".printk_index", align 4
@getfreq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.230, ptr @.str.231, ptr @.str.2, i32 356, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: Delay (GEN=%d): %u msec, %u KHz\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"getfreq\00", [24 x i8] zeroinitializer }, align 32
@getfreq._entry_ptr = internal global ptr @getfreq._entry, section ".printk_index", align 4
@sym_snooptest._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.232, ptr @.str.233, ptr @.str.2, i32 1028, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"CACHE TEST FAILED: timeout.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sym_snooptest\00", [18 x i8] zeroinitializer }, align 32
@sym_snooptest._entry_ptr = internal global ptr @sym_snooptest._entry, section ".printk_index", align 4
@sym_snooptest._entry.234 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.235, ptr @.str.233, ptr @.str.2, i32 1039, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"%s: PCI DATA PARITY ERROR DETECTED - DISABLING MASTER DATA PARITY CHECKING.\0A\00", [51 x i8] zeroinitializer }, align 32
@sym_snooptest._entry_ptr.236 = internal global ptr @sym_snooptest._entry.234, section ".printk_index", align 4
@sym_snooptest._entry.237 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.238, ptr @.str.233, ptr @.str.2, i32 1045, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"CACHE TEST FAILED: DMA error (dstat=0x%02x).\00", [51 x i8] zeroinitializer }, align 32
@sym_snooptest._entry_ptr.239 = internal global ptr @sym_snooptest._entry.237, section ".printk_index", align 4
@sym_snooptest._entry.240 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.241, ptr @.str.233, ptr @.str.2, i32 1062, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"CACHE TEST FAILED: script execution failed.\0A\00", [51 x i8] zeroinitializer }, align 32
@sym_snooptest._entry_ptr.242 = internal global ptr @sym_snooptest._entry.240, section ".printk_index", align 4
@sym_snooptest._entry.243 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.244, ptr @.str.233, ptr @.str.2, i32 1065, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"start=%08lx, pc=%08lx, end=%08lx\0A\00", [62 x i8] zeroinitializer }, align 32
@sym_snooptest._entry_ptr.245 = internal global ptr @sym_snooptest._entry.243, section ".printk_index", align 4
@sym_snooptest._entry.246 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.247, ptr @.str.233, ptr @.str.2, i32 1073, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"CACHE TEST FAILED: host wrote %d, chip read %d.\0A\00", [47 x i8] zeroinitializer }, align 32
@sym_snooptest._entry_ptr.248 = internal global ptr @sym_snooptest._entry.246, section ".printk_index", align 4
@sym_snooptest._entry.249 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.250, ptr @.str.233, ptr @.str.2, i32 1078, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"CACHE TEST FAILED: chip wrote %d, host read %d.\0A\00", [47 x i8] zeroinitializer }, align 32
@sym_snooptest._entry_ptr.251 = internal global ptr @sym_snooptest._entry.249, section ".printk_index", align 4
@sym_snooptest._entry.252 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.253, ptr @.str.233, ptr @.str.2, i32 1083, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"CACHE TEST FAILED: chip wrote %d, read back %d.\0A\00", [47 x i8] zeroinitializer }, align 32
@sym_snooptest._entry_ptr.254 = internal global ptr @sym_snooptest._entry.252, section ".printk_index", align 4
@sym_regtest._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.255, ptr @.str.256, ptr @.str.2, i32 979, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"CACHE TEST FAILED: reg dstat-sstat2 readback %x.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sym_regtest\00", [20 x i8] zeroinitializer }, align 32
@sym_regtest._entry_ptr = internal global ptr @sym_regtest._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 11, i64 15]
@__sancov_gen_cov_switch_values.257 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 5]
@__sancov_gen_cov_switch_values.258 = internal global [5 x i64] [i64 3, i64 8, i64 64, i64 128, i64 192]
@__sancov_gen_cov_switch_values.259 = internal global [5 x i64] [i64 3, i64 8, i64 64, i64 128, i64 192]
@__sancov_gen_cov_switch_values.260 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 5]
@__sancov_gen_cov_switch_values.261 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 6]
@__sancov_gen_cov_switch_values.262 = internal global [24 x i64] [i64 22, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22]
@__sancov_gen_cov_switch_values.263 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 12]
@__sancov_gen_cov_switch_values.264 = internal global [4 x i64] [i64 2, i64 8, i64 5, i64 9]
@__sancov_gen_cov_switch_values.265 = internal global [6 x i64] [i64 4, i64 8, i64 2, i64 8, i64 34, i64 40]
@__sancov_gen_cov_switch_values.266 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 7, i64 35]
@__sancov_gen_cov_switch_values.267 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.268 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 18]
@__sancov_gen_cov_switch_values.269 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 4]
@__sancov_gen_cov_switch_values.270 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 6]
@__sancov_gen_cov_switch_values.271 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.272 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.273 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.274 = internal global [5 x i64] [i64 3, i64 8, i64 64, i64 128, i64 192]
@__sancov_gen_cov_switch_values.275 = internal global [4 x i64] [i64 2, i64 8, i64 11, i64 12]
@__sancov_gen_cov_switch_values.276 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.277 = internal global [4 x i64] [i64 2, i64 8, i64 11, i64 12]
@__sancov_gen_cov_switch_values.278 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.279 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 83, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 86, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 89, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 92, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 95, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 214, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 216, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant [14 x i8] c"sym_dev_table\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 1186, i32 24 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 1512, i32 15 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 1512, i32 36 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 1904, i32 4 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 2823, i32 33 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 2865, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 2913, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 2950, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 4758, i32 3 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 4777, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 4982, i32 16 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 5003, i32 7 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 5118, i32 3 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 5187, i32 6 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 5619, i32 3 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 5625, i32 15 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 5633, i32 15 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 5641, i32 16 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 5649, i32 17 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 5650, i32 17 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 5651, i32 17 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 5760, i32 18 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 5784, i32 3 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 5821, i32 4 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 161, i32 3 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 1134, i32 17 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 1141, i32 17 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 1146, i32 17 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 1149, i32 2 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 1159, i32 3 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 1163, i32 2 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 1165, i32 3 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 1166, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 1187, i32 35 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 1195, i32 35 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 1199, i32 35 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 1202, i32 35 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 1205, i32 35 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 1208, i32 35 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 1211, i32 35 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 1219, i32 36 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 1223, i32 35 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 1233, i32 35 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 1238, i32 35 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 1242, i32 36 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 1246, i32 36 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 1250, i32 39 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 1260, i32 39 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 1265, i32 36 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 243, i32 3 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 255, i32 4 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 1606, i32 4 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 5499, i32 2 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 2309, i32 3 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 2475, i32 3 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 2499, i32 3 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 2504, i32 3 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 2510, i32 3 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 2530, i32 3 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 2543, i32 3 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 2554, i32 3 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 2640, i32 3 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 2263, i32 2 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 105, i32 25 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 106, i32 24 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 107, i32 25 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 109, i32 9 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 2228, i32 32 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 2241, i32 2 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 4380, i32 32 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 4413, i32 3 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 4421, i32 3 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 4429, i32 3 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 4458, i32 3 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 4492, i32 21 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 4556, i32 24 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 4584, i32 23 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 4594, i32 5 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 4608, i32 21 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 5370, i32 3 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 2973, i32 2 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 2982, i32 3 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 3387, i32 3 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 3580, i32 4 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 3589, i32 3 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 56, i32 3 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 57, i32 2 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 3059, i32 4 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 62, i32 2 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 65, i32 2 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 3951, i32 34 }
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 3982, i32 3 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 4011, i32 34 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 71, i32 2 }
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 74, i32 2 }
@___asan_gen_.844 = private unnamed_addr constant [8 x i8] c"div_10M\00", align 1
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 462, i32 18 }
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 1938, i32 2 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 1983, i32 4 }
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 4072, i32 34 }
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 4137, i32 34 }
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 4203, i32 34 }
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 4221, i32 3 }
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 4251, i32 34 }
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 918, i32 2 }
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 929, i32 3 }
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 933, i32 3 }
@___asan_gen_.915 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 935, i32 4 }
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 942, i32 3 }
@___asan_gen_.927 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 947, i32 3 }
@___asan_gen_.936 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 389, i32 4 }
@___asan_gen_.942 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 403, i32 4 }
@___asan_gen_.948 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 411, i32 5 }
@___asan_gen_.957 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 355, i32 3 }
@___asan_gen_.966 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 1028, i32 3 }
@___asan_gen_.972 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 1037, i32 3 }
@___asan_gen_.978 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 1045, i32 3 }
@___asan_gen_.984 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 1062, i32 3 }
@___asan_gen_.990 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 1063, i32 3 }
@___asan_gen_.996 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 1072, i32 3 }
@___asan_gen_.1002 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 1077, i32 3 }
@___asan_gen_.1008 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 1082, i32 3 }
@___asan_gen_.1009 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1015 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1016 = private constant [39 x i8] c"../drivers/scsi/sym53c8xx_2/sym_hipd.c\00", align 1
@___asan_gen_.1017 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1016, i32 978, i32 3 }
@llvm.compiler.used = appending global [321 x ptr] [ptr @getfreq._entry, ptr @getfreq._entry_ptr, ptr @sym_complete_error._entry, ptr @sym_complete_error._entry_ptr, ptr @sym_free_ccb._entry, ptr @sym_free_ccb._entry_ptr, ptr @sym_get_ccb._entry, ptr @sym_get_ccb._entry_ptr, ptr @sym_getclock._entry, ptr @sym_getclock._entry.224, ptr @sym_getclock._entry.227, ptr @sym_getclock._entry_ptr, ptr @sym_getclock._entry_ptr.226, ptr @sym_getclock._entry_ptr.229, ptr @sym_hcb_attach._entry, ptr @sym_hcb_attach._entry.57, ptr @sym_hcb_attach._entry_ptr, ptr @sym_hcb_attach._entry_ptr.59, ptr @sym_int_ma._entry, ptr @sym_int_ma._entry.108, ptr @sym_int_ma._entry.111, ptr @sym_int_ma._entry.114, ptr @sym_int_ma._entry.117, ptr @sym_int_ma._entry.120, ptr @sym_int_ma._entry.123, ptr @sym_int_ma._entry.126, ptr @sym_int_ma._entry_ptr, ptr @sym_int_ma._entry_ptr.110, ptr @sym_int_ma._entry_ptr.113, ptr @sym_int_ma._entry_ptr.116, ptr @sym_int_ma._entry_ptr.119, ptr @sym_int_ma._entry_ptr.122, ptr @sym_int_ma._entry_ptr.125, ptr @sym_int_ma._entry_ptr.128, ptr @sym_int_par._entry, ptr @sym_int_par._entry_ptr, ptr @sym_int_sbmc._entry, ptr @sym_int_sbmc._entry_ptr, ptr @sym_int_sir._entry, ptr @sym_int_sir._entry.143, ptr @sym_int_sir._entry.146, ptr @sym_int_sir._entry.149, ptr @sym_int_sir._entry.152, ptr @sym_int_sir._entry.157, ptr @sym_int_sir._entry_ptr, ptr @sym_int_sir._entry_ptr.144, ptr @sym_int_sir._entry_ptr.147, ptr @sym_int_sir._entry_ptr.150, ptr @sym_int_sir._entry_ptr.153, ptr @sym_int_sir._entry_ptr.159, ptr @sym_int_sto._entry, ptr @sym_int_sto._entry_ptr, ptr @sym_int_udc._entry, ptr @sym_int_udc._entry_ptr, ptr @sym_interrupt._entry, ptr @sym_interrupt._entry.30, ptr @sym_interrupt._entry.33, ptr @sym_interrupt._entry.36, ptr @sym_interrupt._entry_ptr, ptr @sym_interrupt._entry_ptr.32, ptr @sym_interrupt._entry_ptr.35, ptr @sym_interrupt._entry_ptr.38, ptr @sym_log_hard_error._entry, ptr @sym_log_hard_error._entry.68, ptr @sym_log_hard_error._entry.71, ptr @sym_log_hard_error._entry.74, ptr @sym_log_hard_error._entry.77, ptr @sym_log_hard_error._entry_ptr, ptr @sym_log_hard_error._entry_ptr.70, ptr @sym_log_hard_error._entry_ptr.73, ptr @sym_log_hard_error._entry_ptr.76, ptr @sym_log_hard_error._entry_ptr.79, ptr @sym_prepare_setting._entry, ptr @sym_prepare_setting._entry.204, ptr @sym_prepare_setting._entry.210, ptr @sym_prepare_setting._entry.213, ptr @sym_prepare_setting._entry.216, ptr @sym_prepare_setting._entry.219, ptr @sym_prepare_setting._entry_ptr, ptr @sym_prepare_setting._entry_ptr.206, ptr @sym_prepare_setting._entry_ptr.212, ptr @sym_prepare_setting._entry_ptr.215, ptr @sym_prepare_setting._entry_ptr.218, ptr @sym_prepare_setting._entry_ptr.221, ptr @sym_print_msg._entry, ptr @sym_print_msg._entry.182, ptr @sym_print_msg._entry_ptr, ptr @sym_print_msg._entry_ptr.184, ptr @sym_print_nego_msg._entry, ptr @sym_print_nego_msg._entry.190, ptr @sym_print_nego_msg._entry_ptr, ptr @sym_print_nego_msg._entry_ptr.191, ptr @sym_print_xerr._entry, ptr @sym_print_xerr._entry.11, ptr @sym_print_xerr._entry.14, ptr @sym_print_xerr._entry.5, ptr @sym_print_xerr._entry.8, ptr @sym_print_xerr._entry_ptr, ptr @sym_print_xerr._entry_ptr.10, ptr @sym_print_xerr._entry_ptr.13, ptr @sym_print_xerr._entry_ptr.16, ptr @sym_print_xerr._entry_ptr.7, ptr @sym_printl_hex._entry, ptr @sym_printl_hex._entry.174, ptr @sym_printl_hex._entry_ptr, ptr @sym_printl_hex._entry_ptr.175, ptr @sym_queue_scsiio._entry, ptr @sym_queue_scsiio._entry_ptr, ptr @sym_regtest._entry, ptr @sym_regtest._entry_ptr, ptr @sym_reset_scsi_bus._entry, ptr @sym_reset_scsi_bus._entry.19, ptr @sym_reset_scsi_bus._entry_ptr, ptr @sym_reset_scsi_bus._entry_ptr.21, ptr @sym_selectclock._entry, ptr @sym_selectclock._entry.98, ptr @sym_selectclock._entry_ptr, ptr @sym_selectclock._entry_ptr.100, ptr @sym_sir_bad_scsi_status._entry, ptr @sym_sir_bad_scsi_status._entry_ptr, ptr @sym_sir_task_recovery._entry, ptr @sym_sir_task_recovery._entry.169, ptr @sym_sir_task_recovery._entry_ptr, ptr @sym_sir_task_recovery._entry_ptr.171, ptr @sym_snooptest._entry, ptr @sym_snooptest._entry.234, ptr @sym_snooptest._entry.237, ptr @sym_snooptest._entry.240, ptr @sym_snooptest._entry.243, ptr @sym_snooptest._entry.246, ptr @sym_snooptest._entry.249, ptr @sym_snooptest._entry.252, ptr @sym_snooptest._entry_ptr, ptr @sym_snooptest._entry_ptr.236, ptr @sym_snooptest._entry_ptr.239, ptr @sym_snooptest._entry_ptr.242, ptr @sym_snooptest._entry_ptr.245, ptr @sym_snooptest._entry_ptr.248, ptr @sym_snooptest._entry_ptr.251, ptr @sym_snooptest._entry_ptr.254, ptr @sym_soft_reset._entry, ptr @sym_soft_reset._entry_ptr, ptr @sym_start_up._entry, ptr @sym_start_up._entry_ptr, ptr @sym_sync_nego_check._entry, ptr @sym_sync_nego_check._entry_ptr, ptr @sym_wakeup_done._entry, ptr @sym_wakeup_done._entry_ptr, ptr @sym_wide_nego_check._entry, ptr @sym_wide_nego_check._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @sym_dev_table, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @.str.78, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.99, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.109, ptr @.str.112, ptr @.str.115, ptr @.str.118, ptr @.str.121, ptr @.str.124, ptr @.str.127, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.145, ptr @.str.148, ptr @.str.151, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.158, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.170, ptr @.str.172, ptr @.str.173, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.183, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @div_10M, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.205, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.211, ptr @.str.214, ptr @.str.217, ptr @.str.220, ptr @.str.222, ptr @.str.223, ptr @.str.225, ptr @.str.228, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.235, ptr @.str.238, ptr @.str.241, ptr @.str.244, ptr @.str.247, ptr @.str.250, ptr @.str.253, ptr @.str.255, ptr @.str.256], section "llvm.metadata"
@0 = internal global [246 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_print_xerr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_print_xerr._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_print_xerr._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_print_xerr._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_print_xerr._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_reset_scsi_bus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_reset_scsi_bus._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_dev_table to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_start_up._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_interrupt._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_interrupt._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_interrupt._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_get_ccb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_free_ccb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_queue_scsiio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_hcb_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_hcb_attach._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_soft_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_log_hard_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_log_hard_error._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_log_hard_error._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_log_hard_error._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_log_hard_error._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_selectclock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_selectclock._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_wakeup_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_int_par._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_int_ma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_int_ma._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_int_ma._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_int_ma._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_int_ma._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_int_ma._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_int_ma._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_int_ma._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_int_sbmc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_int_sto._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_int_udc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_int_sir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_int_sir._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_int_sir._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_int_sir._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_int_sir._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_int_sir._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_complete_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_sir_task_recovery._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_sir_task_recovery._entry.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_printl_hex._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_printl_hex._entry.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_sir_bad_scsi_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_print_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_print_msg._entry.182 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_sync_nego_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_print_nego_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_print_nego_msg._entry.190 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @div_10M to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_wide_nego_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_prepare_setting._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_prepare_setting._entry.204 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_prepare_setting._entry.210 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_prepare_setting._entry.213 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_prepare_setting._entry.216 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_prepare_setting._entry.219 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_getclock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_getclock._entry.224 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_getclock._entry.227 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @getfreq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_snooptest._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_snooptest._entry.234 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_snooptest._entry.237 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_snooptest._entry.240 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_snooptest._entry.243 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_snooptest._entry.246 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_snooptest._entry.249 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_snooptest._entry.252 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_regtest._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sym_print_xerr(ptr nocapture noundef readonly %cmd, i32 noundef %x_status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %x_status, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %sdev_gendev = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 55
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %sdev_gendev, ptr noundef nonnull @.str) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %and1 = and i32 %x_status, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.if.end8_crit_edge, label %do.end5

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %device6 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %2 = ptrtoint ptr %device6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device6, align 4
  %sdev_gendev7 = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 55
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %sdev_gendev7, ptr noundef nonnull @.str.6) #12
  br label %if.end8

if.end8:                                          ; preds = %do.end5, %if.end.if.end8_crit_edge
  %and9 = and i32 %x_status, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end8.if.end16_crit_edge, label %do.end13

if.end8.if.end16_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

do.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %device14 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %4 = ptrtoint ptr %device14 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device14, align 4
  %sdev_gendev15 = getelementptr inbounds %struct.scsi_device, ptr %5, i32 0, i32 55
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %sdev_gendev15, ptr noundef nonnull @.str.9) #12
  br label %if.end16

if.end16:                                         ; preds = %do.end13, %if.end8.if.end16_crit_edge
  %and17 = and i32 %x_status, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end16.if.end24_crit_edge, label %do.end21

if.end16.if.end24_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

do.end21:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %device22 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %6 = ptrtoint ptr %device22 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device22, align 4
  %sdev_gendev23 = getelementptr inbounds %struct.scsi_device, ptr %7, i32 0, i32 55
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %sdev_gendev23, ptr noundef nonnull @.str.12) #12
  br label %if.end24

if.end24:                                         ; preds = %do.end21, %if.end16.if.end24_crit_edge
  %and25 = and i32 %x_status, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end24.if.end32_crit_edge, label %do.end29

if.end24.if.end32_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

do.end29:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %device30 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %8 = ptrtoint ptr %device30 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device30, align 4
  %sdev_gendev31 = getelementptr inbounds %struct.scsi_device, ptr %9, i32 0, i32 55
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %sdev_gendev31, ptr noundef nonnull @.str.15) #12
  br label %if.end32

if.end32:                                         ; preds = %do.end29, %if.end24.if.end32_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sym_reset_scsi_bus(ptr noundef %np, i32 noundef %enab_int) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @sym_soft_reset(ptr noundef %np)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enab_int)
  %tobool.not = icmp eq i32 %enab_int, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ioaddr = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 42, i32 4
  %0 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !461
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 512) #9, !srcloc !462
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ioaddr2 = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 42, i32 4
  %2 = ptrtoint ptr %ioaddr2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr2, align 4
  %add.ptr3 = getelementptr i8, ptr %3, i32 79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3, i8 -128) #9, !srcloc !464
  %rv_dcntl = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 30
  %4 = ptrtoint ptr %rv_dcntl to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rv_dcntl, align 1
  %6 = and i8 %5, 8
  %7 = ptrtoint ptr %ioaddr2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ioaddr2, align 4
  %add.ptr7 = getelementptr i8, ptr %8, i32 59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr7, i8 %6) #9, !srcloc !464
  %9 = ptrtoint ptr %ioaddr2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ioaddr2, align 4
  %add.ptr10 = getelementptr i8, ptr %10, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr10, i8 8) #9, !srcloc !464
  %11 = ptrtoint ptr %ioaddr2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ioaddr2, align 4
  %add.ptr13 = getelementptr i8, ptr %12, i32 23
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr13) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 42949600) #9
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.sym_driver_setup, ptr @sym_driver_setup, i32 0, i32 5) to i32))
  %15 = load i8, ptr getelementptr inbounds (%struct.sym_driver_setup, ptr @sym_driver_setup, i32 0, i32 5), align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool14.not = icmp eq i8 %15, 0
  br i1 %tobool14.not, label %if.end.out_crit_edge, label %if.end16

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end16:                                         ; preds = %if.end
  %16 = ptrtoint ptr %ioaddr2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ioaddr2, align 4
  %add.ptr19 = getelementptr i8, ptr %17, i32 13
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr19) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  %conv21 = zext i8 %18 to i32
  %and22 = shl nuw nsw i32 %conv21, 7
  %shl = and i32 %and22, 256
  %and23 = shl nuw nsw i32 %conv21, 17
  %shl24 = and i32 %and23, 131072
  %add = or i32 %shl, %shl24
  %19 = ptrtoint ptr %ioaddr2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ioaddr2, align 4
  %add.ptr27 = getelementptr i8, ptr %20, i32 15
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr27) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  %22 = and i8 %21, 1
  %and30 = zext i8 %22 to i32
  %shl31 = shl nuw nsw i32 %and30, 26
  %23 = ptrtoint ptr %ioaddr2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ioaddr2, align 4
  %add.ptr34 = getelementptr i8, ptr %24, i32 88
  %25 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr34) #9, !srcloc !467
  %26 = lshr i16 %25, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !468
  %and37 = zext i16 %26 to i32
  %shl38 = shl nuw nsw i32 %and37, 9
  %or = or i32 %shl38, %shl31
  %27 = ptrtoint ptr %ioaddr2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ioaddr2, align 4
  %add.ptr41 = getelementptr i8, ptr %28, i32 88
  %29 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr41) #9, !srcloc !467
  %30 = shl i16 %29, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !468
  %and44 = zext i16 %30 to i32
  %shl45 = shl nuw nsw i32 %and44, 10
  %or46 = or i32 %shl45, %or
  %31 = ptrtoint ptr %ioaddr2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ioaddr2, align 4
  %add.ptr49 = getelementptr i8, ptr %32, i32 11
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr49) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  %conv51 = zext i8 %33 to i32
  %or52 = or i32 %or46, %conv51
  %or53 = or i32 %or52, %add
  %maxwide = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 63
  %34 = ptrtoint ptr %maxwide to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %maxwide, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool54.not = icmp eq i8 %35, 0
  %and56 = and i32 %or53, 262143
  %spec.select = select i1 %tobool54.not, i32 %and56, i32 %or53
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %spec.select)
  %cmp.not = icmp eq i32 %spec.select, 256
  br i1 %cmp.not, label %if.end16.out_crit_edge, label %do.end

if.end16.out_crit_edge:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.end:                                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %inst_name = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 42, i32 1
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %inst_name) #12
  %features = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 60
  %36 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %features, align 4
  %and69 = and i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  %cond = select i1 %tobool70.not, ptr @.str.23, ptr @.str.22
  %call71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %inst_name, ptr noundef nonnull %cond, i32 noundef %spec.select, i32 noundef 256) #12
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.sym_driver_setup, ptr @sym_driver_setup, i32 0, i32 5) to i32))
  %38 = load i8, ptr getelementptr inbounds (%struct.sym_driver_setup, ptr @sym_driver_setup, i32 0, i32 5), align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %38)
  %cmp73 = icmp eq i8 %38, 1
  %spec.select102 = zext i1 %cmp73 to i32
  br label %out

out:                                              ; preds = %do.end, %if.end16.out_crit_edge, %if.end.out_crit_edge
  %retv.0 = phi i32 [ 0, %if.end16.out_crit_edge ], [ 0, %if.end.out_crit_edge ], [ %spec.select102, %do.end ]
  %39 = ptrtoint ptr %ioaddr2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ioaddr2, align 4
  %add.ptr80 = getelementptr i8, ptr %40, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr80, i8 0) #9, !srcloc !464
  ret i32 %retv.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sym_soft_reset(ptr noundef %np) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %features = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 60
  %0 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %features, align 4
  %and = and i32 %1, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do_chip_reset_crit_edge, label %lor.lhs.false

entry.do_chip_reset_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do_chip_reset

lor.lhs.false:                                    ; preds = %entry
  %ioaddr = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 42, i32 4
  %2 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 21
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  %5 = and i8 %4, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %lor.lhs.false.do_chip_reset_crit_edge, label %if.end

lor.lhs.false.do_chip_reset_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do_chip_reset

if.end:                                           ; preds = %lor.lhs.false
  %6 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr, align 4
  %add.ptr5 = getelementptr i8, ptr %7, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5, i8 -128) #9, !srcloc !464
  br label %for.body

for.body:                                         ; preds = %if.end33.for.body_crit_edge, %if.end
  %i.055 = phi i32 [ 100000, %if.end ], [ %dec, %if.end33.for.body_crit_edge ]
  %8 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ioaddr, align 4
  %add.ptr9 = getelementptr i8, ptr %9, i32 20
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr9) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  %conv11 = zext i8 %10 to i32
  %and12 = and i32 %conv11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ioaddr, align 4
  %add.ptr17 = getelementptr i8, ptr %12, i32 66
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr17) #9, !srcloc !467
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !468
  br label %if.end33

if.else:                                          ; preds = %for.body
  %and20 = and i32 %conv11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.else.if.end33_crit_edge, label %if.then22

if.else.if.end33_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.then22:                                        ; preds = %if.else
  %14 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ioaddr, align 4
  %add.ptr25 = getelementptr i8, ptr %15, i32 12
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr25) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  %17 = and i8 %16, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool29.not = icmp eq i8 %17, 0
  br i1 %tobool29.not, label %if.then22.if.end33_crit_edge, label %do_chip_reset.critedge

if.then22.if.end33_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.end33:                                         ; preds = %if.then22.if.end33_crit_edge, %if.else.if.end33_crit_edge, %if.then14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 1073740) #9
  %dec = add nsw i32 %i.055, -1
  %tobool6.not = icmp eq i32 %dec, 0
  br i1 %tobool6.not, label %for.end, label %if.end33.for.body_crit_edge

if.end33.for.body_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ioaddr, align 4
  %add.ptr36 = getelementptr i8, ptr %20, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr36, i8 0) #9, !srcloc !464
  %inst_name = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 42, i32 1
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef %inst_name, i32 noundef %conv11) #12
  br label %do_chip_reset

do_chip_reset.critedge:                           ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ioaddr, align 4
  %add.ptr36.c = getelementptr i8, ptr %22, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr36.c, i8 0) #9, !srcloc !464
  br label %do_chip_reset

do_chip_reset:                                    ; preds = %do_chip_reset.critedge, %for.end, %lor.lhs.false.do_chip_reset_crit_edge, %entry.do_chip_reset_crit_edge
  %ioaddr.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 42, i32 4
  %23 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %24, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 64) #9, !srcloc !464
  %25 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %26, i32 23
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr3.i) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 2147480) #9
  %29 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %30, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i, i8 0) #9, !srcloc !464
  %31 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %32, i32 23
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr9.i) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 429496000) #9
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sym_dump_registers(ptr noundef %shost) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 53
  %0 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata.i, align 8
  %ioaddr = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 42, i32 4
  %2 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 66
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #9, !srcloc !467
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !468
  %6 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr, align 4
  %add.ptr4 = getelementptr i8, ptr %7, i32 12
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr4) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  tail call fastcc void @sym_log_hard_error(ptr noundef %shost, i16 noundef zeroext %5, i8 noundef zeroext %8)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sym_log_hard_error(ptr noundef %shost, i16 noundef zeroext %sist, i8 noundef zeroext %dstat) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 53
  %0 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata.i, align 8
  %ioaddr = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 42, i32 4
  %2 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 44
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !469
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !470
  %scripta_ba = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 48
  %6 = ptrtoint ptr %scripta_ba to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %scripta_ba, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp = icmp ugt i32 %5, %7
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %scripta_sz = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 51
  %8 = ptrtoint ptr %scripta_sz to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %scripta_sz, align 4
  %conv = zext i16 %9 to i32
  %add = add i32 %7, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %add)
  %cmp3.not = icmp ugt i32 %5, %add
  br i1 %cmp3.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %scripta0 = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 45
  br label %do.end.sink.split

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %scriptb_ba = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 49
  %10 = ptrtoint ptr %scriptb_ba to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %scriptb_ba, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %11)
  %cmp8 = icmp ugt i32 %5, %11
  br i1 %cmp8, label %land.lhs.true10, label %if.else.do.end_crit_edge

if.else.do.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true10:                                  ; preds = %if.else
  %scriptb_sz = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 52
  %12 = ptrtoint ptr %scriptb_sz to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %scriptb_sz, align 2
  %conv12 = zext i16 %13 to i32
  %add13 = add i32 %11, %conv12
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %add13)
  %cmp14.not = icmp ugt i32 %5, %add13
  br i1 %cmp14.not, label %land.lhs.true10.do.end_crit_edge, label %if.then16

land.lhs.true10.do.end_crit_edge:                 ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then16:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #11
  %scriptb0 = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 46
  br label %do.end.sink.split

do.end.sink.split:                                ; preds = %if.then16, %if.then
  %scripta0.sink = phi ptr [ %scripta0, %if.then ], [ %scriptb0, %if.then16 ]
  %script_name.0.ph = phi ptr [ @.str.63, %if.then ], [ @.str.64, %if.then16 ]
  %script_size.0.ph = phi i32 [ %conv, %if.then ], [ %conv12, %if.then16 ]
  %.pn = phi i32 [ %7, %if.then ], [ %11, %if.then16 ]
  %script_ofs.0.ph = sub i32 %5, %.pn
  %14 = ptrtoint ptr %scripta0.sink to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %scripta0.sink, align 4
  br label %do.end

do.end:                                           ; preds = %do.end.sink.split, %land.lhs.true10.do.end_crit_edge, %if.else.do.end_crit_edge
  %script_base.0 = phi ptr [ null, %land.lhs.true10.do.end_crit_edge ], [ null, %if.else.do.end_crit_edge ], [ %15, %do.end.sink.split ]
  %script_name.0 = phi ptr [ @.str.65, %land.lhs.true10.do.end_crit_edge ], [ @.str.65, %if.else.do.end_crit_edge ], [ %script_name.0.ph, %do.end.sink.split ]
  %script_size.0 = phi i32 [ 0, %land.lhs.true10.do.end_crit_edge ], [ 0, %if.else.do.end_crit_edge ], [ %script_size.0.ph, %do.end.sink.split ]
  %script_ofs.0 = phi i32 [ %5, %land.lhs.true10.do.end_crit_edge ], [ %5, %if.else.do.end_crit_edge ], [ %script_ofs.0.ph, %do.end.sink.split ]
  %inst_name = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 42, i32 1
  %16 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ioaddr, align 4
  %add.ptr26 = getelementptr i8, ptr %17, i32 6
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr26) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  %19 = and i8 %18, 15
  %and = zext i8 %19 to i32
  %conv29 = zext i8 %dstat to i32
  %conv30 = zext i16 %sist to i32
  %20 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ioaddr, align 4
  %add.ptr33 = getelementptr i8, ptr %21, i32 9
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr33) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  %conv35 = zext i8 %22 to i32
  %23 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ioaddr, align 4
  %add.ptr38 = getelementptr i8, ptr %24, i32 11
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr38) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  %conv40 = zext i8 %25 to i32
  %26 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ioaddr, align 4
  %add.ptr43 = getelementptr i8, ptr %27, i32 88
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr43) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  %conv45 = zext i8 %28 to i32
  %29 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ioaddr, align 4
  %add.ptr48 = getelementptr i8, ptr %30, i32 5
  %31 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr48) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  %conv50 = zext i8 %31 to i32
  %32 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ioaddr, align 4
  %add.ptr53 = getelementptr i8, ptr %33, i32 3
  %34 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr53) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  %conv55 = zext i8 %34 to i32
  %features = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 60
  %35 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %features, align 4
  %and56 = and i32 %36, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool.not = icmp eq i32 %and56, 0
  br i1 %tobool.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ioaddr, align 4
  %add.ptr59 = getelementptr i8, ptr %38, i32 188
  %39 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr59) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  %conv61 = zext i8 %39 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi i32 [ %conv61, %cond.true ], [ 0, %do.end.cond.end_crit_edge ]
  %40 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ioaddr, align 4
  %add.ptr64 = getelementptr i8, ptr %41, i32 36
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr64) #9, !srcloc !469
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !470
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef %inst_name, i32 noundef %and, i32 noundef %conv29, i32 noundef %conv30, i32 noundef %conv35, i32 noundef %conv40, i32 noundef %conv45, i32 noundef %conv50, i32 noundef %conv55, i32 noundef %cond, ptr noundef nonnull %script_name.0, i32 noundef %script_ofs.0, i32 noundef %43) #12
  %and67 = and i32 %script_ofs.0, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %cmp68 = icmp eq i32 %and67, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %script_ofs.0, i32 %script_size.0)
  %cmp71 = icmp ult i32 %script_ofs.0, %script_size.0
  %or.cond = select i1 %cmp68, i1 %cmp71, i1 false
  br i1 %or.cond, label %do.end76, label %cond.end.do.end86_crit_edge

cond.end.do.end86_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end86

do.end76:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr81 = getelementptr i8, ptr %script_base.0, i32 %script_ofs.0
  %44 = ptrtoint ptr %add.ptr81 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr81, align 4
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  %call82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef %inst_name, i32 noundef %46) #12
  br label %do.end86

do.end86:                                         ; preds = %do.end76, %cond.end.do.end86_crit_edge
  %call91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef %inst_name) #12
  br label %do.end96

do.end96:                                         ; preds = %do.end96.do.end96_crit_edge, %do.end86
  %i.0153 = phi i32 [ 0, %do.end86 ], [ %inc, %do.end96.do.end96_crit_edge ]
  %47 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ioaddr, align 4
  %add.ptr100 = getelementptr i8, ptr %48, i32 %i.0153
  %49 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr100) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  %conv102 = zext i8 %49 to i32
  %call103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, i32 noundef %conv102) #12
  %inc = add nuw nsw i32 %i.0153, 1
  %exitcond.not = icmp eq i32 %inc, 24
  br i1 %exitcond.not, label %do.end106, label %do.end96.do.end96_crit_edge

do.end96.do.end96_crit_edge:                      ; preds = %do.end96
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end96

do.end106:                                        ; preds = %do.end96
  %call108 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78) #12
  %and110 = and i32 %conv29, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110)
  %tobool111.not = icmp eq i32 %and110, 0
  br i1 %tobool111.not, label %do.end106.if.end113_crit_edge, label %if.then112

do.end106.if.end113_crit_edge:                    ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end113

if.then112:                                       ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sym_log_bus_error(ptr noundef %shost) #9
  br label %if.end113

if.end113:                                        ; preds = %if.then112, %do.end106.if.end113_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sym_lookup_chip_table(i16 noundef zeroext %device_id, i8 noundef zeroext %revision) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %revision to i16
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.016 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [18 x %struct.sym_chip], ptr @sym_dev_table, i32 0, i32 %i.016
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %2, i16 %device_id)
  %cmp3.not = icmp eq i16 %2, %device_id
  br i1 %cmp3.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %for.body
  %revision_id = getelementptr [18 x %struct.sym_chip], ptr @sym_dev_table, i32 0, i32 %i.016, i32 1
  %3 = ptrtoint ptr %revision_id to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %revision_id, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %4, i16 %0)
  %cmp7 = icmp ult i16 %4, %0
  br i1 %cmp7, label %if.end.for.inc_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.016, 1
  %exitcond.not = icmp eq i32 %inc, 18
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %arrayidx, %if.end.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sym_put_start_queue(ptr nocapture noundef %np, ptr nocapture noundef readonly %cp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %squeueput = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 76
  %0 = ptrtoint ptr %squeueput to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %squeueput, align 4
  %add = add i16 %1, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 899, i16 %add)
  %cmp = icmp ugt i16 %add, 899
  %spec.store.select = select i1 %cmp, i16 0, i16 %add
  %idletask_ba = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 7
  %2 = ptrtoint ptr %idletask_ba to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %idletask_ba, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %squeue = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 74
  %5 = ptrtoint ptr %squeue to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %squeue, align 4
  %idxprom = zext i16 %spec.store.select to i32
  %arrayidx = getelementptr i32, ptr %6, i32 %idxprom
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 %4, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !471
  tail call void @arm_heavy_mb() #9
  %ccb_ba = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 17
  %8 = ptrtoint ptr %ccb_ba to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ccb_ba, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = ptrtoint ptr %squeue to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %squeue, align 4
  %13 = ptrtoint ptr %squeueput to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %squeueput, align 4
  %idxprom6 = zext i16 %14 to i32
  %arrayidx7 = getelementptr i32, ptr %12, i32 %idxprom6
  %15 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 %10, ptr %arrayidx7, align 4
  store i16 %spec.store.select, ptr %squeueput, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sym_debug_flags to i32))
  %16 = load i32, ptr @sym_debug_flags, align 4
  %and = and i32 %16, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body13_crit_edge, label %if.then9

entry.do.body13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body13

if.then9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %cmd = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 1
  %17 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cmd, align 4
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.24, ptr noundef %18, ptr noundef nonnull @.str.25, i32 noundef %idxprom) #9
  br label %do.body13

do.body13:                                        ; preds = %if.then9, %entry.do.body13_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !472
  tail call void @arm_heavy_mb() #9
  %istat_sem = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 95
  %19 = ptrtoint ptr %istat_sem to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %istat_sem, align 4
  %21 = or i8 %20, 32
  %ioaddr = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 42, i32 4
  %22 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ioaddr, align 4
  %add.ptr = getelementptr i8, ptr %23, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %21) #9, !srcloc !464
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmd_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sym_start_up(ptr noundef %shost, i32 noundef %reason) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 53
  %pdev1 = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 1
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  %2 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hostdata.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %reason)
  %cmp = icmp eq i32 %reason, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @sym_soft_reset(ptr noundef %3)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ioaddr = getelementptr inbounds %struct.sym_hcb, ptr %3, i32 0, i32 42, i32 4
  %4 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 -126) #9, !srcloc !464
  %6 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr, align 4
  %add.ptr4 = getelementptr i8, ptr %7, i32 27
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr4) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  %9 = or i8 %8, 4
  %10 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ioaddr, align 4
  %add.ptr9 = getelementptr i8, ptr %11, i32 27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr9, i8 %9) #9, !srcloc !464
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %squeue_ba = getelementptr inbounds %struct.sym_hcb, ptr %3, i32 0, i32 75
  %12 = ptrtoint ptr %squeue_ba to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %squeue_ba, align 4
  %idletask_ba = getelementptr inbounds %struct.sym_hcb, ptr %3, i32 0, i32 7
  %squeue = getelementptr inbounds %struct.sym_hcb, ptr %3, i32 0, i32 74
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end
  %i.0463 = phi i32 [ 0, %if.end ], [ %add, %for.body.for.body_crit_edge ]
  %14 = ptrtoint ptr %idletask_ba to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %idletask_ba, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %17 = ptrtoint ptr %squeue to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %squeue, align 4
  %arrayidx = getelementptr i32, ptr %18, i32 %i.0463
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 %16, ptr %arrayidx, align 4
  %add = add nuw nsw i32 %i.0463, 2
  %mul = shl nuw nsw i32 %add, 2
  %add12 = add i32 %mul, %13
  %20 = tail call i32 @llvm.bswap.i32(i32 %add12)
  %21 = ptrtoint ptr %squeue to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %squeue, align 4
  %add14 = or i32 %i.0463, 1
  %arrayidx15 = getelementptr i32, ptr %22, i32 %add14
  %23 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 %20, ptr %arrayidx15, align 4
  %cmp10 = icmp ult i32 %i.0463, 898
  br i1 %cmp10, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  %24 = tail call i32 @llvm.bswap.i32(i32 %13)
  %25 = ptrtoint ptr %squeue to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %squeue, align 4
  %arrayidx18 = getelementptr i32, ptr %26, i32 899
  %27 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile i32 %24, ptr %arrayidx18, align 4
  %squeueput = getelementptr inbounds %struct.sym_hcb, ptr %3, i32 0, i32 76
  %28 = ptrtoint ptr %squeueput to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %squeueput, align 4
  %dqueue_ba = getelementptr inbounds %struct.sym_hcb, ptr %3, i32 0, i32 80
  %29 = ptrtoint ptr %dqueue_ba to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dqueue_ba, align 4
  %dqueue = getelementptr inbounds %struct.sym_hcb, ptr %3, i32 0, i32 79
  br label %for.body22

for.body22:                                       ; preds = %for.body22.for.body22_crit_edge, %for.end
  %i.1464 = phi i32 [ 0, %for.end ], [ %add24, %for.body22.for.body22_crit_edge ]
  %31 = ptrtoint ptr %dqueue to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dqueue, align 4
  %arrayidx23 = getelementptr i32, ptr %32, i32 %i.1464
  %33 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile i32 0, ptr %arrayidx23, align 4
  %add24 = add nuw nsw i32 %i.1464, 2
  %mul25 = shl nuw nsw i32 %add24, 2
  %add26 = add i32 %mul25, %30
  %34 = tail call i32 @llvm.bswap.i32(i32 %add26)
  %35 = ptrtoint ptr %dqueue to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dqueue, align 4
  %add28 = or i32 %i.1464, 1
  %arrayidx29 = getelementptr i32, ptr %36, i32 %add28
  %37 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile i32 %34, ptr %arrayidx29, align 4
  %cmp20 = icmp ult i32 %i.1464, 898
  br i1 %cmp20, label %for.body22.for.body22_crit_edge, label %for.end32

for.body22.for.body22_crit_edge:                  ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body22

for.end32:                                        ; preds = %for.body22
  %38 = tail call i32 @llvm.bswap.i32(i32 %30)
  %39 = ptrtoint ptr %dqueue to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dqueue, align 4
  %arrayidx34 = getelementptr i32, ptr %40, i32 899
  %41 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile i32 %38, ptr %arrayidx34, align 4
  %dqueueget = getelementptr inbounds %struct.sym_hcb, ptr %3, i32 0, i32 78
  %42 = ptrtoint ptr %dqueueget to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 0, ptr %dqueueget, align 4
  %fw_patch = getelementptr inbounds %struct.sym_hcb, ptr %3, i32 0, i32 58
  %43 = ptrtoint ptr %fw_patch to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %fw_patch, align 4
  tail call void %44(ptr noundef %shost) #9
  %busy_ccbq.i = getelementptr inbounds %struct.sym_hcb, ptr %3, i32 0, i32 90
  %comp_ccbq.i = getelementptr inbounds %struct.sym_hcb, ptr %3, i32 0, i32 91
  %45 = ptrtoint ptr %busy_ccbq.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %busy_ccbq.i, align 4
  %cmp.not.i.i = icmp eq ptr %46, %busy_ccbq.i
  br i1 %cmp.not.i.i, label %for.end32.sym_que_splice.exit.i_crit_edge, label %if.then.i.i

for.end32.sym_que_splice.exit.i_crit_edge:        ; preds = %for.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %sym_que_splice.exit.i

if.then.i.i:                                      ; preds = %for.end32
  call void @__sanitizer_cov_trace_pc() #11
  %blink.i.i = getelementptr inbounds %struct.sym_hcb, ptr %3, i32 0, i32 90, i32 1
  %47 = ptrtoint ptr %blink.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %blink.i.i, align 4
  %49 = ptrtoint ptr %comp_ccbq.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %comp_ccbq.i, align 4
  %blink2.i.i = getelementptr inbounds %struct.sym_quehead, ptr %46, i32 0, i32 1
  %51 = ptrtoint ptr %blink2.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %comp_ccbq.i, ptr %blink2.i.i, align 4
  store ptr %46, ptr %comp_ccbq.i, align 4
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %50, ptr %48, align 4
  %blink5.i.i = getelementptr inbounds %struct.sym_quehead, ptr %50, i32 0, i32 1
  %53 = ptrtoint ptr %blink5.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %48, ptr %blink5.i.i, align 4
  br label %sym_que_splice.exit.i

sym_que_splice.exit.i:                            ; preds = %if.then.i.i, %for.end32.sym_que_splice.exit.i_crit_edge
  %54 = ptrtoint ptr %busy_ccbq.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %busy_ccbq.i, ptr %busy_ccbq.i, align 4
  %blink.i = getelementptr inbounds %struct.sym_hcb, ptr %3, i32 0, i32 90, i32 1
  %55 = ptrtoint ptr %blink.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %busy_ccbq.i, ptr %blink.i, align 4
  %56 = ptrtoint ptr %comp_ccbq.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %comp_ccbq.i, align 4
  %cmp.not.i18.i.i = icmp eq ptr %57, %comp_ccbq.i
  br i1 %cmp.not.i18.i.i, label %sym_que_splice.exit.i.sym_flush_busy_queue.exit_crit_edge, label %sym_que_splice.exit.i.sym_remque_head.exit.i.i_crit_edge

sym_que_splice.exit.i.sym_remque_head.exit.i.i_crit_edge: ; preds = %sym_que_splice.exit.i
  br label %sym_remque_head.exit.i.i

sym_que_splice.exit.i.sym_flush_busy_queue.exit_crit_edge: ; preds = %sym_que_splice.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sym_flush_busy_queue.exit

sym_remque_head.exit.i.i:                         ; preds = %cleanup.i.i.sym_remque_head.exit.i.i_crit_edge, %sym_que_splice.exit.i.sym_remque_head.exit.i.i_crit_edge
  %58 = phi ptr [ %75, %cleanup.i.i.sym_remque_head.exit.i.i_crit_edge ], [ %57, %sym_que_splice.exit.i.sym_remque_head.exit.i.i_crit_edge ]
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %blink1.i.i.i.i = getelementptr inbounds %struct.sym_quehead, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %blink1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %comp_ccbq.i, ptr %blink1.i.i.i.i, align 4
  %62 = ptrtoint ptr %comp_ccbq.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %60, ptr %comp_ccbq.i, align 4
  %cmp.not.i2.i = icmp eq ptr %58, null
  br i1 %cmp.not.i2.i, label %sym_remque_head.exit.i.i.sym_flush_busy_queue.exit_crit_edge, label %while.body.i.i

sym_remque_head.exit.i.i.sym_flush_busy_queue.exit_crit_edge: ; preds = %sym_remque_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sym_flush_busy_queue.exit

while.body.i.i:                                   ; preds = %sym_remque_head.exit.i.i
  %63 = ptrtoint ptr %blink.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %blink.i, align 4
  store ptr %58, ptr %blink.i, align 4
  %65 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %busy_ccbq.i, ptr %58, align 4
  %blink3.i.i.i = getelementptr inbounds %struct.sym_quehead, ptr %58, i32 0, i32 1
  %66 = ptrtoint ptr %blink3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %64, ptr %blink3.i.i.i, align 4
  %67 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %58, ptr %64, align 4
  %arrayidx.i.i = getelementptr i8, ptr %58, i32 -955
  %68 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %69)
  %cmp2.i.i = icmp eq i8 %69, 4
  br i1 %cmp2.i.i, label %while.body.i.i.cleanup.i.i_crit_edge, label %if.end.i.i

while.body.i.i.cleanup.i.i_crit_edge:             ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i.i

if.end.i.i:                                       ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i = getelementptr i8, ptr %58, i32 -972
  %cmd4.i.i = getelementptr i8, ptr %58, i32 -116
  %70 = ptrtoint ptr %cmd4.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %cmd4.i.i, align 4
  %result.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %71, i32 0, i32 24
  %72 = ptrtoint ptr %result.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %result.i.i.i, align 4
  %and.i.i.i = and i32 %73, -16711681
  %or.i.i.i = or i32 %and.i.i.i, 524288
  store i32 %or.i.i.i, ptr %result.i.i.i, align 4
  tail call void @sym_free_ccb(ptr noundef %3, ptr noundef %add.ptr.i.i) #9
  tail call void @sym_xpt_done(ptr noundef %3, ptr noundef %71) #9
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.end.i.i, %while.body.i.i.cleanup.i.i_crit_edge
  %74 = ptrtoint ptr %comp_ccbq.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %comp_ccbq.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %75, %comp_ccbq.i
  br i1 %cmp.not.i.i.i, label %cleanup.i.i.sym_flush_busy_queue.exit_crit_edge, label %cleanup.i.i.sym_remque_head.exit.i.i_crit_edge

cleanup.i.i.sym_remque_head.exit.i.i_crit_edge:   ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sym_remque_head.exit.i.i

cleanup.i.i.sym_flush_busy_queue.exit_crit_edge:  ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sym_flush_busy_queue.exit

sym_flush_busy_queue.exit:                        ; preds = %cleanup.i.i.sym_flush_busy_queue.exit_crit_edge, %sym_remque_head.exit.i.i.sym_flush_busy_queue.exit_crit_edge, %sym_que_splice.exit.i.sym_flush_busy_queue.exit_crit_edge
  %ioaddr36 = getelementptr inbounds %struct.sym_hcb, ptr %3, i32 0, i32 42, i32 4
  %76 = ptrtoint ptr %ioaddr36 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ioaddr36, align 4
  %add.ptr37 = getelementptr i8, ptr %77, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr37, i8 0) #9, !srcloc !464
  %78 = ptrtoint ptr %ioaddr36 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ioaddr36, align 4
  %add.ptr40 = getelementptr i8, ptr %79, i32 23
  %80 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr40) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %81 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %81(i32 noundef 429496000) #9
  %rv_scntl0 = getelementptr inbounds %struct.sym_hcb, ptr %3, i32 0, i32 27
  %82 = ptrtoint ptr %rv_scntl0 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %rv_scntl0, align 4
  %84 = or i8 %83, -64
  %85 = ptrtoint ptr %ioaddr36 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ioaddr36, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %86, i8 %84) #9, !srcloc !464
  %87 = ptrtoint ptr %ioaddr36 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ioaddr36, align 4
  %add.ptr50 = getelementptr i8, ptr %88, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr50, i8 0) #9, !srcloc !464
  %rv_scntl3 = getelementptr inbounds %struct.sym_hcb, ptr %3, i32 0, i32 28
  %89 = ptrtoint ptr %rv_scntl3 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %rv_scntl3, align 1
  %multiplier.i = getelementptr inbounds %struct.sym_hcb, ptr %3, i32 0, i32 70
  %91 = ptrtoint ptr %multiplier.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %multiplier.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %92)
  %cmp.i = icmp ult i8 %92, 2
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %sym_flush_busy_queue.exit
  call void @__sanitizer_cov_trace_pc() #11
  %93 = ptrtoint ptr %ioaddr36 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ioaddr36, align 4
  %add.ptr.i = getelementptr i8, ptr %94, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %90) #9, !srcloc !464
  br label %sym_selectclock.exit

if.end.i:                                         ; preds = %sym_flush_busy_queue.exit
  %verbose.i = getelementptr inbounds %struct.sym_hcb, ptr %3, i32 0, i32 87
  %95 = ptrtoint ptr %verbose.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %verbose.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %96)
  %cmp3.i = icmp ugt i8 %96, 1
  br i1 %cmp3.i, label %do.end.i, label %if.end.i.if.end7.i_crit_edge

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %inst_name.i = getelementptr inbounds %struct.sym_hcb, ptr %3, i32 0, i32 42, i32 1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %inst_name.i) #12
  br label %if.end7.i

if.end7.i:                                        ; preds = %do.end.i, %if.end.i.if.end7.i_crit_edge
  %97 = ptrtoint ptr %ioaddr36 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %ioaddr36, align 4
  %add.ptr10.i = getelementptr i8, ptr %98, i32 77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr10.i, i8 8) #9, !srcloc !464
  %features.i = getelementptr inbounds %struct.sym_hcb, ptr %3, i32 0, i32 60
  %99 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %features.i, align 4
  %and.i = and i32 %100, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %101 = ptrtoint ptr %ioaddr36 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %ioaddr36, align 4
  br i1 %tobool.not.i, label %if.else.i, label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %if.end7.i
  %add.ptr1464.i = getelementptr i8, ptr %102, i32 82
  %103 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1464.i) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  %104 = and i8 %103, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool18.not65.i = icmp eq i8 %104, 0
  br i1 %tobool18.not65.i, label %while.cond.preheader.i.land.rhs.i_crit_edge, label %while.cond.preheader.i.if.end35.i_crit_edge

while.cond.preheader.i.if.end35.i_crit_edge:      ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.i

while.cond.preheader.i.land.rhs.i_crit_edge:      ; preds = %while.cond.preheader.i
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %while.cond.preheader.i.land.rhs.i_crit_edge
  %i.066.i = phi i32 [ %dec.i, %while.body.i.land.rhs.i_crit_edge ], [ 20, %while.cond.preheader.i.land.rhs.i_crit_edge ]
  %dec.i = add nsw i32 %i.066.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp19.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp19.not.i, label %do.end24.i, label %while.body.i

while.body.i:                                     ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %105 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %105(i32 noundef 4294960) #9
  %106 = ptrtoint ptr %ioaddr36 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ioaddr36, align 4
  %add.ptr14.i = getelementptr i8, ptr %107, i32 82
  %108 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr14.i) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  %109 = and i8 %108, 32
  %tobool18.not.i = icmp eq i8 %109, 0
  br i1 %tobool18.not.i, label %while.body.i.land.rhs.i_crit_edge, label %while.body.i.if.end35.i_crit_edge

while.body.i.if.end35.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.i

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i

do.end24.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  %inst_name27.i = getelementptr inbounds %struct.sym_hcb, ptr %3, i32 0, i32 42, i32 1
  %call29.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, ptr noundef %inst_name27.i) #12
  br label %if.end35.i

if.else.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr33.i = getelementptr i8, ptr %102, i32 23
  %110 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr33.i) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %111 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %111(i32 noundef 12884880) #9
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.else.i, %do.end24.i, %while.body.i.if.end35.i_crit_edge, %while.cond.preheader.i.if.end35.i_crit_edge
  %112 = ptrtoint ptr %ioaddr36 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %ioaddr36, align 4
  %add.ptr38.i = getelementptr i8, ptr %113, i32 79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr38.i, i8 32) #9, !srcloc !464
  %114 = ptrtoint ptr %ioaddr36 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %ioaddr36, align 4
  %add.ptr41.i = getelementptr i8, ptr %115, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr41.i, i8 %90) #9, !srcloc !464
  %116 = ptrtoint ptr %ioaddr36 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %ioaddr36, align 4
  %add.ptr44.i = getelementptr i8, ptr %117, i32 77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr44.i, i8 12) #9, !srcloc !464
  %118 = ptrtoint ptr %ioaddr36 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %ioaddr36, align 4
  %add.ptr47.i = getelementptr i8, ptr %119, i32 79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr47.i, i8 0) #9, !srcloc !464
  br label %sym_selectclock.exit

sym_selectclock.exit:                             ; preds = %if.end35.i, %if.then.i
  %myaddr = getelementptr inbounds %struct.sym_hcb, ptr %3, i32 0, i32 61
  %120 = ptrtoint ptr %myaddr to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %myaddr, align 4
  %122 = or i8 %121, 64
  %123 = ptrtoint ptr %ioaddr36 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %ioaddr36, align 4
  %add.ptr56 = getelementptr i8, ptr %124, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr56, i8 %122) #9, !srcloc !464
  %125 = ptrtoint ptr %myaddr to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %myaddr, align 4
  %conv58 = zext i8 %126 to i32
  %shl = shl nuw i32 1, %conv58
  %conv59 = trunc i32 %shl to i16
  %127 = ptrtoint ptr %ioaddr36 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %ioaddr36, align 4
  %add.ptr62 = getelementptr i8, ptr %128, i32 74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !461
  tail call void @arm_heavy_mb() #9
  %129 = tail call i16 @llvm.bswap.i16(i16 %conv59) #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr62, i16 %129) #9, !srcloc !462
  %130 = ptrtoint ptr %ioaddr36 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %ioaddr36, align 4
  %add.ptr65 = getelementptr i8, ptr %131, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr65, i8 32) #9, !srcloc !464
  %rv_dmode = getelementptr inbounds %struct.sym_hcb, ptr %3, i32 0, i32 29
  %132 = ptrtoint ptr %rv_dmode to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %rv_dmode, align 2
  %134 = ptrtoint ptr %ioaddr36 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %ioaddr36, align 4
  %add.ptr68 = getelementptr i8, ptr %135, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr68, i8 %133) #9, !srcloc !464
  %rv_ctest5 = getelementptr inbounds %struct.sym_hcb, ptr %3, i32 0, i32 33
  %136 = ptrtoint ptr %rv_ctest5 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %rv_ctest5, align 2
  %138 = ptrtoint ptr %ioaddr36 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %ioaddr36, align 4
  %add.ptr71 = getelementptr i8, ptr %139, i32 34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr71, i8 %137) #9, !srcloc !464
  %rv_dcntl = getelementptr inbounds %struct.sym_hcb, ptr %3, i32 0, i32 30
  %140 = ptrtoint ptr %rv_dcntl to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %rv_dcntl, align 1
  %142 = or i8 %141, 1
  %143 = ptrtoint ptr %ioaddr36 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %ioaddr36, align 4
  %add.ptr77 = getelementptr i8, ptr %144, i32 59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr77, i8 %142) #9, !srcloc !464
  %rv_ctest3 = getelementptr inbounds %struct.sym_hcb, ptr %3, i32 0, i32 31
  %145 = ptrtoint ptr %rv_ctest3 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %rv_ctest3, align 4
  %147 = ptrtoint ptr %ioaddr36 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %ioaddr36, align 4
  %add.ptr80 = getelementptr i8, ptr %148, i32 27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr80, i8 %146) #9, !srcloc !464
  %rv_ctest4 = getelementptr inbounds %struct.sym_hcb, ptr %3, i32 0, i32 32
  %149 = ptrtoint ptr %rv_ctest4 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %rv_ctest4, align 1
  %151 = ptrtoint ptr %ioaddr36 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %ioaddr36, align 4
  %add.ptr83 = getelementptr i8, ptr %152, i32 33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr83, i8 %150) #9, !srcloc !464
  %features = getelementptr inbounds %struct.sym_hcb, ptr %3, i32 0, i32 60
  %153 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %features, align 4
  %and = and i32 %154, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %rv_stest289 = getelementptr inbounds %struct.sym_hcb, ptr %3, i32 0, i32 34
  %155 = ptrtoint ptr %rv_stest289 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %rv_stest289, align 1
  br i1 %tobool.not, label %if.else88, label %if.then84

if.then84:                                        ; preds = %sym_selectclock.exit
  call void @__sanitizer_cov_trace_pc() #11
  %157 = ptrtoint ptr %ioaddr36 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %ioaddr36, align 4
  %add.ptr87 = getelementptr i8, ptr %158, i32 78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr87, i8 %156) #9, !srcloc !464
  br label %if.end96

if.else88:                                        ; preds = %sym_selectclock.exit
  call void @__sanitizer_cov_trace_pc() #11
  %159 = or i8 %156, 2
  %160 = ptrtoint ptr %ioaddr36 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %ioaddr36, align 4
  %add.ptr95 = getelementptr i8, ptr %161, i32 78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr95, i8 %159) #9, !srcloc !464
  br label %if.end96

if.end96:                                         ; preds = %if.else88, %if.then84
  %162 = ptrtoint ptr %ioaddr36 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %ioaddr36, align 4
  %add.ptr99 = getelementptr i8, ptr %163, i32 79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr99, i8 -128) #9, !srcloc !464
  %164 = ptrtoint ptr %ioaddr36 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %ioaddr36, align 4
  %add.ptr102 = getelementptr i8, ptr %165, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr102, i8 12) #9, !srcloc !464
  %device = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %166 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 33, i16 %167)
  %cmp104 = icmp eq i16 %167, 33
  br i1 %cmp104, label %if.then106, label %if.end96.if.end110_crit_edge

if.end96.if.end110_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end110

if.then106:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #11
  %168 = ptrtoint ptr %ioaddr36 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %ioaddr36, align 4
  %add.ptr109 = getelementptr i8, ptr %169, i32 191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr109, i8 8) #9, !srcloc !464
  %170 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %170)
  %.pr = load i16, ptr %device, align 2
  br label %if.end110

if.end110:                                        ; preds = %if.then106, %if.end96.if.end110_crit_edge
  %171 = phi i16 [ %.pr, %if.then106 ], [ %167, %if.end96.if.end110_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %171)
  %cmp113 = icmp eq i16 %171, 32
  br i1 %cmp113, label %land.lhs.true, label %if.end110.if.end129_crit_edge

if.end110.if.end129_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end129

land.lhs.true:                                    ; preds = %if.end110
  %revision = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 12
  %172 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %173)
  %cmp116 = icmp eq i8 %173, 0
  br i1 %cmp116, label %if.then118, label %land.lhs.true.if.end129_crit_edge

land.lhs.true.if.end129_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end129

if.then118:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %174 = ptrtoint ptr %ioaddr36 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %ioaddr36, align 4
  %add.ptr121 = getelementptr i8, ptr %175, i32 77
  %176 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr121) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  %177 = or i8 %176, 48
  %178 = ptrtoint ptr %ioaddr36 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %ioaddr36, align 4
  %add.ptr128 = getelementptr i8, ptr %179, i32 77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr128, i8 %177) #9, !srcloc !464
  br label %if.end129

if.end129:                                        ; preds = %if.then118, %land.lhs.true.if.end129_crit_edge, %if.end110.if.end129_crit_edge
  %180 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %180)
  %181 = load i16, ptr %device, align 2
  %182 = zext i16 %181 to i64
  call void @__sanitizer_cov_trace_switch(i64 %182, ptr @__sancov_gen_cov_switch_values)
  switch i16 %181, label %if.end129.if.end148_crit_edge [
    i16 15, label %if.then134
    i16 11, label %if.then143
  ]

if.end129.if.end148_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end148

if.then134:                                       ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #11
  %183 = ptrtoint ptr %ioaddr36 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %ioaddr36, align 4
  %add.ptr137 = getelementptr i8, ptr %184, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr137, i8 32) #9, !srcloc !464
  br label %if.end148

if.then143:                                       ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #11
  %rv_ccntl0 = getelementptr inbounds %struct.sym_hcb, ptr %3, i32 0, i32 35
  %185 = ptrtoint ptr %rv_ccntl0 to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %rv_ccntl0, align 4
  %187 = or i8 %186, 1
  store i8 %187, ptr %rv_ccntl0, align 4
  br label %if.end148

if.end148:                                        ; preds = %if.then143, %if.then134, %if.end129.if.end148_crit_edge
  %188 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %features, align 4
  %and150 = and i32 %189, 537395200
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and150)
  %tobool151.not = icmp eq i32 %and150, 0
  br i1 %tobool151.not, label %if.end148.if.end160_crit_edge, label %if.then152

if.end148.if.end160_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end160

if.then152:                                       ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #11
  %rv_ccntl0153 = getelementptr inbounds %struct.sym_hcb, ptr %3, i32 0, i32 35
  %190 = ptrtoint ptr %rv_ccntl0153 to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %rv_ccntl0153, align 4
  %192 = ptrtoint ptr %ioaddr36 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %ioaddr36, align 4
  %add.ptr156 = getelementptr i8, ptr %193, i32 86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr156, i8 %191) #9, !srcloc !464
  %rv_ccntl1 = getelementptr inbounds %struct.sym_hcb, ptr %3, i32 0, i32 36
  %194 = ptrtoint ptr %rv_ccntl1 to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %rv_ccntl1, align 1
  %196 = ptrtoint ptr %ioaddr36 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %ioaddr36, align 4
  %add.ptr159 = getelementptr i8, ptr %197, i32 87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr159, i8 %195) #9, !srcloc !464
  br label %if.end160

if.end160:                                        ; preds = %if.then152, %if.end148.if.end160_crit_edge
  %198 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %features, align 4
  %and162 = and i32 %199, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and162)
  %tobool163.not = icmp eq i32 %and162, 0
  br i1 %tobool163.not, label %if.end160.if.end173_crit_edge, label %if.then164

if.end160.if.end173_crit_edge:                    ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end173

if.then164:                                       ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #11
  %pm_handle = getelementptr inbounds %struct.sym_hcb, ptr %3, i32 0, i32 55, i32 20
  %200 = ptrtoint ptr %pm_handle to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %pm_handle, align 4
  %202 = ptrtoint ptr %ioaddr36 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %ioaddr36, align 4
  %add.ptr167 = getelementptr i8, ptr %203, i32 192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !473
  tail call void @arm_heavy_mb() #9
  %204 = tail call i32 @llvm.bswap.i32(i32 %201) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr167, i32 %204) #9, !srcloc !474
  %205 = ptrtoint ptr %pm_handle to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %pm_handle, align 4
  %207 = ptrtoint ptr %ioaddr36 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %ioaddr36, align 4
  %add.ptr172 = getelementptr i8, ptr %208, i32 196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !473
  tail call void @arm_heavy_mb() #9
  %209 = tail call i32 @llvm.bswap.i32(i32 %206) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr172, i32 %209) #9, !srcloc !474
  br label %if.end173

if.end173:                                        ; preds = %if.then164, %if.end160.if.end173_crit_edge
  %210 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %features, align 4
  %and175 = and i32 %211, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and175)
  %tobool176.not = icmp eq i32 %and175, 0
  br i1 %tobool176.not, label %if.else188, label %if.then177

if.then177:                                       ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #11
  %212 = ptrtoint ptr %ioaddr36 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %ioaddr36, align 4
  %add.ptr180 = getelementptr i8, ptr %213, i32 71
  %214 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr180) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  %215 = and i8 %214, -2
  %216 = ptrtoint ptr %ioaddr36 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %ioaddr36, align 4
  %add.ptr187 = getelementptr i8, ptr %217, i32 71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr187, i8 %215) #9, !srcloc !464
  br label %if.end205

if.else188:                                       ; preds = %if.end173
  %and190 = and i32 %211, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and190)
  %tobool191.not = icmp eq i32 %and190, 0
  br i1 %tobool191.not, label %if.else188.if.end205_crit_edge, label %if.then192

if.else188.if.end205_crit_edge:                   ; preds = %if.else188
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end205

if.then192:                                       ; preds = %if.else188
  call void @__sanitizer_cov_trace_pc() #11
  %218 = ptrtoint ptr %ioaddr36 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %ioaddr36, align 4
  %add.ptr195 = getelementptr i8, ptr %219, i32 71
  %220 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr195) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  %221 = and i8 %220, -98
  %222 = or i8 %221, 32
  %223 = ptrtoint ptr %ioaddr36 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %ioaddr36, align 4
  %add.ptr203 = getelementptr i8, ptr %224, i32 71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr203, i8 %222) #9, !srcloc !464
  br label %if.end205

if.end205:                                        ; preds = %if.then192, %if.else188.if.end205_crit_edge, %if.then177
  %225 = ptrtoint ptr %ioaddr36 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %ioaddr36, align 4
  %add.ptr208 = getelementptr i8, ptr %226, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !461
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr208, i16 -28923) #9, !srcloc !462
  %227 = ptrtoint ptr %ioaddr36 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %ioaddr36, align 4
  %add.ptr211 = getelementptr i8, ptr %228, i32 57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr211, i8 109) #9, !srcloc !464
  %229 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %features, align 4
  %and213 = and i32 %230, 2097160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and213)
  %tobool214.not = icmp eq i32 %and213, 0
  br i1 %tobool214.not, label %if.end205.for.body250.preheader_crit_edge, label %if.then215

if.end205.for.body250.preheader_crit_edge:        ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body250.preheader

if.then215:                                       ; preds = %if.end205
  %231 = ptrtoint ptr %ioaddr36 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %ioaddr36, align 4
  %add.ptr218 = getelementptr i8, ptr %232, i32 64
  %233 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr218) #9, !srcloc !467
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !468
  %234 = or i16 %233, 16
  %235 = ptrtoint ptr %ioaddr36 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %ioaddr36, align 4
  %add.ptr225 = getelementptr i8, ptr %236, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !461
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr225, i16 %234) #9, !srcloc !462
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reason)
  %cmp226 = icmp eq i32 %reason, 0
  br i1 %cmp226, label %if.then228, label %if.then215.if.end238_crit_edge

if.then215.if.end238_crit_edge:                   ; preds = %if.then215
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end238

if.then228:                                       ; preds = %if.then215
  %237 = ptrtoint ptr %ioaddr36 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %ioaddr36, align 4
  %add.ptr231 = getelementptr i8, ptr %238, i32 23
  %239 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr231) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then228
  %__ms.0465 = phi i32 [ 100, %if.then228 ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.0465, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %240 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %240(i32 noundef 214748000) #9
  %tobool233.not = icmp eq i32 %dec, 0
  br i1 %tobool233.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %241 = ptrtoint ptr %ioaddr36 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %ioaddr36, align 4
  %add.ptr236 = getelementptr i8, ptr %242, i32 66
  %243 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr236) #9, !srcloc !467
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !468
  br label %if.end238

if.end238:                                        ; preds = %while.end, %if.then215.if.end238_crit_edge
  %244 = ptrtoint ptr %ioaddr36 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %ioaddr36, align 4
  %add.ptr241 = getelementptr i8, ptr %245, i32 82
  %246 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr241) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  %247 = and i8 %246, -64
  %scsi_mode = getelementptr inbounds %struct.sym_hcb, ptr %3, i32 0, i32 86
  %248 = ptrtoint ptr %scsi_mode to i32
  call void @__asan_store1_noabort(i32 %248)
  store i8 %247, ptr %scsi_mode, align 1
  br label %for.body250.preheader

for.body250.preheader:                            ; preds = %if.end238, %if.end205.for.body250.preheader_crit_edge
  br label %for.body250

for.body250:                                      ; preds = %if.end275.for.body250_crit_edge, %for.body250.preheader
  %i.2467 = phi i32 [ %inc277, %if.end275.for.body250_crit_edge ], [ 0, %for.body250.preheader ]
  %arrayidx251 = getelementptr %struct.sym_hcb, ptr %3, i32 0, i32 38, i32 %i.2467
  %to_reset = getelementptr %struct.sym_hcb, ptr %3, i32 0, i32 38, i32 %i.2467, i32 8
  %249 = ptrtoint ptr %to_reset to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 0, ptr %to_reset, align 4
  %sval = getelementptr inbounds %struct.sym_tcbh, ptr %arrayidx251, i32 0, i32 3
  %250 = ptrtoint ptr %sval to i32
  call void @__asan_store1_noabort(i32 %250)
  store i8 0, ptr %sval, align 1
  %251 = ptrtoint ptr %rv_scntl3 to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %rv_scntl3, align 1
  %wval = getelementptr inbounds %struct.sym_tcbh, ptr %arrayidx251, i32 0, i32 5
  %253 = ptrtoint ptr %wval to i32
  call void @__asan_store1_noabort(i32 %253)
  store i8 %252, ptr %wval, align 1
  %uval = getelementptr inbounds %struct.sym_tcbh, ptr %arrayidx251, i32 0, i32 2
  %254 = ptrtoint ptr %uval to i32
  call void @__asan_store1_noabort(i32 %254)
  store i8 0, ptr %uval, align 4
  %lun0p = getelementptr %struct.sym_hcb, ptr %3, i32 0, i32 38, i32 %i.2467, i32 3
  %255 = ptrtoint ptr %lun0p to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %lun0p, align 4
  %tobool255.not = icmp eq ptr %256, null
  br i1 %tobool255.not, label %for.body250.if.end258_crit_edge, label %if.then256

for.body250.if.end258_crit_edge:                  ; preds = %for.body250
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end258

if.then256:                                       ; preds = %for.body250
  call void @__sanitizer_cov_trace_pc() #11
  %to_clear = getelementptr inbounds %struct.sym_lcb, ptr %256, i32 0, i32 11
  %257 = ptrtoint ptr %to_clear to i32
  call void @__asan_store1_noabort(i32 %257)
  store i8 0, ptr %to_clear, align 4
  br label %if.end258

if.end258:                                        ; preds = %if.then256, %for.body250.if.end258_crit_edge
  %lunmp = getelementptr %struct.sym_hcb, ptr %3, i32 0, i32 38, i32 %i.2467, i32 4
  %258 = ptrtoint ptr %lunmp to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %lunmp, align 4
  %tobool259.not = icmp eq ptr %259, null
  br i1 %tobool259.not, label %if.end258.if.end275_crit_edge, label %if.end258.for.body264_crit_edge

if.end258.for.body264_crit_edge:                  ; preds = %if.end258
  br label %for.body264

if.end258.if.end275_crit_edge:                    ; preds = %if.end258
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end275

for.body264:                                      ; preds = %for.inc273.for.body264_crit_edge, %if.end258.for.body264_crit_edge
  %ln.0466 = phi i32 [ %inc, %for.inc273.for.body264_crit_edge ], [ 1, %if.end258.for.body264_crit_edge ]
  %260 = ptrtoint ptr %lunmp to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %lunmp, align 4
  %arrayidx266 = getelementptr ptr, ptr %261, i32 %ln.0466
  %262 = ptrtoint ptr %arrayidx266 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %arrayidx266, align 4
  %tobool267.not = icmp eq ptr %263, null
  br i1 %tobool267.not, label %for.body264.for.inc273_crit_edge, label %if.then268

for.body264.for.inc273_crit_edge:                 ; preds = %for.body264
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc273

if.then268:                                       ; preds = %for.body264
  call void @__sanitizer_cov_trace_pc() #11
  %to_clear271 = getelementptr inbounds %struct.sym_lcb, ptr %263, i32 0, i32 11
  %264 = ptrtoint ptr %to_clear271 to i32
  call void @__asan_store1_noabort(i32 %264)
  store i8 0, ptr %to_clear271, align 4
  br label %for.inc273

for.inc273:                                       ; preds = %if.then268, %for.body264.for.inc273_crit_edge
  %inc = add nuw nsw i32 %ln.0466, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.inc273.if.end275_crit_edge, label %for.inc273.for.body264_crit_edge

for.inc273.for.body264_crit_edge:                 ; preds = %for.inc273
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body264

for.inc273.if.end275_crit_edge:                   ; preds = %for.inc273
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end275

if.end275:                                        ; preds = %for.inc273.if.end275_crit_edge, %if.end258.if.end275_crit_edge
  %inc277 = add nuw nsw i32 %i.2467, 1
  %exitcond468.not = icmp eq i32 %inc277, 16
  br i1 %exitcond468.not, label %for.end278, label %if.end275.for.body250_crit_edge

if.end275.for.body250_crit_edge:                  ; preds = %if.end275
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body250

for.end278:                                       ; preds = %if.end275
  %init = getelementptr inbounds %struct.sym_hcb, ptr %3, i32 0, i32 54, i32 7
  %265 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %init, align 4
  %ram_ba = getelementptr inbounds %struct.sym_hcb, ptr %3, i32 0, i32 44
  %267 = ptrtoint ptr %ram_ba to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %ram_ba, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %268)
  %tobool279.not = icmp eq i32 %268, 0
  br i1 %tobool279.not, label %for.end278.if.end309_crit_edge, label %if.then280

for.end278.if.end309_crit_edge:                   ; preds = %for.end278
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end309

if.then280:                                       ; preds = %for.end278
  %verbose = getelementptr inbounds %struct.sym_hcb, ptr %3, i32 0, i32 87
  %269 = ptrtoint ptr %verbose to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %verbose, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %270)
  %cmp282 = icmp ugt i8 %270, 1
  br i1 %cmp282, label %do.end, label %if.then280.if.end287_crit_edge

if.then280.if.end287_crit_edge:                   ; preds = %if.then280
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end287

do.end:                                           ; preds = %if.then280
  call void @__sanitizer_cov_trace_pc() #11
  %inst_name = getelementptr inbounds %struct.sym_hcb, ptr %3, i32 0, i32 42, i32 1
  %call286 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %inst_name) #12
  br label %if.end287

if.end287:                                        ; preds = %do.end, %if.then280.if.end287_crit_edge
  %ramaddr = getelementptr inbounds %struct.sym_hcb, ptr %3, i32 0, i32 42, i32 5
  %271 = ptrtoint ptr %ramaddr to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %ramaddr, align 4
  %scripta0 = getelementptr inbounds %struct.sym_hcb, ptr %3, i32 0, i32 45
  %273 = ptrtoint ptr %scripta0 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %scripta0, align 4
  %scripta_sz = getelementptr inbounds %struct.sym_hcb, ptr %3, i32 0, i32 51
  %275 = ptrtoint ptr %scripta_sz to i32
  call void @__asan_load2_noabort(i32 %275)
  %276 = load i16, ptr %scripta_sz, align 4
  %conv289 = zext i16 %276 to i32
  tail call void @mmiocpy(ptr noundef %272, ptr noundef %274, i32 noundef %conv289) #9
  %277 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %features, align 4
  %and291 = and i32 %278, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and291)
  %tobool292.not = icmp eq i32 %and291, 0
  br i1 %tobool292.not, label %if.end287.if.end309_crit_edge, label %if.then293

if.end287.if.end309_crit_edge:                    ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end309

if.then293:                                       ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #11
  %279 = ptrtoint ptr %ramaddr to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %ramaddr, align 4
  %add.ptr296 = getelementptr i8, ptr %280, i32 4096
  %scriptb0 = getelementptr inbounds %struct.sym_hcb, ptr %3, i32 0, i32 46
  %281 = ptrtoint ptr %scriptb0 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %scriptb0, align 4
  %scriptb_sz = getelementptr inbounds %struct.sym_hcb, ptr %3, i32 0, i32 52
  %283 = ptrtoint ptr %scriptb_sz to i32
  call void @__asan_load2_noabort(i32 %283)
  %284 = load i16, ptr %scriptb_sz, align 2
  %conv297 = zext i16 %284 to i32
  tail call void @mmiocpy(ptr noundef %add.ptr296, ptr noundef %282, i32 noundef %conv297) #9
  %scr_ram_seg = getelementptr inbounds %struct.sym_hcb, ptr %3, i32 0, i32 14
  %285 = ptrtoint ptr %scr_ram_seg to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %scr_ram_seg, align 4
  %287 = ptrtoint ptr %ioaddr36 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %ioaddr36, align 4
  %add.ptr300 = getelementptr i8, ptr %288, i32 164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !473
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr300, i32 %286) #9, !srcloc !474
  %289 = ptrtoint ptr %ioaddr36 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %ioaddr36, align 4
  %add.ptr303 = getelementptr i8, ptr %290, i32 160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !473
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr303, i32 %286) #9, !srcloc !474
  %291 = ptrtoint ptr %ioaddr36 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %ioaddr36, align 4
  %add.ptr306 = getelementptr i8, ptr %292, i32 168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !473
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr306, i32 %286) #9, !srcloc !474
  %start64 = getelementptr inbounds %struct.sym_hcb, ptr %3, i32 0, i32 55, i32 19
  %293 = ptrtoint ptr %start64 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %start64, align 4
  br label %if.end309

if.end309:                                        ; preds = %if.then293, %if.end287.if.end309_crit_edge, %for.end278.if.end309_crit_edge
  %phys.0 = phi i32 [ %294, %if.then293 ], [ %266, %if.end287.if.end309_crit_edge ], [ %266, %for.end278.if.end309_crit_edge ]
  %istat_sem = getelementptr inbounds %struct.sym_hcb, ptr %3, i32 0, i32 95
  %295 = ptrtoint ptr %istat_sem to i32
  call void @__asan_store1_noabort(i32 %295)
  store i8 0, ptr %istat_sem, align 4
  %hcb_ba = getelementptr inbounds %struct.sym_hcb, ptr %3, i32 0, i32 13
  %296 = ptrtoint ptr %hcb_ba to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %hcb_ba, align 4
  %298 = ptrtoint ptr %ioaddr36 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %ioaddr36, align 4
  %add.ptr312 = getelementptr i8, ptr %299, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !473
  tail call void @arm_heavy_mb() #9
  %300 = tail call i32 @llvm.bswap.i32(i32 %297) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr312, i32 %300) #9, !srcloc !474
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !475
  tail call void @arm_heavy_mb() #9
  %301 = ptrtoint ptr %ioaddr36 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %ioaddr36, align 4
  %add.ptr319 = getelementptr i8, ptr %302, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !473
  tail call void @arm_heavy_mb() #9
  %303 = tail call i32 @llvm.bswap.i32(i32 %phys.0) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr319, i32 %303) #9, !srcloc !474
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reason)
  %cmp322.not = icmp eq i32 %reason, 0
  br i1 %cmp322.not, label %if.end309.if.end325_crit_edge, label %if.then324

if.end309.if.end325_crit_edge:                    ; preds = %if.end309
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end325

if.then324:                                       ; preds = %if.end309
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sym_xpt_async_bus_reset(ptr noundef %3) #9
  br label %if.end325

if.end325:                                        ; preds = %if.then324, %if.end309.if.end325_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sym_xpt_async_bus_reset(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sym_interrupt(ptr noundef %shost) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 53
  %0 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata.i, align 4
  %pdev1 = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 1
  %2 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev1, align 4
  %ioaddr = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 42, i32 4
  %4 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 20
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  %7 = and i8 %6, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.if.end24_crit_edge, label %if.then

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then:                                          ; preds = %entry
  %and4 = and i8 %6, 32
  %istat_sem = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 95
  %8 = ptrtoint ptr %istat_sem to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %istat_sem, align 4
  %or = or i8 %and4, %9
  %or6 = or i8 %or, 4
  %10 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ioaddr, align 4
  %add.ptr10 = getelementptr i8, ptr %11, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr10, i8 %or6) #9, !srcloc !464
  %12 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ioaddr, align 4
  %add.ptr13 = getelementptr i8, ptr %13, i32 20
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr13) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  %or17292 = or i8 %14, %6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sym_debug_flags to i32))
  %15 = load i32, ptr @sym_debug_flags, align 4
  %and19 = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.then.if.end_crit_edge, label %do.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %dqueueget.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 78
  %16 = ptrtoint ptr %dqueueget.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %dqueueget.i, align 4
  %conv.i = zext i16 %17 to i32
  %dqueue.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 79
  %18 = ptrtoint ptr %dqueue.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dqueue.i, align 4
  %arrayidx10.i = getelementptr i32, ptr %19, i32 %conv.i
  %20 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %arrayidx10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not11.i = icmp eq i32 %21, 0
  br i1 %tobool.not11.i, label %if.end.sym_wakeup_done.exit_crit_edge, label %if.end.lr.ph.i

if.end.sym_wakeup_done.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sym_wakeup_done.exit

if.end.lr.ph.i:                                   ; preds = %if.end
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #9
  %ccbh.i.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 88
  %inst_name.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 42, i32 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.end9.i.if.end.i_crit_edge, %if.end.lr.ph.i
  %23 = phi i32 [ %22, %if.end.lr.ph.i ], [ %48, %if.end9.i.if.end.i_crit_edge ]
  %arrayidx14.i = phi ptr [ %arrayidx10.i, %if.end.lr.ph.i ], [ %arrayidx.i, %if.end9.i.if.end.i_crit_edge ]
  %i.012.i = phi i32 [ %conv.i, %if.end.lr.ph.i ], [ %spec.store.select.i, %if.end9.i.if.end.i_crit_edge ]
  %24 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 0, ptr %arrayidx14.i, align 4
  %add.i = add i32 %i.012.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 899, i32 %add.i)
  %cmp.i = icmp sgt i32 %add.i, 899
  %spec.store.select.i = select i1 %cmp.i, i32 0, i32 %add.i
  %shr.i.i = lshr i32 %23, 10
  %and.i.i = and i32 %shr.i.i, 255
  %25 = ptrtoint ptr %ccbh.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ccbh.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %26, i32 %and.i.i
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %cp.05.i.i = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not6.i.i = icmp eq ptr %cp.05.i.i, null
  br i1 %tobool.not6.i.i, label %if.end.i.do.end.i_crit_edge, label %if.end.i.while.body.i.i_crit_edge

if.end.i.while.body.i.i_crit_edge:                ; preds = %if.end.i
  br label %while.body.i.i

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %if.end.i.while.body.i.i_crit_edge
  %cp.07.i.i = phi ptr [ %cp.0.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ %cp.05.i.i, %if.end.i.while.body.i.i_crit_edge ]
  %ccb_ba.i.i = getelementptr inbounds %struct.sym_ccb, ptr %cp.07.i.i, i32 0, i32 17
  %28 = ptrtoint ptr %ccb_ba.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ccb_ba.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %23)
  %cmp.i.i = icmp eq i32 %29, %23
  br i1 %cmp.i.i, label %lor.lhs.false.i.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %while.body.i.i
  %link_ccbh.i.i = getelementptr inbounds %struct.sym_ccb, ptr %cp.07.i.i, i32 0, i32 21
  %30 = ptrtoint ptr %link_ccbh.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %cp.0.i.i = load ptr, ptr %link_ccbh.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %cp.0.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.i.do.end.i_crit_edge, label %if.end.i.i.while.body.i.i_crit_edge

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

if.end.i.i.do.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

lor.lhs.false.i.i:                                ; preds = %while.body.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !476
  %cmd1.i.i = getelementptr inbounds %struct.sym_ccb, ptr %cp.07.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %cmd1.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cmd1.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %32, null
  br i1 %tobool2.not.i.i, label %lor.lhs.false.i.i.if.end9.i_crit_edge, label %if.end.i4.i

lor.lhs.false.i.i.if.end9.i_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i

if.end.i4.i:                                      ; preds = %lor.lhs.false.i.i
  %arrayidx.i2.i = getelementptr %struct.sym_ccbh, ptr %cp.07.i.i, i32 0, i32 3, i32 1
  %33 = ptrtoint ptr %arrayidx.i2.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.i2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %34)
  %cmp.i3.i = icmp eq i8 %34, -124
  br i1 %cmp.i3.i, label %if.end5.i.i, label %if.then4.i.i

if.then4.i.i:                                     ; preds = %if.end.i4.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.2, i32 noundef 5499) #13
  unreachable

if.end5.i.i:                                      ; preds = %if.end.i4.i
  %lastp.i.i = getelementptr inbounds %struct.sym_ccbh, ptr %cp.07.i.i, i32 0, i32 2
  %35 = ptrtoint ptr %lastp.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %lastp.i.i, align 4
  %goalp.i.i = getelementptr inbounds %struct.sym_ccb, ptr %cp.07.i.i, i32 0, i32 24
  %37 = ptrtoint ptr %goalp.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %goalp.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %38)
  %cmp9.not.i.i = icmp eq i32 %36, %38
  br i1 %cmp9.not.i.i, label %if.end5.i.i.if.end12.i.i_crit_edge, label %if.then11.i.i

if.end5.i.i.if.end12.i.i_crit_edge:               ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i.i

if.then11.i.i:                                    ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call fastcc i32 @sym_compute_residual(ptr noundef %1, ptr noundef nonnull %cp.07.i.i) #9
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %if.then11.i.i, %if.end5.i.i.if.end12.i.i_crit_edge
  %resid.0.i.i = phi i32 [ %call.i.i, %if.then11.i.i ], [ 0, %if.end5.i.i.if.end12.i.i_crit_edge ]
  %resid_len.i.i.i.i = getelementptr inbounds %struct.scsi_request, ptr %32, i32 0, i32 5
  %39 = ptrtoint ptr %resid_len.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %resid.0.i.i, ptr %resid_len.i.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.sym_ccbh, ptr %cp.07.i.i, i32 0, i32 3, i32 2
  %40 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.i.i.i, align 2
  %42 = and i8 %41, 127
  %and.i.i.i = zext i8 %42 to i32
  %result.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %32, i32 0, i32 24
  %43 = ptrtoint ptr %result.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %and.i.i.i, ptr %result.i.i.i, align 4
  tail call void @sym_free_ccb(ptr noundef %1, ptr noundef nonnull %cp.07.i.i) #9
  tail call void @sym_xpt_done(ptr noundef %1, ptr noundef nonnull %32) #9
  br label %if.end9.i

do.end.i:                                         ; preds = %if.end.i.i.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef %inst_name.i, i32 noundef %23) #12
  br label %if.end9.i

if.end9.i:                                        ; preds = %do.end.i, %if.end12.i.i, %lor.lhs.false.i.i.if.end9.i_crit_edge
  %44 = ptrtoint ptr %dqueue.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dqueue.i, align 4
  %arrayidx.i = getelementptr i32, ptr %45, i32 %spec.store.select.i
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %arrayidx.i, align 4
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #9
  %tobool.not.i = icmp eq i32 %47, 0
  br i1 %tobool.not.i, label %if.end9.i.sym_wakeup_done.exit_crit_edge, label %if.end9.i.if.end.i_crit_edge

if.end9.i.if.end.i_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end9.i.sym_wakeup_done.exit_crit_edge:         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sym_wakeup_done.exit

sym_wakeup_done.exit:                             ; preds = %if.end9.i.sym_wakeup_done.exit_crit_edge, %if.end.sym_wakeup_done.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ %conv.i, %if.end.sym_wakeup_done.exit_crit_edge ], [ %spec.store.select.i, %if.end9.i.sym_wakeup_done.exit_crit_edge ]
  %conv10.i = trunc i32 %i.0.lcssa.i to i16
  %49 = ptrtoint ptr %dqueueget.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv10.i, ptr %dqueueget.i, align 4
  br label %if.end24

if.end24:                                         ; preds = %sym_wakeup_done.exit, %entry.if.end24_crit_edge
  %istat.0 = phi i8 [ %or17292, %sym_wakeup_done.exit ], [ %6, %entry.if.end24_crit_edge ]
  %conv25 = zext i8 %istat.0 to i32
  %and26 = and i32 %conv25, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.then28, label %do.body33.preheader

do.body33.preheader:                              ; preds = %if.end24
  %error_state.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 43
  br label %do.body33

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %and30 = lshr i32 %conv25, 2
  %and30.lobit = and i32 %and30, 1
  br label %cleanup

do.body33:                                        ; preds = %do.cond81.do.body33_crit_edge, %do.body33.preheader
  %istatc.0 = phi i8 [ %59, %do.cond81.do.body33_crit_edge ], [ %istat.0, %do.body33.preheader ]
  %dstat.0 = phi i8 [ %dstat.1, %do.cond81.do.body33_crit_edge ], [ 0, %do.body33.preheader ]
  %sist.0 = phi i16 [ %sist.1, %do.cond81.do.body33_crit_edge ], [ 0, %do.body33.preheader ]
  %istat.1 = phi i8 [ %or66289, %do.cond81.do.body33_crit_edge ], [ %istat.0, %do.body33.preheader ]
  %conv34 = zext i8 %istatc.0 to i32
  %and35 = and i32 %conv34, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %do.body33.if.end46_crit_edge, label %if.then37

do.body33.if.end46_crit_edge:                     ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.then37:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ioaddr, align 4
  %add.ptr40 = getelementptr i8, ptr %51, i32 66
  %52 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr40) #9, !srcloc !467
  %53 = tail call i16 @llvm.bswap.i16(i16 %52) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !468
  %or44291 = or i16 %53, %sist.0
  br label %if.end46

if.end46:                                         ; preds = %if.then37, %do.body33.if.end46_crit_edge
  %sist.1 = phi i16 [ %or44291, %if.then37 ], [ %sist.0, %do.body33.if.end46_crit_edge ]
  %and48 = and i32 %conv34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.end46.if.end59_crit_edge, label %if.then50

if.end46.if.end59_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.then50:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ioaddr, align 4
  %add.ptr53 = getelementptr i8, ptr %55, i32 12
  %56 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr53) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  %or57290 = or i8 %56, %dstat.0
  br label %if.end59

if.end59:                                         ; preds = %if.then50, %if.end46.if.end59_crit_edge
  %dstat.1 = phi i8 [ %or57290, %if.then50 ], [ %dstat.0, %if.end46.if.end59_crit_edge ]
  %57 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ioaddr, align 4
  %add.ptr62 = getelementptr i8, ptr %58, i32 20
  %59 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr62) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  %or66289 = or i8 %59, %istat.1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %sist.1)
  %cmp = icmp eq i16 %sist.1, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %dstat.1)
  %cmp71 = icmp eq i8 %dstat.1, -1
  %spec.select = select i1 %cmp, i1 %cmp71, i1 false
  br i1 %spec.select, label %if.then75, label %if.end59.do.cond81_crit_edge, !prof !477

if.end59.do.cond81_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond81

if.then75:                                        ; preds = %if.end59
  %60 = ptrtoint ptr %error_state.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %error_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %61)
  %cmp.i294.not = icmp eq i32 %61, 1
  br i1 %cmp.i294.not, label %if.then75.do.cond81_crit_edge, label %if.then75.cleanup_crit_edge

if.then75.cleanup_crit_edge:                      ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then75.do.cond81_crit_edge:                    ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond81

do.cond81:                                        ; preds = %if.then75.do.cond81_crit_edge, %if.end59.do.cond81_crit_edge
  %62 = and i8 %59, 3
  %tobool84.not = icmp eq i8 %62, 0
  br i1 %tobool84.not, label %do.end85, label %do.cond81.do.body33_crit_edge

do.cond81.do.body33_crit_edge:                    ; preds = %do.cond81
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body33

do.end85:                                         ; preds = %do.cond81
  %conv68.le = zext i16 %sist.1 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sym_debug_flags to i32))
  %63 = load i32, ptr @sym_debug_flags, align 4
  %and86 = and i32 %63, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %do.end85.if.end109_crit_edge, label %do.end91

do.end85.if.end109_crit_edge:                     ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end109

do.end91:                                         ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ioaddr, align 4
  %add.ptr95 = getelementptr i8, ptr %65, i32 92
  %66 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr95) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  %conv97 = zext i8 %66 to i32
  %conv98 = zext i8 %dstat.1 to i32
  %67 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ioaddr, align 4
  %add.ptr102 = getelementptr i8, ptr %68, i32 44
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr102) #9, !srcloc !469
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !470
  %71 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ioaddr, align 4
  %add.ptr106 = getelementptr i8, ptr %72, i32 36
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr106) #9, !srcloc !469
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !470
  %call108 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %conv97, i32 noundef %conv98, i32 noundef %conv68.le, i32 noundef %70, i32 noundef %74) #12
  br label %if.end109

if.end109:                                        ; preds = %do.end91, %do.end85.if.end109_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !478
  %and111 = and i32 %conv68.le, 5902
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool112.not = icmp eq i32 %and111, 0
  br i1 %tobool112.not, label %land.lhs.true, label %if.end109.if.end156_crit_edge

if.end109.if.end156_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end156

land.lhs.true:                                    ; preds = %if.end109
  %conv113 = zext i8 %dstat.1 to i32
  %and114 = and i32 %conv113, 113
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  br i1 %tobool115.not, label %if.then116, label %land.lhs.true.if.end156_crit_edge

land.lhs.true.if.end156_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end156

if.then116:                                       ; preds = %land.lhs.true
  %and118 = and i32 %conv68.le, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118)
  %tobool119.not = icmp eq i32 %and118, 0
  br i1 %tobool119.not, label %if.else, label %if.then120

if.then120:                                       ; preds = %if.then116
  %75 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ioaddr, align 4
  %add.ptr.i = getelementptr i8, ptr %76, i32 93
  %77 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  %78 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ioaddr, align 4
  %add.ptr3.i = getelementptr i8, ptr %79, i32 44
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #9, !srcloc !469
  %81 = tail call i32 @llvm.bswap.i32(i32 %80) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !470
  %82 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ioaddr, align 4
  %add.ptr7.i = getelementptr i8, ptr %83, i32 36
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #9, !srcloc !469
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !470
  %86 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ioaddr, align 4
  %add.ptr11.i = getelementptr i8, ptr %87, i32 16
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #9, !srcloc !469
  %89 = tail call i32 @llvm.bswap.i32(i32 %88) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !470
  %90 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ioaddr, align 4
  %add.ptr15.i = getelementptr i8, ptr %91, i32 11
  %92 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr15.i) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  %shr.i = lshr i32 %85, 24
  %and.i = and i32 %shr.i, 7
  %shr.i.i296 = lshr i32 %89, 10
  %and.i.i297 = and i32 %shr.i.i296, 255
  %ccbh.i.i298 = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 88
  %93 = ptrtoint ptr %ccbh.i.i298 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ccbh.i.i298, align 4
  %arrayidx.i.i299 = getelementptr ptr, ptr %94, i32 %and.i.i297
  %95 = ptrtoint ptr %arrayidx.i.i299 to i32
  call void @__asan_load4_noabort(i32 %95)
  %cp.05.i.i300 = load ptr, ptr %arrayidx.i.i299, align 4
  %tobool.not6.i.i301 = icmp eq ptr %cp.05.i.i300, null
  br i1 %tobool.not6.i.i301, label %if.then120.sym_ccb_from_dsa.exit.i_crit_edge, label %if.then120.while.body.i.i305_crit_edge

if.then120.while.body.i.i305_crit_edge:           ; preds = %if.then120
  br label %while.body.i.i305

if.then120.sym_ccb_from_dsa.exit.i_crit_edge:     ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #11
  br label %sym_ccb_from_dsa.exit.i

while.body.i.i305:                                ; preds = %if.end.i.i309.while.body.i.i305_crit_edge, %if.then120.while.body.i.i305_crit_edge
  %cp.07.i.i302 = phi ptr [ %cp.0.i.i307, %if.end.i.i309.while.body.i.i305_crit_edge ], [ %cp.05.i.i300, %if.then120.while.body.i.i305_crit_edge ]
  %ccb_ba.i.i303 = getelementptr inbounds %struct.sym_ccb, ptr %cp.07.i.i302, i32 0, i32 17
  %96 = ptrtoint ptr %ccb_ba.i.i303 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %ccb_ba.i.i303, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %97, i32 %89)
  %cmp.i.i304 = icmp eq i32 %97, %89
  br i1 %cmp.i.i304, label %while.body.i.i305.sym_ccb_from_dsa.exit.i_crit_edge, label %if.end.i.i309

while.body.i.i305.sym_ccb_from_dsa.exit.i_crit_edge: ; preds = %while.body.i.i305
  call void @__sanitizer_cov_trace_pc() #11
  br label %sym_ccb_from_dsa.exit.i

if.end.i.i309:                                    ; preds = %while.body.i.i305
  %link_ccbh.i.i306 = getelementptr inbounds %struct.sym_ccb, ptr %cp.07.i.i302, i32 0, i32 21
  %98 = ptrtoint ptr %link_ccbh.i.i306 to i32
  call void @__asan_load4_noabort(i32 %98)
  %cp.0.i.i307 = load ptr, ptr %link_ccbh.i.i306, align 4
  %tobool.not.i.i308 = icmp eq ptr %cp.0.i.i307, null
  br i1 %tobool.not.i.i308, label %if.end.i.i309.sym_ccb_from_dsa.exit.i_crit_edge, label %if.end.i.i309.while.body.i.i305_crit_edge

if.end.i.i309.while.body.i.i305_crit_edge:        ; preds = %if.end.i.i309
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i305

if.end.i.i309.sym_ccb_from_dsa.exit.i_crit_edge:  ; preds = %if.end.i.i309
  call void @__sanitizer_cov_trace_pc() #11
  br label %sym_ccb_from_dsa.exit.i

sym_ccb_from_dsa.exit.i:                          ; preds = %if.end.i.i309.sym_ccb_from_dsa.exit.i_crit_edge, %while.body.i.i305.sym_ccb_from_dsa.exit.i_crit_edge, %if.then120.sym_ccb_from_dsa.exit.i_crit_edge
  %cp.0.lcssa.i.i = phi ptr [ null, %if.then120.sym_ccb_from_dsa.exit.i_crit_edge ], [ %cp.07.i.i302, %while.body.i.i305.sym_ccb_from_dsa.exit.i_crit_edge ], [ null, %if.end.i.i309.sym_ccb_from_dsa.exit.i_crit_edge ]
  %call19.i = tail call i32 @__printk_ratelimit(ptr noundef nonnull @__func__.sym_int_par) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool.not.i310 = icmp eq i32 %call19.i, 0
  br i1 %tobool.not.i310, label %sym_ccb_from_dsa.exit.i.if.end.i313_crit_edge, label %do.end.i312

sym_ccb_from_dsa.exit.i.if.end.i313_crit_edge:    ; preds = %sym_ccb_from_dsa.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i313

do.end.i312:                                      ; preds = %sym_ccb_from_dsa.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %inst_name.i311 = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 42, i32 1
  %conv21.i = zext i8 %77 to i32
  %conv22.i = zext i8 %92 to i32
  %call23.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, ptr noundef %inst_name.i311, i32 noundef %conv21.i, i32 noundef %85, i32 noundef %conv22.i) #12
  br label %if.end.i313

if.end.i313:                                      ; preds = %do.end.i312, %sym_ccb_from_dsa.exit.i.if.end.i313_crit_edge
  %99 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ioaddr, align 4
  %add.ptr26.i = getelementptr i8, ptr %100, i32 1
  %101 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr26.i) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  %102 = and i8 %101, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool30.not.i = icmp eq i8 %102, 0
  br i1 %tobool30.not.i, label %if.then31.i, label %if.end32.i

if.then31.i:                                      ; preds = %if.end.i313
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @sym_recover_scsi_int(ptr noundef %1, i8 noundef zeroext -122) #9
  br label %cleanup

if.end32.i:                                       ; preds = %if.end.i313
  %tobool33.not.i = icmp eq ptr %cp.0.lcssa.i.i, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741823, i32 %85)
  %tobool38.not.i = icmp ugt i32 %85, 1073741823
  %or.cond.i = select i1 %tobool33.not.i, i1 true, i1 %tobool38.not.i
  %103 = and i32 %85, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool40.not.i = icmp eq i32 %103, 0
  %or.cond162.i = select i1 %or.cond.i, i1 true, i1 %tobool40.not.i
  %104 = and i8 %92, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool44.not.i = icmp eq i8 %104, 0
  %or.cond163.i = select i1 %or.cond162.i, i1 true, i1 %tobool44.not.i
  br i1 %or.cond163.i, label %if.end32.i.reset_all.i_crit_edge, label %if.end46.i

if.end32.i.reset_all.i_crit_edge:                 ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %reset_all.i

if.end46.i:                                       ; preds = %if.end32.i
  %105 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ioaddr, align 4
  %add.ptr49.i = getelementptr i8, ptr %106, i32 95
  %107 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr49.i) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  %108 = or i8 %107, 32
  %109 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ioaddr, align 4
  %add.ptr55.i = getelementptr i8, ptr %110, i32 95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr55.i, i8 %108) #9, !srcloc !464
  %xerr_status.i = getelementptr inbounds %struct.sym_ccb, ptr %cp.0.lcssa.i.i, i32 0, i32 9
  %111 = ptrtoint ptr %xerr_status.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %xerr_status.i, align 1
  %113 = or i8 %112, 4
  store i8 %113, ptr %xerr_status.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and.i)
  %cmp.i314 = icmp eq i32 %and.i, 7
  %conv60.i = select i1 %cmp.i314, i8 9, i8 5
  %msgout.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 81
  %114 = ptrtoint ptr %msgout.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %conv60.i, ptr %msgout.i, align 4
  %115 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %115, ptr @__sancov_gen_cov_switch_values.257)
  switch i32 %and.i, label %if.else104.i [
    i32 1, label %if.end46.i.if.then66.i_crit_edge
    i32 5, label %if.end46.i.if.then66.i_crit_edge366
  ]

if.end46.i.if.then66.i_crit_edge366:              ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then66.i

if.end46.i.if.then66.i_crit_edge:                 ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then66.i

if.then66.i:                                      ; preds = %if.end46.i.if.then66.i_crit_edge, %if.end46.i.if.then66.i_crit_edge366
  %pm_handle.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 55, i32 20
  %116 = ptrtoint ptr %pm_handle.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %pm_handle.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %117)
  %cmp67.i = icmp eq i32 %81, %117
  br i1 %cmp67.i, label %do.body71.i, label %if.else.i

do.body71.i:                                      ; preds = %if.then66.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !479
  tail call void @arm_heavy_mb() #9
  %118 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %ioaddr, align 4
  %add.ptr76.i = getelementptr i8, ptr %119, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !473
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr76.i, i32 %80) #9, !srcloc !474
  br label %cleanup

if.else.i:                                        ; preds = %if.then66.i
  %120 = and i16 %sist.1, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %120)
  %tobool81.not.i = icmp eq i16 %120, 0
  br i1 %tobool81.not.i, label %do.body84.i, label %if.then82.i

if.then82.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @sym_int_ma(ptr noundef %1) #9
  br label %cleanup

do.body84.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %features.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 60
  %121 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %features.i, align 4
  %and85.i = and i32 %122, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85.i)
  %tobool86.not.i = icmp eq i32 %and85.i, 0
  %np.cp.0.lcssa.i.i = select i1 %tobool86.not.i, ptr %1, ptr %cp.0.lcssa.i.i
  %lastp89.i = getelementptr inbounds %struct.sym_ccbh, ptr %np.cp.0.lcssa.i.i, i32 0, i32 2
  %123 = ptrtoint ptr %lastp89.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %80, ptr %lastp89.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !480
  tail call void @arm_heavy_mb() #9
  %dispatch.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 54, i32 6
  %124 = ptrtoint ptr %dispatch.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %dispatch.i, align 4
  %126 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %ioaddr, align 4
  %add.ptr99.i = getelementptr i8, ptr %127, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !473
  tail call void @arm_heavy_mb() #9
  %128 = tail call i32 @llvm.bswap.i32(i32 %125) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr99.i, i32 %128) #9, !srcloc !474
  br label %cleanup

if.else104.i:                                     ; preds = %if.end46.i
  br i1 %cmp.i314, label %if.else104.i.reset_all.i_crit_edge, label %do.body110.i

if.else104.i.reset_all.i_crit_edge:               ; preds = %if.else104.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %reset_all.i

do.body110.i:                                     ; preds = %if.else104.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !481
  tail call void @arm_heavy_mb() #9
  %dispatch114.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 54, i32 6
  %129 = ptrtoint ptr %dispatch114.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %dispatch114.i, align 4
  %131 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %ioaddr, align 4
  %add.ptr117.i = getelementptr i8, ptr %132, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !473
  tail call void @arm_heavy_mb() #9
  %133 = tail call i32 @llvm.bswap.i32(i32 %130) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr117.i, i32 %133) #9, !srcloc !474
  br label %cleanup

reset_all.i:                                      ; preds = %if.else104.i.reset_all.i_crit_edge, %if.end32.i.reset_all.i_crit_edge
  %call.i.i315 = tail call i32 @sym_reset_scsi_bus(ptr noundef %1, i32 noundef 1) #9
  br label %cleanup

if.else:                                          ; preds = %if.then116
  %and122 = and i32 %conv68.le, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122)
  %tobool123.not = icmp eq i32 %and122, 0
  br i1 %tobool123.not, label %if.else125, label %if.then124

if.then124:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @sym_int_ma(ptr noundef %1)
  br label %cleanup

if.else125:                                       ; preds = %if.else
  %and127 = and i32 %conv113, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127)
  %tobool128.not = icmp eq i32 %and127, 0
  br i1 %tobool128.not, label %if.else130, label %if.then129

if.then129:                                       ; preds = %if.else125
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @sym_int_sir(ptr noundef %1)
  br label %cleanup

if.else130:                                       ; preds = %if.else125
  %and132 = and i32 %conv113, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and132)
  %tobool133.not = icmp eq i32 %and132, 0
  br i1 %tobool133.not, label %if.else130.do.end214_crit_edge, label %do.body136

if.else130.do.end214_crit_edge:                   ; preds = %if.else130
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end214

do.body136:                                       ; preds = %if.else130
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !482
  tail call void @arm_heavy_mb() #9
  %134 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %ioaddr, align 4
  %add.ptr141 = getelementptr i8, ptr %135, i32 59
  %136 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr141) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  %137 = or i8 %136, 5
  %138 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %ioaddr, align 4
  %add.ptr148 = getelementptr i8, ptr %139, i32 59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr148, i8 %137) #9, !srcloc !464
  br label %cleanup

if.end156:                                        ; preds = %land.lhs.true.if.end156_crit_edge, %if.end109.if.end156_crit_edge
  %and158 = and i32 %conv68.le, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and158)
  %tobool159.not = icmp eq i32 %and158, 0
  br i1 %tobool159.not, label %if.end167, label %do.end163

do.end163:                                        ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #11
  %inst_name = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 42, i32 1
  %call166 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %inst_name) #12
  tail call void @sym_start_up(ptr noundef %shost, i32 noundef 1)
  br label %cleanup

if.end167:                                        ; preds = %if.end156
  %rv_ctest3 = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 31
  %140 = ptrtoint ptr %rv_ctest3 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %rv_ctest3, align 4
  %142 = or i8 %141, 4
  %143 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %ioaddr, align 4
  %add.ptr173 = getelementptr i8, ptr %144, i32 27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr173, i8 %142) #9, !srcloc !464
  %145 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %ioaddr, align 4
  %add.ptr176 = getelementptr i8, ptr %146, i32 79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr176, i8 -126) #9, !srcloc !464
  %and178 = and i32 %conv68.le, 776
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and178)
  %tobool179.not = icmp eq i32 %and178, 0
  %147 = and i8 %dstat.1, 113
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %147)
  %tobool183.not = icmp eq i8 %147, 0
  %or.cond = select i1 %tobool179.not, i1 %tobool183.not, i1 false
  br i1 %or.cond, label %if.then184, label %if.then210

if.then184:                                       ; preds = %if.end167
  %and186 = and i32 %conv68.le, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and186)
  %tobool187.not = icmp eq i32 %and186, 0
  br i1 %tobool187.not, label %if.else189, label %if.then188

if.then188:                                       ; preds = %if.then184
  %148 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %hostdata.i, align 8
  %ioaddr.i316 = getelementptr inbounds %struct.sym_hcb, ptr %149, i32 0, i32 42, i32 4
  %150 = ptrtoint ptr %ioaddr.i316 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %ioaddr.i316, align 4
  %add.ptr.i317 = getelementptr i8, ptr %151, i32 82
  %152 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i317) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  %153 = and i8 %152, -64
  %scsi_mode4.i = getelementptr inbounds %struct.sym_hcb, ptr %149, i32 0, i32 86
  %154 = ptrtoint ptr %scsi_mode4.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %scsi_mode4.i, align 1
  %156 = zext i8 %155 to i64
  call void @__sanitizer_cov_trace_switch(i64 %156, ptr @__sancov_gen_cov_switch_values.258)
  switch i8 %155, label %sw.epilog.i.i [
    i8 64, label %if.then188.sym_scsi_bus_mode.exit.i_crit_edge
    i8 -128, label %sw.bb1.i.i
    i8 -64, label %sw.bb2.i.i
  ]

if.then188.sym_scsi_bus_mode.exit.i_crit_edge:    ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #11
  br label %sym_scsi_bus_mode.exit.i

sw.bb1.i.i:                                       ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #11
  br label %sym_scsi_bus_mode.exit.i

sw.bb2.i.i:                                       ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #11
  br label %sym_scsi_bus_mode.exit.i

sw.epilog.i.i:                                    ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #11
  br label %sym_scsi_bus_mode.exit.i

sym_scsi_bus_mode.exit.i:                         ; preds = %sw.epilog.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %if.then188.sym_scsi_bus_mode.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ @.str.134, %sw.epilog.i.i ], [ @.str.133, %sw.bb2.i.i ], [ @.str.132, %sw.bb1.i.i ], [ @.str.131, %if.then188.sym_scsi_bus_mode.exit.i_crit_edge ]
  %157 = zext i8 %153 to i64
  call void @__sanitizer_cov_trace_switch(i64 %157, ptr @__sancov_gen_cov_switch_values.259)
  switch i8 %153, label %sw.epilog.i15.i [
    i8 64, label %sym_scsi_bus_mode.exit.i.sym_int_sbmc.exit_crit_edge
    i8 -128, label %sw.bb1.i13.i
    i8 -64, label %sw.bb2.i14.i
  ]

sym_scsi_bus_mode.exit.i.sym_int_sbmc.exit_crit_edge: ; preds = %sym_scsi_bus_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sym_int_sbmc.exit

sw.bb1.i13.i:                                     ; preds = %sym_scsi_bus_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sym_int_sbmc.exit

sw.bb2.i14.i:                                     ; preds = %sym_scsi_bus_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sym_int_sbmc.exit

sw.epilog.i15.i:                                  ; preds = %sym_scsi_bus_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sym_int_sbmc.exit

sym_int_sbmc.exit:                                ; preds = %sw.epilog.i15.i, %sw.bb2.i14.i, %sw.bb1.i13.i, %sym_scsi_bus_mode.exit.i.sym_int_sbmc.exit_crit_edge
  %retval.0.i16.i = phi ptr [ @.str.134, %sw.epilog.i15.i ], [ @.str.133, %sw.bb2.i14.i ], [ @.str.132, %sw.bb1.i13.i ], [ @.str.131, %sym_scsi_bus_mode.exit.i.sym_int_sbmc.exit_crit_edge ]
  %inst_name.i318 = getelementptr inbounds %struct.sym_hcb, ptr %149, i32 0, i32 42, i32 1
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129, ptr noundef %inst_name.i318, ptr noundef nonnull %retval.0.i.i, ptr noundef nonnull %retval.0.i16.i) #12
  tail call void @sym_start_up(ptr noundef %shost, i32 noundef 2) #9
  br label %cleanup

if.else189:                                       ; preds = %if.then184
  %and191 = and i32 %conv68.le, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and191)
  %tobool192.not = icmp eq i32 %and191, 0
  br i1 %tobool192.not, label %if.else194, label %if.then193

if.then193:                                       ; preds = %if.else189
  %158 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %ioaddr, align 4
  %add.ptr.i320 = getelementptr i8, ptr %159, i32 44
  %160 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i320) #9, !srcloc !469
  %161 = tail call i32 @llvm.bswap.i32(i32 %160) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !470
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sym_debug_flags to i32))
  %162 = load i32, ptr @sym_debug_flags, align 4
  %and.i321 = and i32 %162, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i321)
  %tobool.not.i322 = icmp eq i32 %and.i321, 0
  br i1 %tobool.not.i322, label %if.then193.if.end.i326_crit_edge, label %do.end.i323

if.then193.if.end.i326_crit_edge:                 ; preds = %if.then193
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i326

do.end.i323:                                      ; preds = %if.then193
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.135) #12
  br label %if.end.i326

if.end.i326:                                      ; preds = %do.end.i323, %if.then193.if.end.i326_crit_edge
  %wf_sel_done.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 54, i32 4
  %163 = ptrtoint ptr %wf_sel_done.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %wf_sel_done.i, align 4
  %add.i324 = add i32 %164, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %161, i32 %add.i324)
  %cmp.i325 = icmp eq i32 %161, %add.i324
  br i1 %cmp.i325, label %if.then2.i, label %if.else.i328

if.then2.i:                                       ; preds = %if.end.i326
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @sym_recover_scsi_int(ptr noundef %1, i8 noundef zeroext -123) #9
  br label %cleanup

if.else.i328:                                     ; preds = %if.end.i326
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i327 = tail call i32 @sym_reset_scsi_bus(ptr noundef %1, i32 noundef 1) #9
  br label %cleanup

if.else194:                                       ; preds = %if.else189
  %and196 = and i32 %conv68.le, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and196)
  %tobool197.not = icmp eq i32 %and196, 0
  br i1 %tobool197.not, label %if.else194.do.end214_crit_edge, label %if.then198

if.else194.do.end214_crit_edge:                   ; preds = %if.else194
  call void @__sanitizer_cov_trace_pc() #11
  %.pre = zext i8 %dstat.1 to i32
  br label %do.end214

if.then198:                                       ; preds = %if.else194
  call void @__sanitizer_cov_trace_pc() #11
  %inst_name.i329 = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 42, i32 1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef %inst_name.i329) #12
  tail call fastcc void @sym_recover_scsi_int(ptr noundef %1, i8 noundef zeroext -122) #9
  br label %cleanup

if.then210:                                       ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @sym_log_hard_error(ptr noundef %shost, i16 noundef zeroext %sist.1, i8 noundef zeroext %dstat.1)
  %call.i330 = tail call i32 @sym_reset_scsi_bus(ptr noundef %1, i32 noundef 1) #9
  br label %cleanup

do.end214:                                        ; preds = %if.else194.do.end214_crit_edge, %if.else130.do.end214_crit_edge
  %conv220.pre-phi = phi i32 [ %.pre, %if.else194.do.end214_crit_edge ], [ %conv113, %if.else130.do.end214_crit_edge ]
  %inst_name217 = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 42, i32 1
  %conv219 = zext i8 %or66289 to i32
  %call222 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %inst_name217, i32 noundef %conv219, i32 noundef %conv220.pre-phi, i32 noundef %conv68.le) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end214, %if.then210, %if.then198, %if.else.i328, %if.then2.i, %sym_int_sbmc.exit, %do.end163, %do.body136, %if.then129, %if.then124, %reset_all.i, %do.body110.i, %do.body84.i, %if.then82.i, %do.body71.i, %if.then31.i, %if.then75.cleanup_crit_edge, %if.then28
  %retval.0 = phi i32 [ 1, %do.end163 ], [ 1, %if.then210 ], [ 0, %do.end214 ], [ %and30.lobit, %if.then28 ], [ 1, %if.then124 ], [ 1, %do.body136 ], [ 1, %if.then129 ], [ 1, %if.then198 ], [ 1, %sym_int_sbmc.exit ], [ 1, %if.then31.i ], [ 1, %do.body71.i ], [ 1, %if.then82.i ], [ 1, %do.body84.i ], [ 1, %do.body110.i ], [ 1, %reset_all.i ], [ 1, %if.then2.i ], [ 1, %if.else.i328 ], [ 0, %if.then75.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sym_int_ma(ptr noundef %np) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 42, i32 4
  %0 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 44
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !469
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !470
  %4 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 36
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #9, !srcloc !469
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !470
  %8 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ioaddr, align 4
  %add.ptr7 = getelementptr i8, ptr %9, i32 16
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #9, !srcloc !469
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !470
  %shr = lshr i32 %7, 24
  %and = and i32 %7, 16777215
  %shr.i = lshr i32 %11, 10
  %and.i = and i32 %shr.i, 255
  %ccbh.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 88
  %12 = ptrtoint ptr %ccbh.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ccbh.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %13, i32 %and.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %cp.05.i = load ptr, ptr %arrayidx.i, align 4
  %tobool.not6.i = icmp eq ptr %cp.05.i, null
  br i1 %tobool.not6.i, label %entry.sym_ccb_from_dsa.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.sym_ccb_from_dsa.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sym_ccb_from_dsa.exit

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %cp.07.i = phi ptr [ %cp.0.i, %if.end.i.while.body.i_crit_edge ], [ %cp.05.i, %entry.while.body.i_crit_edge ]
  %ccb_ba.i = getelementptr inbounds %struct.sym_ccb, ptr %cp.07.i, i32 0, i32 17
  %15 = ptrtoint ptr %ccb_ba.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ccb_ba.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %11)
  %cmp.i = icmp eq i32 %16, %11
  br i1 %cmp.i, label %while.body.i.sym_ccb_from_dsa.exit_crit_edge, label %if.end.i

while.body.i.sym_ccb_from_dsa.exit_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sym_ccb_from_dsa.exit

if.end.i:                                         ; preds = %while.body.i
  %link_ccbh.i = getelementptr inbounds %struct.sym_ccb, ptr %cp.07.i, i32 0, i32 21
  %17 = ptrtoint ptr %link_ccbh.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %cp.0.i = load ptr, ptr %link_ccbh.i, align 4
  %tobool.not.i = icmp eq ptr %cp.0.i, null
  br i1 %tobool.not.i, label %if.end.i.sym_ccb_from_dsa.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.end.i.sym_ccb_from_dsa.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sym_ccb_from_dsa.exit

sym_ccb_from_dsa.exit:                            ; preds = %if.end.i.sym_ccb_from_dsa.exit_crit_edge, %while.body.i.sym_ccb_from_dsa.exit_crit_edge, %entry.sym_ccb_from_dsa.exit_crit_edge
  %cp.0.lcssa.i = phi ptr [ null, %entry.sym_ccb_from_dsa.exit_crit_edge ], [ null, %if.end.i.sym_ccb_from_dsa.exit_crit_edge ], [ %cp.07.i, %while.body.i.sym_ccb_from_dsa.exit_crit_edge ]
  %and11 = and i32 %shr, 7
  %18 = zext i32 %and11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.260)
  switch i32 %and11, label %if.then [
    i32 1, label %sym_ccb_from_dsa.exit.if.end97_crit_edge
    i32 5, label %sym_ccb_from_dsa.exit.if.end97_crit_edge622
  ]

sym_ccb_from_dsa.exit.if.end97_crit_edge622:      ; preds = %sym_ccb_from_dsa.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end97

sym_ccb_from_dsa.exit.if.end97_crit_edge:         ; preds = %sym_ccb_from_dsa.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end97

if.then:                                          ; preds = %sym_ccb_from_dsa.exit
  %features = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 60
  %19 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %features, align 4
  %and17 = and i32 %20, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool.not = icmp eq i32 %and17, 0
  %21 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ioaddr, align 4
  br i1 %tobool.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr21 = getelementptr i8, ptr %22, i32 240
  %23 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr21) #9, !srcloc !467
  %24 = tail call i16 @llvm.bswap.i16(i16 %23) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !468
  %conv23 = zext i16 %24 to i32
  br label %if.end39

if.else:                                          ; preds = %if.then
  %add.ptr26 = getelementptr i8, ptr %22, i32 32
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #9, !srcloc !469
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !470
  %and28 = and i32 %26, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.else35, label %if.then30

if.then30:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %shr31 = lshr i32 %26, 8
  %and32 = and i32 %shr31, 768
  %and33 = and i32 %26, 255
  %or = sub i32 %and33, %7
  %sub = add i32 %or, %and32
  %and34 = and i32 %sub, 1023
  br label %if.end39

if.else35:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %sub37 = sub i32 %26, %7
  %and38 = and i32 %sub37, 127
  br label %if.end39

if.end39:                                         ; preds = %if.else35, %if.then30, %if.then18
  %delta.1 = phi i32 [ %conv23, %if.then18 ], [ %and34, %if.then30 ], [ %and38, %if.else35 ]
  %add = add nuw nsw i32 %delta.1, %and
  %27 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ioaddr, align 4
  %add.ptr42 = getelementptr i8, ptr %28, i32 13
  %29 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr42) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  %conv44 = zext i8 %29 to i32
  %and45 = lshr i32 %conv44, 5
  %and45.lobit = and i32 %and45, 1
  %spec.select = add nuw nsw i32 %add, %and45.lobit
  %30 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %features, align 4
  %and50 = and i32 %31, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  %and54 = and i32 %conv44, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp ne i32 %and54, 0
  %or.cond = select i1 %tobool51.not, i1 %tobool55.not, i1 false
  %inc57 = zext i1 %or.cond to i32
  %rest.1 = add nuw nsw i32 %spec.select, %inc57
  %tobool60.not = icmp eq ptr %cp.0.lcssa.i, null
  br i1 %tobool60.not, label %if.end39.if.end87_crit_edge, label %land.lhs.true61

if.end39.if.end87_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

land.lhs.true61:                                  ; preds = %if.end39
  %sel_scntl3 = getelementptr inbounds %struct.sym_dsb, ptr %cp.0.lcssa.i, i32 0, i32 3, i32 3
  %32 = ptrtoint ptr %sel_scntl3 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %sel_scntl3, align 1
  %34 = and i8 %33, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool64.not = icmp eq i8 %34, 0
  br i1 %tobool64.not, label %land.lhs.true61.if.end87_crit_edge, label %if.then65

land.lhs.true61.if.end87_crit_edge:               ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

if.then65:                                        ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ioaddr, align 4
  %add.ptr68 = getelementptr i8, ptr %36, i32 15
  %37 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr68) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  %conv70 = zext i8 %37 to i32
  %and71 = lshr i32 %conv70, 5
  %and71.lobit = and i32 %and71, 1
  %spec.select612 = add nuw nsw i32 %and71.lobit, %rest.1
  %38 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %features, align 4
  %and77 = and i32 %39, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  %and81 = and i32 %conv70, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp ne i32 %and81, 0
  %or.cond613 = select i1 %tobool78.not, i1 %tobool82.not, i1 false
  %inc84 = zext i1 %or.cond613 to i32
  %spec.select616 = add nuw nsw i32 %spec.select612, %inc84
  br label %if.end87

if.end87:                                         ; preds = %if.then65, %land.lhs.true61.if.end87_crit_edge, %if.end39.if.end87_crit_edge
  %rest.3 = phi i32 [ %rest.1, %land.lhs.true61.if.end87_crit_edge ], [ %rest.1, %if.end39.if.end87_crit_edge ], [ %spec.select616, %if.then65 ]
  %rv_ctest3 = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 31
  %40 = ptrtoint ptr %rv_ctest3 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %rv_ctest3, align 4
  %42 = or i8 %41, 4
  %43 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ioaddr, align 4
  %add.ptr93 = getelementptr i8, ptr %44, i32 27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr93, i8 %42) #9, !srcloc !464
  %45 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ioaddr, align 4
  %add.ptr96 = getelementptr i8, ptr %46, i32 79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr96, i8 -126) #9, !srcloc !464
  br label %if.end97

if.end97:                                         ; preds = %if.end87, %sym_ccb_from_dsa.exit.if.end97_crit_edge, %sym_ccb_from_dsa.exit.if.end97_crit_edge622
  %delta.2 = phi i32 [ %delta.1, %if.end87 ], [ 0, %sym_ccb_from_dsa.exit.if.end97_crit_edge ], [ 0, %sym_ccb_from_dsa.exit.if.end97_crit_edge622 ]
  %rest.4 = phi i32 [ %rest.3, %if.end87 ], [ %and, %sym_ccb_from_dsa.exit.if.end97_crit_edge ], [ %and, %sym_ccb_from_dsa.exit.if.end97_crit_edge622 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sym_debug_flags to i32))
  %47 = load i32, ptr @sym_debug_flags, align 4
  %and98 = and i32 %47, 130
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool99.not = icmp eq i32 %and98, 0
  br i1 %tobool99.not, label %if.end97.if.end110_crit_edge, label %do.end

if.end97.if.end110_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end110

do.end:                                           ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ioaddr, align 4
  %add.ptr105 = getelementptr i8, ptr %49, i32 11
  %50 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr105) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  %51 = and i8 %50, 7
  %and108 = zext i8 %51 to i32
  %call109 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, i32 noundef %and11, i32 noundef %and108, i32 noundef %rest.4, i32 noundef %delta.2) #12
  br label %if.end110

if.end110:                                        ; preds = %do.end, %if.end97.if.end110_crit_edge
  %scripta_ba = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 48
  %52 = ptrtoint ptr %scripta_ba to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %scripta_ba, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %53)
  %cmp111 = icmp ugt i32 %3, %53
  br i1 %cmp111, label %land.lhs.true113, label %if.end110.if.else124_crit_edge

if.end110.if.else124_crit_edge:                   ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else124

land.lhs.true113:                                 ; preds = %if.end110
  %scripta_sz = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 51
  %54 = ptrtoint ptr %scripta_sz to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %scripta_sz, align 4
  %conv115 = zext i16 %55 to i32
  %add116 = add i32 %53, %conv115
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %add116)
  %cmp117.not = icmp ugt i32 %3, %add116
  br i1 %cmp117.not, label %land.lhs.true113.if.else124_crit_edge, label %if.then119

land.lhs.true113.if.else124_crit_edge:            ; preds = %land.lhs.true113
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else124

if.then119:                                       ; preds = %land.lhs.true113
  call void @__sanitizer_cov_trace_pc() #11
  %scripta0 = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 45
  br label %if.end139.sink.split

if.else124:                                       ; preds = %land.lhs.true113.if.else124_crit_edge, %if.end110.if.else124_crit_edge
  %scriptb_ba = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 49
  %56 = ptrtoint ptr %scriptb_ba to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %scriptb_ba, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %57)
  %cmp125 = icmp ugt i32 %3, %57
  br i1 %cmp125, label %land.lhs.true127, label %if.else124.if.end139_crit_edge

if.else124.if.end139_crit_edge:                   ; preds = %if.else124
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end139

land.lhs.true127:                                 ; preds = %if.else124
  %scriptb_sz = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 52
  %58 = ptrtoint ptr %scriptb_sz to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %scriptb_sz, align 2
  %conv129 = zext i16 %59 to i32
  %add130 = add i32 %57, %conv129
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %add130)
  %cmp131.not = icmp ugt i32 %3, %add130
  br i1 %cmp131.not, label %land.lhs.true127.if.end139_crit_edge, label %if.then133

land.lhs.true127.if.end139_crit_edge:             ; preds = %land.lhs.true127
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end139

if.then133:                                       ; preds = %land.lhs.true127
  call void @__sanitizer_cov_trace_pc() #11
  %scriptb0 = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 46
  br label %if.end139.sink.split

if.end139.sink.split:                             ; preds = %if.then133, %if.then119
  %scriptb0.sink = phi ptr [ %scriptb0, %if.then133 ], [ %scripta0, %if.then119 ]
  %.sink621 = phi i32 [ %57, %if.then133 ], [ %53, %if.then119 ]
  %60 = ptrtoint ptr %scriptb0.sink to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %scriptb0.sink, align 4
  %sub135 = add i32 %3, -8
  %sub136 = sub i32 %sub135, %.sink621
  %add.ptr137 = getelementptr i8, ptr %61, i32 %sub136
  br label %if.end139

if.end139:                                        ; preds = %if.end139.sink.split, %land.lhs.true127.if.end139_crit_edge, %if.else124.if.end139_crit_edge
  %vdsp.0 = phi ptr [ null, %land.lhs.true127.if.end139_crit_edge ], [ null, %if.else124.if.end139_crit_edge ], [ %add.ptr137, %if.end139.sink.split ]
  %nxtdsp.0 = phi i32 [ 0, %land.lhs.true127.if.end139_crit_edge ], [ 0, %if.else124.if.end139_crit_edge ], [ %3, %if.end139.sink.split ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sym_debug_flags to i32))
  %62 = load i32, ptr @sym_debug_flags, align 4
  %and140 = and i32 %62, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and140)
  %tobool141.not = icmp eq i32 %and140, 0
  br i1 %tobool141.not, label %if.end139.if.end149_crit_edge, label %do.end145

if.end139.if.end149_crit_edge:                    ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end149

do.end145:                                        ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #11
  %call148 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef %cp.0.lcssa.i, i32 noundef %3, i32 noundef %nxtdsp.0, ptr noundef %vdsp.0, i32 noundef %shr) #12
  br label %if.end149

if.end149:                                        ; preds = %do.end145, %if.end139.if.end149_crit_edge
  %tobool150.not = icmp eq ptr %vdsp.0, null
  br i1 %tobool150.not, label %do.end154, label %if.end158

do.end154:                                        ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #11
  %inst_name = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 42, i32 1
  %call157 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef %inst_name) #12
  br label %reset_all

if.end158:                                        ; preds = %if.end149
  %tobool159.not = icmp eq ptr %cp.0.lcssa.i, null
  br i1 %tobool159.not, label %do.end163, label %if.end169

do.end163:                                        ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #11
  %inst_name166 = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 42, i32 1
  %call168 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, ptr noundef %inst_name166) #12
  br label %reset_all

if.end169:                                        ; preds = %if.end158
  %arrayidx = getelementptr i32, ptr %vdsp.0, i32 1
  %63 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx, align 4
  %65 = tail call i32 @llvm.bswap.i32(i32 %64)
  %66 = and i32 %7, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool172.not = icmp eq i32 %66, 0
  br i1 %tobool172.not, label %if.else178, label %if.then173

if.then173:                                       ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr175 = getelementptr i8, ptr %cp.0.lcssa.i, i32 %65
  %67 = ptrtoint ptr %add.ptr175 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %add.ptr175, align 4
  %69 = tail call i32 @llvm.bswap.i32(i32 %68)
  %arrayidx177 = getelementptr i32, ptr %add.ptr175, i32 1
  %70 = ptrtoint ptr %arrayidx177 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx177, align 4
  %72 = tail call i32 @llvm.bswap.i32(i32 %71)
  br label %if.end181

if.else178:                                       ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #11
  %73 = ptrtoint ptr %vdsp.0 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %vdsp.0, align 4
  %75 = and i32 %74, -256
  %76 = tail call i32 @llvm.bswap.i32(i32 %75)
  br label %if.end181

if.end181:                                        ; preds = %if.else178, %if.then173
  %tblp.0 = phi ptr [ %add.ptr175, %if.then173 ], [ null, %if.else178 ]
  %olen.0 = phi i32 [ %69, %if.then173 ], [ %76, %if.else178 ]
  %oadr.0 = phi i32 [ %72, %if.then173 ], [ %65, %if.else178 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sym_debug_flags to i32))
  %77 = load i32, ptr @sym_debug_flags, align 4
  %and182 = and i32 %77, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and182)
  %tobool183.not = icmp eq i32 %and182, 0
  br i1 %tobool183.not, label %if.end181.if.end192_crit_edge, label %do.end187

if.end181.if.end192_crit_edge:                    ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end192

do.end187:                                        ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #11
  %78 = ptrtoint ptr %vdsp.0 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %vdsp.0, align 4
  %80 = and i32 %79, 255
  %call191 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, i32 noundef %80, ptr noundef %tblp.0, i32 noundef %olen.0, i32 noundef %oadr.0) #12
  br label %if.end192

if.end192:                                        ; preds = %do.end187, %if.end181.if.end192_crit_edge
  %81 = and i32 %7, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool195.not = icmp eq i32 %81, 0
  %and198 = and i32 %shr, 251
  %cond = select i1 %tobool195.not, i32 %and198, i32 %shr
  %82 = ptrtoint ptr %vdsp.0 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %vdsp.0, align 4
  %84 = and i32 %83, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %84)
  %cmp201.not = icmp eq i32 %cond, %84
  br i1 %cmp201.not, label %if.end211, label %do.end206

do.end206:                                        ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #11
  %cmd207 = getelementptr inbounds %struct.sym_ccb, ptr %cp.0.lcssa.i, i32 0, i32 1
  %85 = ptrtoint ptr %cmd207 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %cmd207, align 4
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %device, align 4
  %sdev_gendev = getelementptr inbounds %struct.scsi_device, ptr %88, i32 0, i32 55
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %sdev_gendev, ptr noundef nonnull @.str.121, i32 noundef %shr, i32 noundef %84) #12
  br label %reset_all

if.end211:                                        ; preds = %if.end192
  br i1 %tobool195.not, label %if.end230, label %do.end218

do.end218:                                        ; preds = %if.end211
  %cmd219 = getelementptr inbounds %struct.sym_ccb, ptr %cp.0.lcssa.i, i32 0, i32 1
  %89 = ptrtoint ptr %cmd219 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %cmd219, align 4
  %device220 = getelementptr inbounds %struct.scsi_cmnd, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %device220 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %device220, align 4
  %sdev_gendev221 = getelementptr inbounds %struct.scsi_device, ptr %92, i32 0, i32 55
  %93 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ioaddr, align 4
  %add.ptr226 = getelementptr i8, ptr %94, i32 11
  %95 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr226) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  %96 = and i8 %95, 7
  %and229 = zext i8 %96 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %sdev_gendev221, ptr noundef nonnull @.str.124, i32 noundef %and11, i32 noundef %and229, i32 noundef %olen.0, i32 noundef %oadr.0, i32 noundef %rest.4) #12
  %sub373 = add i32 %3, -8
  %97 = zext i32 %and11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %97, ptr @__sancov_gen_cov_switch_values.261)
  switch i32 %and11, label %do.end218.reset_all_crit_edge [
    i32 2, label %sw.bb
    i32 6, label %sw.bb378
  ]

do.end218.reset_all_crit_edge:                    ; preds = %do.end218
  call void @__sanitizer_cov_trace_pc() #11
  br label %reset_all

if.end230:                                        ; preds = %if.end211
  %98 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ioaddr, align 4
  %add.ptr233 = getelementptr i8, ptr %99, i32 95
  %100 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr233) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  %conv235 = zext i8 %100 to i32
  %and236 = and i32 %conv235, 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and236)
  %tobool237.not = icmp eq i32 %and236, 0
  br i1 %tobool237.not, label %if.end230.if.end260_crit_edge, label %if.then238

if.end230.if.end260_crit_edge:                    ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end260

if.then238:                                       ; preds = %if.end230
  %and240 = and i32 %conv235, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and240)
  %tobool241.not = icmp eq i32 %and240, 0
  br i1 %tobool241.not, label %if.else244, label %if.then242

if.then242:                                       ; preds = %if.then238
  call void @__sanitizer_cov_trace_pc() #11
  %ret = getelementptr inbounds %struct.sym_dsb, ptr %cp.0.lcssa.i, i32 0, i32 1, i32 1
  br label %if.end252.sink.split

if.else244:                                       ; preds = %if.then238
  %and246 = and i32 %conv235, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and246)
  %tobool247.not = icmp eq i32 %and246, 0
  br i1 %tobool247.not, label %if.else244.if.end252_crit_edge, label %if.then248

if.else244.if.end252_crit_edge:                   ; preds = %if.else244
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end252

if.then248:                                       ; preds = %if.else244
  call void @__sanitizer_cov_trace_pc() #11
  %ret250 = getelementptr inbounds %struct.sym_dsb, ptr %cp.0.lcssa.i, i32 0, i32 2, i32 1
  br label %if.end252.sink.split

if.end252.sink.split:                             ; preds = %if.then248, %if.then242
  %ret250.sink = phi ptr [ %ret250, %if.then248 ], [ %ret, %if.then242 ]
  %101 = ptrtoint ptr %ret250.sink to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %ret250.sink, align 4
  %103 = tail call i32 @llvm.bswap.i32(i32 %102)
  br label %if.end252

if.end252:                                        ; preds = %if.end252.sink.split, %if.else244.if.end252_crit_edge
  %nxtdsp.1 = phi i32 [ %nxtdsp.0, %if.else244.if.end252_crit_edge ], [ %103, %if.end252.sink.split ]
  %and254 = and i32 %conv235, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and254)
  %tobool255.not = icmp eq i32 %and254, 0
  %xor = xor i8 %100, 4
  %spec.select614 = select i1 %tobool255.not, i8 %100, i8 %xor
  br label %if.end260

if.end260:                                        ; preds = %if.end252, %if.end230.if.end260_crit_edge
  %hflags.0 = phi i8 [ %100, %if.end230.if.end260_crit_edge ], [ %spec.select614, %if.end252 ]
  %nxtdsp.2 = phi i32 [ %nxtdsp.0, %if.end230.if.end260_crit_edge ], [ %nxtdsp.1, %if.end252 ]
  %104 = and i8 %hflags.0, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool263.not = icmp eq i8 %104, 0
  %pm1269 = getelementptr inbounds %struct.sym_dsb, ptr %cp.0.lcssa.i, i32 0, i32 2
  %pm1_data = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 54, i32 23
  %pm0266 = getelementptr inbounds %struct.sym_dsb, ptr %cp.0.lcssa.i, i32 0, i32 1
  %pm0_data = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 54, i32 22
  %newcmd.0.in = select i1 %tobool263.not, ptr %pm0_data, ptr %pm1_data
  %pm.0 = select i1 %tobool263.not, ptr %pm0266, ptr %pm1269
  %105 = ptrtoint ptr %newcmd.0.in to i32
  call void @__asan_load4_noabort(i32 %105)
  %newcmd.0 = load i32, ptr %newcmd.0.in, align 4
  %and273 = and i8 %hflags.0, -12
  %conv275 = zext i8 %and273 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %and273, i8 %100)
  %cmp277.not = icmp eq i8 %and273, %100
  br i1 %cmp277.not, label %if.end260.if.end283_crit_edge, label %if.then279

if.end260.if.end283_crit_edge:                    ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end283

if.then279:                                       ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #11
  %106 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ioaddr, align 4
  %add.ptr282 = getelementptr i8, ptr %107, i32 95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr282, i8 %and273) #9, !srcloc !464
  br label %if.end283

if.end283:                                        ; preds = %if.then279, %if.end260.if.end283_crit_edge
  %add284 = sub i32 %olen.0, %rest.4
  %sub285 = add i32 %add284, %oadr.0
  %108 = tail call i32 @llvm.bswap.i32(i32 %sub285)
  %addr = getelementptr inbounds %struct.sym_tblmove, ptr %pm.0, i32 0, i32 1
  %109 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %addr, align 4
  %110 = tail call i32 @llvm.bswap.i32(i32 %rest.4)
  %111 = ptrtoint ptr %pm.0 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %pm.0, align 4
  %112 = tail call i32 @llvm.bswap.i32(i32 %nxtdsp.2)
  %ret287 = getelementptr inbounds %struct.sym_pmc, ptr %pm.0, i32 0, i32 1
  %113 = ptrtoint ptr %ret287 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %ret287, align 4
  %dispatch = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 54, i32 6
  %114 = ptrtoint ptr %dispatch to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %dispatch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and11)
  %cmp291 = icmp eq i32 %and11, 1
  br i1 %cmp291, label %land.lhs.true295, label %if.end283.if.end335_crit_edge

if.end283.if.end335_crit_edge:                    ; preds = %if.end283
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end335

land.lhs.true295:                                 ; preds = %if.end283
  %sel_scntl3298 = getelementptr inbounds %struct.sym_dsb, ptr %cp.0.lcssa.i, i32 0, i32 3, i32 3
  %116 = ptrtoint ptr %sel_scntl3298 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %sel_scntl3298, align 1
  %118 = and i8 %117, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %tobool301.not = icmp eq i8 %118, 0
  br i1 %tobool301.not, label %land.lhs.true295.if.end335_crit_edge, label %land.lhs.true302

land.lhs.true295.if.end335_crit_edge:             ; preds = %land.lhs.true295
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end335

land.lhs.true302:                                 ; preds = %land.lhs.true295
  %119 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %ioaddr, align 4
  %add.ptr305 = getelementptr i8, ptr %120, i32 2
  %121 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr305) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  %122 = and i8 %121, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %tobool309.not = icmp eq i8 %122, 0
  br i1 %tobool309.not, label %land.lhs.true302.if.end335_crit_edge, label %if.then310

land.lhs.true302.if.end335_crit_edge:             ; preds = %land.lhs.true302
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end335

if.then310:                                       ; preds = %land.lhs.true302
  %123 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %addr, align 4
  %125 = tail call i32 @llvm.bswap.i32(i32 %124)
  %wresid = getelementptr inbounds %struct.sym_dsb, ptr %cp.0.lcssa.i, i32 0, i32 8
  %addr315 = getelementptr inbounds %struct.sym_dsb, ptr %cp.0.lcssa.i, i32 0, i32 8, i32 1
  %126 = ptrtoint ptr %addr315 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %124, ptr %addr315, align 4
  %add316 = add i32 %125, 1
  %127 = tail call i32 @llvm.bswap.i32(i32 %add316)
  %128 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %addr, align 4
  %129 = ptrtoint ptr %pm.0 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %pm.0, align 4
  %131 = tail call i32 @llvm.bswap.i32(i32 %130)
  %and321 = and i32 %131, -16777216
  %or322 = or i32 %and321, 1
  %132 = tail call i32 @llvm.bswap.i32(i32 %or322)
  %133 = ptrtoint ptr %wresid to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %132, ptr %wresid, align 4
  %sub326 = add i32 %131, -1
  %134 = tail call i32 @llvm.bswap.i32(i32 %sub326)
  %135 = ptrtoint ptr %pm.0 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %134, ptr %pm.0, align 4
  %and329 = and i32 %131, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and329)
  %cmp330 = icmp eq i32 %and329, 1
  br i1 %cmp330, label %if.then332, label %if.then310.if.end334_crit_edge

if.then310.if.end334_crit_edge:                   ; preds = %if.then310
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end334

if.then332:                                       ; preds = %if.then310
  call void @__sanitizer_cov_trace_pc() #11
  %136 = ptrtoint ptr %ret287 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %ret287, align 4
  br label %if.end334

if.end334:                                        ; preds = %if.then332, %if.then310.if.end334_crit_edge
  %newcmd.1 = phi i32 [ %137, %if.then332 ], [ %newcmd.0, %if.then310.if.end334_crit_edge ]
  %wsr_ma_helper = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 55, i32 18
  %138 = ptrtoint ptr %wsr_ma_helper to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %wsr_ma_helper, align 4
  br label %if.end335

if.end335:                                        ; preds = %if.end334, %land.lhs.true302.if.end335_crit_edge, %land.lhs.true295.if.end335_crit_edge, %if.end283.if.end335_crit_edge
  %newcmd.2 = phi i32 [ %newcmd.1, %if.end334 ], [ %newcmd.0, %land.lhs.true302.if.end335_crit_edge ], [ %newcmd.0, %land.lhs.true295.if.end335_crit_edge ], [ %newcmd.0, %if.end283.if.end335_crit_edge ]
  %nxtdsp.3 = phi i32 [ %139, %if.end334 ], [ %115, %land.lhs.true302.if.end335_crit_edge ], [ %115, %land.lhs.true295.if.end335_crit_edge ], [ %115, %if.end283.if.end335_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sym_debug_flags to i32))
  %140 = load i32, ptr @sym_debug_flags, align 4
  %and336 = and i32 %140, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and336)
  %tobool337.not = icmp eq i32 %and336, 0
  br i1 %tobool337.not, label %if.end335.do.body353_crit_edge, label %do.end341

if.end335.do.body353_crit_edge:                   ; preds = %if.end335
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body353

do.end341:                                        ; preds = %if.end335
  call void @__sanitizer_cov_trace_pc() #11
  %cmd342 = getelementptr inbounds %struct.sym_ccb, ptr %cp.0.lcssa.i, i32 0, i32 1
  %141 = ptrtoint ptr %cmd342 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %cmd342, align 4
  %device343 = getelementptr inbounds %struct.scsi_cmnd, ptr %142, i32 0, i32 1
  %143 = ptrtoint ptr %device343 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %device343, align 4
  %sdev_gendev344 = getelementptr inbounds %struct.scsi_device, ptr %144, i32 0, i32 55
  %145 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %addr, align 4
  %147 = tail call i32 @llvm.bswap.i32(i32 %146)
  %148 = ptrtoint ptr %pm.0 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %pm.0, align 4
  %150 = tail call i32 @llvm.bswap.i32(i32 %149)
  %151 = ptrtoint ptr %ret287 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %ret287, align 4
  %153 = tail call i32 @llvm.bswap.i32(i32 %152)
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %sdev_gendev344, ptr noundef nonnull @.str.127, i32 noundef %conv235, i32 noundef %conv275, i32 noundef %newcmd.2, i32 noundef %147, i32 noundef %150, i32 noundef %153) #12
  br label %do.body353

do.body353:                                       ; preds = %do.end341, %if.end335.do.body353_crit_edge
  %features354 = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 60
  %154 = ptrtoint ptr %features354 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %features354, align 4
  %and355 = and i32 %155, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and355)
  %tobool356.not = icmp eq i32 %and355, 0
  %156 = tail call i32 @llvm.bswap.i32(i32 %newcmd.2)
  %np.cp.0.lcssa.i = select i1 %tobool356.not, ptr %np, ptr %cp.0.lcssa.i
  %lastp360 = getelementptr inbounds %struct.sym_ccbh, ptr %np.cp.0.lcssa.i, i32 0, i32 2
  %157 = ptrtoint ptr %lastp360 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %156, ptr %lastp360, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !483
  tail call void @arm_heavy_mb() #9
  %158 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %ioaddr, align 4
  %add.ptr370 = getelementptr i8, ptr %159, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !473
  tail call void @arm_heavy_mb() #9
  %160 = tail call i32 @llvm.bswap.i32(i32 %nxtdsp.3) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr370, i32 %160) #9, !srcloc !474
  br label %cleanup

sw.bb:                                            ; preds = %do.end218
  call void @__sanitizer_cov_trace_pc() #11
  %dispatch377 = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 54, i32 6
  %161 = ptrtoint ptr %dispatch377 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %dispatch377, align 4
  br label %sw.epilog

sw.bb378:                                         ; preds = %do.end218
  %send_ident = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 54, i32 5
  %163 = ptrtoint ptr %send_ident to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %send_ident, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub373, i32 %164)
  %cmp380 = icmp eq i32 %sub373, %164
  br i1 %cmp380, label %if.then382, label %if.else403

if.then382:                                       ; preds = %sw.bb378
  %tag = getelementptr inbounds %struct.sym_ccb, ptr %cp.0.lcssa.i, i32 0, i32 18
  %165 = ptrtoint ptr %tag to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %tag, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %166)
  %cmp384.not = icmp ne i16 %166, 256
  %sub387 = sub i32 %olen.0, %rest.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub387)
  %cmp388 = icmp ult i32 %sub387, 4
  %or.cond615 = select i1 %cmp384.not, i1 %cmp388, i1 false
  br i1 %or.cond615, label %if.then390, label %if.else400

if.then390:                                       ; preds = %if.then382
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx393 = getelementptr %struct.sym_ccbh, ptr %cp.0.lcssa.i, i32 0, i32 3, i32 1
  %167 = ptrtoint ptr %arrayidx393 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 1, ptr %arrayidx393, align 1
  %lun = getelementptr inbounds %struct.sym_ccb, ptr %cp.0.lcssa.i, i32 0, i32 20
  %168 = ptrtoint ptr %lun to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %lun, align 1
  %170 = and i8 %169, 7
  %171 = or i8 %170, -128
  %msgout = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 81
  %172 = ptrtoint ptr %msgout to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 %171, ptr %msgout, align 4
  %ident_break_atn = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 55, i32 13
  %173 = ptrtoint ptr %ident_break_atn to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %ident_break_atn, align 4
  br label %sw.epilog

if.else400:                                       ; preds = %if.then382
  call void @__sanitizer_cov_trace_pc() #11
  %ident_break = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 55, i32 12
  %175 = ptrtoint ptr %ident_break to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %ident_break, align 4
  br label %sw.epilog

if.else403:                                       ; preds = %sw.bb378
  %send_wdtr = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 55, i32 6
  %177 = ptrtoint ptr %send_wdtr to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %send_wdtr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub373, i32 %178)
  %cmp405 = icmp eq i32 %sub373, %178
  br i1 %cmp405, label %if.else403.if.then414_crit_edge, label %lor.lhs.false

if.else403.if.then414_crit_edge:                  ; preds = %if.else403
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then414

lor.lhs.false:                                    ; preds = %if.else403
  %send_sdtr = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 55, i32 8
  %179 = ptrtoint ptr %send_sdtr to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %send_sdtr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub373, i32 %180)
  %cmp408 = icmp eq i32 %sub373, %180
  br i1 %cmp408, label %lor.lhs.false.if.then414_crit_edge, label %lor.lhs.false410

lor.lhs.false.if.then414_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then414

lor.lhs.false410:                                 ; preds = %lor.lhs.false
  %send_ppr = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 55, i32 10
  %181 = ptrtoint ptr %send_ppr to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %send_ppr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub373, i32 %182)
  %cmp412 = icmp eq i32 %sub373, %182
  br i1 %cmp412, label %lor.lhs.false410.if.then414_crit_edge, label %lor.lhs.false410.reset_all_crit_edge

lor.lhs.false410.reset_all_crit_edge:             ; preds = %lor.lhs.false410
  call void @__sanitizer_cov_trace_pc() #11
  br label %reset_all

lor.lhs.false410.if.then414_crit_edge:            ; preds = %lor.lhs.false410
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then414

if.then414:                                       ; preds = %lor.lhs.false410.if.then414_crit_edge, %lor.lhs.false.if.then414_crit_edge, %if.else403.if.then414_crit_edge
  %nego_bad_phase = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 55, i32 11
  %183 = ptrtoint ptr %nego_bad_phase to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %nego_bad_phase, align 4
  %send_ppr417 = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 55, i32 10
  %185 = ptrtoint ptr %send_ppr417 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %send_ppr417, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub373, i32 %186)
  %cmp418 = icmp eq i32 %sub373, %186
  br i1 %cmp418, label %if.then420, label %if.then414.sw.epilog_crit_edge

if.then414.sw.epilog_crit_edge:                   ; preds = %if.then414
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then420:                                       ; preds = %if.then414
  call void @__sanitizer_cov_trace_pc() #11
  %187 = ptrtoint ptr %cmd219 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %cmd219, align 4
  %device422 = getelementptr inbounds %struct.scsi_cmnd, ptr %188, i32 0, i32 1
  %189 = ptrtoint ptr %device422 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %device422, align 4
  %ppr = getelementptr inbounds %struct.scsi_device, ptr %190, i32 0, i32 41
  %191 = ptrtoint ptr %ppr to i32
  call void @__asan_loadN_noabort(i32 %191, i32 8)
  %bf.load = load i64, ptr %ppr, align 4
  %bf.clear = and i64 %bf.load, -9007199254740993
  store i64 %bf.clear, ptr %ppr, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then420, %if.then414.sw.epilog_crit_edge, %if.else400, %if.then390, %sw.bb
  %nxtdsp.4 = phi i32 [ %174, %if.then390 ], [ %176, %if.else400 ], [ %184, %if.then420 ], [ %184, %if.then414.sw.epilog_crit_edge ], [ %162, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nxtdsp.4)
  %tobool426.not = icmp eq i32 %nxtdsp.4, 0
  br i1 %tobool426.not, label %sw.epilog.reset_all_crit_edge, label %do.body429

sw.epilog.reset_all_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %reset_all

do.body429:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !484
  tail call void @arm_heavy_mb() #9
  %192 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %ioaddr, align 4
  %add.ptr434 = getelementptr i8, ptr %193, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !473
  tail call void @arm_heavy_mb() #9
  %194 = tail call i32 @llvm.bswap.i32(i32 %nxtdsp.4) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr434, i32 %194) #9, !srcloc !474
  br label %cleanup

reset_all:                                        ; preds = %sw.epilog.reset_all_crit_edge, %lor.lhs.false410.reset_all_crit_edge, %do.end218.reset_all_crit_edge, %do.end206, %do.end163, %do.end154
  %call.i = tail call i32 @sym_reset_scsi_bus(ptr noundef %np, i32 noundef 1) #9
  br label %cleanup

cleanup:                                          ; preds = %reset_all, %do.body429, %do.body353
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sym_int_sir(ptr noundef %np) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 42, i32 4
  %0 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 48
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  %3 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ioaddr, align 4
  %add.ptr3 = getelementptr i8, ptr %4, i32 16
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #9, !srcloc !469
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !470
  %shr.i = lshr i32 %6, 10
  %and.i = and i32 %shr.i, 255
  %ccbh.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 88
  %7 = ptrtoint ptr %ccbh.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ccbh.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %8, i32 %and.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %cp.05.i = load ptr, ptr %arrayidx.i, align 4
  %tobool.not6.i = icmp eq ptr %cp.05.i, null
  br i1 %tobool.not6.i, label %entry.sym_ccb_from_dsa.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.sym_ccb_from_dsa.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sym_ccb_from_dsa.exit

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %cp.07.i = phi ptr [ %cp.0.i, %if.end.i.while.body.i_crit_edge ], [ %cp.05.i, %entry.while.body.i_crit_edge ]
  %ccb_ba.i = getelementptr inbounds %struct.sym_ccb, ptr %cp.07.i, i32 0, i32 17
  %10 = ptrtoint ptr %ccb_ba.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ccb_ba.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %6)
  %cmp.i = icmp eq i32 %11, %6
  br i1 %cmp.i, label %while.body.i.sym_ccb_from_dsa.exit_crit_edge, label %if.end.i

while.body.i.sym_ccb_from_dsa.exit_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sym_ccb_from_dsa.exit

if.end.i:                                         ; preds = %while.body.i
  %link_ccbh.i = getelementptr inbounds %struct.sym_ccb, ptr %cp.07.i, i32 0, i32 21
  %12 = ptrtoint ptr %link_ccbh.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %cp.0.i = load ptr, ptr %link_ccbh.i, align 4
  %tobool.not.i = icmp eq ptr %cp.0.i, null
  br i1 %tobool.not.i, label %if.end.i.sym_ccb_from_dsa.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.end.i.sym_ccb_from_dsa.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sym_ccb_from_dsa.exit

sym_ccb_from_dsa.exit:                            ; preds = %if.end.i.sym_ccb_from_dsa.exit_crit_edge, %while.body.i.sym_ccb_from_dsa.exit_crit_edge, %entry.sym_ccb_from_dsa.exit_crit_edge
  %cp.0.lcssa.i = phi ptr [ null, %entry.sym_ccb_from_dsa.exit_crit_edge ], [ null, %if.end.i.sym_ccb_from_dsa.exit_crit_edge ], [ %cp.07.i, %while.body.i.sym_ccb_from_dsa.exit_crit_edge ]
  %13 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ioaddr, align 4
  %add.ptr8 = getelementptr i8, ptr %14, i32 6
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr8) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  %16 = and i8 %15, 15
  %idxprom = zext i8 %16 to i32
  %arrayidx = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %idxprom
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sym_debug_flags to i32))
  %17 = load i32, ptr @sym_debug_flags, align 4
  %and12 = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool.not = icmp eq i32 %and12, 0
  br i1 %tobool.not, label %sym_ccb_from_dsa.exit.if.end_crit_edge, label %do.end

sym_ccb_from_dsa.exit.if.end_crit_edge:           ; preds = %sym_ccb_from_dsa.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %sym_ccb_from_dsa.exit
  call void @__sanitizer_cov_trace_pc() #11
  %conv14 = zext i8 %2 to i32
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139, i32 noundef %conv14) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %sym_ccb_from_dsa.exit.if.end_crit_edge
  %18 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.262)
  switch i8 %2, label %if.end.do.body302_crit_edge [
    i8 20, label %sw.bb
    i8 6, label %if.end.sw.bb300_crit_edge
    i8 5, label %sw.bb296
    i8 4, label %sw.bb284
    i8 2, label %do.body20
    i8 11, label %do.body30
    i8 12, label %do.body44
    i8 13, label %sw.bb57
    i8 15, label %sw.bb59
    i8 16, label %sw.bb62
    i8 18, label %sw.bb65
    i8 19, label %sw.bb86
    i8 1, label %sw.bb120
    i8 8, label %sw.bb125
    i8 9, label %sw.bb128
    i8 10, label %sw.bb145
    i8 21, label %sw.bb163
    i8 22, label %sw.bb185
    i8 3, label %sw.bb203
    i8 7, label %if.end.for.body.i_crit_edge
    i8 14, label %sw.bb135.i
    i8 17, label %sw.bb283.i
  ]

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.sw.bb300_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb300

if.end.do.body302_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body302

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @sym_complete_error(ptr noundef %np, ptr noundef %cp.0.lcssa.i)
  br label %cleanup

for.body.i:                                       ; preds = %for.inc28.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.0639.i = phi i32 [ %inc29.i, %for.inc28.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %to_reset.i = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %i.0639.i, i32 8
  %19 = ptrtoint ptr %to_reset.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %to_reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i455 = icmp eq i8 %20, 0
  br i1 %tobool.not.i455, label %lor.lhs.false.i, label %for.body.i.if.then56.i_crit_edge

for.body.i.if.then56.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then56.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %lun0p.i = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %i.0639.i, i32 3
  %21 = ptrtoint ptr %lun0p.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lun0p.i, align 4
  %tobool2.not.i = icmp eq ptr %22, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.if.end.i456_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.if.end.i456_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i456

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %to_clear.i = getelementptr inbounds %struct.sym_lcb, ptr %22, i32 0, i32 11
  %23 = ptrtoint ptr %to_clear.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %to_clear.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool5.not.i = icmp eq i8 %24, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.if.end.i456_crit_edge, label %land.lhs.true.i.if.then56.i_crit_edge

land.lhs.true.i.if.then56.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then56.i

land.lhs.true.i.if.end.i456_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i456

if.end.i456:                                      ; preds = %land.lhs.true.i.if.end.i456_crit_edge, %lor.lhs.false.i.if.end.i456_crit_edge
  %lunmp.i = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %i.0639.i, i32 4
  %25 = ptrtoint ptr %lunmp.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lunmp.i, align 4
  %tobool6.not.i = icmp eq ptr %26, null
  br i1 %tobool6.not.i, label %if.end.i456.for.inc28.i_crit_edge, label %if.end.i456.for.body12.i_crit_edge

if.end.i456.for.body12.i_crit_edge:               ; preds = %if.end.i456
  br label %for.body12.i

if.end.i456.for.inc28.i_crit_edge:                ; preds = %if.end.i456
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc28.i

for.body12.i:                                     ; preds = %for.inc.i.for.body12.i_crit_edge, %if.end.i456.for.body12.i_crit_edge
  %k.0638.i = phi i32 [ %inc.i, %for.inc.i.for.body12.i_crit_edge ], [ 1, %if.end.i456.for.body12.i_crit_edge ]
  %arrayidx14.i = getelementptr ptr, ptr %26, i32 %k.0638.i
  %27 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx14.i, align 4
  %tobool15.not.i = icmp eq ptr %28, null
  br i1 %tobool15.not.i, label %for.body12.i.for.inc.i_crit_edge, label %land.lhs.true16.i

for.body12.i.for.inc.i_crit_edge:                 ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true16.i:                                ; preds = %for.body12.i
  %to_clear19.i = getelementptr inbounds %struct.sym_lcb, ptr %28, i32 0, i32 11
  %29 = ptrtoint ptr %to_clear19.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %to_clear19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool21.not.i = icmp eq i8 %30, 0
  br i1 %tobool21.not.i, label %land.lhs.true16.i.for.inc.i_crit_edge, label %land.lhs.true16.i.if.then56.i_crit_edge

land.lhs.true16.i.if.then56.i_crit_edge:          ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then56.i

land.lhs.true16.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true16.i.for.inc.i_crit_edge, %for.body12.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %k.0638.i, 1
  %exitcond656.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond656.not.i, label %for.inc.i.for.inc28.i_crit_edge, label %for.inc.i.for.body12.i_crit_edge

for.inc.i.for.body12.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body12.i

for.inc.i.for.inc28.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc28.i

for.inc28.i:                                      ; preds = %for.inc.i.for.inc28.i_crit_edge, %if.end.i456.for.inc28.i_crit_edge
  %inc29.i = add nuw nsw i32 %i.0639.i, 1
  %exitcond657.not.i = icmp eq i32 %inc29.i, 16
  br i1 %exitcond657.not.i, label %if.then33.i, label %for.inc28.i.for.body.i_crit_edge

for.inc28.i.for.body.i_crit_edge:                 ; preds = %for.inc28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.then33.i:                                      ; preds = %for.inc28.i
  %tp.1596.i = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 15
  %busy_ccbq.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 90
  %31 = ptrtoint ptr %busy_ccbq.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %qp.0643.i = load ptr, ptr %busy_ccbq.i, align 4
  %cmp36.not644.i = icmp eq ptr %qp.0643.i, %busy_ccbq.i
  br i1 %cmp36.not644.i, label %if.then33.i.if.then107.i_crit_edge, label %if.then33.i.for.body38.i_crit_edge

if.then33.i.for.body38.i_crit_edge:               ; preds = %if.then33.i
  br label %for.body38.i

if.then33.i.if.then107.i_crit_edge:               ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then107.i

for.body38.i:                                     ; preds = %for.inc50.i.for.body38.i_crit_edge, %if.then33.i.for.body38.i_crit_edge
  %qp.0645.i = phi ptr [ %qp.0.i, %for.inc50.i.for.body38.i_crit_edge ], [ %qp.0643.i, %if.then33.i.for.body38.i_crit_edge ]
  %arrayidx39.i = getelementptr i8, ptr %qp.0645.i, i32 -955
  %32 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx39.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %33)
  %cmp41.not.i = icmp eq i8 %33, 3
  br i1 %cmp41.not.i, label %if.end44.i, label %for.body38.i.for.inc50.i_crit_edge

for.body38.i.for.inc50.i_crit_edge:               ; preds = %for.body38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc50.i

if.end44.i:                                       ; preds = %for.body38.i
  %to_abort.i = getelementptr i8, ptr %qp.0645.i, i32 24
  %34 = ptrtoint ptr %to_abort.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %to_abort.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool45.not.i = icmp eq i8 %35, 0
  br i1 %tobool45.not.i, label %if.end44.i.for.inc50.i_crit_edge, label %if.then46.i

if.end44.i.for.inc50.i_crit_edge:                 ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc50.i

if.then46.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #11
  %target47.i = getelementptr i8, ptr %qp.0645.i, i32 -6
  %36 = ptrtoint ptr %target47.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %target47.i, align 2
  %conv48.i = zext i8 %37 to i32
  br label %if.then56.i

for.inc50.i:                                      ; preds = %if.end44.i.for.inc50.i_crit_edge, %for.body38.i.for.inc50.i_crit_edge
  %38 = ptrtoint ptr %qp.0645.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %qp.0.i = load ptr, ptr %qp.0645.i, align 4
  %cmp36.not.i = icmp eq ptr %qp.0.i, %busy_ccbq.i
  br i1 %cmp36.not.i, label %for.inc50.i.for.body78.i_crit_edge, label %for.inc50.i.for.body38.i_crit_edge

for.inc50.i.for.body38.i_crit_edge:               ; preds = %for.inc50.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body38.i

for.inc50.i.for.body78.i_crit_edge:               ; preds = %for.inc50.i
  br label %for.body78.i

if.then56.i:                                      ; preds = %if.then46.i, %land.lhs.true16.i.if.then56.i_crit_edge, %land.lhs.true.i.if.then56.i_crit_edge, %for.body.i.if.then56.i_crit_edge
  %target.4604.i = phi i32 [ %conv48.i, %if.then46.i ], [ %i.0639.i, %land.lhs.true16.i.if.then56.i_crit_edge ], [ %i.0639.i, %for.body.i.if.then56.i_crit_edge ], [ %i.0639.i, %land.lhs.true.i.if.then56.i_crit_edge ]
  %arrayidx58.i = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %target.4604.i
  %conv59.i = trunc i32 %target.4604.i to i8
  %sel_id.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 94, i32 2
  %39 = ptrtoint ptr %sel_id.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv59.i, ptr %sel_id.i, align 2
  %wval.i = getelementptr inbounds %struct.sym_tcbh, ptr %arrayidx58.i, i32 0, i32 5
  %40 = ptrtoint ptr %wval.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %wval.i, align 1
  %sel_scntl3.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 94, i32 3
  %42 = ptrtoint ptr %sel_scntl3.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %sel_scntl3.i, align 1
  %sval.i = getelementptr inbounds %struct.sym_tcbh, ptr %arrayidx58.i, i32 0, i32 3
  %43 = ptrtoint ptr %sval.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %sval.i, align 1
  %sel_sxfer.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 94, i32 1
  %45 = ptrtoint ptr %sel_sxfer.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %sel_sxfer.i, align 1
  %hcb_ba.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 13
  %46 = ptrtoint ptr %hcb_ba.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %hcb_ba.i, align 4
  %48 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ioaddr, align 4
  %add.ptr64.i = getelementptr i8, ptr %49, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !473
  tail call void @arm_heavy_mb() #9
  %50 = tail call i32 @llvm.bswap.i32(i32 %47) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr64.i, i32 %50) #9, !srcloc !474
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  tail call void @arm_heavy_mb() #9
  %sel_for_abort.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 55, i32 1
  %51 = ptrtoint ptr %sel_for_abort.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sel_for_abort.i, align 4
  %53 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ioaddr, align 4
  %add.ptr68.i = getelementptr i8, ptr %54, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !473
  tail call void @arm_heavy_mb() #9
  %55 = tail call i32 @llvm.bswap.i32(i32 %52) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68.i, i32 %55) #9, !srcloc !474
  br label %cleanup

for.body78.i:                                     ; preds = %for.inc103.i.for.body78.i_crit_edge, %for.inc50.i.for.body78.i_crit_edge
  %qp.1648.i = phi ptr [ %qp.1.i, %for.inc103.i.for.body78.i_crit_edge ], [ %qp.0643.i, %for.inc50.i.for.body78.i_crit_edge ]
  %arrayidx85.i = getelementptr i8, ptr %qp.1648.i, i32 -955
  %56 = ptrtoint ptr %arrayidx85.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx85.i, align 1
  %.off.i = add i8 %57, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off.i)
  %switch.i = icmp ult i8 %.off.i, 2
  br i1 %switch.i, label %if.end98.i, label %for.body78.i.for.inc103.i_crit_edge

for.body78.i.for.inc103.i_crit_edge:              ; preds = %for.body78.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc103.i

if.end98.i:                                       ; preds = %for.body78.i
  %to_abort99.i = getelementptr i8, ptr %qp.1648.i, i32 24
  %58 = ptrtoint ptr %to_abort99.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %to_abort99.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool100.not.i = icmp eq i8 %59, 0
  br i1 %tobool100.not.i, label %if.end98.i.for.inc103.i_crit_edge, label %if.end111.i

if.end98.i.for.inc103.i_crit_edge:                ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc103.i

for.inc103.i:                                     ; preds = %if.end98.i.for.inc103.i_crit_edge, %for.body78.i.for.inc103.i_crit_edge
  %60 = ptrtoint ptr %qp.1648.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %qp.1.i = load ptr, ptr %qp.1648.i, align 4
  %cmp76.not.i = icmp eq ptr %qp.1.i, %busy_ccbq.i
  br i1 %cmp76.not.i, label %for.inc103.i.if.then107.i_crit_edge, label %for.inc103.i.for.body78.i_crit_edge

for.inc103.i.for.body78.i_crit_edge:              ; preds = %for.inc103.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body78.i

for.inc103.i.if.then107.i_crit_edge:              ; preds = %for.inc103.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then107.i

if.then107.i:                                     ; preds = %for.inc103.i.if.then107.i_crit_edge, %if.then33.i.if.then107.i_crit_edge
  %istat_sem.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 95
  %61 = ptrtoint ptr %istat_sem.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %istat_sem.i, align 4
  %62 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ioaddr, align 4
  %add.ptr110.i = getelementptr i8, ptr %63, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr110.i, i8 32) #9, !srcloc !464
  br label %sw.epilog.i

if.end111.i:                                      ; preds = %if.end98.i
  %to_abort99.i.le = getelementptr i8, ptr %qp.1648.i, i32 24
  %64 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ioaddr, align 4
  %add.ptr114.i = getelementptr i8, ptr %65, i32 52
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr114.i) #9, !srcloc !469
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !470
  %squeue_ba.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 75
  %68 = ptrtoint ptr %squeue_ba.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %squeue_ba.i, align 4
  %sub.i = sub i32 %67, %69
  %div563.i = lshr i32 %sub.i, 2
  %target115.i = getelementptr i8, ptr %qp.1648.i, i32 -6
  %70 = ptrtoint ptr %target115.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %target115.i, align 2
  %conv116.i = zext i8 %71 to i32
  %lun117.i = getelementptr i8, ptr %qp.1648.i, i32 -5
  %72 = ptrtoint ptr %lun117.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %lun117.i, align 1
  %conv118.i = zext i8 %73 to i32
  %call119.i = tail call fastcc i32 @sym_dequeue_from_squeue(ptr noundef %np, i32 noundef %div563.i, i32 noundef %conv116.i, i32 noundef %conv118.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119.i)
  %tobool120.not.i = icmp eq i32 %call119.i, 0
  br i1 %tobool120.not.i, label %if.end111.i.if.then125.i_crit_edge, label %land.lhs.true121.i

if.end111.i.if.then125.i_crit_edge:               ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then125.i

land.lhs.true121.i:                               ; preds = %if.end111.i
  %cmd.i = getelementptr i8, ptr %qp.1648.i, i32 -116
  %74 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %cmd.i, align 4
  %result.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %75, i32 0, i32 24
  %76 = ptrtoint ptr %result.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %result.i.i, align 4
  %78 = and i32 %77, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 720896, i32 %78)
  %cmp123.i = icmp eq i32 %78, 720896
  br i1 %cmp123.i, label %if.end126.i, label %land.lhs.true121.i.if.then125.i_crit_edge

land.lhs.true121.i.if.then125.i_crit_edge:        ; preds = %land.lhs.true121.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then125.i

if.then125.i:                                     ; preds = %land.lhs.true121.i.if.then125.i_crit_edge, %if.end111.i.if.then125.i_crit_edge
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.165, ptr noundef nonnull @.str.2, i32 noundef 3387) #13
  unreachable

if.end126.i:                                      ; preds = %land.lhs.true121.i
  %79 = ptrtoint ptr %to_abort99.i.le to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %to_abort99.i.le, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %80)
  %cmp129.i = icmp eq i8 %80, 2
  %and.i567.i = and i32 %77, -16711681
  %storemerge623.v.i = select i1 %cmp129.i, i32 196608, i32 327680
  %storemerge623.i = or i32 %storemerge623.v.i, %and.i567.i
  %81 = ptrtoint ptr %result.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %storemerge623.i, ptr %result.i.i, align 4
  %comp_ccbq.i.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 91
  %82 = ptrtoint ptr %comp_ccbq.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %comp_ccbq.i.i, align 4
  %cmp.not.i18.i.i = icmp eq ptr %83, %comp_ccbq.i.i
  br i1 %cmp.not.i18.i.i, label %if.end126.i.sw.epilog.i_crit_edge, label %sym_remque_head.exit.lr.ph.i.i

if.end126.i.sw.epilog.i_crit_edge:                ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sym_remque_head.exit.lr.ph.i.i:                   ; preds = %if.end126.i
  %blink.i.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 90, i32 1
  br label %sym_remque_head.exit.i.i

sym_remque_head.exit.i.i:                         ; preds = %cleanup.i.i.sym_remque_head.exit.i.i_crit_edge, %sym_remque_head.exit.lr.ph.i.i
  %84 = phi ptr [ %83, %sym_remque_head.exit.lr.ph.i.i ], [ %99, %cleanup.i.i.sym_remque_head.exit.i.i_crit_edge ]
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %84, align 4
  %blink1.i.i.i.i = getelementptr inbounds %struct.sym_quehead, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %blink1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %comp_ccbq.i.i, ptr %blink1.i.i.i.i, align 4
  %88 = ptrtoint ptr %comp_ccbq.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %86, ptr %comp_ccbq.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %84, null
  br i1 %cmp.not.i.i, label %sym_remque_head.exit.i.i.sw.epilog.i_crit_edge, label %while.body.i.i

sym_remque_head.exit.i.i.sw.epilog.i_crit_edge:   ; preds = %sym_remque_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

while.body.i.i:                                   ; preds = %sym_remque_head.exit.i.i
  %89 = ptrtoint ptr %blink.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %blink.i.i, align 4
  store ptr %84, ptr %blink.i.i, align 4
  %91 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %busy_ccbq.i, ptr %84, align 4
  %blink3.i.i.i = getelementptr inbounds %struct.sym_quehead, ptr %84, i32 0, i32 1
  %92 = ptrtoint ptr %blink3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %90, ptr %blink3.i.i.i, align 4
  %93 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %84, ptr %90, align 4
  %arrayidx.i.i = getelementptr i8, ptr %84, i32 -955
  %94 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %95)
  %cmp2.i.i = icmp eq i8 %95, 4
  br i1 %cmp2.i.i, label %while.body.i.i.cleanup.i.i_crit_edge, label %if.end.i.i

while.body.i.i.cleanup.i.i_crit_edge:             ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i.i

if.end.i.i:                                       ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i = getelementptr i8, ptr %84, i32 -972
  %cmd4.i.i = getelementptr i8, ptr %84, i32 -116
  %96 = ptrtoint ptr %cmd4.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %cmd4.i.i, align 4
  tail call void @sym_free_ccb(ptr noundef %np, ptr noundef %add.ptr.i.i) #9
  tail call void @sym_xpt_done(ptr noundef %np, ptr noundef %97) #9
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.end.i.i, %while.body.i.i.cleanup.i.i_crit_edge
  %98 = ptrtoint ptr %comp_ccbq.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %comp_ccbq.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %99, %comp_ccbq.i.i
  br i1 %cmp.not.i.i.i, label %cleanup.i.i.sw.epilog.i_crit_edge, label %cleanup.i.i.sym_remque_head.exit.i.i_crit_edge

cleanup.i.i.sym_remque_head.exit.i.i_crit_edge:   ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sym_remque_head.exit.i.i

cleanup.i.i.sw.epilog.i_crit_edge:                ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb135.i:                                       ; preds = %if.end
  %100 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ioaddr, align 4
  %add.ptr138.i = getelementptr i8, ptr %101, i32 6
  %102 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr138.i) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  %103 = and i8 %102, 15
  %and.i457 = zext i8 %103 to i32
  %arrayidx142.i = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %and.i457
  %bus_dmat.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 41
  %104 = ptrtoint ptr %bus_dmat.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %bus_dmat.i, align 4
  %abrt_msg.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 92
  %call143.i = tail call i32 @__vtobus(ptr noundef %105, ptr noundef %abrt_msg.i) #9
  %106 = tail call i32 @llvm.bswap.i32(i32 %call143.i) #9
  %abrt_tbl.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 93
  %addr.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 93, i32 1
  %107 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %addr.i, align 4
  %to_reset144.i = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %and.i457, i32 8
  %108 = ptrtoint ptr %to_reset144.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %to_reset144.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool145.not.i = icmp eq i8 %109, 0
  br i1 %tobool145.not.i, label %if.end151.i, label %sw.epilog.thread.i

sw.epilog.thread.i:                               ; preds = %sw.bb135.i
  call void @__sanitizer_cov_trace_pc() #11
  %110 = ptrtoint ptr %abrt_msg.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 12, ptr %abrt_msg.i, align 4
  %111 = ptrtoint ptr %abrt_tbl.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 1, ptr %abrt_tbl.i, align 4
  %112 = ptrtoint ptr %to_reset144.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 0, ptr %to_reset144.i, align 4
  br label %do.end372.i

if.end151.i:                                      ; preds = %sw.bb135.i
  %lun0p152.i = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %and.i457, i32 3
  %113 = ptrtoint ptr %lun0p152.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %lun0p152.i, align 4
  %tobool153.not.i = icmp eq ptr %114, null
  br i1 %tobool153.not.i, label %if.end151.i.if.else160.i_crit_edge, label %land.lhs.true154.i

if.end151.i.if.else160.i_crit_edge:               ; preds = %if.end151.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else160.i

land.lhs.true154.i:                               ; preds = %if.end151.i
  %to_clear156.i = getelementptr inbounds %struct.sym_lcb, ptr %114, i32 0, i32 11
  %115 = ptrtoint ptr %to_clear156.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %to_clear156.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool158.not.i = icmp eq i8 %116, 0
  br i1 %tobool158.not.i, label %land.lhs.true154.i.if.else160.i_crit_edge, label %land.lhs.true154.i.cond.end196.i_crit_edge

land.lhs.true154.i.cond.end196.i_crit_edge:       ; preds = %land.lhs.true154.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end196.i

land.lhs.true154.i.if.else160.i_crit_edge:        ; preds = %land.lhs.true154.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else160.i

if.else160.i:                                     ; preds = %land.lhs.true154.i.if.else160.i_crit_edge, %if.end151.i.if.else160.i_crit_edge
  %lunmp161.i = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %and.i457, i32 4
  %117 = ptrtoint ptr %lunmp161.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %lunmp161.i, align 4
  %tobool162.not.i = icmp eq ptr %118, null
  br i1 %tobool162.not.i, label %if.else160.i.if.end207.i_crit_edge, label %if.else160.i.for.body167.i_crit_edge

if.else160.i.for.body167.i_crit_edge:             ; preds = %if.else160.i
  br label %for.body167.i

if.else160.i.if.end207.i_crit_edge:               ; preds = %if.else160.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end207.i

for.body167.i:                                    ; preds = %for.inc179.i.for.body167.i_crit_edge, %if.else160.i.for.body167.i_crit_edge
  %k.1633.i = phi i32 [ %inc180.i, %for.inc179.i.for.body167.i_crit_edge ], [ 1, %if.else160.i.for.body167.i_crit_edge ]
  %arrayidx169.i = getelementptr ptr, ptr %118, i32 %k.1633.i
  %119 = ptrtoint ptr %arrayidx169.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %arrayidx169.i, align 4
  %tobool170.not.i = icmp eq ptr %120, null
  br i1 %tobool170.not.i, label %for.body167.i.for.inc179.i_crit_edge, label %land.lhs.true171.i

for.body167.i.for.inc179.i_crit_edge:             ; preds = %for.body167.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc179.i

land.lhs.true171.i:                               ; preds = %for.body167.i
  %to_clear174.i = getelementptr inbounds %struct.sym_lcb, ptr %120, i32 0, i32 11
  %121 = ptrtoint ptr %to_clear174.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %to_clear174.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %tobool176.not.i = icmp eq i8 %122, 0
  br i1 %tobool176.not.i, label %land.lhs.true171.i.for.inc179.i_crit_edge, label %cond.true191.i

land.lhs.true171.i.for.inc179.i_crit_edge:        ; preds = %land.lhs.true171.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc179.i

for.inc179.i:                                     ; preds = %land.lhs.true171.i.for.inc179.i_crit_edge, %for.body167.i.for.inc179.i_crit_edge
  %inc180.i = add nuw nsw i32 %k.1633.i, 1
  %exitcond.not.i = icmp eq i32 %inc180.i, 64
  br i1 %exitcond.not.i, label %for.inc179.i.if.end207.i_crit_edge, label %for.inc179.i.for.body167.i_crit_edge

for.inc179.i.for.body167.i_crit_edge:             ; preds = %for.inc179.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body167.i

for.inc179.i.if.end207.i_crit_edge:               ; preds = %for.inc179.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end207.i

cond.true191.i:                                   ; preds = %land.lhs.true171.i
  call void @__sanitizer_cov_trace_pc() #11
  %idxprom.i = and i32 %k.1633.i, 255
  %arrayidx194.i = getelementptr ptr, ptr %118, i32 %idxprom.i
  %123 = ptrtoint ptr %arrayidx194.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %arrayidx194.i, align 4
  br label %cond.end196.i

cond.end196.i:                                    ; preds = %cond.true191.i, %land.lhs.true154.i.cond.end196.i_crit_edge
  %lun.0614.i = phi i32 [ %k.1633.i, %cond.true191.i ], [ 0, %land.lhs.true154.i.cond.end196.i_crit_edge ]
  %cond197.i = phi ptr [ %124, %cond.true191.i ], [ %114, %land.lhs.true154.i.cond.end196.i_crit_edge ]
  %to_clear198.i = getelementptr inbounds %struct.sym_lcb, ptr %cond197.i, i32 0, i32 11
  %125 = ptrtoint ptr %to_clear198.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 0, ptr %to_clear198.i, align 4
  %126 = trunc i32 %lun.0614.i to i8
  %127 = and i8 %126, 7
  %conv200.i = or i8 %127, -128
  %128 = ptrtoint ptr %abrt_msg.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %conv200.i, ptr %abrt_msg.i, align 4
  %arrayidx204.i = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 92, i32 1
  %129 = ptrtoint ptr %arrayidx204.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 6, ptr %arrayidx204.i, align 1
  %130 = ptrtoint ptr %abrt_tbl.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 2, ptr %abrt_tbl.i, align 4
  br label %sw.epilog.i

if.end207.i:                                      ; preds = %for.inc179.i.if.end207.i_crit_edge, %if.else160.i.if.end207.i_crit_edge
  %busy_ccbq208.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 90
  %131 = ptrtoint ptr %busy_ccbq208.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %qp.2635.i = load ptr, ptr %busy_ccbq208.i, align 4
  %cmp212.not636.i = icmp eq ptr %qp.2635.i, %busy_ccbq208.i
  br i1 %cmp212.not636.i, label %if.end207.i.if.then241.i_crit_edge, label %if.end207.i.for.body214.i_crit_edge

if.end207.i.for.body214.i_crit_edge:              ; preds = %if.end207.i
  br label %for.body214.i

if.end207.i.if.then241.i_crit_edge:               ; preds = %if.end207.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then241.i

for.body214.i:                                    ; preds = %for.inc237.i.for.body214.i_crit_edge, %if.end207.i.for.body214.i_crit_edge
  %qp.2637.i = phi ptr [ %qp.2.i, %for.inc237.i.for.body214.i_crit_edge ], [ %qp.2635.i, %if.end207.i.for.body214.i_crit_edge ]
  %arrayidx221.i = getelementptr i8, ptr %qp.2637.i, i32 -955
  %132 = ptrtoint ptr %arrayidx221.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %arrayidx221.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %133)
  %cmp223.not.i = icmp eq i8 %133, 3
  br i1 %cmp223.not.i, label %if.end226.i, label %for.body214.i.for.inc237.i_crit_edge

for.body214.i.for.inc237.i_crit_edge:             ; preds = %for.body214.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc237.i

if.end226.i:                                      ; preds = %for.body214.i
  %target227.i = getelementptr i8, ptr %qp.2637.i, i32 -6
  %134 = ptrtoint ptr %target227.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %target227.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %135, i8 %103)
  %cmp229.not.i = icmp eq i8 %135, %103
  br i1 %cmp229.not.i, label %if.end232.i, label %if.end226.i.for.inc237.i_crit_edge

if.end226.i.for.inc237.i_crit_edge:               ; preds = %if.end226.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc237.i

if.end232.i:                                      ; preds = %if.end226.i
  %to_abort233.i = getelementptr i8, ptr %qp.2637.i, i32 24
  %136 = ptrtoint ptr %to_abort233.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %to_abort233.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool234.not.i = icmp eq i8 %137, 0
  br i1 %tobool234.not.i, label %if.end232.i.for.inc237.i_crit_edge, label %if.end246.i

if.end232.i.for.inc237.i_crit_edge:               ; preds = %if.end232.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc237.i

for.inc237.i:                                     ; preds = %if.end232.i.for.inc237.i_crit_edge, %if.end226.i.for.inc237.i_crit_edge, %for.body214.i.for.inc237.i_crit_edge
  %138 = ptrtoint ptr %qp.2637.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %qp.2.i = load ptr, ptr %qp.2637.i, align 4
  %cmp212.not.i = icmp eq ptr %qp.2.i, %busy_ccbq208.i
  br i1 %cmp212.not.i, label %for.inc237.i.if.then241.i_crit_edge, label %for.inc237.i.for.body214.i_crit_edge

for.inc237.i.for.body214.i_crit_edge:             ; preds = %for.inc237.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body214.i

for.inc237.i.if.then241.i_crit_edge:              ; preds = %for.inc237.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then241.i

if.then241.i:                                     ; preds = %for.inc237.i.if.then241.i_crit_edge, %if.end207.i.if.then241.i_crit_edge
  %139 = ptrtoint ptr %abrt_msg.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 6, ptr %abrt_msg.i, align 4
  %140 = ptrtoint ptr %abrt_tbl.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 1, ptr %abrt_tbl.i, align 4
  br label %sw.epilog.i

if.end246.i:                                      ; preds = %if.end232.i
  %to_abort233.i.le = getelementptr i8, ptr %qp.2637.i, i32 24
  %lun247.i = getelementptr i8, ptr %qp.2637.i, i32 -5
  %141 = ptrtoint ptr %lun247.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %lun247.i, align 1
  %143 = and i8 %142, 7
  %144 = or i8 %143, -128
  %145 = ptrtoint ptr %abrt_msg.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %144, ptr %abrt_msg.i, align 4
  %tag.i = getelementptr i8, ptr %qp.2637.i, i32 -8
  %146 = ptrtoint ptr %tag.i to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %tag.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %147)
  %cmp255.i = icmp eq i16 %147, 256
  br i1 %cmp255.i, label %if.then257.i, label %if.else262.i

if.then257.i:                                     ; preds = %if.end246.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx259.i = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 92, i32 1
  %148 = ptrtoint ptr %arrayidx259.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 6, ptr %arrayidx259.i, align 1
  br label %if.end274.i

if.else262.i:                                     ; preds = %if.end246.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx263.i = getelementptr i8, ptr %qp.2637.i, i32 -47
  %149 = ptrtoint ptr %arrayidx263.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %arrayidx263.i, align 1
  %arrayidx265.i = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 92, i32 1
  %151 = ptrtoint ptr %arrayidx265.i to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %150, ptr %arrayidx265.i, align 1
  %arrayidx267.i = getelementptr i8, ptr %qp.2637.i, i32 -46
  %152 = ptrtoint ptr %arrayidx267.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %arrayidx267.i, align 2
  %arrayidx269.i = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 92, i32 2
  %154 = ptrtoint ptr %arrayidx269.i to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 %153, ptr %arrayidx269.i, align 2
  %arrayidx271.i = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 92, i32 3
  %155 = ptrtoint ptr %arrayidx271.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 13, ptr %arrayidx271.i, align 1
  br label %if.end274.i

if.end274.i:                                      ; preds = %if.else262.i, %if.then257.i
  %storemerge.i = phi i32 [ 4, %if.else262.i ], [ 2, %if.then257.i ]
  %156 = ptrtoint ptr %abrt_tbl.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %storemerge.i, ptr %abrt_tbl.i, align 4
  %157 = ptrtoint ptr %to_abort233.i.le to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %to_abort233.i.le, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %158)
  %cmp277.i = icmp eq i8 %158, 2
  br i1 %cmp277.i, label %if.then279.i, label %if.end274.i.if.end281.i_crit_edge

if.end274.i.if.end281.i_crit_edge:                ; preds = %if.end274.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end281.i

if.then279.i:                                     ; preds = %if.end274.i
  call void @__sanitizer_cov_trace_pc() #11
  %cmd280.i = getelementptr i8, ptr %qp.2637.i, i32 -116
  %159 = ptrtoint ptr %cmd280.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %cmd280.i, align 4
  %result.i569.i = getelementptr inbounds %struct.scsi_cmnd, ptr %160, i32 0, i32 24
  %161 = ptrtoint ptr %result.i569.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %result.i569.i, align 4
  %and.i570.i = and i32 %162, -16711681
  %or.i571.i = or i32 %and.i570.i, 196608
  store i32 %or.i571.i, ptr %result.i569.i, align 4
  br label %if.end281.i

if.end281.i:                                      ; preds = %if.then279.i, %if.end274.i.if.end281.i_crit_edge
  %163 = ptrtoint ptr %to_abort233.i.le to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 0, ptr %to_abort233.i.le, align 4
  br label %sw.epilog.i

sw.bb283.i:                                       ; preds = %if.end
  %164 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %ioaddr, align 4
  %add.ptr286.i = getelementptr i8, ptr %165, i32 6
  %166 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr286.i) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  %167 = and i8 %166, 15
  %and289.i = zext i8 %167 to i32
  %arrayidx291.i = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %and289.i
  %starget292.i = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %and289.i, i32 13
  %168 = ptrtoint ptr %starget292.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %starget292.i, align 4
  %abrt_msg293.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 92
  %170 = ptrtoint ptr %abrt_msg293.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %abrt_msg293.i, align 4
  %172 = zext i8 %171 to i64
  call void @__sanitizer_cov_trace_switch(i64 %172, ptr @__sancov_gen_cov_switch_values.263)
  switch i8 %171, label %if.else332.i [
    i8 6, label %sw.bb283.i.do.body385.i_crit_edge
    i8 12, label %if.then305.i
  ]

sw.bb283.i.do.body385.i_crit_edge:                ; preds = %sw.bb283.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body385.i

if.then305.i:                                     ; preds = %sw.bb283.i
  call void @__sanitizer_cov_trace_pc() #11
  %sval307.i = getelementptr inbounds %struct.sym_tcbh, ptr %arrayidx291.i, i32 0, i32 3
  %173 = ptrtoint ptr %sval307.i to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 0, ptr %sval307.i, align 1
  %rv_scntl3.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 28
  %174 = ptrtoint ptr %rv_scntl3.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %rv_scntl3.i, align 1
  %wval309.i = getelementptr inbounds %struct.sym_tcbh, ptr %arrayidx291.i, i32 0, i32 5
  %176 = ptrtoint ptr %wval309.i to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 %175, ptr %wval309.i, align 1
  %uval.i = getelementptr inbounds %struct.sym_tcbh, ptr %arrayidx291.i, i32 0, i32 2
  %177 = ptrtoint ptr %uval.i to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 0, ptr %uval.i, align 4
  %starget_data.i = getelementptr inbounds %struct.scsi_target, ptr %169, i32 0, i32 15
  %178 = ptrtoint ptr %starget_data.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 0, ptr %starget_data.i, align 4
  %offset.i = getelementptr inbounds %struct.scsi_target, ptr %169, i32 1, i32 1
  %179 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 0, ptr %offset.i, align 4
  %width.i = getelementptr inbounds %struct.scsi_target, ptr %169, i32 1, i32 2
  %180 = ptrtoint ptr %width.i to i32
  call void @__asan_load2_noabort(i32 %180)
  %bf.load.i = load i16, ptr %width.i, align 4
  %bf.clear323.i = and i16 %bf.load.i, 21503
  store i16 %bf.clear323.i, ptr %width.i, align 4
  %check_nego.i = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %and289.i, i32 5, i32 2
  %181 = ptrtoint ptr %check_nego.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %bf.load325.i = load i8, ptr %check_nego.i, align 2
  %bf.set327.i = and i8 %bf.load325.i, -15
  %bf.clear330.i = or i8 %bf.set327.i, 8
  store i8 %bf.clear330.i, ptr %check_nego.i, align 2
  br label %if.end347.i

if.else332.i:                                     ; preds = %sw.bb283.i
  %182 = and i8 %171, 63
  %and336.i = zext i8 %182 to i32
  %arrayidx338.i = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 92, i32 1
  %183 = ptrtoint ptr %arrayidx338.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %arrayidx338.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %184)
  %cmp340.i = icmp eq i8 %184, 13
  br i1 %cmp340.i, label %if.then342.i, label %if.else332.i.if.end347.i_crit_edge

if.else332.i.if.end347.i_crit_edge:               ; preds = %if.else332.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end347.i

if.then342.i:                                     ; preds = %if.else332.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx344.i = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 92, i32 2
  %185 = ptrtoint ptr %arrayidx344.i to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %arrayidx344.i, align 2
  %conv345.i = zext i8 %186 to i32
  br label %if.end347.i

if.end347.i:                                      ; preds = %if.then342.i, %if.else332.i.if.end347.i_crit_edge, %if.then305.i
  %task.0.i = phi i32 [ -1, %if.then305.i ], [ %conv345.i, %if.then342.i ], [ -1, %if.else332.i.if.end347.i_crit_edge ]
  %lun.1.i = phi i32 [ -1, %if.then305.i ], [ %and336.i, %if.then342.i ], [ %and336.i, %if.else332.i.if.end347.i_crit_edge ]
  %187 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %ioaddr, align 4
  %add.ptr350.i = getelementptr i8, ptr %188, i32 52
  %189 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr350.i) #9, !srcloc !469
  %190 = tail call i32 @llvm.bswap.i32(i32 %189) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !470
  %squeue_ba352.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 75
  %191 = ptrtoint ptr %squeue_ba352.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %squeue_ba352.i, align 4
  %sub353.i = sub i32 %190, %192
  %div354562.i = lshr i32 %sub353.i, 2
  %193 = tail call fastcc i32 @sym_dequeue_from_squeue(ptr noundef %np, i32 noundef %div354562.i, i32 noundef %and289.i, i32 noundef %lun.1.i) #9
  %call356.i = tail call i32 @sym_clear_tasks(ptr noundef %np, i32 noundef 5, i32 noundef %and289.i, i32 noundef %lun.1.i, i32 noundef %task.0.i) #9
  %comp_ccbq.i572.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 91
  %194 = ptrtoint ptr %comp_ccbq.i572.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %comp_ccbq.i572.i, align 4
  %cmp.not.i18.i573.i = icmp eq ptr %195, %comp_ccbq.i572.i
  br i1 %cmp.not.i18.i573.i, label %if.end347.i.sym_flush_comp_queue.exit589.i_crit_edge, label %sym_remque_head.exit.lr.ph.i576.i

if.end347.i.sym_flush_comp_queue.exit589.i_crit_edge: ; preds = %if.end347.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sym_flush_comp_queue.exit589.i

sym_remque_head.exit.lr.ph.i576.i:                ; preds = %if.end347.i
  %busy_ccbq.i574.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 90
  %blink.i575.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 90, i32 1
  br label %sym_remque_head.exit.i579.i

sym_remque_head.exit.i579.i:                      ; preds = %cleanup.i588.i.sym_remque_head.exit.i579.i_crit_edge, %sym_remque_head.exit.lr.ph.i576.i
  %196 = phi ptr [ %195, %sym_remque_head.exit.lr.ph.i576.i ], [ %211, %cleanup.i588.i.sym_remque_head.exit.i579.i_crit_edge ]
  %197 = ptrtoint ptr %196 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %196, align 4
  %blink1.i.i.i577.i = getelementptr inbounds %struct.sym_quehead, ptr %198, i32 0, i32 1
  %199 = ptrtoint ptr %blink1.i.i.i577.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr %comp_ccbq.i572.i, ptr %blink1.i.i.i577.i, align 4
  %200 = ptrtoint ptr %comp_ccbq.i572.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr %198, ptr %comp_ccbq.i572.i, align 4
  %cmp.not.i578.i = icmp eq ptr %196, null
  br i1 %cmp.not.i578.i, label %sym_remque_head.exit.i579.i.sym_flush_comp_queue.exit589.i_crit_edge, label %while.body.i584.i

sym_remque_head.exit.i579.i.sym_flush_comp_queue.exit589.i_crit_edge: ; preds = %sym_remque_head.exit.i579.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sym_flush_comp_queue.exit589.i

while.body.i584.i:                                ; preds = %sym_remque_head.exit.i579.i
  %201 = ptrtoint ptr %blink.i575.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %blink.i575.i, align 4
  store ptr %196, ptr %blink.i575.i, align 4
  %203 = ptrtoint ptr %196 to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr %busy_ccbq.i574.i, ptr %196, align 4
  %blink3.i.i581.i = getelementptr inbounds %struct.sym_quehead, ptr %196, i32 0, i32 1
  %204 = ptrtoint ptr %blink3.i.i581.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr %202, ptr %blink3.i.i581.i, align 4
  %205 = ptrtoint ptr %202 to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr %196, ptr %202, align 4
  %arrayidx.i582.i = getelementptr i8, ptr %196, i32 -955
  %206 = ptrtoint ptr %arrayidx.i582.i to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %arrayidx.i582.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %207)
  %cmp2.i583.i = icmp eq i8 %207, 4
  br i1 %cmp2.i583.i, label %while.body.i584.i.cleanup.i588.i_crit_edge, label %if.end.i586.i

while.body.i584.i.cleanup.i588.i_crit_edge:       ; preds = %while.body.i584.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i588.i

if.end.i586.i:                                    ; preds = %while.body.i584.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i580.i = getelementptr i8, ptr %196, i32 -972
  %cmd4.i585.i = getelementptr i8, ptr %196, i32 -116
  %208 = ptrtoint ptr %cmd4.i585.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %cmd4.i585.i, align 4
  tail call void @sym_free_ccb(ptr noundef %np, ptr noundef %add.ptr.i580.i) #9
  tail call void @sym_xpt_done(ptr noundef %np, ptr noundef %209) #9
  br label %cleanup.i588.i

cleanup.i588.i:                                   ; preds = %if.end.i586.i, %while.body.i584.i.cleanup.i588.i_crit_edge
  %210 = ptrtoint ptr %comp_ccbq.i572.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %comp_ccbq.i572.i, align 4
  %cmp.not.i.i587.i = icmp eq ptr %211, %comp_ccbq.i572.i
  br i1 %cmp.not.i.i587.i, label %cleanup.i588.i.sym_flush_comp_queue.exit589.i_crit_edge, label %cleanup.i588.i.sym_remque_head.exit.i579.i_crit_edge

cleanup.i588.i.sym_remque_head.exit.i579.i_crit_edge: ; preds = %cleanup.i588.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sym_remque_head.exit.i579.i

cleanup.i588.i.sym_flush_comp_queue.exit589.i_crit_edge: ; preds = %cleanup.i588.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sym_flush_comp_queue.exit589.i

sym_flush_comp_queue.exit589.i:                   ; preds = %cleanup.i588.i.sym_flush_comp_queue.exit589.i_crit_edge, %sym_remque_head.exit.i579.i.sym_flush_comp_queue.exit589.i_crit_edge, %if.end347.i.sym_flush_comp_queue.exit589.i_crit_edge
  %212 = ptrtoint ptr %abrt_msg293.i to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %abrt_msg293.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %213)
  %cmp360.i = icmp eq i8 %213, 12
  br i1 %cmp360.i, label %do.end365.i, label %sym_flush_comp_queue.exit589.i.sw.epilog.i_crit_edge

sym_flush_comp_queue.exit589.i.sw.epilog.i_crit_edge: ; preds = %sym_flush_comp_queue.exit589.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

do.end365.i:                                      ; preds = %sym_flush_comp_queue.exit589.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.scsi_target, ptr %169, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.168, ptr noundef %dev.i, ptr noundef nonnull @.str.166) #12
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %do.end365.i, %sym_flush_comp_queue.exit589.i.sw.epilog.i_crit_edge, %if.end281.i, %if.then241.i, %cond.end196.i, %cleanup.i.i.sw.epilog.i_crit_edge, %sym_remque_head.exit.i.i.sw.epilog.i_crit_edge, %if.end126.i.sw.epilog.i_crit_edge, %if.then107.i
  %tp.2.i = phi ptr [ %arrayidx291.i, %do.end365.i ], [ %arrayidx291.i, %sym_flush_comp_queue.exit589.i.sw.epilog.i_crit_edge ], [ %arrayidx142.i, %cond.end196.i ], [ %arrayidx142.i, %if.end281.i ], [ %arrayidx142.i, %if.then241.i ], [ %tp.1596.i, %if.then107.i ], [ %tp.1596.i, %if.end126.i.sw.epilog.i_crit_edge ], [ %tp.1596.i, %sym_remque_head.exit.i.i.sw.epilog.i_crit_edge ], [ %tp.1596.i, %cleanup.i.i.sw.epilog.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %2)
  %cmp367.i = icmp eq i8 %2, 14
  br i1 %cmp367.i, label %sw.epilog.i.do.end372.i_crit_edge, label %sw.epilog.i.do.body385.i_crit_edge

sw.epilog.i.do.body385.i_crit_edge:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body385.i

sw.epilog.i.do.end372.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end372.i

do.end372.i:                                      ; preds = %sw.epilog.i.do.end372.i_crit_edge, %sw.epilog.thread.i
  %tp.2619.i = phi ptr [ %arrayidx142.i, %sw.epilog.thread.i ], [ %tp.2.i, %sw.epilog.i.do.end372.i_crit_edge ]
  %starget373.i = getelementptr inbounds %struct.sym_tcb, ptr %tp.2619.i, i32 0, i32 13
  %214 = ptrtoint ptr %starget373.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %starget373.i, align 4
  %dev374.i = getelementptr inbounds %struct.scsi_target, ptr %215, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev374.i, ptr noundef nonnull @.str.170) #12
  %abrt_tbl377.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 93
  %216 = ptrtoint ptr %abrt_tbl377.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %abrt_tbl377.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %217)
  %cmp5.i.i = icmp sgt i32 %217, 0
  br i1 %cmp5.i.i, label %do.end.i.preheader.i, label %do.end372.i.sym_printl_hex.exit.i_crit_edge

do.end372.i.sym_printl_hex.exit.i_crit_edge:      ; preds = %do.end372.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sym_printl_hex.exit.i

do.end.i.preheader.i:                             ; preds = %do.end372.i
  %abrt_msg375.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 92
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %do.end.i.preheader.i
  %p.addr.07.i.i = phi ptr [ %incdec.ptr.i.i, %do.end.i.i.do.end.i.i_crit_edge ], [ %abrt_msg375.i, %do.end.i.preheader.i ]
  %n.addr.06.i.i = phi i32 [ %dec.i.i, %do.end.i.i.do.end.i.i_crit_edge ], [ %217, %do.end.i.preheader.i ]
  %dec.i.i = add nsw i32 %n.addr.06.i.i, -1
  %incdec.ptr.i.i = getelementptr i8, ptr %p.addr.07.i.i, i32 1
  %218 = ptrtoint ptr %p.addr.07.i.i to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %p.addr.07.i.i, align 1
  %conv.i.i = zext i8 %219 to i32
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.172, i32 noundef %conv.i.i) #12
  %cmp.i.i = icmp ugt i32 %n.addr.06.i.i, 1
  br i1 %cmp.i.i, label %do.end.i.i.do.end.i.i_crit_edge, label %do.end.i.i.sym_printl_hex.exit.i_crit_edge

do.end.i.i.sym_printl_hex.exit.i_crit_edge:       ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sym_printl_hex.exit.i

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i

sym_printl_hex.exit.i:                            ; preds = %do.end.i.i.sym_printl_hex.exit.i_crit_edge, %do.end372.i.sym_printl_hex.exit.i_crit_edge
  %call4.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78) #12
  %220 = ptrtoint ptr %abrt_tbl377.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %abrt_tbl377.i, align 4
  %222 = tail call i32 @llvm.bswap.i32(i32 %221) #9
  %223 = ptrtoint ptr %abrt_tbl377.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 %222, ptr %abrt_tbl377.i, align 4
  br label %do.body385.i

do.body385.i:                                     ; preds = %sym_printl_hex.exit.i, %sw.epilog.i.do.body385.i_crit_edge, %sw.bb283.i.do.body385.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !486
  tail call void @arm_heavy_mb() #9
  %224 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %ioaddr, align 4
  %add.ptr390.i = getelementptr i8, ptr %225, i32 59
  %226 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr390.i) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  %227 = or i8 %226, 5
  %228 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %ioaddr, align 4
  %add.ptr397.i = getelementptr i8, ptr %229, i32 59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr397.i, i8 %227) #9, !srcloc !464
  br label %cleanup

do.body20:                                        ; preds = %if.end
  %tobool21.not = icmp eq ptr %cp.0.lcssa.i, null
  br i1 %tobool21.not, label %do.end25, label %if.then22

if.then22:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #11
  %cmd = getelementptr inbounds %struct.sym_ccb, ptr %cp.0.lcssa.i, i32 0, i32 1
  %230 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %cmd, align 4
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.141, ptr noundef %231, ptr noundef nonnull @.str.142) #9
  br label %cleanup

do.end25:                                         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #11
  %starget = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %idxprom, i32 13
  %232 = ptrtoint ptr %starget to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %starget, align 4
  %dev = getelementptr inbounds %struct.scsi_target, ptr %233, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.141, ptr noundef %dev, ptr noundef nonnull @.str.142) #12
  br label %cleanup

do.body30:                                        ; preds = %if.end
  %tobool31.not = icmp eq ptr %cp.0.lcssa.i, null
  br i1 %tobool31.not, label %do.end37, label %if.then32

if.then32:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #11
  %cmd33 = getelementptr inbounds %struct.sym_ccb, ptr %cp.0.lcssa.i, i32 0, i32 1
  %234 = ptrtoint ptr %cmd33 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %cmd33, align 4
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.141, ptr noundef %235, ptr noundef nonnull @.str.145) #9
  br label %cleanup

do.end37:                                         ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #11
  %starget38 = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %idxprom, i32 13
  %236 = ptrtoint ptr %starget38 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %starget38, align 4
  %dev39 = getelementptr inbounds %struct.scsi_target, ptr %237, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.141, ptr noundef %dev39, ptr noundef nonnull @.str.145) #12
  br label %cleanup

do.body44:                                        ; preds = %if.end
  %tobool45.not = icmp eq ptr %cp.0.lcssa.i, null
  br i1 %tobool45.not, label %do.end51, label %if.then46

if.then46:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #11
  %cmd47 = getelementptr inbounds %struct.sym_ccb, ptr %cp.0.lcssa.i, i32 0, i32 1
  %238 = ptrtoint ptr %cmd47 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %cmd47, align 4
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.141, ptr noundef %239, ptr noundef nonnull @.str.148) #9
  br label %cleanup

do.end51:                                         ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #11
  %starget52 = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %idxprom, i32 13
  %240 = ptrtoint ptr %starget52 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %starget52, align 4
  %dev53 = getelementptr inbounds %struct.scsi_target, ptr %241, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.141, ptr noundef %dev53, ptr noundef nonnull @.str.148) #12
  br label %cleanup

sw.bb57:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %msgout = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 81
  %242 = ptrtoint ptr %msgout to i32
  call void @__asan_store1_noabort(i32 %242)
  store i8 12, ptr %msgout, align 4
  br label %do.body302

sw.bb59:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %msgout60 = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 81
  %243 = ptrtoint ptr %msgout60 to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 6, ptr %msgout60, align 4
  br label %do.body302

sw.bb62:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %msgout63 = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 81
  %244 = ptrtoint ptr %msgout63 to i32
  call void @__asan_store1_noabort(i32 %244)
  store i8 13, ptr %msgout63, align 4
  br label %do.body302

sw.bb65:                                          ; preds = %if.end
  %msgout66 = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 81
  %245 = ptrtoint ptr %msgout66 to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %msgout66, align 4
  %conv68 = zext i8 %246 to i32
  %lastmsg = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 83
  %247 = ptrtoint ptr %lastmsg to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 %conv68, ptr %lastmsg, align 4
  store i8 8, ptr %msgout66, align 4
  %tobool72.not = icmp eq ptr %cp.0.lcssa.i, null
  br i1 %tobool72.not, label %do.end79, label %if.then73

if.then73:                                        ; preds = %sw.bb65
  call void @__sanitizer_cov_trace_pc() #11
  %cmd74 = getelementptr inbounds %struct.sym_ccb, ptr %cp.0.lcssa.i, i32 0, i32 1
  %248 = ptrtoint ptr %cmd74 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %cmd74, align 4
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.141, ptr noundef %249, ptr noundef nonnull @.str.151, i32 noundef %conv68) #9
  br label %do.body302

do.end79:                                         ; preds = %sw.bb65
  call void @__sanitizer_cov_trace_pc() #11
  %starget80 = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %idxprom, i32 13
  %250 = ptrtoint ptr %starget80 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %starget80, align 4
  %dev81 = getelementptr inbounds %struct.scsi_target, ptr %251, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.141, ptr noundef %dev81, ptr noundef nonnull @.str.151, i32 noundef %conv68) #12
  br label %do.body302

sw.bb86:                                          ; preds = %if.end
  %msgout87 = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 81
  %252 = ptrtoint ptr %msgout87 to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %msgout87, align 4
  %conv89 = zext i8 %253 to i32
  %lastmsg90 = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 83
  %254 = ptrtoint ptr %lastmsg90 to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 %conv89, ptr %lastmsg90, align 4
  store i8 8, ptr %msgout87, align 4
  %255 = zext i8 %253 to i64
  call void @__sanitizer_cov_trace_switch(i64 %255, ptr @__sancov_gen_cov_switch_values.264)
  switch i8 %253, label %sw.bb86.do.body302_crit_edge [
    i8 9, label %sw.bb86.if.then98_crit_edge
    i8 5, label %sw.bb86.if.then98_crit_edge540
  ]

sw.bb86.if.then98_crit_edge540:                   ; preds = %sw.bb86
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then98

sw.bb86.if.then98_crit_edge:                      ; preds = %sw.bb86
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then98

sw.bb86.do.body302_crit_edge:                     ; preds = %sw.bb86
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body302

if.then98:                                        ; preds = %sw.bb86.if.then98_crit_edge, %sw.bb86.if.then98_crit_edge540
  %tobool99.not = icmp eq ptr %cp.0.lcssa.i, null
  br i1 %tobool99.not, label %if.then98.do.body302_crit_edge, label %if.then100

if.then98.do.body302_crit_edge:                   ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body302

if.then100:                                       ; preds = %if.then98
  %xerr_status = getelementptr inbounds %struct.sym_ccb, ptr %cp.0.lcssa.i, i32 0, i32 9
  %256 = ptrtoint ptr %xerr_status to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %xerr_status, align 1
  %258 = and i8 %257, -5
  store i8 %258, ptr %xerr_status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %258)
  %tobool105.not = icmp eq i8 %258, 0
  br i1 %tobool105.not, label %if.then106, label %if.then100.do.body302_crit_edge

if.then100.do.body302_crit_edge:                  ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body302

if.then106:                                       ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #11
  %259 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %ioaddr, align 4
  %add.ptr109 = getelementptr i8, ptr %260, i32 95
  %261 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr109) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  %262 = and i8 %261, -33
  %263 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %ioaddr, align 4
  %add.ptr116 = getelementptr i8, ptr %264, i32 95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr116, i8 %262) #9, !srcloc !464
  br label %do.body302

sw.bb120:                                         ; preds = %if.end
  %tobool121.not = icmp eq ptr %cp.0.lcssa.i, null
  br i1 %tobool121.not, label %sw.bb120.do.body302_crit_edge, label %if.end123

sw.bb120.do.body302_crit_edge:                    ; preds = %sw.bb120
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body302

if.end123:                                        ; preds = %sw.bb120
  %status.i = getelementptr inbounds %struct.sym_ccbh, ptr %cp.0.lcssa.i, i32 0, i32 3
  %arrayidx.i458 = getelementptr %struct.sym_ccbh, ptr %cp.0.lcssa.i, i32 0, i32 3, i32 2
  %265 = ptrtoint ptr %arrayidx.i458 to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %arrayidx.i458, align 2
  %arrayidx4.i = getelementptr %struct.sym_ccbh, ptr %cp.0.lcssa.i, i32 0, i32 3, i32 3
  %267 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %arrayidx4.i, align 1
  %269 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %ioaddr, align 4
  %add.ptr.i = getelementptr i8, ptr %270, i32 52
  %271 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !469
  %272 = tail call i32 @llvm.bswap.i32(i32 %271) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !470
  %squeue_ba.i460 = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 75
  %273 = ptrtoint ptr %squeue_ba.i460 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %squeue_ba.i460, align 4
  %sub.i461 = sub i32 %272, %274
  %div1.i = lshr i32 %sub.i461, 2
  %275 = zext i8 %266 to i64
  call void @__sanitizer_cov_trace_switch(i64 %275, ptr @__sancov_gen_cov_switch_values.265)
  switch i8 %266, label %if.end123.sw.epilog.sink.split.i_crit_edge [
    i8 8, label %if.end123.sw.bb.i_crit_edge
    i8 40, label %if.end123.sw.bb.i_crit_edge541
    i8 34, label %if.end123.sw.bb10.i_crit_edge
    i8 2, label %if.end123.sw.bb10.i_crit_edge542
  ]

if.end123.sw.bb10.i_crit_edge542:                 ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb10.i

if.end123.sw.bb10.i_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb10.i

if.end123.sw.bb.i_crit_edge541:                   ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end123.sw.bb.i_crit_edge:                      ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end123.sw.epilog.sink.split.i_crit_edge:       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split.i

sw.bb.i:                                          ; preds = %if.end123.sw.bb.i_crit_edge, %if.end123.sw.bb.i_crit_edge541
  %verbose.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 87
  %276 = ptrtoint ptr %verbose.i to i32
  call void @__asan_load1_noabort(i32 %276)
  %277 = load i8, ptr %verbose.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %277)
  %cmp.i462 = icmp ugt i8 %277, 1
  br i1 %cmp.i462, label %do.end.i, label %sw.bb.i.sw.epilog.sink.split.i_crit_edge

sw.bb.i.sw.epilog.sink.split.i_crit_edge:         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split.i

do.end.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  %cmd.i463 = getelementptr inbounds %struct.sym_ccb, ptr %cp.0.lcssa.i, i32 0, i32 1
  %278 = ptrtoint ptr %cmd.i463 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %cmd.i463, align 4
  %device.i = getelementptr inbounds %struct.scsi_cmnd, ptr %279, i32 0, i32 1
  %280 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %device.i, align 4
  %sdev_gendev.i = getelementptr inbounds %struct.scsi_device, ptr %281, i32 0, i32 55
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %266)
  %cmp8.i = icmp eq i8 %266, 8
  %cond.i = select i1 %cmp8.i, ptr @.str.178, ptr @.str.179
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %sdev_gendev.i, ptr noundef nonnull @.str.176, ptr noundef nonnull %cond.i) #12
  br label %sw.epilog.sink.split.i

sw.bb10.i:                                        ; preds = %if.end123.sw.bb10.i_crit_edge, %if.end123.sw.bb10.i_crit_edge542
  %282 = and i8 %268, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %282)
  %tobool.not.i464 = icmp eq i8 %282, 0
  br i1 %tobool.not.i464, label %if.end13.i, label %sw.bb10.i.sw.epilog.sink.split.i_crit_edge

sw.bb10.i.sw.epilog.sink.split.i_crit_edge:       ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split.i

if.end13.i:                                       ; preds = %sw.bb10.i
  %target.i = getelementptr inbounds %struct.sym_ccb, ptr %cp.0.lcssa.i, i32 0, i32 19
  %283 = ptrtoint ptr %target.i to i32
  call void @__asan_load1_noabort(i32 %283)
  %284 = load i8, ptr %target.i, align 2
  %conv14.i = zext i8 %284 to i32
  %lun.i = getelementptr inbounds %struct.sym_ccb, ptr %cp.0.lcssa.i, i32 0, i32 20
  %285 = ptrtoint ptr %lun.i to i32
  call void @__asan_load1_noabort(i32 %285)
  %286 = load i8, ptr %lun.i, align 1
  %conv15.i = zext i8 %286 to i32
  %287 = tail call fastcc i32 @sym_dequeue_from_squeue(ptr noundef %np, i32 noundef %div1.i, i32 noundef %conv14.i, i32 noundef %conv15.i) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !487
  tail call void @arm_heavy_mb() #9
  %fwa_bas.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 54
  %288 = ptrtoint ptr %fwa_bas.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %fwa_bas.i, align 4
  %290 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %ioaddr, align 4
  %add.ptr23.i = getelementptr i8, ptr %291, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !473
  tail call void @arm_heavy_mb() #9
  %292 = tail call i32 @llvm.bswap.i32(i32 %289) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i, i32 %292) #9, !srcloc !474
  %293 = ptrtoint ptr %arrayidx.i458 to i32
  call void @__asan_load1_noabort(i32 %293)
  %294 = load i8, ptr %arrayidx.i458, align 2
  %sv_scsi_status.i = getelementptr inbounds %struct.sym_ccb, ptr %cp.0.lcssa.i, i32 0, i32 14
  %295 = ptrtoint ptr %sv_scsi_status.i to i32
  call void @__asan_store1_noabort(i32 %295)
  store i8 %294, ptr %sv_scsi_status.i, align 2
  %xerr_status.i = getelementptr inbounds %struct.sym_ccb, ptr %cp.0.lcssa.i, i32 0, i32 9
  %296 = ptrtoint ptr %xerr_status.i to i32
  call void @__asan_load1_noabort(i32 %296)
  %297 = load i8, ptr %xerr_status.i, align 1
  %sv_xerr_status.i = getelementptr inbounds %struct.sym_ccb, ptr %cp.0.lcssa.i, i32 0, i32 15
  %298 = ptrtoint ptr %sv_xerr_status.i to i32
  call void @__asan_store1_noabort(i32 %298)
  store i8 %297, ptr %sv_xerr_status.i, align 1
  %call30.i = tail call fastcc i32 @sym_compute_residual(ptr noundef %np, ptr noundef nonnull %cp.0.lcssa.i) #9
  %sv_resid.i = getelementptr inbounds %struct.sym_ccb, ptr %cp.0.lcssa.i, i32 0, i32 16
  %299 = ptrtoint ptr %sv_resid.i to i32
  call void @__asan_store4_noabort(i32 %299)
  store i32 %call30.i, ptr %sv_resid.i, align 4
  %300 = ptrtoint ptr %lun.i to i32
  call void @__asan_load1_noabort(i32 %300)
  %301 = load i8, ptr %lun.i, align 1
  %302 = and i8 %301, 7
  %303 = or i8 %302, -128
  %scsi_smsg2.i = getelementptr inbounds %struct.sym_ccb, ptr %cp.0.lcssa.i, i32 0, i32 12
  %304 = ptrtoint ptr %scsi_smsg2.i to i32
  call void @__asan_store1_noabort(i32 %304)
  store i8 %303, ptr %scsi_smsg2.i, align 4
  %nego_status.i = getelementptr inbounds %struct.sym_ccb, ptr %cp.0.lcssa.i, i32 0, i32 8
  %305 = ptrtoint ptr %nego_status.i to i32
  call void @__asan_store1_noabort(i32 %305)
  store i8 0, ptr %nego_status.i, align 2
  %arrayidx37.i = getelementptr %struct.sym_ccb, ptr %cp.0.lcssa.i, i32 0, i32 12, i32 1
  %call38.i = tail call fastcc i32 @sym_prepare_nego(ptr noundef %np, ptr noundef nonnull %cp.0.lcssa.i, ptr noundef %arrayidx37.i) #9
  %add.i = add i32 %call38.i, 1
  %ccb_ba.i465 = getelementptr inbounds %struct.sym_ccb, ptr %cp.0.lcssa.i, i32 0, i32 17
  %306 = ptrtoint ptr %ccb_ba.i465 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %ccb_ba.i465, align 4
  %add39.i = add i32 %307, 936
  %308 = tail call i32 @llvm.bswap.i32(i32 %add39.i) #9
  %smsg.i = getelementptr inbounds %struct.sym_dsb, ptr %cp.0.lcssa.i, i32 0, i32 4
  %addr.i466 = getelementptr inbounds %struct.sym_dsb, ptr %cp.0.lcssa.i, i32 0, i32 4, i32 1
  %309 = ptrtoint ptr %addr.i466 to i32
  call void @__asan_store4_noabort(i32 %309)
  store i32 %308, ptr %addr.i466, align 4
  %310 = tail call i32 @llvm.bswap.i32(i32 %add.i) #9
  %311 = ptrtoint ptr %smsg.i to i32
  call void @__asan_store4_noabort(i32 %311)
  store i32 %310, ptr %smsg.i, align 4
  %add44.i = add i32 %307, 948
  %312 = tail call i32 @llvm.bswap.i32(i32 %add44.i) #9
  %cmd46.i = getelementptr inbounds %struct.sym_dsb, ptr %cp.0.lcssa.i, i32 0, i32 6
  %addr47.i = getelementptr inbounds %struct.sym_dsb, ptr %cp.0.lcssa.i, i32 0, i32 6, i32 1
  %313 = ptrtoint ptr %addr47.i to i32
  call void @__asan_store4_noabort(i32 %313)
  store i32 %312, ptr %addr47.i, align 4
  %314 = ptrtoint ptr %cmd46.i to i32
  call void @__asan_store4_noabort(i32 %314)
  store i32 100663296, ptr %cmd46.i, align 4
  %sensecmd.i = getelementptr inbounds %struct.sym_ccb, ptr %cp.0.lcssa.i, i32 0, i32 13
  %315 = ptrtoint ptr %sensecmd.i to i32
  call void @__asan_store1_noabort(i32 %315)
  store i8 3, ptr %sensecmd.i, align 4
  %arrayidx53.i = getelementptr %struct.sym_ccb, ptr %cp.0.lcssa.i, i32 0, i32 13, i32 1
  %316 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_store1_noabort(i32 %316)
  store i8 0, ptr %arrayidx53.i, align 1
  %cmd54.i = getelementptr inbounds %struct.sym_ccb, ptr %cp.0.lcssa.i, i32 0, i32 1
  %317 = ptrtoint ptr %cmd54.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %cmd54.i, align 4
  %device55.i = getelementptr inbounds %struct.scsi_cmnd, ptr %318, i32 0, i32 1
  %319 = ptrtoint ptr %device55.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %device55.i, align 4
  %scsi_level.i = getelementptr inbounds %struct.scsi_device, ptr %320, i32 0, i32 23
  %321 = ptrtoint ptr %scsi_level.i to i32
  call void @__asan_load1_noabort(i32 %321)
  %322 = load i8, ptr %scsi_level.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %322)
  %cmp57.i = icmp ult i8 %322, 4
  br i1 %cmp57.i, label %land.lhs.true.i467, label %if.end13.i.if.end69.i_crit_edge

if.end13.i.if.end69.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69.i

land.lhs.true.i467:                               ; preds = %if.end13.i
  %323 = ptrtoint ptr %lun.i to i32
  call void @__asan_load1_noabort(i32 %323)
  %324 = load i8, ptr %lun.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %324)
  %cmp61.i = icmp ult i8 %324, 8
  br i1 %cmp61.i, label %if.then63.i, label %land.lhs.true.i467.if.end69.i_crit_edge

land.lhs.true.i467.if.end69.i_crit_edge:          ; preds = %land.lhs.true.i467
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69.i

if.then63.i:                                      ; preds = %land.lhs.true.i467
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i = shl nuw i8 %324, 5
  %325 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_store1_noabort(i32 %325)
  store i8 %shl.i, ptr %arrayidx53.i, align 1
  br label %if.end69.i

if.end69.i:                                       ; preds = %if.then63.i, %land.lhs.true.i467.if.end69.i_crit_edge, %if.end13.i.if.end69.i_crit_edge
  %arrayidx71.i = getelementptr %struct.sym_ccb, ptr %cp.0.lcssa.i, i32 0, i32 13, i32 4
  %326 = ptrtoint ptr %arrayidx71.i to i32
  call void @__asan_store1_noabort(i32 %326)
  store i8 32, ptr %arrayidx71.i, align 4
  %data_len.i = getelementptr inbounds %struct.sym_ccb, ptr %cp.0.lcssa.i, i32 0, i32 4
  %327 = ptrtoint ptr %data_len.i to i32
  call void @__asan_store4_noabort(i32 %327)
  store i32 32, ptr %data_len.i, align 4
  %sns_bbuf.i = getelementptr inbounds %struct.sym_ccb, ptr %cp.0.lcssa.i, i32 0, i32 3
  %328 = call ptr @memset(ptr %sns_bbuf.i, i32 0, i32 32)
  %add73.i = add i32 %307, 876
  %329 = tail call i32 @llvm.bswap.i32(i32 %add73.i) #9
  %sense.i = getelementptr inbounds %struct.sym_dsb, ptr %cp.0.lcssa.i, i32 0, i32 7
  %addr75.i = getelementptr inbounds %struct.sym_dsb, ptr %cp.0.lcssa.i, i32 0, i32 7, i32 1
  %330 = ptrtoint ptr %addr75.i to i32
  call void @__asan_store4_noabort(i32 %330)
  store i32 %329, ptr %addr75.i, align 4
  %331 = ptrtoint ptr %sense.i to i32
  call void @__asan_store4_noabort(i32 %331)
  store i32 536870912, ptr %sense.i, align 4
  %sdata_in.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 55, i32 14
  %332 = ptrtoint ptr %sdata_in.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %sdata_in.i, align 4
  %334 = tail call i32 @llvm.bswap.i32(i32 %333) #9
  %savep.i = getelementptr inbounds %struct.sym_ccbh, ptr %cp.0.lcssa.i, i32 0, i32 1
  %335 = ptrtoint ptr %savep.i to i32
  call void @__asan_store4_noabort(i32 %335)
  store i32 %334, ptr %savep.i, align 4
  %lastp.i = getelementptr inbounds %struct.sym_ccbh, ptr %cp.0.lcssa.i, i32 0, i32 2
  %336 = ptrtoint ptr %lastp.i to i32
  call void @__asan_store4_noabort(i32 %336)
  store i32 %334, ptr %lastp.i, align 4
  %startp83.i = getelementptr inbounds %struct.sym_ccb, ptr %cp.0.lcssa.i, i32 0, i32 23
  %337 = ptrtoint ptr %startp83.i to i32
  call void @__asan_store4_noabort(i32 %337)
  store i32 %334, ptr %startp83.i, align 4
  %add84.i = add i32 %333, 16
  %338 = tail call i32 @llvm.bswap.i32(i32 %add84.i) #9
  %goalp.i = getelementptr inbounds %struct.sym_ccb, ptr %cp.0.lcssa.i, i32 0, i32 24
  %339 = ptrtoint ptr %goalp.i to i32
  call void @__asan_store4_noabort(i32 %339)
  store i32 %338, ptr %goalp.i, align 4
  %340 = ptrtoint ptr %status.i to i32
  call void @__asan_store1_noabort(i32 %340)
  store i8 0, ptr %status.i, align 4
  %341 = ptrtoint ptr %nego_status.i to i32
  call void @__asan_load1_noabort(i32 %341)
  %342 = load i8, ptr %nego_status.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %342)
  %tobool91.not.i = icmp eq i8 %342, 0
  %conv93.i = select i1 %tobool91.not.i, i8 1, i8 2
  %arrayidx97.i = getelementptr %struct.sym_ccbh, ptr %cp.0.lcssa.i, i32 0, i32 3, i32 1
  %343 = ptrtoint ptr %arrayidx97.i to i32
  call void @__asan_store1_noabort(i32 %343)
  store i8 %conv93.i, ptr %arrayidx97.i, align 1
  %344 = ptrtoint ptr %arrayidx.i458 to i32
  call void @__asan_store1_noabort(i32 %344)
  store i8 -1, ptr %arrayidx.i458, align 2
  %345 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %345)
  store i8 80, ptr %arrayidx4.i, align 1
  %346 = ptrtoint ptr %xerr_status.i to i32
  call void @__asan_store1_noabort(i32 %346)
  store i8 0, ptr %xerr_status.i, align 1
  %extra_bytes.i = getelementptr inbounds %struct.sym_ccb, ptr %cp.0.lcssa.i, i32 0, i32 10
  %347 = ptrtoint ptr %extra_bytes.i to i32
  call void @__asan_store4_noabort(i32 %347)
  store i32 0, ptr %extra_bytes.i, align 4
  %select.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 54, i32 3
  %348 = ptrtoint ptr %select.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %select.i, align 4
  %350 = tail call i32 @llvm.bswap.i32(i32 %349) #9
  %351 = ptrtoint ptr %cp.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %351)
  store i32 %350, ptr %cp.0.lcssa.i, align 4
  tail call void @sym_put_start_queue(ptr noundef %np, ptr noundef nonnull %cp.0.lcssa.i) #9
  %comp_ccbq.i.i468 = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 91
  %352 = ptrtoint ptr %comp_ccbq.i.i468 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %comp_ccbq.i.i468, align 4
  %cmp.not.i18.i.i469 = icmp eq ptr %353, %comp_ccbq.i.i468
  br i1 %cmp.not.i18.i.i469, label %if.end69.i.cleanup_crit_edge, label %sym_remque_head.exit.lr.ph.i.i471

if.end69.i.cleanup_crit_edge:                     ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sym_remque_head.exit.lr.ph.i.i471:                ; preds = %if.end69.i
  %busy_ccbq.i.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 90
  %blink.i.i470 = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 90, i32 1
  br label %sym_remque_head.exit.i.i474

sym_remque_head.exit.i.i474:                      ; preds = %cleanup.i.i483.sym_remque_head.exit.i.i474_crit_edge, %sym_remque_head.exit.lr.ph.i.i471
  %354 = phi ptr [ %353, %sym_remque_head.exit.lr.ph.i.i471 ], [ %369, %cleanup.i.i483.sym_remque_head.exit.i.i474_crit_edge ]
  %355 = ptrtoint ptr %354 to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %354, align 4
  %blink1.i.i.i.i472 = getelementptr inbounds %struct.sym_quehead, ptr %356, i32 0, i32 1
  %357 = ptrtoint ptr %blink1.i.i.i.i472 to i32
  call void @__asan_store4_noabort(i32 %357)
  store ptr %comp_ccbq.i.i468, ptr %blink1.i.i.i.i472, align 4
  %358 = ptrtoint ptr %comp_ccbq.i.i468 to i32
  call void @__asan_store4_noabort(i32 %358)
  store ptr %356, ptr %comp_ccbq.i.i468, align 4
  %cmp.not.i.i473 = icmp eq ptr %354, null
  br i1 %cmp.not.i.i473, label %sym_remque_head.exit.i.i474.cleanup_crit_edge, label %while.body.i.i478

sym_remque_head.exit.i.i474.cleanup_crit_edge:    ; preds = %sym_remque_head.exit.i.i474
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body.i.i478:                                ; preds = %sym_remque_head.exit.i.i474
  %359 = ptrtoint ptr %blink.i.i470 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %blink.i.i470, align 4
  store ptr %354, ptr %blink.i.i470, align 4
  %361 = ptrtoint ptr %354 to i32
  call void @__asan_store4_noabort(i32 %361)
  store ptr %busy_ccbq.i.i, ptr %354, align 4
  %blink3.i.i.i475 = getelementptr inbounds %struct.sym_quehead, ptr %354, i32 0, i32 1
  %362 = ptrtoint ptr %blink3.i.i.i475 to i32
  call void @__asan_store4_noabort(i32 %362)
  store ptr %360, ptr %blink3.i.i.i475, align 4
  %363 = ptrtoint ptr %360 to i32
  call void @__asan_store4_noabort(i32 %363)
  store ptr %354, ptr %360, align 4
  %arrayidx.i.i476 = getelementptr i8, ptr %354, i32 -955
  %364 = ptrtoint ptr %arrayidx.i.i476 to i32
  call void @__asan_load1_noabort(i32 %364)
  %365 = load i8, ptr %arrayidx.i.i476, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %365)
  %cmp2.i.i477 = icmp eq i8 %365, 4
  br i1 %cmp2.i.i477, label %while.body.i.i478.cleanup.i.i483_crit_edge, label %if.end.i.i481

while.body.i.i478.cleanup.i.i483_crit_edge:       ; preds = %while.body.i.i478
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i.i483

if.end.i.i481:                                    ; preds = %while.body.i.i478
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i479 = getelementptr i8, ptr %354, i32 -972
  %cmd4.i.i480 = getelementptr i8, ptr %354, i32 -116
  %366 = ptrtoint ptr %cmd4.i.i480 to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %cmd4.i.i480, align 4
  tail call void @sym_free_ccb(ptr noundef %np, ptr noundef %add.ptr.i.i479) #9
  tail call void @sym_xpt_done(ptr noundef %np, ptr noundef %367) #9
  br label %cleanup.i.i483

cleanup.i.i483:                                   ; preds = %if.end.i.i481, %while.body.i.i478.cleanup.i.i483_crit_edge
  %368 = ptrtoint ptr %comp_ccbq.i.i468 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %comp_ccbq.i.i468, align 4
  %cmp.not.i.i.i482 = icmp eq ptr %369, %comp_ccbq.i.i468
  br i1 %cmp.not.i.i.i482, label %cleanup.i.i483.cleanup_crit_edge, label %cleanup.i.i483.sym_remque_head.exit.i.i474_crit_edge

cleanup.i.i483.sym_remque_head.exit.i.i474_crit_edge: ; preds = %cleanup.i.i483
  call void @__sanitizer_cov_trace_pc() #11
  br label %sym_remque_head.exit.i.i474

cleanup.i.i483.cleanup_crit_edge:                 ; preds = %cleanup.i.i483
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.epilog.sink.split.i:                           ; preds = %sw.bb10.i.sw.epilog.sink.split.i_crit_edge, %do.end.i, %sw.bb.i.sw.epilog.sink.split.i_crit_edge, %if.end123.sw.epilog.sink.split.i_crit_edge
  tail call fastcc void @sym_complete_error(ptr noundef %np, ptr noundef nonnull %cp.0.lcssa.i) #9
  br label %cleanup

sw.bb125:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %msgin = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 82
  %cmd.i485 = getelementptr inbounds %struct.sym_ccb, ptr %cp.0.lcssa.i, i32 0, i32 1
  %370 = ptrtoint ptr %cmd.i485 to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %cmd.i485, align 4
  %device.i486 = getelementptr inbounds %struct.scsi_cmnd, ptr %371, i32 0, i32 1
  %372 = ptrtoint ptr %device.i486 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %device.i486, align 4
  %sdev_gendev.i487 = getelementptr inbounds %struct.scsi_device, ptr %373, i32 0, i32 55
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %sdev_gendev.i487, ptr noundef nonnull @.str.180, ptr noundef nonnull @.str.154) #12
  %call.i = tail call i32 @spi_print_msg(ptr noundef %msgin) #9
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.183) #12
  %msgout126 = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 81
  %374 = ptrtoint ptr %msgout126 to i32
  call void @__asan_store1_noabort(i32 %374)
  store i8 7, ptr %msgout126, align 4
  br label %do.body302

sw.bb128:                                         ; preds = %if.end
  %tobool129.not = icmp eq ptr %cp.0.lcssa.i, null
  br i1 %tobool129.not, label %sw.bb128.do.body302_crit_edge, label %if.then130

sw.bb128.do.body302_crit_edge:                    ; preds = %sw.bb128
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body302

if.then130:                                       ; preds = %sw.bb128
  call void @__sanitizer_cov_trace_pc() #11
  %375 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %ioaddr, align 4
  %add.ptr133 = getelementptr i8, ptr %376, i32 95
  %377 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr133) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  %378 = or i8 %377, 32
  %379 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %ioaddr, align 4
  %add.ptr139 = getelementptr i8, ptr %380, i32 95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr139, i8 %378) #9, !srcloc !464
  %xerr_status140 = getelementptr inbounds %struct.sym_ccb, ptr %cp.0.lcssa.i, i32 0, i32 9
  %381 = ptrtoint ptr %xerr_status140 to i32
  call void @__asan_load1_noabort(i32 %381)
  %382 = load i8, ptr %xerr_status140, align 1
  %383 = or i8 %382, 16
  store i8 %383, ptr %xerr_status140, align 1
  br label %do.body302

sw.bb145:                                         ; preds = %if.end
  %tobool146.not = icmp eq ptr %cp.0.lcssa.i, null
  br i1 %tobool146.not, label %sw.bb145.do.body302_crit_edge, label %if.then147

sw.bb145.do.body302_crit_edge:                    ; preds = %sw.bb145
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body302

if.then147:                                       ; preds = %sw.bb145
  call void @__sanitizer_cov_trace_pc() #11
  %384 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %ioaddr, align 4
  %add.ptr150 = getelementptr i8, ptr %385, i32 95
  %386 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr150) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  %387 = or i8 %386, 32
  %388 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %ioaddr, align 4
  %add.ptr157 = getelementptr i8, ptr %389, i32 95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr157, i8 %387) #9, !srcloc !464
  %xerr_status158 = getelementptr inbounds %struct.sym_ccb, ptr %cp.0.lcssa.i, i32 0, i32 9
  %390 = ptrtoint ptr %xerr_status158 to i32
  call void @__asan_load1_noabort(i32 %390)
  %391 = load i8, ptr %xerr_status158, align 1
  %392 = or i8 %391, 8
  store i8 %392, ptr %xerr_status158, align 1
  br label %do.body302

sw.bb163:                                         ; preds = %if.end
  %tobool164.not = icmp eq ptr %cp.0.lcssa.i, null
  br i1 %tobool164.not, label %sw.bb163.do.body302_crit_edge, label %if.then165

sw.bb163.do.body302_crit_edge:                    ; preds = %sw.bb163
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body302

if.then165:                                       ; preds = %sw.bb163
  call void @__sanitizer_cov_trace_pc() #11
  %393 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %ioaddr, align 4
  %add.ptr168 = getelementptr i8, ptr %394, i32 95
  %395 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr168) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  %396 = or i8 %395, 32
  %397 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %ioaddr, align 4
  %add.ptr175 = getelementptr i8, ptr %398, i32 95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr175, i8 %396) #9, !srcloc !464
  %xerr_status176 = getelementptr inbounds %struct.sym_ccb, ptr %cp.0.lcssa.i, i32 0, i32 9
  %399 = ptrtoint ptr %xerr_status176 to i32
  call void @__asan_load1_noabort(i32 %399)
  %400 = load i8, ptr %xerr_status176, align 1
  %401 = or i8 %400, 1
  store i8 %401, ptr %xerr_status176, align 1
  %402 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %ioaddr, align 4
  %add.ptr182 = getelementptr i8, ptr %403, i32 52
  %404 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr182) #9, !srcloc !469
  %405 = tail call i32 @llvm.bswap.i32(i32 %404) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !470
  %extra_bytes = getelementptr inbounds %struct.sym_ccb, ptr %cp.0.lcssa.i, i32 0, i32 10
  %406 = ptrtoint ptr %extra_bytes to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load i32, ptr %extra_bytes, align 4
  %add = add i32 %407, %405
  store i32 %add, ptr %extra_bytes, align 4
  br label %do.body302

sw.bb185:                                         ; preds = %if.end
  %tobool186.not = icmp eq ptr %cp.0.lcssa.i, null
  br i1 %tobool186.not, label %sw.bb185.do.body302_crit_edge, label %if.then187

sw.bb185.do.body302_crit_edge:                    ; preds = %sw.bb185
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body302

if.then187:                                       ; preds = %sw.bb185
  call void @__sanitizer_cov_trace_pc() #11
  %408 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %ioaddr, align 4
  %add.ptr190 = getelementptr i8, ptr %409, i32 95
  %410 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr190) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  %411 = or i8 %410, 32
  %412 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %ioaddr, align 4
  %add.ptr197 = getelementptr i8, ptr %413, i32 95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr197, i8 %411) #9, !srcloc !464
  %xerr_status198 = getelementptr inbounds %struct.sym_ccb, ptr %cp.0.lcssa.i, i32 0, i32 9
  %414 = ptrtoint ptr %xerr_status198 to i32
  call void @__asan_load1_noabort(i32 %414)
  %415 = load i8, ptr %xerr_status198, align 1
  %416 = or i8 %415, 2
  store i8 %416, ptr %xerr_status198, align 1
  br label %do.body302

sw.bb203:                                         ; preds = %if.end
  %tobool204.not = icmp eq ptr %cp.0.lcssa.i, null
  br i1 %tobool204.not, label %sw.bb203.cleanup_crit_edge, label %if.end206

sw.bb203.cleanup_crit_edge:                       ; preds = %sw.bb203
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end206:                                        ; preds = %sw.bb203
  %msgin207 = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 82
  %417 = ptrtoint ptr %msgin207 to i32
  call void @__asan_load1_noabort(i32 %417)
  %418 = load i8, ptr %msgin207, align 4
  %419 = zext i8 %418 to i64
  call void @__sanitizer_cov_trace_switch(i64 %419, ptr @__sancov_gen_cov_switch_values.266)
  switch i8 %418, label %if.end206.do.body318_crit_edge [
    i8 1, label %sw.bb210
    i8 35, label %sw.bb241
    i8 7, label %sw.bb264
  ]

if.end206.do.body318_crit_edge:                   ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body318

sw.bb210:                                         ; preds = %if.end206
  %arrayidx212 = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 82, i32 2
  %420 = ptrtoint ptr %arrayidx212 to i32
  call void @__asan_load1_noabort(i32 %420)
  %421 = load i8, ptr %arrayidx212, align 2
  %422 = zext i8 %421 to i64
  call void @__sanitizer_cov_trace_switch(i64 %422, ptr @__sancov_gen_cov_switch_values.267)
  switch i8 %421, label %sw.bb210.do.body318_crit_edge [
    i8 0, label %sw.bb214
    i8 1, label %sw.bb238
    i8 4, label %sw.bb239
    i8 3, label %sw.bb240
  ]

sw.bb210.do.body318_crit_edge:                    ; preds = %sw.bb210
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body318

sw.bb214:                                         ; preds = %sw.bb210
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sym_debug_flags to i32))
  %423 = load i32, ptr @sym_debug_flags, align 4
  %and215 = and i32 %423, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and215)
  %tobool216.not = icmp eq i32 %and215, 0
  br i1 %tobool216.not, label %sw.bb214.if.end220_crit_edge, label %if.then217

sw.bb214.if.end220_crit_edge:                     ; preds = %sw.bb214
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end220

if.then217:                                       ; preds = %sw.bb214
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @sym_print_msg(ptr noundef nonnull %cp.0.lcssa.i, ptr noundef nonnull @.str.155, ptr noundef %msgin207)
  br label %if.end220

if.end220:                                        ; preds = %if.then217, %sw.bb214.if.end220_crit_edge
  %arrayidx222 = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 82, i32 3
  %424 = ptrtoint ptr %arrayidx222 to i32
  call void @__asan_load1_noabort(i32 %424)
  %425 = load i8, ptr %arrayidx222, align 1
  %conv223 = zext i8 %425 to i32
  %shl = shl nuw i32 %conv223, 24
  %arrayidx225 = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 82, i32 4
  %426 = ptrtoint ptr %arrayidx225 to i32
  call void @__asan_load1_noabort(i32 %426)
  %427 = load i8, ptr %arrayidx225, align 4
  %conv226 = zext i8 %427 to i32
  %shl227 = shl nuw nsw i32 %conv226, 16
  %add228 = or i32 %shl227, %shl
  %arrayidx230 = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 82, i32 5
  %428 = ptrtoint ptr %arrayidx230 to i32
  call void @__asan_load1_noabort(i32 %428)
  %429 = load i8, ptr %arrayidx230, align 1
  %conv231 = zext i8 %429 to i32
  %shl232 = shl nuw nsw i32 %conv231, 8
  %add233 = or i32 %add228, %shl232
  %arrayidx235 = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 82, i32 6
  %430 = ptrtoint ptr %arrayidx235 to i32
  call void @__asan_load1_noabort(i32 %430)
  %431 = load i8, ptr %arrayidx235, align 2
  %conv236 = zext i8 %431 to i32
  %add237 = or i32 %add233, %conv236
  tail call fastcc void @sym_modify_dp(ptr noundef %np, ptr noundef nonnull %cp.0.lcssa.i, i32 noundef %add237)
  br label %cleanup

sw.bb238:                                         ; preds = %sw.bb210
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @sym_sync_nego(ptr noundef %np, ptr noundef nonnull %cp.0.lcssa.i)
  br label %cleanup

sw.bb239:                                         ; preds = %sw.bb210
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @sym_ppr_nego(ptr noundef %np, ptr noundef nonnull %cp.0.lcssa.i)
  br label %cleanup

sw.bb240:                                         ; preds = %sw.bb210
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @sym_wide_nego(ptr noundef %np, ptr noundef %arrayidx, ptr noundef nonnull %cp.0.lcssa.i)
  br label %cleanup

sw.bb241:                                         ; preds = %if.end206
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sym_debug_flags to i32))
  %432 = load i32, ptr @sym_debug_flags, align 4
  %and242 = and i32 %432, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and242)
  %tobool243.not = icmp eq i32 %and242, 0
  br i1 %tobool243.not, label %sw.bb241.if.end247_crit_edge, label %if.then244

sw.bb241.if.end247_crit_edge:                     ; preds = %sw.bb241
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end247

if.then244:                                       ; preds = %sw.bb241
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @sym_print_msg(ptr noundef nonnull %cp.0.lcssa.i, ptr noundef nonnull @.str.156, ptr noundef %msgin207)
  br label %if.end247

if.end247:                                        ; preds = %if.then244, %sw.bb241.if.end247_crit_edge
  %arrayidx248 = getelementptr %struct.sym_ccbh, ptr %cp.0.lcssa.i, i32 0, i32 3, i32 3
  %433 = ptrtoint ptr %arrayidx248 to i32
  call void @__asan_load1_noabort(i32 %433)
  %434 = load i8, ptr %arrayidx248, align 1
  %435 = and i8 %434, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %435)
  %tobool251.not = icmp eq i8 %435, 0
  br i1 %tobool251.not, label %if.else262, label %do.body254

do.body254:                                       ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !488
  tail call void @arm_heavy_mb() #9
  %clrack = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 54, i32 8
  %436 = ptrtoint ptr %clrack to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load i32, ptr %clrack, align 4
  %438 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %ioaddr, align 4
  %add.ptr259 = getelementptr i8, ptr %439, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !473
  tail call void @arm_heavy_mb() #9
  %440 = tail call i32 @llvm.bswap.i32(i32 %437) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr259, i32 %440) #9, !srcloc !474
  br label %cleanup

if.else262:                                       ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @sym_modify_dp(ptr noundef %np, ptr noundef nonnull %cp.0.lcssa.i, i32 noundef -1)
  br label %cleanup

sw.bb264:                                         ; preds = %if.end206
  %441 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %ioaddr, align 4
  %add.ptr267 = getelementptr i8, ptr %442, i32 93
  %443 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr267) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %443)
  %cmp270 = icmp eq i8 %443, 2
  br i1 %cmp270, label %if.then272, label %do.end276

if.then272:                                       ; preds = %sw.bb264
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @sym_nego_rejected(ptr noundef %np, ptr noundef %arrayidx, ptr noundef nonnull %cp.0.lcssa.i)
  br label %do.body328

do.end276:                                        ; preds = %sw.bb264
  call void @__sanitizer_cov_trace_pc() #11
  %cmd277 = getelementptr inbounds %struct.sym_ccb, ptr %cp.0.lcssa.i, i32 0, i32 1
  %444 = ptrtoint ptr %cmd277 to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %cmd277, align 4
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %445, i32 0, i32 1
  %446 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %device, align 4
  %sdev_gendev = getelementptr inbounds %struct.scsi_device, ptr %447, i32 0, i32 55
  %lastmsg278 = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 83
  %448 = ptrtoint ptr %lastmsg278 to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load i32, ptr %lastmsg278, align 4
  %450 = tail call i32 @llvm.bswap.i32(i32 %449)
  %msgout279 = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 81
  %451 = ptrtoint ptr %msgout279 to i32
  call void @__asan_load1_noabort(i32 %451)
  %452 = load i8, ptr %msgout279, align 4
  %conv281 = zext i8 %452 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %sdev_gendev, ptr noundef nonnull @.str.158, i32 noundef %450, i32 noundef %conv281) #12
  br label %do.body328

sw.bb284:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %msgin285 = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 82
  %cmd.i488 = getelementptr inbounds %struct.sym_ccb, ptr %cp.0.lcssa.i, i32 0, i32 1
  %453 = ptrtoint ptr %cmd.i488 to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load ptr, ptr %cmd.i488, align 4
  %device.i489 = getelementptr inbounds %struct.scsi_cmnd, ptr %454, i32 0, i32 1
  %455 = ptrtoint ptr %device.i489 to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load ptr, ptr %device.i489, align 4
  %sdev_gendev.i490 = getelementptr inbounds %struct.scsi_device, ptr %456, i32 0, i32 55
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %sdev_gendev.i490, ptr noundef nonnull @.str.180, ptr noundef nonnull @.str.160) #12
  %call.i491 = tail call i32 @spi_print_msg(ptr noundef %msgin285) #9
  %call3.i492 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.183) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !489
  tail call void @arm_heavy_mb() #9
  %msg_weird = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 55, i32 4
  %457 = ptrtoint ptr %msg_weird to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load i32, ptr %msg_weird, align 4
  %459 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load ptr, ptr %ioaddr, align 4
  %add.ptr293 = getelementptr i8, ptr %460, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !473
  tail call void @arm_heavy_mb() #9
  %461 = tail call i32 @llvm.bswap.i32(i32 %458) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr293, i32 %461) #9, !srcloc !474
  br label %cleanup

sw.bb296:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %462 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %ioaddr, align 4
  %add.ptr299 = getelementptr i8, ptr %463, i32 93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr299, i8 1) #9, !srcloc !464
  br label %sw.bb300

sw.bb300:                                         ; preds = %sw.bb296, %if.end.sw.bb300_crit_edge
  tail call fastcc void @sym_nego_default(ptr noundef %np, ptr noundef %arrayidx, ptr noundef %cp.0.lcssa.i)
  br label %do.body302

do.body302:                                       ; preds = %sw.bb300, %if.then187, %sw.bb185.do.body302_crit_edge, %if.then165, %sw.bb163.do.body302_crit_edge, %if.then147, %sw.bb145.do.body302_crit_edge, %if.then130, %sw.bb128.do.body302_crit_edge, %sw.bb125, %sw.bb120.do.body302_crit_edge, %if.then106, %if.then100.do.body302_crit_edge, %if.then98.do.body302_crit_edge, %sw.bb86.do.body302_crit_edge, %do.end79, %if.then73, %sw.bb62, %sw.bb59, %sw.bb57, %if.end.do.body302_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !490
  tail call void @arm_heavy_mb() #9
  %464 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %ioaddr, align 4
  %add.ptr307 = getelementptr i8, ptr %465, i32 59
  %466 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr307) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  %467 = or i8 %466, 5
  %468 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %ioaddr, align 4
  %add.ptr314 = getelementptr i8, ptr %469, i32 59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr314, i8 %467) #9, !srcloc !464
  br label %cleanup

do.body318:                                       ; preds = %sw.bb210.do.body318_crit_edge, %if.end206.do.body318_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !491
  tail call void @arm_heavy_mb() #9
  %msg_bad = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 55, i32 3
  %470 = ptrtoint ptr %msg_bad to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load i32, ptr %msg_bad, align 4
  %472 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %ioaddr, align 4
  %add.ptr324 = getelementptr i8, ptr %473, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !473
  tail call void @arm_heavy_mb() #9
  %474 = tail call i32 @llvm.bswap.i32(i32 %471) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr324, i32 %474) #9, !srcloc !474
  br label %cleanup

do.body328:                                       ; preds = %do.end276, %if.then272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !492
  tail call void @arm_heavy_mb() #9
  %clrack332 = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 54, i32 8
  %475 = ptrtoint ptr %clrack332 to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load i32, ptr %clrack332, align 4
  %477 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load ptr, ptr %ioaddr, align 4
  %add.ptr335 = getelementptr i8, ptr %478, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !473
  tail call void @arm_heavy_mb() #9
  %479 = tail call i32 @llvm.bswap.i32(i32 %476) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr335, i32 %479) #9, !srcloc !474
  br label %cleanup

cleanup:                                          ; preds = %do.body328, %do.body318, %do.body302, %sw.bb284, %if.else262, %do.body254, %sw.bb240, %sw.bb239, %sw.bb238, %if.end220, %sw.bb203.cleanup_crit_edge, %sw.epilog.sink.split.i, %cleanup.i.i483.cleanup_crit_edge, %sym_remque_head.exit.i.i474.cleanup_crit_edge, %if.end69.i.cleanup_crit_edge, %do.end51, %if.then46, %do.end37, %if.then32, %do.end25, %if.then22, %do.body385.i, %if.then56.i, %sw.bb
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sym_clear_tasks(ptr noundef %np, i32 noundef %cam_status, i32 noundef %target, i32 noundef %lun, i32 noundef %task) local_unnamed_addr #6 align 64 {
entry:
  %qtmp = alloca %struct.sym_quehead, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %qtmp) #9
  %0 = getelementptr inbounds %struct.sym_quehead, ptr %qtmp, i32 0, i32 1
  %1 = ptrtoint ptr %qtmp to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %qtmp, ptr %qtmp, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %qtmp, ptr %0, align 4
  %busy_ccbq = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 90
  %3 = ptrtoint ptr %busy_ccbq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %busy_ccbq, align 4
  %cmp.not.i = icmp eq ptr %4, %busy_ccbq
  br i1 %cmp.not.i, label %entry.sym_que_splice.exit_crit_edge, label %if.then.i

entry.sym_que_splice.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sym_que_splice.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %blink.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 90, i32 1
  %5 = ptrtoint ptr %blink.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %blink.i, align 4
  %blink2.i = getelementptr inbounds %struct.sym_quehead, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %blink2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %qtmp, ptr %blink2.i, align 4
  %8 = ptrtoint ptr %qtmp to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %4, ptr %qtmp, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %qtmp, ptr %6, align 4
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %6, ptr %0, align 4
  br label %sym_que_splice.exit

sym_que_splice.exit:                              ; preds = %if.then.i, %entry.sym_que_splice.exit_crit_edge
  %11 = ptrtoint ptr %busy_ccbq to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %busy_ccbq, ptr %busy_ccbq, align 4
  %blink7 = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 90, i32 1
  %12 = ptrtoint ptr %blink7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %busy_ccbq, ptr %blink7, align 4
  %13 = ptrtoint ptr %qtmp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %qtmp, align 4
  %cmp.not.i7081 = icmp eq ptr %14, %qtmp
  br i1 %cmp.not.i7081, label %sym_que_splice.exit.while.end_crit_edge, label %sym_remque_head.exit.lr.ph

sym_que_splice.exit.while.end_crit_edge:          ; preds = %sym_que_splice.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

sym_remque_head.exit.lr.ph:                       ; preds = %sym_que_splice.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %lun)
  %cmp18.not = icmp eq i32 %lun, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %task)
  %cmp25.not = icmp eq i32 %task, -1
  %comp_ccbq = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 91
  %blink40 = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 91, i32 1
  %shl.i = shl i32 %cam_status, 16
  br label %sym_remque_head.exit

sym_remque_head.exit:                             ; preds = %cleanup.sym_remque_head.exit_crit_edge, %sym_remque_head.exit.lr.ph
  %15 = phi ptr [ %14, %sym_remque_head.exit.lr.ph ], [ %47, %cleanup.sym_remque_head.exit_crit_edge ]
  %i.082 = phi i32 [ 0, %sym_remque_head.exit.lr.ph ], [ %i.1, %cleanup.sym_remque_head.exit_crit_edge ]
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %blink1.i.i = getelementptr inbounds %struct.sym_quehead, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %blink1.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %qtmp, ptr %blink1.i.i, align 4
  %19 = ptrtoint ptr %qtmp to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %17, ptr %qtmp, align 4
  %cmp.not = icmp eq ptr %15, null
  br i1 %cmp.not, label %sym_remque_head.exit.while.end_crit_edge, label %while.body

sym_remque_head.exit.while.end_crit_edge:         ; preds = %sym_remque_head.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %sym_remque_head.exit
  %cmd10 = getelementptr i8, ptr %15, i32 -116
  %20 = ptrtoint ptr %cmd10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cmd10, align 4
  %arrayidx = getelementptr i8, ptr %15, i32 -955
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %23)
  %cmp11.not = icmp eq i8 %23, 3
  br i1 %cmp11.not, label %lor.lhs.false, label %while.body.if.then_crit_edge

while.body.if.then_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %while.body
  %target13 = getelementptr i8, ptr %15, i32 -6
  %24 = ptrtoint ptr %target13 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %target13, align 2
  %conv14 = zext i8 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv14, i32 %target)
  %cmp15.not = icmp eq i32 %conv14, %target
  br i1 %cmp15.not, label %lor.lhs.false17, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false17:                                  ; preds = %lor.lhs.false
  br i1 %cmp18.not, label %lor.lhs.false17.lor.lhs.false24_crit_edge, label %land.lhs.true

lor.lhs.false17.lor.lhs.false24_crit_edge:        ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false24

land.lhs.true:                                    ; preds = %lor.lhs.false17
  %lun20 = getelementptr i8, ptr %15, i32 -5
  %26 = ptrtoint ptr %lun20 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %lun20, align 1
  %conv21 = zext i8 %27 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv21, i32 %lun)
  %cmp22.not = icmp eq i32 %conv21, %lun
  br i1 %cmp22.not, label %land.lhs.true.lor.lhs.false24_crit_edge, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

land.lhs.true.lor.lhs.false24_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %land.lhs.true.lor.lhs.false24_crit_edge, %lor.lhs.false17.lor.lhs.false24_crit_edge
  br i1 %cmp25.not, label %lor.lhs.false24.if.end_crit_edge, label %land.lhs.true27

lor.lhs.false24.if.end_crit_edge:                 ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true27:                                  ; preds = %lor.lhs.false24
  %tag = getelementptr i8, ptr %15, i32 -8
  %28 = ptrtoint ptr %tag to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %tag, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %29)
  %cmp29.not = icmp eq i16 %29, 256
  br i1 %cmp29.not, label %land.lhs.true27.if.end_crit_edge, label %land.lhs.true31

land.lhs.true27.if.end_crit_edge:                 ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true31:                                  ; preds = %land.lhs.true27
  %arrayidx32 = getelementptr i8, ptr %15, i32 -46
  %30 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx32, align 2
  %conv33 = zext i8 %31 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv33, i32 %task)
  %cmp34.not = icmp eq i32 %conv33, %task
  br i1 %cmp34.not, label %land.lhs.true31.if.end_crit_edge, label %land.lhs.true31.if.then_crit_edge

land.lhs.true31.if.then_crit_edge:                ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

land.lhs.true31.if.end_crit_edge:                 ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true31.if.then_crit_edge, %land.lhs.true.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %while.body.if.then_crit_edge
  %32 = ptrtoint ptr %blink7 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %blink7, align 4
  store ptr %15, ptr %blink7, align 4
  %34 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %busy_ccbq, ptr %15, align 4
  %blink3.i = getelementptr inbounds %struct.sym_quehead, ptr %15, i32 0, i32 1
  %35 = ptrtoint ptr %blink3.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %33, ptr %blink3.i, align 4
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %15, ptr %33, align 4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true31.if.end_crit_edge, %land.lhs.true27.if.end_crit_edge, %lor.lhs.false24.if.end_crit_edge
  %37 = ptrtoint ptr %blink40 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %blink40, align 4
  store ptr %15, ptr %blink40, align 4
  %39 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %comp_ccbq, ptr %15, align 4
  %blink3.i73 = getelementptr inbounds %struct.sym_quehead, ptr %15, i32 0, i32 1
  %40 = ptrtoint ptr %blink3.i73 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %38, ptr %blink3.i73, align 4
  %41 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %15, ptr %38, align 4
  %result.i = getelementptr inbounds %struct.scsi_cmnd, ptr %21, i32 0, i32 24
  %42 = ptrtoint ptr %result.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %result.i, align 4
  %44 = and i32 %43, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 196608, i32 %44)
  %cmp43.not = icmp eq i32 %44, 196608
  br i1 %cmp43.not, label %if.end.if.end46_crit_edge, label %if.then45

if.end.if.end46_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.then45:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %and.i75 = and i32 %43, -16711681
  %or.i = or i32 %and.i75, %shl.i
  %45 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or.i, ptr %result.i, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.end.if.end46_crit_edge
  %inc = add i32 %i.082, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %if.then
  %i.1 = phi i32 [ %i.082, %if.then ], [ %inc, %if.end46 ]
  %46 = ptrtoint ptr %qtmp to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %qtmp, align 4
  %cmp.not.i70 = icmp eq ptr %47, %qtmp
  br i1 %cmp.not.i70, label %cleanup.while.end_crit_edge, label %cleanup.sym_remque_head.exit_crit_edge

cleanup.sym_remque_head.exit_crit_edge:           ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %sym_remque_head.exit

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %sym_remque_head.exit.while.end_crit_edge, %sym_que_splice.exit.while.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %sym_que_splice.exit.while.end_crit_edge ], [ %i.1, %cleanup.while.end_crit_edge ], [ %i.082, %sym_remque_head.exit.while.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %qtmp) #9
  ret i32 %i.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sym_get_ccb(ptr noundef %np, ptr nocapture noundef readonly %cmd, i8 noundef zeroext %tag_order) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %id = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %conv = trunc i32 %3 to i8
  %lun = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %lun, align 8
  %conv2 = trunc i64 %5 to i8
  %idxprom = and i32 %3, 255
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv2)
  %tobool.not = icmp eq i8 %conv2, 0
  br i1 %tobool.not, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %lun0p = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %idxprom, i32 3
  br label %cond.end9.sink.split

cond.false:                                       ; preds = %entry
  %lunmp = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %idxprom, i32 4
  %6 = ptrtoint ptr %lunmp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lunmp, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %cond.false.cond.end9_crit_edge, label %cond.true4

cond.false.cond.end9_crit_edge:                   ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end9

cond.true4:                                       ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  %8 = trunc i64 %5 to i32
  %idxprom6 = and i32 %8, 255
  %arrayidx7 = getelementptr ptr, ptr %7, i32 %idxprom6
  br label %cond.end9.sink.split

cond.end9.sink.split:                             ; preds = %cond.true4, %cond.true
  %arrayidx7.sink = phi ptr [ %arrayidx7, %cond.true4 ], [ %lun0p, %cond.true ]
  %9 = ptrtoint ptr %arrayidx7.sink to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx7.sink, align 4
  br label %cond.end9

cond.end9:                                        ; preds = %cond.end9.sink.split, %cond.false.cond.end9_crit_edge
  %cond10 = phi ptr [ null, %cond.false.cond.end9_crit_edge ], [ %10, %cond.end9.sink.split ]
  %free_ccbq = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 89
  %11 = ptrtoint ptr %free_ccbq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %free_ccbq, align 4
  %cmp.i.not = icmp eq ptr %12, %free_ccbq
  br i1 %cmp.i.not, label %if.then, label %cond.end9.if.end_crit_edge

cond.end9.if.end_crit_edge:                       ; preds = %cond.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %cond.end9
  %actccbs.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 77
  %13 = ptrtoint ptr %actccbs.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %actccbs.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 447, i16 %14)
  %cmp.i156 = icmp ugt i16 %14, 447
  br i1 %cmp.i156, label %if.then.if.endthread-pre-split_crit_edge, label %if.end.i

if.then.if.endthread-pre-split_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.endthread-pre-split

if.end.i:                                         ; preds = %if.then
  %bus_dmat.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 41
  %15 = ptrtoint ptr %bus_dmat.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus_dmat.i, align 4
  %call.i = tail call ptr @__sym_calloc_dma(ptr noundef %16, i32 noundef 1000, ptr noundef nonnull @.str.60) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.i.if.endthread-pre-split_crit_edge, label %if.end3.i

if.end.i.if.endthread-pre-split_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.endthread-pre-split

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %actccbs.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %actccbs.i, align 2
  %inc.i = add i16 %18, 1
  store i16 %inc.i, ptr %actccbs.i, align 2
  %19 = ptrtoint ptr %bus_dmat.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bus_dmat.i, align 4
  %call6.i = tail call i32 @__vtobus(ptr noundef %20, ptr noundef nonnull %call.i) #9
  %ccb_ba.i = getelementptr inbounds %struct.sym_ccb, ptr %call.i, i32 0, i32 17
  %21 = ptrtoint ptr %ccb_ba.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call6.i, ptr %ccb_ba.i, align 4
  %shr.i = lshr i32 %call6.i, 10
  %and.i = and i32 %shr.i, 255
  %ccbh.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 88
  %22 = ptrtoint ptr %ccbh.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ccbh.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %23, i32 %and.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i, align 4
  %link_ccbh.i = getelementptr inbounds %struct.sym_ccb, ptr %call.i, i32 0, i32 21
  %26 = ptrtoint ptr %link_ccbh.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %link_ccbh.i, align 4
  %27 = load ptr, ptr %ccbh.i, align 4
  %arrayidx9.i = getelementptr ptr, ptr %27, i32 %and.i
  %28 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i, ptr %arrayidx9.i, align 4
  %idle.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 54, i32 12
  %29 = ptrtoint ptr %idle.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %idle.i, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #9
  %32 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %call.i, align 4
  %bad_i_t_l.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 55, i32 16
  %33 = ptrtoint ptr %bad_i_t_l.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bad_i_t_l.i, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #9
  %restart.i = getelementptr inbounds %struct.sym_actscr, ptr %call.i, i32 0, i32 1
  %36 = ptrtoint ptr %restart.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %restart.i, align 4
  %hcb_ba.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 13
  %37 = ptrtoint ptr %hcb_ba.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %hcb_ba.i, align 4
  %add.i = add i32 %38, 1374
  %39 = tail call i32 @llvm.bswap.i32(i32 %add.i) #9
  %addr.i = getelementptr inbounds %struct.sym_dsb, ptr %call.i, i32 0, i32 5, i32 1
  %40 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %addr.i, align 4
  %link_ccbq.i = getelementptr inbounds %struct.sym_ccb, ptr %call.i, i32 0, i32 22
  %41 = ptrtoint ptr %free_ccbq to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %free_ccbq, align 4
  %blink1.i.i = getelementptr inbounds %struct.sym_quehead, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %blink1.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %link_ccbq.i, ptr %blink1.i.i, align 4
  %44 = ptrtoint ptr %link_ccbq.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %42, ptr %link_ccbq.i, align 4
  %blink3.i.i = getelementptr inbounds %struct.sym_ccb, ptr %call.i, i32 0, i32 22, i32 1
  %45 = ptrtoint ptr %blink3.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %free_ccbq, ptr %blink3.i.i, align 4
  store ptr %link_ccbq.i, ptr %free_ccbq, align 4
  br label %if.end

if.endthread-pre-split:                           ; preds = %if.end.i.if.endthread-pre-split_crit_edge, %if.then.if.endthread-pre-split_crit_edge
  %46 = ptrtoint ptr %free_ccbq to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pr = load ptr, ptr %free_ccbq, align 4
  br label %if.end

if.end:                                           ; preds = %if.endthread-pre-split, %if.end3.i, %cond.end9.if.end_crit_edge
  %47 = phi ptr [ %.pr, %if.endthread-pre-split ], [ %link_ccbq.i, %if.end3.i ], [ %12, %cond.end9.if.end_crit_edge ]
  %cmp.not.i = icmp eq ptr %47, %free_ccbq
  br i1 %cmp.not.i, label %if.end.cleanup_crit_edge, label %sym_remque_head.exit

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sym_remque_head.exit:                             ; preds = %if.end
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %blink1.i.i157 = getelementptr inbounds %struct.sym_quehead, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %blink1.i.i157 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %free_ccbq, ptr %blink1.i.i157, align 4
  %51 = ptrtoint ptr %free_ccbq to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %49, ptr %free_ccbq, align 4
  %tobool15.not = icmp eq ptr %47, null
  br i1 %tobool15.not, label %sym_remque_head.exit.cleanup_crit_edge, label %if.end17

sym_remque_head.exit.cleanup_crit_edge:           ; preds = %sym_remque_head.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17:                                         ; preds = %sym_remque_head.exit
  %add.ptr = getelementptr i8, ptr %47, i32 -972
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tag_order)
  %tobool18.not = icmp eq i8 %tag_order, 0
  %busy_itl58 = getelementptr inbounds %struct.sym_lcb, ptr %cond10, i32 0, i32 3
  %52 = ptrtoint ptr %busy_itl58 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %busy_itl58, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %cmp60.not = icmp eq i16 %53, 0
  br i1 %tobool18.not, label %if.else57, label %if.then19

if.then19:                                        ; preds = %if.end17
  br i1 %cmp60.not, label %if.end23, label %if.then19.out_free_crit_edge

if.then19.out_free_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free

if.end23:                                         ; preds = %if.then19
  %cb_tags = getelementptr inbounds %struct.sym_lcb, ptr %cond10, i32 0, i32 6
  %54 = ptrtoint ptr %cb_tags to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %cb_tags, align 4
  %tobool24.not = icmp eq ptr %55, null
  br i1 %tobool24.not, label %if.then25, label %if.end23.if.end30_crit_edge

if.end23.if.end30_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then25:                                        ; preds = %if.end23
  br i1 %tobool.not, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  %lun0p.i = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %idxprom, i32 3
  br label %cond.end7.sink.split.i

cond.false.i:                                     ; preds = %if.then25
  %lunmp.i = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %idxprom, i32 4
  %56 = ptrtoint ptr %lunmp.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %lunmp.i, align 4
  %tobool1.not.i = icmp eq ptr %57, null
  br i1 %tobool1.not.i, label %cond.false.i.cond.end7.i_crit_edge, label %cond.true2.i

cond.false.i.cond.end7.i_crit_edge:               ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end7.i

cond.true2.i:                                     ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #11
  %58 = trunc i64 %5 to i32
  %idxprom4.i = and i32 %58, 255
  %arrayidx5.i = getelementptr ptr, ptr %57, i32 %idxprom4.i
  br label %cond.end7.sink.split.i

cond.end7.sink.split.i:                           ; preds = %cond.true2.i, %cond.true.i
  %arrayidx5.sink.i = phi ptr [ %arrayidx5.i, %cond.true2.i ], [ %lun0p.i, %cond.true.i ]
  %59 = ptrtoint ptr %arrayidx5.sink.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx5.sink.i, align 4
  br label %cond.end7.i

cond.end7.i:                                      ; preds = %cond.end7.sink.split.i, %cond.false.i.cond.end7.i_crit_edge
  %cond8.i = phi ptr [ null, %cond.false.i.cond.end7.i_crit_edge ], [ %60, %cond.end7.sink.split.i ]
  %bus_dmat.i160 = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 41
  %61 = ptrtoint ptr %bus_dmat.i160 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bus_dmat.i160, align 4
  %call.i161 = tail call ptr @__sym_calloc_dma(ptr noundef %62, i32 noundef 256, ptr noundef nonnull @.str.45) #9
  %itlq_tbl.i = getelementptr inbounds %struct.sym_lcb, ptr %cond8.i, i32 0, i32 1
  %63 = ptrtoint ptr %itlq_tbl.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call.i161, ptr %itlq_tbl.i, align 4
  %tobool10.not.i = icmp eq ptr %call.i161, null
  br i1 %tobool10.not.i, label %cond.end7.i.sym_alloc_lcb_tags.exit_crit_edge, label %if.end.i162

cond.end7.i.sym_alloc_lcb_tags.exit_crit_edge:    ; preds = %cond.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sym_alloc_lcb_tags.exit

if.end.i162:                                      ; preds = %cond.end7.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %64 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %64, i32 noundef 2848, i32 noundef 64) #14
  %cb_tags.i = getelementptr inbounds %struct.sym_lcb, ptr %cond8.i, i32 0, i32 6
  %65 = ptrtoint ptr %cb_tags.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call7.i.i.i.i, ptr %cb_tags.i, align 4
  %tobool13.not.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool13.not.i, label %if.then14.i, label %if.end18.i

if.then14.i:                                      ; preds = %if.end.i162
  call void @__sanitizer_cov_trace_pc() #11
  %66 = ptrtoint ptr %bus_dmat.i160 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %bus_dmat.i160, align 4
  %68 = ptrtoint ptr %itlq_tbl.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %itlq_tbl.i, align 4
  tail call void @__sym_mfree_dma(ptr noundef %67, ptr noundef %69, i32 noundef 256, ptr noundef nonnull @.str.45) #9
  %70 = ptrtoint ptr %itlq_tbl.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %itlq_tbl.i, align 4
  br label %sym_alloc_lcb_tags.exit

if.end18.i:                                       ; preds = %if.end.i162
  %71 = ptrtoint ptr %itlq_tbl.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %itlq_tbl.i, align 4
  %notask_ba.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 8
  %73 = ptrtoint ptr %notask_ba.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %notask_ba.i, align 4
  %75 = tail call i32 @llvm.bswap.i32(i32 %74) #9
  %call.i.i = tail call ptr @__memset32(ptr noundef %72, i32 noundef %75, i32 noundef 256) #9
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end18.i
  %i.047.i = phi i32 [ 0, %if.end18.i ], [ %inc.i164, %for.body.i.for.body.i_crit_edge ]
  %conv.i163 = trunc i32 %i.047.i to i8
  %76 = ptrtoint ptr %cb_tags.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %cb_tags.i, align 4
  %arrayidx22.i = getelementptr i8, ptr %77, i32 %i.047.i
  %78 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv.i163, ptr %arrayidx22.i, align 1
  %inc.i164 = add nuw nsw i32 %i.047.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i164, 64
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %79 = ptrtoint ptr %bus_dmat.i160 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %bus_dmat.i160, align 4
  %81 = ptrtoint ptr %itlq_tbl.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %itlq_tbl.i, align 4
  %call25.i = tail call i32 @__vtobus(ptr noundef %80, ptr noundef %82) #9
  %83 = tail call i32 @llvm.bswap.i32(i32 %call25.i) #9
  %itlq_tbl_sa.i = getelementptr inbounds %struct.sym_lcbh, ptr %cond8.i, i32 0, i32 2
  %84 = ptrtoint ptr %itlq_tbl_sa.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %itlq_tbl_sa.i, align 4
  br label %sym_alloc_lcb_tags.exit

sym_alloc_lcb_tags.exit:                          ; preds = %for.end.i, %if.then14.i, %cond.end7.i.sym_alloc_lcb_tags.exit_crit_edge
  %85 = ptrtoint ptr %cb_tags to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %cb_tags, align 4
  %tobool27.not = icmp eq ptr %86, null
  br i1 %tobool27.not, label %sym_alloc_lcb_tags.exit.out_free_crit_edge, label %sym_alloc_lcb_tags.exit.if.end30_crit_edge

sym_alloc_lcb_tags.exit.if.end30_crit_edge:       ; preds = %sym_alloc_lcb_tags.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

sym_alloc_lcb_tags.exit.out_free_crit_edge:       ; preds = %sym_alloc_lcb_tags.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free

if.end30:                                         ; preds = %sym_alloc_lcb_tags.exit.if.end30_crit_edge, %if.end23.if.end30_crit_edge
  %busy_itlq = getelementptr inbounds %struct.sym_lcb, ptr %cond10, i32 0, i32 2
  %87 = ptrtoint ptr %busy_itlq to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %busy_itlq, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %88)
  %cmp32 = icmp ult i16 %88, 64
  br i1 %cmp32, label %if.then34, label %if.end30.out_free_crit_edge

if.end30.out_free_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  %89 = ptrtoint ptr %cb_tags to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %cb_tags, align 4
  %ia_tag = getelementptr inbounds %struct.sym_lcb, ptr %cond10, i32 0, i32 4
  %91 = ptrtoint ptr %ia_tag to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %ia_tag, align 4
  %idxprom36 = zext i16 %92 to i32
  %arrayidx37 = getelementptr i8, ptr %90, i32 %idxprom36
  %93 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx37, align 1
  %conv38 = zext i8 %94 to i16
  %inc = add i16 %92, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %inc)
  %cmp41 = icmp eq i16 %inc, 64
  %spec.select = select i1 %cmp41, i16 0, i16 %inc
  %95 = ptrtoint ptr %ia_tag to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %spec.select, ptr %ia_tag, align 4
  %inc47 = add nuw nsw i16 %88, 1
  %96 = ptrtoint ptr %busy_itlq to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %inc47, ptr %busy_itlq, align 4
  %ccb_ba = getelementptr i8, ptr %47, i32 -12
  %97 = ptrtoint ptr %ccb_ba to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %ccb_ba, align 4
  %99 = tail call i32 @llvm.bswap.i32(i32 %98)
  %itlq_tbl = getelementptr inbounds %struct.sym_lcb, ptr %cond10, i32 0, i32 1
  %100 = ptrtoint ptr %itlq_tbl to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %itlq_tbl, align 4
  %idxprom48 = zext i8 %94 to i32
  %arrayidx49 = getelementptr i32, ptr %101, i32 %idxprom48
  %102 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %99, ptr %arrayidx49, align 4
  %resel_tag = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 54, i32 15
  %103 = ptrtoint ptr %resel_tag to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %resel_tag, align 4
  %105 = tail call i32 @llvm.bswap.i32(i32 %104)
  %106 = ptrtoint ptr %cond10 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %cond10, align 4
  %tags_si = getelementptr inbounds %struct.sym_lcb, ptr %cond10, i32 0, i32 8
  %107 = ptrtoint ptr %tags_si to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %tags_si, align 4
  %tags_si50 = getelementptr i8, ptr %47, i32 25
  %109 = ptrtoint ptr %tags_si50 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %108, ptr %tags_si50, align 1
  %idxprom52 = zext i8 %108 to i32
  %arrayidx53 = getelementptr %struct.sym_lcb, ptr %cond10, i32 0, i32 9, i32 %idxprom52
  %110 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %arrayidx53, align 2
  %inc54 = add i16 %111, 1
  store i16 %inc54, ptr %arrayidx53, align 2
  %tags_since = getelementptr inbounds %struct.sym_lcb, ptr %cond10, i32 0, i32 10
  %112 = ptrtoint ptr %tags_since to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %tags_since, align 2
  %inc55 = add i16 %113, 1
  store i16 %inc55, ptr %tags_since, align 2
  br label %if.end82

if.else57:                                        ; preds = %if.end17
  br i1 %cmp60.not, label %lor.lhs.false, label %if.else57.out_free_crit_edge

if.else57.out_free_crit_edge:                     ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free

lor.lhs.false:                                    ; preds = %if.else57
  %busy_itlq62 = getelementptr inbounds %struct.sym_lcb, ptr %cond10, i32 0, i32 2
  %114 = ptrtoint ptr %busy_itlq62 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %busy_itlq62, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %115)
  %cmp64.not = icmp eq i16 %115, 0
  br i1 %cmp64.not, label %if.then74, label %lor.lhs.false.out_free_crit_edge

lor.lhs.false.out_free_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free

if.then74:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %116 = ptrtoint ptr %busy_itl58 to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 1, ptr %busy_itl58, align 2
  %ccb_ba75 = getelementptr i8, ptr %47, i32 -12
  %117 = ptrtoint ptr %ccb_ba75 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %ccb_ba75, align 4
  %119 = tail call i32 @llvm.bswap.i32(i32 %118)
  %itl_task_sa = getelementptr inbounds %struct.sym_lcbh, ptr %cond10, i32 0, i32 1
  %120 = ptrtoint ptr %itl_task_sa to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %itl_task_sa, align 4
  %resel_no_tag = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 54, i32 17
  %121 = ptrtoint ptr %resel_no_tag to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %resel_no_tag, align 4
  %123 = tail call i32 @llvm.bswap.i32(i32 %122)
  %124 = ptrtoint ptr %cond10 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %cond10, align 4
  br label %if.end82

if.end82:                                         ; preds = %if.then74, %if.then34
  %tag.0 = phi i16 [ %conv38, %if.then34 ], [ 256, %if.then74 ]
  %busy_ccbq = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 90
  %blink = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 90, i32 1
  %125 = ptrtoint ptr %blink to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %blink, align 4
  store ptr %47, ptr %blink, align 4
  %127 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %busy_ccbq, ptr %47, align 4
  %blink3.i = getelementptr inbounds %struct.sym_quehead, ptr %47, i32 0, i32 1
  %128 = ptrtoint ptr %blink3.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %126, ptr %blink3.i, align 4
  %129 = ptrtoint ptr %126 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %47, ptr %126, align 4
  %to_abort = getelementptr i8, ptr %47, i32 24
  %130 = ptrtoint ptr %to_abort to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 0, ptr %to_abort, align 4
  %odd_byte_adjustment = getelementptr i8, ptr %47, i32 -55
  %131 = ptrtoint ptr %odd_byte_adjustment to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 0, ptr %odd_byte_adjustment, align 1
  %tag84 = getelementptr i8, ptr %47, i32 -8
  %132 = ptrtoint ptr %tag84 to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 %tag.0, ptr %tag84, align 4
  %order = getelementptr i8, ptr %47, i32 -56
  %133 = ptrtoint ptr %order to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %tag_order, ptr %order, align 4
  %target85 = getelementptr i8, ptr %47, i32 -6
  %134 = ptrtoint ptr %target85 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %conv, ptr %target85, align 2
  %lun86 = getelementptr i8, ptr %47, i32 -5
  %135 = ptrtoint ptr %lun86 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %conv2, ptr %lun86, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sym_debug_flags to i32))
  %136 = load i32, ptr @sym_debug_flags, align 4
  %and = and i32 %136, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool87.not = icmp eq i32 %and, 0
  br i1 %tobool87.not, label %if.end82.cleanup_crit_edge, label %do.end

if.end82.cleanup_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  %137 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %device, align 4
  %sdev_gendev = getelementptr inbounds %struct.scsi_device, ptr %138, i32 0, i32 55
  %conv90 = zext i16 %tag.0 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %sdev_gendev, ptr noundef nonnull @.str.39, ptr noundef %add.ptr, i32 noundef %conv90) #12
  br label %cleanup

out_free:                                         ; preds = %lor.lhs.false.out_free_crit_edge, %if.else57.out_free_crit_edge, %if.end30.out_free_crit_edge, %sym_alloc_lcb_tags.exit.out_free_crit_edge, %if.then19.out_free_crit_edge
  %139 = ptrtoint ptr %free_ccbq to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %free_ccbq, align 4
  %blink1.i165 = getelementptr inbounds %struct.sym_quehead, ptr %140, i32 0, i32 1
  %141 = ptrtoint ptr %blink1.i165 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %47, ptr %blink1.i165, align 4
  %142 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %140, ptr %47, align 4
  %blink3.i166 = getelementptr inbounds %struct.sym_quehead, ptr %47, i32 0, i32 1
  %143 = ptrtoint ptr %blink3.i166 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %free_ccbq, ptr %blink3.i166, align 4
  store ptr %47, ptr %free_ccbq, align 4
  br label %cleanup

cleanup:                                          ; preds = %out_free, %do.end, %if.end82.cleanup_crit_edge, %sym_remque_head.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %out_free ], [ %add.ptr, %do.end ], [ %add.ptr, %if.end82.cleanup_crit_edge ], [ null, %sym_remque_head.exit.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sym_free_ccb(ptr noundef %np, ptr noundef %cp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %target1 = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 19
  %0 = ptrtoint ptr %target1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %target1, align 2
  %idxprom = zext i8 %1 to i32
  %lun = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 20
  %2 = ptrtoint ptr %lun to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %lun, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %lun0p = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %idxprom, i32 3
  br label %cond.end9.sink.split

cond.false:                                       ; preds = %entry
  %lunmp = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %idxprom, i32 4
  %4 = ptrtoint ptr %lunmp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lunmp, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %cond.false.cond.end9_crit_edge, label %cond.true3

cond.false.cond.end9_crit_edge:                   ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end9

cond.true3:                                       ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  %idxprom6 = zext i8 %3 to i32
  %arrayidx7 = getelementptr ptr, ptr %5, i32 %idxprom6
  br label %cond.end9.sink.split

cond.end9.sink.split:                             ; preds = %cond.true3, %cond.true
  %arrayidx7.sink = phi ptr [ %arrayidx7, %cond.true3 ], [ %lun0p, %cond.true ]
  %6 = ptrtoint ptr %arrayidx7.sink to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx7.sink, align 4
  br label %cond.end9

cond.end9:                                        ; preds = %cond.end9.sink.split, %cond.false.cond.end9_crit_edge
  %cond10 = phi ptr [ null, %cond.false.cond.end9_crit_edge ], [ %7, %cond.end9.sink.split ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sym_debug_flags to i32))
  %8 = load i32, ptr @sym_debug_flags, align 4
  %and = and i32 %8, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %cond.end9.if.end_crit_edge, label %do.end

cond.end9.if.end_crit_edge:                       ; preds = %cond.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %cond.end9
  call void @__sanitizer_cov_trace_pc() #11
  %cmd = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 1
  %9 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cmd, align 4
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %device, align 4
  %sdev_gendev = getelementptr inbounds %struct.scsi_device, ptr %12, i32 0, i32 55
  %tag = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 18
  %13 = ptrtoint ptr %tag to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %tag, align 4
  %conv = zext i16 %14 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %sdev_gendev, ptr noundef nonnull @.str.41, ptr noundef %cp, i32 noundef %conv) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %cond.end9.if.end_crit_edge
  %tobool12.not = icmp eq ptr %cond10, null
  br i1 %tobool12.not, label %if.end.if.end48_crit_edge, label %if.then13

if.end.if.end48_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then13:                                        ; preds = %if.end
  %tag14 = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 18
  %15 = ptrtoint ptr %tag14 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %tag14, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %16)
  %cmp.not = icmp eq i16 %16, 256
  br i1 %cmp.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  %tags_si = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 28
  %17 = ptrtoint ptr %tags_si to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %tags_si, align 1
  %idxprom18 = zext i8 %18 to i32
  %arrayidx19 = getelementptr %struct.sym_lcb, ptr %cond10, i32 0, i32 9, i32 %idxprom18
  %19 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx19, align 2
  %dec = add i16 %20, -1
  store i16 %dec, ptr %arrayidx19, align 2
  %21 = ptrtoint ptr %tag14 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %tag14, align 4
  %conv21 = trunc i16 %22 to i8
  %cb_tags = getelementptr inbounds %struct.sym_lcb, ptr %cond10, i32 0, i32 6
  %23 = ptrtoint ptr %cb_tags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cb_tags, align 4
  %if_tag = getelementptr inbounds %struct.sym_lcb, ptr %cond10, i32 0, i32 5
  %25 = ptrtoint ptr %if_tag to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %if_tag, align 2
  %idxprom22 = zext i16 %26 to i32
  %arrayidx23 = getelementptr i8, ptr %24, i32 %idxprom22
  %27 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv21, ptr %arrayidx23, align 1
  %28 = load i16, ptr %if_tag, align 2
  %inc = add i16 %28, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %inc)
  %cmp26 = icmp eq i16 %inc, 64
  %spec.select = select i1 %cmp26, i16 0, i16 %inc
  %29 = ptrtoint ptr %if_tag to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %spec.select, ptr %if_tag, align 2
  %bad_itlq_ba = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 10
  %30 = ptrtoint ptr %bad_itlq_ba to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bad_itlq_ba, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %itlq_tbl = getelementptr inbounds %struct.sym_lcb, ptr %cond10, i32 0, i32 1
  %33 = ptrtoint ptr %itlq_tbl to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %itlq_tbl, align 4
  %35 = ptrtoint ptr %tag14 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %tag14, align 4
  %idxprom32 = zext i16 %36 to i32
  %arrayidx33 = getelementptr i32, ptr %34, i32 %idxprom32
  %37 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %32, ptr %arrayidx33, align 4
  %busy_itlq = getelementptr inbounds %struct.sym_lcb, ptr %cond10, i32 0, i32 2
  %38 = ptrtoint ptr %busy_itlq to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %busy_itlq, align 4
  %dec34 = add i16 %39, -1
  store i16 %dec34, ptr %busy_itlq, align 4
  br label %if.end36

if.else:                                          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  %bad_itl_ba = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 9
  %40 = ptrtoint ptr %bad_itl_ba to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bad_itl_ba, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  %itl_task_sa = getelementptr inbounds %struct.sym_lcbh, ptr %cond10, i32 0, i32 1
  %43 = ptrtoint ptr %itl_task_sa to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %itl_task_sa, align 4
  %busy_itl = getelementptr inbounds %struct.sym_lcb, ptr %cond10, i32 0, i32 3
  %44 = ptrtoint ptr %busy_itl to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %busy_itl, align 2
  %dec35 = add i16 %45, -1
  store i16 %dec35, ptr %busy_itl, align 2
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.then17
  %busy_itlq37 = getelementptr inbounds %struct.sym_lcb, ptr %cond10, i32 0, i32 2
  %46 = ptrtoint ptr %busy_itlq37 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %busy_itlq37, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %cmp39 = icmp eq i16 %47, 0
  br i1 %cmp39, label %land.lhs.true, label %if.end36.if.end48_crit_edge

if.end36.if.end48_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

land.lhs.true:                                    ; preds = %if.end36
  %busy_itl41 = getelementptr inbounds %struct.sym_lcb, ptr %cond10, i32 0, i32 3
  %48 = ptrtoint ptr %busy_itl41 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %busy_itl41, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %cmp43 = icmp eq i16 %49, 0
  br i1 %cmp43, label %if.then45, label %land.lhs.true.if.end48_crit_edge

land.lhs.true.if.end48_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then45:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %resel_bad_lun = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 55, i32 15
  %50 = ptrtoint ptr %resel_bad_lun to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %resel_bad_lun, align 4
  %52 = tail call i32 @llvm.bswap.i32(i32 %51)
  %53 = ptrtoint ptr %cond10 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %cond10, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %land.lhs.true.if.end48_crit_edge, %if.end36.if.end48_crit_edge, %if.end.if.end48_crit_edge
  %nego_cp = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %idxprom, i32 7
  %54 = ptrtoint ptr %nego_cp to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %nego_cp, align 4
  %cmp49 = icmp eq ptr %55, %cp
  br i1 %cmp49, label %if.then51, label %if.end48.if.end53_crit_edge

if.end48.if.end53_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.then51:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %nego_cp to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %nego_cp, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %if.end48.if.end53_crit_edge
  %cmd54 = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 1
  %57 = ptrtoint ptr %cmd54 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %cmd54, align 4
  %arrayidx56 = getelementptr %struct.sym_ccbh, ptr %cp, i32 0, i32 3, i32 1
  %58 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %arrayidx56, align 1
  %link_ccbq = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 22
  %blink = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 22, i32 1
  %59 = ptrtoint ptr %blink to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %blink, align 4
  %61 = ptrtoint ptr %link_ccbq to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %link_ccbq, align 4
  %blink1.i = getelementptr inbounds %struct.sym_quehead, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %blink1.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %60, ptr %blink1.i, align 4
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %62, ptr %60, align 4
  %free_ccbq = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 89
  %65 = ptrtoint ptr %free_ccbq to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %free_ccbq, align 4
  %blink1.i98 = getelementptr inbounds %struct.sym_quehead, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %blink1.i98 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %link_ccbq, ptr %blink1.i98, align 4
  store ptr %66, ptr %link_ccbq, align 4
  store ptr %free_ccbq, ptr %blink, align 4
  store ptr %link_ccbq, ptr %free_ccbq, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sym_alloc_lcb(ptr noundef %np, i8 noundef zeroext %tn, i8 noundef zeroext %ln) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %tn to i32
  %arrayidx = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %idxprom
  %conv = zext i8 %ln to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ln)
  %tobool.not = icmp eq i8 %ln, 0
  br i1 %tobool.not, label %if.end25.thread, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %luntbl = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %idxprom, i32 1
  %0 = ptrtoint ptr %luntbl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %luntbl, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.then, label %land.lhs.true.land.lhs.true16_crit_edge

land.lhs.true.land.lhs.true16_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true16

if.then:                                          ; preds = %land.lhs.true
  %bus_dmat = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 41
  %2 = ptrtoint ptr %bus_dmat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus_dmat, align 4
  %call = tail call ptr @__sym_calloc_dma(ptr noundef %3, i32 noundef 256, ptr noundef nonnull @.str.43) #9
  %4 = ptrtoint ptr %luntbl to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %luntbl, align 4
  %tobool4.not = icmp eq ptr %call, null
  br i1 %tobool4.not, label %if.then.fail_crit_edge, label %if.end

if.then.fail_crit_edge:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %bus_dmat to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus_dmat, align 4
  %badlun_sa = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 12
  %call8 = tail call i32 @__vtobus(ptr noundef %6, ptr noundef %badlun_sa) #9
  %7 = tail call i32 @llvm.bswap.i32(i32 %call8)
  %call.i = tail call ptr @__memset32(ptr noundef nonnull %call, i32 noundef %7, i32 noundef 256) #9
  %8 = ptrtoint ptr %bus_dmat to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus_dmat, align 4
  %10 = ptrtoint ptr %luntbl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %luntbl, align 4
  %call12 = tail call i32 @__vtobus(ptr noundef %9, ptr noundef %11) #9
  %12 = tail call i32 @llvm.bswap.i32(i32 %call12)
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx, align 4
  br label %land.lhs.true16

land.lhs.true16:                                  ; preds = %if.end, %land.lhs.true.land.lhs.true16_crit_edge
  %lunmp = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %idxprom, i32 4
  %14 = ptrtoint ptr %lunmp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lunmp, align 4
  %tobool17.not = icmp eq ptr %15, null
  br i1 %tobool17.not, label %if.then18, label %land.lhs.true16.if.end25_crit_edge

land.lhs.true16.if.end25_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then18:                                        ; preds = %land.lhs.true16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 2848, i32 noundef 256) #14
  %17 = ptrtoint ptr %lunmp to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i.i, ptr %lunmp, align 4
  %tobool22.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool22.not, label %if.then18.fail_crit_edge, label %if.then18.if.end25_crit_edge

if.then18.if.end25_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then18.fail_crit_edge:                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

if.end25:                                         ; preds = %if.then18.if.end25_crit_edge, %land.lhs.true16.if.end25_crit_edge
  %bus_dmat26 = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 41
  %18 = ptrtoint ptr %bus_dmat26 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus_dmat26, align 4
  %call27 = tail call ptr @__sym_calloc_dma(ptr noundef %19, i32 noundef 44, ptr noundef nonnull @.str.44) #9
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %if.end25.fail_crit_edge, label %if.then32

if.end25.fail_crit_edge:                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

if.end25.thread:                                  ; preds = %entry
  %bus_dmat2687 = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 41
  %20 = ptrtoint ptr %bus_dmat2687 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus_dmat2687, align 4
  %call2788 = tail call ptr @__sym_calloc_dma(ptr noundef %21, i32 noundef 44, ptr noundef nonnull @.str.44) #9
  %tobool28.not89 = icmp eq ptr %call2788, null
  br i1 %tobool28.not89, label %if.end25.thread.fail_crit_edge, label %if.else

if.end25.thread.fail_crit_edge:                   ; preds = %if.end25.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

if.then32:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %lunmp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lunmp, align 4
  %arrayidx35 = getelementptr ptr, ptr %23, i32 %conv
  %24 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call27, ptr %arrayidx35, align 4
  %25 = ptrtoint ptr %bus_dmat26 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bus_dmat26, align 4
  %call37 = tail call i32 @__vtobus(ptr noundef %26, ptr noundef nonnull %call27) #9
  %27 = tail call i32 @llvm.bswap.i32(i32 %call37)
  %28 = ptrtoint ptr %luntbl to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %luntbl, align 4
  %arrayidx40 = getelementptr i32, ptr %29, i32 %conv
  %30 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %27, ptr %arrayidx40, align 4
  br label %if.end44

if.else:                                          ; preds = %if.end25.thread
  call void @__sanitizer_cov_trace_pc() #11
  %lun0p = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %idxprom, i32 3
  %31 = ptrtoint ptr %lun0p to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call2788, ptr %lun0p, align 4
  %32 = ptrtoint ptr %bus_dmat2687 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bus_dmat2687, align 4
  %call42 = tail call i32 @__vtobus(ptr noundef %33, ptr noundef nonnull %call2788) #9
  %34 = tail call i32 @llvm.bswap.i32(i32 %call42)
  %lun0_sa = getelementptr inbounds %struct.sym_tcbh, ptr %arrayidx, i32 0, i32 1
  %35 = ptrtoint ptr %lun0_sa to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %lun0_sa, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.else, %if.then32
  %call2792 = phi ptr [ %call2788, %if.else ], [ %call27, %if.then32 ]
  %nlcb = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %idxprom, i32 2
  %36 = ptrtoint ptr %nlcb to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %nlcb, align 4
  %inc = add i32 %37, 1
  store i32 %inc, ptr %nlcb, align 4
  %bad_itl_ba = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 9
  %38 = ptrtoint ptr %bad_itl_ba to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bad_itl_ba, align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  %itl_task_sa = getelementptr inbounds %struct.sym_lcbh, ptr %call2792, i32 0, i32 1
  %41 = ptrtoint ptr %itl_task_sa to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %itl_task_sa, align 4
  %resel_bad_lun = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 55, i32 15
  %42 = ptrtoint ptr %resel_bad_lun to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %resel_bad_lun, align 4
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  %45 = ptrtoint ptr %call2792 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %call2792, align 4
  %usrflags = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %idxprom, i32 9
  %46 = ptrtoint ptr %usrflags to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %usrflags, align 1
  %48 = and i8 %47, 3
  %user_flags = getelementptr inbounds %struct.sym_lcb, ptr %call2792, i32 0, i32 12
  %49 = ptrtoint ptr %user_flags to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %user_flags, align 1
  br label %fail

fail:                                             ; preds = %if.end44, %if.end25.thread.fail_crit_edge, %if.end25.fail_crit_edge, %if.then18.fail_crit_edge, %if.then.fail_crit_edge
  %lp.0 = phi ptr [ %call2792, %if.end44 ], [ null, %if.end25.fail_crit_edge ], [ null, %if.then18.fail_crit_edge ], [ null, %if.then.fail_crit_edge ], [ null, %if.end25.thread.fail_crit_edge ]
  ret ptr %lp.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__sym_calloc_dma(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__vtobus(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sym_free_lcb(ptr noundef %np, i8 noundef zeroext %tn, i8 noundef zeroext %ln) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %tn to i32
  %arrayidx = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %idxprom
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ln)
  %tobool.not = icmp eq i8 %ln, 0
  br i1 %tobool.not, label %if.else25, label %cond.false

cond.false:                                       ; preds = %entry
  %lunmp = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %idxprom, i32 4
  %0 = ptrtoint ptr %lunmp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lunmp, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %cond.false.if.then_crit_edge, label %cond.true2

cond.false.if.then_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

cond.true2:                                       ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  %idxprom4 = zext i8 %ln to i32
  %arrayidx5 = getelementptr ptr, ptr %1, i32 %idxprom4
  %2 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx5, align 4
  br label %if.then

if.then:                                          ; preds = %cond.true2, %cond.false.if.then_crit_edge
  %cond8.ph = phi ptr [ null, %cond.false.if.then_crit_edge ], [ %3, %cond.true2 ]
  %nlcb71 = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %idxprom, i32 2
  %4 = ptrtoint ptr %nlcb71 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nlcb71, align 4
  %dec72 = add i32 %5, -1
  store i32 %dec72, ptr %nlcb71, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec72)
  %tobool11.not = icmp eq i32 %dec72, 0
  br i1 %tobool11.not, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %lunmp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lunmp, align 4
  tail call void @kfree(ptr noundef %7) #9
  %bus_dmat = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 41
  %8 = ptrtoint ptr %bus_dmat to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus_dmat, align 4
  %luntbl = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %idxprom, i32 1
  %10 = ptrtoint ptr %luntbl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %luntbl, align 4
  tail call void @__sym_mfree_dma(ptr noundef %9, ptr noundef %11, i32 noundef 256, ptr noundef nonnull @.str.43) #9
  %12 = ptrtoint ptr %lunmp to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %lunmp, align 4
  %13 = ptrtoint ptr %luntbl to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %luntbl, align 4
  %14 = ptrtoint ptr %bus_dmat to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus_dmat, align 4
  %badluntbl = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 11
  %16 = ptrtoint ptr %badluntbl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %badluntbl, align 4
  %call = tail call i32 @__vtobus(ptr noundef %15, ptr noundef %17) #9
  %18 = tail call i32 @llvm.bswap.i32(i32 %call)
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %arrayidx, align 4
  br label %if.end31

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %bus_dmat17 = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 41
  %20 = ptrtoint ptr %bus_dmat17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus_dmat17, align 4
  %badlun_sa = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 12
  %call18 = tail call i32 @__vtobus(ptr noundef %21, ptr noundef %badlun_sa) #9
  %22 = tail call i32 @llvm.bswap.i32(i32 %call18)
  %luntbl19 = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %idxprom, i32 1
  %23 = ptrtoint ptr %luntbl19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %luntbl19, align 4
  %idxprom20 = zext i8 %ln to i32
  %arrayidx21 = getelementptr i32, ptr %24, i32 %idxprom20
  %25 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %22, ptr %arrayidx21, align 4
  %26 = ptrtoint ptr %lunmp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %lunmp, align 4
  %arrayidx24 = getelementptr ptr, ptr %27, i32 %idxprom20
  %28 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %arrayidx24, align 4
  br label %if.end31

if.else25:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %lun0p = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %idxprom, i32 3
  %29 = ptrtoint ptr %lun0p to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %lun0p, align 4
  %nlcb = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %idxprom, i32 2
  %31 = ptrtoint ptr %nlcb to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nlcb, align 4
  %dec = add i32 %32, -1
  store i32 %dec, ptr %nlcb, align 4
  store ptr null, ptr %lun0p, align 4
  %bus_dmat27 = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 41
  %33 = ptrtoint ptr %bus_dmat27 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bus_dmat27, align 4
  %badlun_sa28 = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 12
  %call29 = tail call i32 @__vtobus(ptr noundef %34, ptr noundef %badlun_sa28) #9
  %35 = tail call i32 @llvm.bswap.i32(i32 %call29)
  %lun0_sa = getelementptr inbounds %struct.sym_tcbh, ptr %arrayidx, i32 0, i32 1
  %36 = ptrtoint ptr %lun0_sa to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %lun0_sa, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.else25, %if.else, %if.then12
  %nlcb76 = phi ptr [ %nlcb71, %if.then12 ], [ %nlcb71, %if.else ], [ %nlcb, %if.else25 ]
  %cond873 = phi ptr [ %cond8.ph, %if.then12 ], [ %cond8.ph, %if.else ], [ %30, %if.else25 ]
  %itlq_tbl = getelementptr inbounds %struct.sym_lcb, ptr %cond873, i32 0, i32 1
  %37 = ptrtoint ptr %itlq_tbl to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %itlq_tbl, align 4
  %tobool32.not = icmp eq ptr %38, null
  br i1 %tobool32.not, label %if.end31.if.end36_crit_edge, label %if.then33

if.end31.if.end36_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  %bus_dmat34 = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 41
  %39 = ptrtoint ptr %bus_dmat34 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bus_dmat34, align 4
  tail call void @__sym_mfree_dma(ptr noundef %40, ptr noundef nonnull %38, i32 noundef 256, ptr noundef nonnull @.str.45) #9
  %cb_tags = getelementptr inbounds %struct.sym_lcb, ptr %cond873, i32 0, i32 6
  %41 = ptrtoint ptr %cb_tags to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cb_tags, align 4
  tail call void @kfree(ptr noundef %42) #9
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %if.end31.if.end36_crit_edge
  %bus_dmat37 = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 41
  %43 = ptrtoint ptr %bus_dmat37 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bus_dmat37, align 4
  tail call void @__sym_mfree_dma(ptr noundef %44, ptr noundef %cond873, i32 noundef 44, ptr noundef nonnull @.str.44) #9
  %45 = ptrtoint ptr %nlcb76 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %nlcb76, align 4
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sym_mfree_dma(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sym_queue_scsiio(ptr noundef %np, ptr noundef %cmd, ptr noundef %cp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %cmd1 = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 1
  %2 = ptrtoint ptr %cmd1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %cmd, ptr %cmd1, align 4
  %target2 = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 19
  %3 = ptrtoint ptr %target2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %target2, align 2
  %idxprom = zext i8 %4 to i32
  %lun = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 18
  %5 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %lun, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %tobool.not = icmp eq i64 %6, 0
  br i1 %tobool.not, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %lun0p = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %idxprom, i32 3
  br label %cond.end10

cond.false:                                       ; preds = %entry
  %lunmp = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %idxprom, i32 4
  %7 = ptrtoint ptr %lunmp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lunmp, align 4
  %tobool3.not = icmp eq ptr %8, null
  br i1 %tobool3.not, label %cond.end10.thread, label %cond.true4

cond.true4:                                       ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  %conv = trunc i64 %6 to i32
  %idxprom7 = and i32 %conv, 255
  %arrayidx8 = getelementptr ptr, ptr %8, i32 %idxprom7
  br label %cond.end10

cond.end10:                                       ; preds = %cond.true4, %cond.true
  %cond11.in = phi ptr [ %lun0p, %cond.true ], [ %arrayidx8, %cond.true4 ]
  %9 = ptrtoint ptr %cond11.in to i32
  call void @__asan_load4_noabort(i32 %9)
  %cond11 = load ptr, ptr %cond11.in, align 4
  %tag = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 18
  %10 = ptrtoint ptr %tag to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %tag, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %11)
  %cmp.not = icmp eq i16 %11, 256
  br i1 %cmp.not, label %lor.rhs, label %cond.end10.if.then_crit_edge

cond.end10.if.then_crit_edge:                     ; preds = %cond.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

cond.end10.thread:                                ; preds = %cond.false
  %tag190 = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 18
  %12 = ptrtoint ptr %tag190 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %tag190, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %13)
  %cmp.not191 = icmp eq i16 %13, 256
  br i1 %cmp.not191, label %cond.end10.thread.lor.end.thread_crit_edge, label %cond.end10.thread.if.then_crit_edge

cond.end10.thread.if.then_crit_edge:              ; preds = %cond.end10.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

cond.end10.thread.lor.end.thread_crit_edge:       ; preds = %cond.end10.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end.thread

lor.rhs:                                          ; preds = %cond.end10
  %tobool14.not = icmp eq ptr %cond11, null
  br i1 %tobool14.not, label %lor.rhs.lor.end.thread_crit_edge, label %land.rhs

lor.rhs.lor.end.thread_crit_edge:                 ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end.thread

land.rhs:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  %curr_flags = getelementptr inbounds %struct.sym_lcb, ptr %cond11, i32 0, i32 13
  %14 = ptrtoint ptr %curr_flags to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %curr_flags, align 2
  %conv15 = zext i8 %15 to i32
  %and = shl nuw nsw i32 %conv15, 6
  %16 = and i32 %and, 64
  %phi.bo = or i32 %16, 128
  br label %lor.end.thread

lor.end.thread:                                   ; preds = %land.rhs, %lor.rhs.lor.end.thread_crit_edge, %cond.end10.thread.lor.end.thread_crit_edge
  %cond11192.ph = phi ptr [ %cond11, %land.rhs ], [ null, %lor.rhs.lor.end.thread_crit_edge ], [ null, %cond.end10.thread.lor.end.thread_crit_edge ]
  %.ph = phi i32 [ %phi.bo, %land.rhs ], [ 128, %lor.rhs.lor.end.thread_crit_edge ], [ 128, %cond.end10.thread.lor.end.thread_crit_edge ]
  %scsi_smsg207 = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 11
  %conv19188208 = zext i32 %.ph to i64
  %and21209 = and i64 %6, 7
  %or22210 = or i64 %and21209, %conv19188208
  %conv23211 = trunc i64 %or22210 to i8
  %17 = ptrtoint ptr %scsi_smsg207 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv23211, ptr %scsi_smsg207, align 1
  br label %if.end61

if.then:                                          ; preds = %cond.end10.thread.if.then_crit_edge, %cond.end10.if.then_crit_edge
  %tag196 = phi ptr [ %tag, %cond.end10.if.then_crit_edge ], [ %tag190, %cond.end10.thread.if.then_crit_edge ]
  %cond11192 = phi ptr [ %cond11, %cond.end10.if.then_crit_edge ], [ null, %cond.end10.thread.if.then_crit_edge ]
  %scsi_smsg = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 11
  %18 = trunc i64 %6 to i8
  %19 = and i8 %18, 7
  %conv23 = or i8 %19, -64
  %20 = ptrtoint ptr %scsi_smsg to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv23, ptr %scsi_smsg, align 1
  %order29 = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 6
  %21 = ptrtoint ptr %order29 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %order29, align 4
  %.off = add i8 %22, -33
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  %spec.select = select i1 %switch, i8 %22, i8 32
  %tobool31.not = icmp eq ptr %cond11192, null
  br i1 %tobool31.not, label %if.then.if.end53_crit_edge, label %land.lhs.true

if.then.if.end53_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

land.lhs.true:                                    ; preds = %if.then
  %tags_since = getelementptr inbounds %struct.sym_lcb, ptr %cond11192, i32 0, i32 10
  %23 = ptrtoint ptr %tags_since to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %tags_since, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 192, i16 %24)
  %cmp33 = icmp ugt i16 %24, 192
  br i1 %cmp33, label %if.then35, label %land.lhs.true.if.end53_crit_edge

land.lhs.true.if.end53_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.then35:                                        ; preds = %land.lhs.true
  %tags_si = getelementptr inbounds %struct.sym_lcb, ptr %cond11192, i32 0, i32 8
  %25 = ptrtoint ptr %tags_si to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %tags_si, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool36.not = icmp eq i8 %26, 0
  %conv37 = zext i1 %tobool36.not to i8
  %27 = ptrtoint ptr %tags_si to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv37, ptr %tags_si, align 4
  %idxprom40 = zext i1 %tobool36.not to i32
  %arrayidx41 = getelementptr %struct.sym_lcb, ptr %cond11192, i32 0, i32 9, i32 %idxprom40
  %28 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx41, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool42.not = icmp eq i16 %29, 0
  br i1 %tobool42.not, label %if.then35.if.end51_crit_edge, label %if.then43

if.then35.if.end51_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.then43:                                        ; preds = %if.then35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sym_debug_flags to i32))
  %30 = load i32, ptr @sym_debug_flags, align 4
  %and44 = and i32 %30, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %lor.lhs.false, label %if.then43.do.end_crit_edge

if.then43.do.end_crit_edge:                       ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false:                                    ; preds = %if.then43
  %verbose = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 87
  %31 = ptrtoint ptr %verbose to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %verbose, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %32)
  %cmp47 = icmp ugt i8 %32, 1
  br i1 %cmp47, label %lor.lhs.false.do.end_crit_edge, label %lor.lhs.false.if.end51_crit_edge

lor.lhs.false.if.end51_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.then43.do.end_crit_edge
  %33 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %device, align 4
  %sdev_gendev = getelementptr inbounds %struct.scsi_device, ptr %34, i32 0, i32 55
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %sdev_gendev, ptr noundef nonnull @.str.46) #12
  br label %if.end51

if.end51:                                         ; preds = %do.end, %lor.lhs.false.if.end51_crit_edge, %if.then35.if.end51_crit_edge
  %order.1 = phi i8 [ 34, %do.end ], [ 34, %lor.lhs.false.if.end51_crit_edge ], [ %spec.select, %if.then35.if.end51_crit_edge ]
  %35 = ptrtoint ptr %tags_since to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %tags_since, align 2
  br label %if.end53

if.end53:                                         ; preds = %if.end51, %land.lhs.true.if.end53_crit_edge, %if.then.if.end53_crit_edge
  %order.2 = phi i8 [ %order.1, %if.end51 ], [ %spec.select, %land.lhs.true.if.end53_crit_edge ], [ %spec.select, %if.then.if.end53_crit_edge ]
  %arrayidx55 = getelementptr %struct.sym_ccb, ptr %cp, i32 0, i32 11, i32 1
  %36 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %order.2, ptr %arrayidx55, align 1
  %37 = ptrtoint ptr %tag196 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %tag196, align 4
  %conv57 = trunc i16 %38 to i8
  %shl = shl i8 %conv57, 1
  %add = or i8 %shl, 1
  %arrayidx60 = getelementptr %struct.sym_ccb, ptr %cp, i32 0, i32 11, i32 2
  %39 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %add, ptr %arrayidx60, align 1
  br label %if.end61

if.end61:                                         ; preds = %if.end53, %lor.end.thread
  %cond11194 = phi ptr [ %cond11192, %if.end53 ], [ %cond11192.ph, %lor.end.thread ]
  %msglen.0 = phi i32 [ 3, %if.end53 ], [ 1, %lor.end.thread ]
  %nego_status = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 8
  %40 = ptrtoint ptr %nego_status to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %nego_status, align 2
  %check_nego = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %idxprom, i32 5, i32 2
  %41 = ptrtoint ptr %check_nego to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load = load i8, ptr %check_nego, align 2
  %42 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool62.not = icmp eq i8 %42, 0
  br i1 %tobool62.not, label %lor.lhs.false63, label %if.end61.land.lhs.true74_crit_edge

if.end61.land.lhs.true74_crit_edge:               ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true74

lor.lhs.false63:                                  ; preds = %if.end61
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 16
  %43 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cmnd, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %44, align 1
  %47 = zext i8 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.268)
  switch i8 %46, label %lor.lhs.false63.if.end80_crit_edge [
    i8 18, label %lor.lhs.false63.land.lhs.true74_crit_edge
    i8 3, label %lor.lhs.false63.land.lhs.true74_crit_edge213
  ]

lor.lhs.false63.land.lhs.true74_crit_edge213:     ; preds = %lor.lhs.false63
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true74

lor.lhs.false63.land.lhs.true74_crit_edge:        ; preds = %lor.lhs.false63
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true74

lor.lhs.false63.if.end80_crit_edge:               ; preds = %lor.lhs.false63
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

land.lhs.true74:                                  ; preds = %lor.lhs.false63.land.lhs.true74_crit_edge, %lor.lhs.false63.land.lhs.true74_crit_edge213, %if.end61.land.lhs.true74_crit_edge
  %nego_cp = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %idxprom, i32 7
  %48 = ptrtoint ptr %nego_cp to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %nego_cp, align 4
  %tobool75.not = icmp ne ptr %49, null
  %tobool77.not = icmp eq ptr %cond11194, null
  %or.cond = select i1 %tobool75.not, i1 true, i1 %tobool77.not
  br i1 %or.cond, label %land.lhs.true74.if.end80_crit_edge, label %if.then78

land.lhs.true74.if.end80_crit_edge:               ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

if.then78:                                        ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #11
  %50 = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 11
  %add.ptr = getelementptr i8, ptr %50, i32 %msglen.0
  %call = tail call fastcc i32 @sym_prepare_nego(ptr noundef %np, ptr noundef %cp, ptr noundef %add.ptr)
  %add79 = add i32 %call, %msglen.0
  br label %if.end80

if.end80:                                         ; preds = %if.then78, %land.lhs.true74.if.end80_crit_edge, %lor.lhs.false63.if.end80_crit_edge
  %msglen.1 = phi i32 [ %msglen.0, %land.lhs.true74.if.end80_crit_edge ], [ %add79, %if.then78 ], [ %msglen.0, %lor.lhs.false63.if.end80_crit_edge ]
  %arrayidx = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %idxprom
  %select = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 54, i32 3
  %51 = ptrtoint ptr %select to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %select, align 4
  %53 = tail call i32 @llvm.bswap.i32(i32 %52)
  %54 = ptrtoint ptr %cp to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %cp, align 4
  %resel_dsa = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 54, i32 16
  %55 = ptrtoint ptr %resel_dsa to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %resel_dsa, align 4
  %57 = tail call i32 @llvm.bswap.i32(i32 %56)
  %restart = getelementptr inbounds %struct.sym_actscr, ptr %cp, i32 0, i32 1
  %58 = ptrtoint ptr %restart to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %restart, align 4
  %59 = ptrtoint ptr %target2 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %target2, align 2
  %select87 = getelementptr inbounds %struct.sym_dsb, ptr %cp, i32 0, i32 3
  %sel_id = getelementptr inbounds %struct.sym_dsb, ptr %cp, i32 0, i32 3, i32 2
  %61 = ptrtoint ptr %sel_id to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %sel_id, align 2
  %wval = getelementptr inbounds %struct.sym_tcbh, ptr %arrayidx, i32 0, i32 5
  %62 = ptrtoint ptr %wval to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %wval, align 1
  %sel_scntl3 = getelementptr inbounds %struct.sym_dsb, ptr %cp, i32 0, i32 3, i32 3
  %64 = ptrtoint ptr %sel_scntl3 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %sel_scntl3, align 1
  %sval = getelementptr inbounds %struct.sym_tcbh, ptr %arrayidx, i32 0, i32 3
  %65 = ptrtoint ptr %sval to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %sval, align 1
  %sel_sxfer = getelementptr inbounds %struct.sym_dsb, ptr %cp, i32 0, i32 3, i32 1
  %67 = ptrtoint ptr %sel_sxfer to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %sel_sxfer, align 1
  %uval = getelementptr inbounds %struct.sym_tcbh, ptr %arrayidx, i32 0, i32 2
  %68 = ptrtoint ptr %uval to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %uval, align 4
  %70 = ptrtoint ptr %select87 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %select87, align 4
  %ccb_ba = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 17
  %71 = ptrtoint ptr %ccb_ba to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %ccb_ba, align 4
  %add97 = add i32 %72, 924
  %73 = tail call i32 @llvm.bswap.i32(i32 %add97)
  %smsg = getelementptr inbounds %struct.sym_dsb, ptr %cp, i32 0, i32 4
  %addr = getelementptr inbounds %struct.sym_dsb, ptr %cp, i32 0, i32 4, i32 1
  %74 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %addr, align 4
  %75 = tail call i32 @llvm.bswap.i32(i32 %msglen.1)
  %76 = ptrtoint ptr %smsg to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %smsg, align 4
  %status = getelementptr inbounds %struct.sym_ccbh, ptr %cp, i32 0, i32 3
  %77 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %status, align 4
  %78 = ptrtoint ptr %nego_status to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %nego_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool106.not = icmp eq i8 %79, 0
  %conv108 = select i1 %tobool106.not, i8 1, i8 2
  %arrayidx112 = getelementptr %struct.sym_ccbh, ptr %cp, i32 0, i32 3, i32 1
  %80 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv108, ptr %arrayidx112, align 1
  %arrayidx116 = getelementptr %struct.sym_ccbh, ptr %cp, i32 0, i32 3, i32 2
  %81 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 -1, ptr %arrayidx116, align 2
  %xerr_status = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 9
  %82 = ptrtoint ptr %xerr_status to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %xerr_status, align 1
  %arrayidx120 = getelementptr %struct.sym_ccbh, ptr %cp, i32 0, i32 3, i32 3
  %83 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %arrayidx120, align 1
  %extra_bytes = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 10
  %84 = ptrtoint ptr %extra_bytes to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %extra_bytes, align 4
  %ext_sg = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 25
  %85 = ptrtoint ptr %ext_sg to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 -1, ptr %ext_sg, align 4
  %ext_ofs = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 26
  %86 = ptrtoint ptr %ext_ofs to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %ext_ofs, align 4
  %call121 = tail call i32 @sym_setup_data_and_start(ptr noundef %np, ptr noundef %cmd, ptr noundef %cp) #9
  ret i32 %call121
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sym_prepare_nego(ptr noundef %np, ptr noundef %cp, ptr noundef %msgptr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %target1 = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 19
  %0 = ptrtoint ptr %target1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %target1, align 2
  %idxprom = zext i8 %1 to i32
  %starget2 = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %idxprom, i32 13
  %2 = ptrtoint ptr %starget2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %starget2, align 4
  %tgoal = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %idxprom, i32 5
  %starget_data.i = getelementptr inbounds %struct.scsi_target, ptr %3, i32 0, i32 15
  %support_wide.i = getelementptr inbounds %struct.spi_transport_attrs, ptr %starget_data.i, i32 0, i32 6
  %4 = ptrtoint ptr %support_wide.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i = load i8, ptr %support_wide.i, align 4
  %5 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %width.i = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %idxprom, i32 5, i32 2
  %6 = ptrtoint ptr %width.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load1.i = load i8, ptr %width.i, align 2
  %bf.clear2.i = and i8 %bf.load1.i, 127
  store i8 %bf.clear2.i, ptr %width.i, align 2
  %7 = ptrtoint ptr %support_wide.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load4.pr.i = load i8, ptr %support_wide.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %bf.load4.i = phi i8 [ %bf.load4.pr.i, %if.then.i ], [ %bf.load.i, %entry.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load4.i)
  %tobool7.not.i = icmp sgt i8 %bf.load4.i, -1
  br i1 %tobool7.not.i, label %if.then8.i, label %if.end18.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %iu.i = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %idxprom, i32 5, i32 2
  %8 = ptrtoint ptr %iu.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load9.i = load i8, ptr %iu.i, align 2
  %bf.clear16.i = and i8 %bf.load9.i, -113
  store i8 %bf.clear16.i, ptr %iu.i, align 2
  %offset.i = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %idxprom, i32 5, i32 1
  %9 = ptrtoint ptr %offset.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %offset.i, align 1
  br label %sym_check_goals.exit

if.end18.i:                                       ; preds = %if.end.i
  %10 = and i8 %bf.load4.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool24.not.i = icmp eq i8 %10, 0
  br i1 %tobool24.not.i, label %if.end18.i.if.end46.sink.split.i_crit_edge, label %if.then25.i

if.end18.i.if.end46.sink.split.i_crit_edge:       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46.sink.split.i

if.then25.i:                                      ; preds = %if.end18.i
  %support_dt_only.i = getelementptr inbounds %struct.scsi_target, ptr %3, i32 1, i32 3
  %11 = ptrtoint ptr %support_dt_only.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %support_dt_only.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool27.not.i = icmp eq i32 %12, 0
  br i1 %tobool27.not.i, label %if.then25.i.if.end33.i_crit_edge, label %if.then28.i

if.then25.i.if.end33.i_crit_edge:                 ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i

if.then28.i:                                      ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #11
  %dt29.i = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %idxprom, i32 5, i32 2
  %13 = ptrtoint ptr %dt29.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load30.i = load i8, ptr %dt29.i, align 2
  %bf.set32.i = or i8 %bf.load30.i, 32
  store i8 %bf.set32.i, ptr %dt29.i, align 2
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then28.i, %if.then25.i.if.end33.i_crit_edge
  %offset34.i = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %idxprom, i32 5, i32 1
  %14 = ptrtoint ptr %offset34.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %offset34.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp.i = icmp eq i8 %15, 0
  br i1 %cmp.i, label %if.end33.i.if.end46.sink.split.i_crit_edge, label %if.end33.i.if.end46.i_crit_edge

if.end33.i.if.end46.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46.i

if.end33.i.if.end46.sink.split.i_crit_edge:       ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46.sink.split.i

if.end46.sink.split.i:                            ; preds = %if.end33.i.if.end46.sink.split.i_crit_edge, %if.end18.i.if.end46.sink.split.i_crit_edge
  %dt42.i = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %idxprom, i32 5, i32 2
  %16 = ptrtoint ptr %dt42.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load38.i = load i8, ptr %dt42.i, align 2
  %bf.clear39.i = and i8 %bf.load38.i, -33
  store i8 %bf.clear39.i, ptr %dt42.i, align 2
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.end46.sink.split.i, %if.end33.i.if.end46.i_crit_edge
  %scsi_mode.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 86
  %17 = ptrtoint ptr %scsi_mode.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %scsi_mode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %18)
  %cmp48.not.i = icmp eq i8 %18, -64
  br i1 %cmp48.not.i, label %lor.lhs.false.i, label %if.end46.i.if.then51.i_crit_edge

if.end46.i.if.then51.i_crit_edge:                 ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then51.i

lor.lhs.false.i:                                  ; preds = %if.end46.i
  %features.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 60
  %19 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %features.i, align 4
  %and.i = and i32 %20, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool50.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool50.not.i, label %lor.lhs.false.i.if.then51.i_crit_edge, label %lor.lhs.false.i.if.end56.i_crit_edge

lor.lhs.false.i.if.end56.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56.i

lor.lhs.false.i.if.then51.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then51.i

if.then51.i:                                      ; preds = %lor.lhs.false.i.if.then51.i_crit_edge, %if.end46.i.if.then51.i_crit_edge
  %dt52.i = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %idxprom, i32 5, i32 2
  %21 = ptrtoint ptr %dt52.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load53.i = load i8, ptr %dt52.i, align 2
  %bf.clear54.i = and i8 %bf.load53.i, -33
  store i8 %bf.clear54.i, ptr %dt52.i, align 2
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.then51.i, %lor.lhs.false.i.if.end56.i_crit_edge
  %dt57.i = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %idxprom, i32 5, i32 2
  %22 = ptrtoint ptr %dt57.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load58.i = load i8, ptr %dt57.i, align 2
  %23 = and i8 %bf.load58.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool62.not.i = icmp eq i8 %23, 0
  br i1 %tobool62.not.i, label %if.else94.i, label %if.then63.i

if.then63.i:                                      ; preds = %if.end56.i
  %bf.set67.i = or i8 %bf.load58.i, -128
  %24 = ptrtoint ptr %dt57.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %bf.set67.i, ptr %dt57.i, align 2
  %offset68.i = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %idxprom, i32 5, i32 1
  %25 = ptrtoint ptr %offset68.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %offset68.i, align 1
  %maxoffs_dt.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 69
  %27 = ptrtoint ptr %maxoffs_dt.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %maxoffs_dt.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %26, i8 %28)
  %cmp71.i = icmp ugt i8 %26, %28
  br i1 %cmp71.i, label %if.then73.i, label %if.then63.i.if.end76.i_crit_edge

if.then63.i.if.end76.i_crit_edge:                 ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76.i

if.then73.i:                                      ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %offset68.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %offset68.i, align 1
  br label %if.end76.i

if.end76.i:                                       ; preds = %if.then73.i, %if.then63.i.if.end76.i_crit_edge
  %30 = ptrtoint ptr %tgoal to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %tgoal, align 4
  %minsync_dt.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 67
  %32 = ptrtoint ptr %minsync_dt.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %minsync_dt.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %31, i8 %33)
  %cmp79.i = icmp ult i8 %31, %33
  br i1 %cmp79.i, label %if.then81.i, label %if.end76.i.if.end84.i_crit_edge

if.end76.i.if.end84.i_crit_edge:                  ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end84.i

if.then81.i:                                      ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %tgoal to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %tgoal, align 4
  br label %if.end84.i

if.end84.i:                                       ; preds = %if.then81.i, %if.end76.i.if.end84.i_crit_edge
  %35 = ptrtoint ptr %tgoal to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %tgoal, align 4
  %maxsync_dt.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 68
  %37 = ptrtoint ptr %maxsync_dt.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %maxsync_dt.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %36, i8 %38)
  %cmp88.i = icmp ugt i8 %36, %38
  br i1 %cmp88.i, label %if.then90.i, label %if.end84.i.sym_check_goals.exit_crit_edge

if.end84.i.sym_check_goals.exit_crit_edge:        ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sym_check_goals.exit

if.then90.i:                                      ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %tgoal to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %tgoal, align 4
  br label %sym_check_goals.exit

if.else94.i:                                      ; preds = %if.end56.i
  %bf.clear101.i = and i8 %bf.load58.i, -81
  %40 = ptrtoint ptr %dt57.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %bf.clear101.i, ptr %dt57.i, align 2
  %offset103.i = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %idxprom, i32 5, i32 1
  %41 = ptrtoint ptr %offset103.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %offset103.i, align 1
  %maxoffs.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 66
  %43 = ptrtoint ptr %maxoffs.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %maxoffs.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %42, i8 %44)
  %cmp106.i = icmp ugt i8 %42, %44
  br i1 %cmp106.i, label %if.then108.i, label %if.else94.i.if.end111.i_crit_edge

if.else94.i.if.end111.i_crit_edge:                ; preds = %if.else94.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end111.i

if.then108.i:                                     ; preds = %if.else94.i
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %offset103.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %offset103.i, align 1
  br label %if.end111.i

if.end111.i:                                      ; preds = %if.then108.i, %if.else94.i.if.end111.i_crit_edge
  %46 = ptrtoint ptr %tgoal to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %tgoal, align 4
  %minsync.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 64
  %48 = ptrtoint ptr %minsync.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %minsync.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %47, i8 %49)
  %cmp115.i = icmp ult i8 %47, %49
  br i1 %cmp115.i, label %if.then117.i, label %if.end111.i.if.end120.i_crit_edge

if.end111.i.if.end120.i_crit_edge:                ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end120.i

if.then117.i:                                     ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %tgoal to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %tgoal, align 4
  br label %if.end120.i

if.end120.i:                                      ; preds = %if.then117.i, %if.end111.i.if.end120.i_crit_edge
  %51 = ptrtoint ptr %tgoal to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %tgoal, align 4
  %maxsync.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 65
  %53 = ptrtoint ptr %maxsync.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %maxsync.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %52, i8 %54)
  %cmp124.i = icmp ugt i8 %52, %54
  br i1 %cmp124.i, label %if.then126.i, label %if.end120.i.sym_check_goals.exit_crit_edge

if.end120.i.sym_check_goals.exit_crit_edge:       ; preds = %if.end120.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sym_check_goals.exit

if.then126.i:                                     ; preds = %if.end120.i
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %tgoal to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %tgoal, align 4
  br label %sym_check_goals.exit

sym_check_goals.exit:                             ; preds = %if.then126.i, %if.end120.i.sym_check_goals.exit_crit_edge, %if.then90.i, %if.end84.i.sym_check_goals.exit_crit_edge, %if.then8.i
  %renego = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %idxprom, i32 5, i32 2
  %56 = ptrtoint ptr %renego to i32
  call void @__asan_load1_noabort(i32 %56)
  %bf.load = load i8, ptr %renego, align 2
  %57 = and i8 %bf.load, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %57)
  %cmp = icmp eq i8 %57, 6
  br i1 %cmp, label %sym_check_goals.exit.sw.bb67_crit_edge, label %lor.lhs.false

sym_check_goals.exit.sw.bb67_crit_edge:           ; preds = %sym_check_goals.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb67

lor.lhs.false:                                    ; preds = %sym_check_goals.exit
  %offset = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %idxprom, i32 5, i32 1
  %58 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %offset, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool.not = icmp eq i8 %59, 0
  br i1 %tobool.not, label %lor.lhs.false.if.else_crit_edge, label %land.lhs.true

lor.lhs.false.if.else_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false
  %60 = and i8 %bf.load, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %lor.lhs.false20, label %land.lhs.true.sw.bb67_crit_edge

land.lhs.true.sw.bb67_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb67

lor.lhs.false20:                                  ; preds = %land.lhs.true
  %62 = ptrtoint ptr %tgoal to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %tgoal, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %63)
  %cmp22 = icmp ult i8 %63, 10
  br i1 %cmp22, label %lor.lhs.false20.sw.bb67_crit_edge, label %lor.lhs.false20.if.else_crit_edge

lor.lhs.false20.if.else_crit_edge:                ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

lor.lhs.false20.sw.bb67_crit_edge:                ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb67

if.else:                                          ; preds = %lor.lhs.false20.if.else_crit_edge, %lor.lhs.false.if.else_crit_edge
  %bf.lshr26 = lshr i8 %bf.load, 1
  %bf.clear27 = and i8 %bf.lshr26, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %bf.clear27)
  %cmp29 = icmp ne i8 %bf.clear27, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool35.not = icmp sgt i8 %bf.load, -1
  %or.cond158 = select i1 %cmp29, i1 %tobool35.not, i1 false
  br i1 %or.cond158, label %if.else37, label %sw.bb59

if.else37:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.clear27)
  %cmp43 = icmp eq i8 %bf.clear27, 1
  %tobool.not.not = xor i1 %tobool.not, true
  %brmerge = select i1 %cmp43, i1 true, i1 %tobool.not.not
  br i1 %brmerge, label %sw.bb, label %sw.epilog

sw.bb:                                            ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %tgoal to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %tgoal, align 4
  %conv56 = zext i8 %65 to i32
  %66 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %offset, align 1
  %conv58 = zext i8 %67 to i32
  %call = tail call i32 @spi_populate_sync_msg(ptr noundef %msgptr, i32 noundef %conv56, i32 noundef %conv58) #9
  br label %if.then102

sw.bb59:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %68 = ptrtoint ptr %renego to i32
  call void @__asan_load1_noabort(i32 %68)
  %bf.load62 = load i8, ptr %renego, align 2
  %bf.lshr63 = lshr i8 %bf.load62, 7
  %bf.cast64 = zext i8 %bf.lshr63 to i32
  %call65 = tail call i32 @spi_populate_width_msg(ptr noundef %msgptr, i32 noundef %bf.cast64) #9
  br label %if.then102

sw.bb67:                                          ; preds = %lor.lhs.false20.sw.bb67_crit_edge, %land.lhs.true.sw.bb67_crit_edge, %sym_check_goals.exit.sw.bb67_crit_edge
  %69 = ptrtoint ptr %tgoal to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %tgoal, align 4
  %conv70 = zext i8 %70 to i32
  %offset71 = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %idxprom, i32 5, i32 1
  %71 = ptrtoint ptr %offset71 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %offset71, align 1
  %conv72 = zext i8 %72 to i32
  %73 = ptrtoint ptr %renego to i32
  call void @__asan_load1_noabort(i32 %73)
  %bf.load74 = load i8, ptr %renego, align 2
  %bf.lshr75 = lshr i8 %bf.load74, 7
  %bf.cast76 = zext i8 %bf.lshr75 to i32
  %74 = lshr i8 %bf.load74, 6
  %.lobit = and i8 %74, 1
  %75 = lshr i8 %bf.load74, 4
  %76 = and i8 %75, 2
  %or155 = or i8 %.lobit, %76
  %77 = lshr i8 %bf.load74, 2
  %78 = and i8 %77, 4
  %or97156 = or i8 %or155, %78
  %or97 = zext i8 %or97156 to i32
  %call98 = tail call i32 @spi_populate_ppr_msg(ptr noundef %msgptr, i32 noundef %conv70, i32 noundef %conv72, i32 noundef %bf.cast76, i32 noundef %or97) #9
  br label %if.then102

sw.epilog:                                        ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #11
  %bf.clear52 = and i8 %bf.load, -9
  %79 = ptrtoint ptr %renego to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %bf.clear52, ptr %renego, align 2
  %nego_status = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 8
  %80 = ptrtoint ptr %nego_status to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %nego_status, align 2
  br label %if.end114

if.then102:                                       ; preds = %sw.bb67, %sw.bb59, %sw.bb
  %nego.0170.ph = phi i8 [ 1, %sw.bb ], [ 2, %sw.bb59 ], [ 3, %sw.bb67 ]
  %cmp107166.ph = phi ptr [ @.str.188, %sw.bb ], [ @.str.199, %sw.bb59 ], [ @.str.195, %sw.bb67 ]
  %msglen.0.ph = phi i32 [ %call, %sw.bb ], [ %call65, %sw.bb59 ], [ %call98, %sw.bb67 ]
  %nego_status192 = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 8
  %81 = ptrtoint ptr %nego_status192 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %nego.0170.ph, ptr %nego_status192, align 2
  %nego_cp = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %idxprom, i32 7
  %82 = ptrtoint ptr %nego_cp to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %cp, ptr %nego_cp, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sym_debug_flags to i32))
  %83 = load i32, ptr @sym_debug_flags, align 4
  %and = and i32 %83, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool103.not = icmp eq i32 %and, 0
  br i1 %tobool103.not, label %if.then102.if.end114_crit_edge, label %if.then104

if.then102.if.end114_crit_edge:                   ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end114

if.then104:                                       ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #11
  %84 = ptrtoint ptr %target1 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %target1, align 2
  %conv106 = zext i8 %85 to i32
  %starget.i = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %conv106, i32 13
  %86 = ptrtoint ptr %starget.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %starget.i, align 4
  %dev.i = getelementptr inbounds %struct.scsi_target, ptr %87, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.180, ptr noundef nonnull %cmp107166.ph) #12
  %call.i = tail call i32 @spi_print_msg(ptr noundef %msgptr) #9
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.183) #12
  br label %if.end114

if.end114:                                        ; preds = %if.then104, %if.then102.if.end114_crit_edge, %sw.epilog
  %msglen.0196 = phi i32 [ %msglen.0.ph, %if.then102.if.end114_crit_edge ], [ %msglen.0.ph, %if.then104 ], [ 0, %sw.epilog ]
  ret i32 %msglen.0196
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sym_setup_data_and_start(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sym_reset_scsi_target(ptr nocapture noundef %np, i32 noundef %target) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %myaddr = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 61
  %0 = ptrtoint ptr %myaddr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %myaddr, align 4
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %target)
  %cmp = icmp eq i32 %conv, %target
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %target)
  %cmp2 = icmp ugt i32 %target, 15
  %or.cond = or i1 %cmp2, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %to_reset = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %target, i32 8
  %2 = ptrtoint ptr %to_reset to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %to_reset, align 4
  %istat_sem = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 95
  %3 = ptrtoint ptr %istat_sem to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 16, ptr %istat_sem, align 4
  %ioaddr = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 42, i32 4
  %4 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 48) #9, !srcloc !464
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sym_abort_scsiio(ptr noundef %np, ptr noundef readnone %cmd, i32 noundef %timed_out) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %busy_ccbq = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 90
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %qp.0.in = phi ptr [ %busy_ccbq, %entry ], [ %qp.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %qp.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %qp.0 = load ptr, ptr %qp.0.in, align 4
  %cmp.not = icmp eq ptr %qp.0, %busy_ccbq
  br i1 %cmp.not, label %for.cond.sym_abort_ccb.exit_crit_edge, label %for.body

for.cond.sym_abort_ccb.exit_crit_edge:            ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %sym_abort_ccb.exit

for.body:                                         ; preds = %for.cond
  %cmd2 = getelementptr i8, ptr %qp.0, i32 -116
  %1 = ptrtoint ptr %cmd2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cmd2, align 4
  %cmp3 = icmp eq ptr %2, %cmd
  br i1 %cmp3, label %for.end, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

for.end:                                          ; preds = %for.body
  %add.ptr.le = getelementptr i8, ptr %qp.0, i32 -972
  %tobool.not.i = icmp eq ptr %add.ptr.le, null
  br i1 %tobool.not.i, label %for.end.sym_abort_ccb.exit_crit_edge, label %lor.lhs.false.i

for.end.sym_abort_ccb.exit_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sym_abort_ccb.exit

lor.lhs.false.i:                                  ; preds = %for.end
  %arrayidx.i = getelementptr i8, ptr %qp.0, i32 -955
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i, align 1
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.269)
  switch i8 %4, label %if.end.i [
    i8 0, label %lor.lhs.false.i.sym_abort_ccb.exit_crit_edge
    i8 4, label %lor.lhs.false.i.sym_abort_ccb.exit_crit_edge21
  ]

lor.lhs.false.i.sym_abort_ccb.exit_crit_edge21:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sym_abort_ccb.exit

lor.lhs.false.i.sym_abort_ccb.exit_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sym_abort_ccb.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %to_abort.i = getelementptr i8, ptr %qp.0, i32 24
  %6 = ptrtoint ptr %to_abort.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %to_abort.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool8.not.i = icmp eq i8 %7, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 @sym_reset_scsi_bus(ptr noundef %np, i32 noundef 1) #9
  br label %sym_abort_ccb.exit

if.end10.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timed_out)
  %tobool11.not.i = icmp eq i32 %timed_out, 0
  %conv12.i = select i1 %tobool11.not.i, i8 1, i8 2
  %8 = ptrtoint ptr %to_abort.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv12.i, ptr %to_abort.i, align 4
  %istat_sem.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 95
  %9 = ptrtoint ptr %istat_sem.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 16, ptr %istat_sem.i, align 4
  %ioaddr.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 42, i32 4
  %10 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 48) #9, !srcloc !464
  br label %sym_abort_ccb.exit

sym_abort_ccb.exit:                               ; preds = %if.end10.i, %if.then9.i, %lor.lhs.false.i.sym_abort_ccb.exit_crit_edge, %lor.lhs.false.i.sym_abort_ccb.exit_crit_edge21, %for.end.sym_abort_ccb.exit_crit_edge, %for.cond.sym_abort_ccb.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.then9.i ], [ 0, %if.end10.i ], [ -1, %lor.lhs.false.i.sym_abort_ccb.exit_crit_edge ], [ -1, %lor.lhs.false.i.sym_abort_ccb.exit_crit_edge21 ], [ -1, %for.end.sym_abort_ccb.exit_crit_edge ], [ -1, %for.cond.sym_abort_ccb.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sym_hcb_attach(ptr noundef %shost, ptr noundef %fw, ptr noundef %nvram) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 53
  %0 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata.i, align 8
  %a_size = getelementptr inbounds %struct.sym_fw, ptr %fw, i32 0, i32 2
  %2 = ptrtoint ptr %a_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %a_size, align 4
  %conv = trunc i32 %3 to i16
  %scripta_sz = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 51
  %4 = ptrtoint ptr %scripta_sz to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv, ptr %scripta_sz, align 4
  %b_size = getelementptr inbounds %struct.sym_fw, ptr %fw, i32 0, i32 5
  %5 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %b_size, align 4
  %conv1 = trunc i32 %6 to i16
  %scriptb_sz = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 52
  %7 = ptrtoint ptr %scriptb_sz to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv1, ptr %scriptb_sz, align 2
  %z_size = getelementptr inbounds %struct.sym_fw, ptr %fw, i32 0, i32 8
  %8 = ptrtoint ptr %z_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %z_size, align 4
  %conv2 = trunc i32 %9 to i16
  %scriptz_sz = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 53
  %10 = ptrtoint ptr %scriptz_sz to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv2, ptr %scriptz_sz, align 4
  %setup = getelementptr inbounds %struct.sym_fw, ptr %fw, i32 0, i32 10
  %11 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %setup, align 4
  %fw_setup = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 57
  %13 = ptrtoint ptr %fw_setup to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %fw_setup, align 4
  %patch = getelementptr inbounds %struct.sym_fw, ptr %fw, i32 0, i32 11
  %14 = ptrtoint ptr %patch to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %patch, align 4
  %fw_patch = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 58
  %16 = ptrtoint ptr %fw_patch to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %fw_patch, align 4
  %17 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fw, align 4
  %fw_name = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 59
  %19 = ptrtoint ptr %fw_name to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %fw_name, align 4
  %ioaddr.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 42, i32 4
  %20 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ioaddr.i, align 4
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %21) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  %23 = and i8 %22, 10
  %sv_scntl0.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 15
  %24 = ptrtoint ptr %sv_scntl0.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %sv_scntl0.i, align 4
  %25 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %26, i32 3
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr4.i) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  %28 = and i8 %27, 7
  %sv_scntl3.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 16
  %29 = ptrtoint ptr %sv_scntl3.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %sv_scntl3.i, align 1
  %30 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %31, i32 56
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr11.i) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  %33 = and i8 %32, -50
  %sv_dmode.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 17
  %34 = ptrtoint ptr %sv_dmode.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %sv_dmode.i, align 2
  %35 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr18.i = getelementptr i8, ptr %36, i32 59
  %37 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr18.i) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  %38 = and i8 %37, -88
  %sv_dcntl.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 18
  %39 = ptrtoint ptr %sv_dcntl.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %sv_dcntl.i, align 1
  %40 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr25.i = getelementptr i8, ptr %41, i32 27
  %42 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr25.i) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  %43 = and i8 %42, 1
  %sv_ctest3.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 19
  %44 = ptrtoint ptr %sv_ctest3.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %sv_ctest3.i, align 4
  %45 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr32.i = getelementptr i8, ptr %46, i32 33
  %47 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr32.i) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  %48 = and i8 %47, -128
  %sv_ctest4.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 20
  %49 = ptrtoint ptr %sv_ctest4.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %sv_ctest4.i, align 1
  %50 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr39.i = getelementptr i8, ptr %51, i32 71
  %52 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr39.i) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  %sv_gpcntl.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 22
  %53 = ptrtoint ptr %sv_gpcntl.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %sv_gpcntl.i, align 1
  %54 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr43.i = getelementptr i8, ptr %55, i32 77
  %56 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr43.i) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  %sv_stest1.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 26
  %57 = ptrtoint ptr %sv_stest1.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %sv_stest1.i, align 1
  %58 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr47.i = getelementptr i8, ptr %59, i32 78
  %60 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr47.i) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  %61 = and i8 %60, 32
  %sv_stest2.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 23
  %62 = ptrtoint ptr %sv_stest2.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %sv_stest2.i, align 4
  %63 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr54.i = getelementptr i8, ptr %64, i32 82
  %65 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr54.i) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  %sv_stest4.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 24
  %66 = ptrtoint ptr %sv_stest4.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %sv_stest4.i, align 1
  %features.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 60
  %67 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %features.i, align 4
  %and56.i = and i32 %68, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56.i)
  %tobool.not.i = icmp eq i32 %and56.i, 0
  %69 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ioaddr.i, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr59.i = getelementptr i8, ptr %70, i32 188
  %71 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr59.i) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  %sv_scntl4.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 25
  %72 = ptrtoint ptr %sv_scntl4.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %sv_scntl4.i, align 2
  %73 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr63.i = getelementptr i8, ptr %74, i32 34
  %75 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr63.i) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  %76 = and i8 %75, 4
  br label %sym_save_initial_setting.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr70.i = getelementptr i8, ptr %70, i32 34
  %77 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr70.i) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  %78 = and i8 %77, 36
  br label %sym_save_initial_setting.exit

sym_save_initial_setting.exit:                    ; preds = %if.else.i, %if.then.i
  %.sink.i = phi i8 [ %78, %if.else.i ], [ %76, %if.then.i ]
  %79 = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 21
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %.sink.i, ptr %79, align 2
  %81 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %82, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 64) #9, !srcloc !464
  %83 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %84, i32 23
  %85 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr3.i) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %86 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %86(i32 noundef 2147480) #9
  %87 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %88, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i, i8 0) #9, !srcloc !464
  %89 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %90, i32 23
  %91 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr9.i) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %92 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %92(i32 noundef 429496000) #9
  %pdev1.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 1
  %93 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %pdev1.i, align 4
  %95 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %features.i, align 4
  %97 = trunc i32 %96 to i8
  %98 = lshr i8 %97, 1
  %99 = and i8 %98, 1
  %maxwide.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 63
  %100 = ptrtoint ptr %maxwide.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %99, ptr %maxwide.i, align 2
  %and3.i = and i32 %96, 2097160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.else.i355, label %if.then.i354

if.then.i354:                                     ; preds = %sym_save_initial_setting.exit
  call void @__sanitizer_cov_trace_pc() #11
  %clock_khz.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 72
  %101 = ptrtoint ptr %clock_khz.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 160000, ptr %clock_khz.i, align 4
  br label %if.end12.i

if.else.i355:                                     ; preds = %sym_save_initial_setting.exit
  %and6.i = and i32 %96, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  %clock_khz11.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 72
  br i1 %tobool7.not.i, label %if.else10.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.else.i355
  call void @__sanitizer_cov_trace_pc() #11
  %102 = ptrtoint ptr %clock_khz11.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 80000, ptr %clock_khz11.i, align 4
  br label %if.end12.i

if.else10.i:                                      ; preds = %if.else.i355
  call void @__sanitizer_cov_trace_pc() #11
  %103 = ptrtoint ptr %clock_khz11.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 40000, ptr %clock_khz11.i, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.else10.i, %if.then8.i, %if.then.i354
  %and14.i = and i32 %96, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.else17.i, label %if.then16.i

if.then16.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  %multiplier.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 70
  %104 = ptrtoint ptr %multiplier.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 4, ptr %multiplier.i, align 1
  br label %if.end26.i

if.else17.i:                                      ; preds = %if.end12.i
  %and19.i = and i32 %96, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  %multiplier24.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 70
  br i1 %tobool20.not.i, label %if.else23.i, label %if.then21.i

if.then21.i:                                      ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #11
  %105 = ptrtoint ptr %multiplier24.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 2, ptr %multiplier24.i, align 1
  br label %if.end26.i

if.else23.i:                                      ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #11
  %106 = ptrtoint ptr %multiplier24.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 1, ptr %multiplier24.i, align 1
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.else23.i, %if.then21.i, %if.then16.i
  %and28.i = and i32 %96, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  br i1 %tobool29.not.i, label %if.end26.i.if.end33.i_crit_edge, label %if.then30.i

if.end26.i.if.end33.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i

if.then30.i:                                      ; preds = %if.end26.i
  %multiplier31.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 70
  %107 = ptrtoint ptr %multiplier31.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %multiplier31.i, align 1
  %conv32.i = zext i8 %108 to i32
  %109 = ptrtoint ptr %sv_scntl3.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %sv_scntl3.i, align 1
  %111 = ptrtoint ptr %sv_stest1.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %sv_stest1.i, align 1
  store i8 1, ptr %multiplier31.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %108)
  %cmp.i.i = icmp ugt i8 %108, 1
  %113 = and i8 %112, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %113)
  %cmp1.i.i = icmp eq i8 %113, 12
  %or.cond.i.i = select i1 %cmp.i.i, i1 %cmp1.i.i, i1 false
  br i1 %or.cond.i.i, label %if.then.i.i, label %if.then30.i.if.end9.i.i_crit_edge

if.then30.i.if.end9.i.i_crit_edge:                ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i.i

if.then.i.i:                                      ; preds = %if.then30.i
  %verbose.i.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 87
  %114 = ptrtoint ptr %verbose.i.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %verbose.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %115)
  %cmp4.i.i = icmp ugt i8 %115, 1
  br i1 %cmp4.i.i, label %do.end.i.i, label %if.then.i.i.if.end.i.i_crit_edge

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %inst_name.i.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 42, i32 1
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.222, ptr noundef %inst_name.i.i) #12
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %116 = ptrtoint ptr %multiplier31.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %108, ptr %multiplier31.i, align 1
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.end.i.i, %if.then30.i.if.end9.i.i_crit_edge
  %117 = ptrtoint ptr %multiplier31.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %multiplier31.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %118, i8 %108)
  %cmp12.not.i.i = icmp eq i8 %118, %108
  br i1 %cmp12.not.i.i, label %lor.lhs.false.i.i, label %if.end9.i.i.if.then21.i.i_crit_edge

if.end9.i.i.if.then21.i.i_crit_edge:              ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21.i.i

lor.lhs.false.i.i:                                ; preds = %if.end9.i.i
  %conv14.i.i = zext i8 %110 to i32
  %and15.i.i = and i32 %conv14.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and15.i.i)
  %cmp16.i.i = icmp ult i32 %and15.i.i, 3
  %and20.i.i = and i32 %conv14.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i.i)
  %tobool.not.i.i = icmp eq i32 %and20.i.i, 0
  %or.cond117.i.i = or i1 %cmp16.i.i, %tobool.not.i.i
  br i1 %or.cond117.i.i, label %lor.lhs.false.i.i.if.then21.i.i_crit_edge, label %if.else68.i.i

lor.lhs.false.i.i.if.then21.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21.i.i

if.then21.i.i:                                    ; preds = %lor.lhs.false.i.i.if.then21.i.i_crit_edge, %if.end9.i.i.if.then21.i.i_crit_edge
  %119 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %120, i32 77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 0) #9, !srcloc !464
  %121 = tail call fastcc i32 @getfreq(ptr noundef %1) #9
  %call1.i.i.i = tail call fastcc i32 @getfreq(ptr noundef %1) #9
  %call2.i.i.i = tail call fastcc i32 @getfreq(ptr noundef %1) #9
  %122 = tail call i32 @llvm.umin.i32(i32 %call1.i.i.i, i32 %call2.i.i.i) #9
  %verbose24.i.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 87
  %123 = ptrtoint ptr %verbose24.i.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %verbose24.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool25.not.i.i = icmp eq i8 %124, 0
  br i1 %tobool25.not.i.i, label %if.then21.i.i.if.end35.i.i_crit_edge, label %do.end29.i.i

if.then21.i.i.if.end35.i.i_crit_edge:             ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.i.i

do.end29.i.i:                                     ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %inst_name32.i.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 42, i32 1
  %call34.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.225, ptr noundef %inst_name32.i.i, i32 noundef %122) #12
  br label %if.end35.i.i

if.end35.i.i:                                     ; preds = %do.end29.i.i, %if.then21.i.i.if.end35.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 45000, i32 %122)
  %cmp36.i.i = icmp ult i32 %122, 45000
  call void @__sanitizer_cov_trace_const_cmp4(i32 55000, i32 %122)
  %cmp39.i.i = icmp ult i32 %122, 55000
  %.118.i.i = select i1 %cmp39.i.i, i32 50000, i32 80000
  %f1.0.i.i = select i1 %cmp36.i.i, i32 40000, i32 %.118.i.i
  %125 = and i1 %cmp.i.i, %cmp39.i.i
  %.mux.i.i = select i1 %cmp39.i.i, i32 %f1.0.i.i, i32 80000
  br i1 %125, label %if.then50.i.i, label %if.end35.i.i.sym_getclock.exit.i_crit_edge

if.end35.i.i.sym_getclock.exit.i_crit_edge:       ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sym_getclock.exit.i

if.then50.i.i:                                    ; preds = %if.end35.i.i
  %126 = ptrtoint ptr %verbose24.i.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %verbose24.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %127)
  %cmp53.i.i = icmp ugt i8 %127, 1
  br i1 %cmp53.i.i, label %do.end58.i.i, label %if.then50.i.i.if.end64.i.i_crit_edge

if.then50.i.i.if.end64.i.i_crit_edge:             ; preds = %if.then50.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64.i.i

do.end58.i.i:                                     ; preds = %if.then50.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %inst_name61.i.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 42, i32 1
  %call63.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.228, ptr noundef %inst_name61.i.i) #12
  br label %if.end64.i.i

if.end64.i.i:                                     ; preds = %do.end58.i.i, %if.then50.i.i.if.end64.i.i_crit_edge
  %128 = ptrtoint ptr %multiplier31.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %108, ptr %multiplier31.i, align 1
  br label %sym_getclock.exit.i

if.else68.i.i:                                    ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and15.i.i)
  %switch.selectcmp.i.i = icmp eq i32 %and15.i.i, 5
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 80000, i32 160000
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and15.i.i)
  %switch.selectcmp119.i.i = icmp eq i32 %and15.i.i, 3
  %switch.select120.i.i = select i1 %switch.selectcmp119.i.i, i32 40000, i32 %switch.select.i.i
  %div.i.i = udiv i32 %switch.select120.i.i, %conv32.i
  br label %sym_getclock.exit.i

sym_getclock.exit.i:                              ; preds = %if.else68.i.i, %if.end64.i.i, %if.end35.i.i.sym_getclock.exit.i_crit_edge
  %f1.2.i.i = phi i32 [ %f1.0.i.i, %if.end64.i.i ], [ %.mux.i.i, %if.end35.i.i.sym_getclock.exit.i_crit_edge ], [ %div.i.i, %if.else68.i.i ]
  %129 = ptrtoint ptr %multiplier31.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %multiplier31.i, align 1
  %conv87.i.i = zext i8 %130 to i32
  %mul.i.i = mul nuw nsw i32 %f1.2.i.i, %conv87.i.i
  %clock_khz.i.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 72
  %131 = ptrtoint ptr %clock_khz.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %mul.i.i, ptr %clock_khz.i.i, align 4
  br label %if.end33.i

if.end33.i:                                       ; preds = %sym_getclock.exit.i, %if.end26.i.if.end33.i_crit_edge
  %clock_divn.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 71
  %132 = ptrtoint ptr %clock_divn.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %clock_divn.i, align 2
  %conv34.i = zext i8 %133 to i32
  %sub.i = add nsw i32 %conv34.i, -1
  %clock_khz36.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 72
  %134 = tail call i32 @llvm.smin.i32(i32 %conv34.i, i32 1) #9
  %smin.i = or i32 %134, -2
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.end33.i
  %i.0.i = phi i32 [ %sub.i, %if.end33.i ], [ %dec.i, %while.body.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.i)
  %cmp.i = icmp sgt i32 %i.0.i, 0
  br i1 %cmp.i, label %while.body.i, label %while.cond.i.while.end.i_crit_edge

while.cond.i.while.end.i_crit_edge:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %dec.i = add nsw i32 %i.0.i, -1
  %135 = ptrtoint ptr %clock_khz36.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %clock_khz36.i, align 4
  %mul.i = mul i32 %136, 400
  %arrayidx.i = getelementptr [7 x i32], ptr @div_10M, i32 0, i32 %dec.i
  %137 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %arrayidx.i, align 4
  %cmp37.i = icmp ugt i32 %mul.i, %138
  br i1 %cmp37.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %while.cond.i.while.end.i_crit_edge
  %i.1.i = phi i32 [ %smin.i, %while.cond.i.while.end.i_crit_edge ], [ %i.0.i, %while.body.i.while.end.i_crit_edge ]
  %139 = trunc i32 %i.1.i to i8
  %conv41.i = add i8 %139, 1
  %rv_scntl3.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 28
  %140 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %features.i, align 4
  %and43.i = and i32 %141, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool44.not.i = icmp eq i32 %and43.i, 0
  %spec.store.select.i = select i1 %tobool44.not.i, i8 %conv41.i, i8 0
  %142 = ptrtoint ptr %rv_scntl3.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %spec.store.select.i, ptr %rv_scntl3.i, align 1
  %143 = ptrtoint ptr %clock_khz36.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %clock_khz36.i, align 4
  %sub51.i = add i32 %144, 39999999
  %div.i = udiv i32 %sub51.i, %144
  call void @__sanitizer_cov_trace_const_cmp4(i32 251, i32 %div.i)
  %cmp53.i = icmp ult i32 %div.i, 251
  br i1 %cmp53.i, label %while.end.i.if.end74.i.thread_crit_edge, label %if.else56.i

while.end.i.if.end74.i.thread_crit_edge:          ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74.i.thread

if.else56.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 304, i32 %div.i)
  %cmp57.i = icmp ult i32 %div.i, 304
  br i1 %cmp57.i, label %if.else56.i.if.end74.i.thread_crit_edge, label %if.else61.i

if.else56.i.if.end74.i.thread_crit_edge:          ; preds = %if.else56.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74.i.thread

if.else61.i:                                      ; preds = %if.else56.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 501, i32 %div.i)
  %cmp62.i = icmp ult i32 %div.i, 501
  br i1 %cmp62.i, label %if.else61.i.if.end74.i.thread_crit_edge, label %if.end74.i

if.else61.i.if.end74.i.thread_crit_edge:          ; preds = %if.else61.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74.i.thread

if.end74.i.thread:                                ; preds = %if.else61.i.if.end74.i.thread_crit_edge, %if.else56.i.if.end74.i.thread_crit_edge, %while.end.i.if.end74.i.thread_crit_edge
  %.sink.i356.ph = phi i8 [ 12, %if.else61.i.if.end74.i.thread_crit_edge ], [ 11, %if.else56.i.if.end74.i.thread_crit_edge ], [ 10, %while.end.i.if.end74.i.thread_crit_edge ]
  %minsync60.i380 = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 64
  %145 = ptrtoint ptr %minsync60.i380 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %.sink.i356.ph, ptr %minsync60.i380, align 1
  br label %land.lhs.true.i

if.end74.i:                                       ; preds = %if.else61.i
  %sub68.i = add i32 %div.i, 39
  %div69.i = udiv i32 %sub68.i, 40
  %conv70.i = trunc i32 %div69.i to i8
  %minsync60.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 64
  %146 = ptrtoint ptr %minsync60.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %conv70.i, ptr %minsync60.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 25, i8 %conv70.i)
  %cmp77.i = icmp ult i8 %conv70.i, 25
  br i1 %cmp77.i, label %if.end74.i.land.lhs.true.i_crit_edge, label %if.end74.i.div_u64.exit.i_crit_edge

if.end74.i.div_u64.exit.i_crit_edge:              ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %div_u64.exit.i

if.end74.i.land.lhs.true.i_crit_edge:             ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end74.i.land.lhs.true.i_crit_edge, %if.end74.i.thread
  %minsync60.i383 = phi ptr [ %minsync60.i380, %if.end74.i.thread ], [ %minsync60.i, %if.end74.i.land.lhs.true.i_crit_edge ]
  %.sink.i356382 = phi i8 [ %.sink.i356.ph, %if.end74.i.thread ], [ %conv70.i, %if.end74.i.land.lhs.true.i_crit_edge ]
  %and80.i = and i32 %141, 2097164
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80.i)
  %tobool81.not.i = icmp eq i32 %and80.i, 0
  br i1 %tobool81.not.i, label %land.lhs.true.i.if.end96.sink.split.i_crit_edge, label %if.else84.i

land.lhs.true.i.if.end96.sink.split.i_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end96.sink.split.i

if.else84.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %.sink.i356382)
  %cmp87.i = icmp ult i8 %.sink.i356382, 12
  %and91.i = and i32 %141, 2097160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91.i)
  %tobool92.not.i = icmp eq i32 %and91.i, 0
  %or.cond17.i = select i1 %cmp87.i, i1 %tobool92.not.i, i1 false
  br i1 %or.cond17.i, label %if.else84.i.if.end96.sink.split.i_crit_edge, label %if.else84.i.div_u64.exit.i_crit_edge

if.else84.i.div_u64.exit.i_crit_edge:             ; preds = %if.else84.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %div_u64.exit.i

if.else84.i.if.end96.sink.split.i_crit_edge:      ; preds = %if.else84.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end96.sink.split.i

if.end96.sink.split.i:                            ; preds = %if.else84.i.if.end96.sink.split.i_crit_edge, %land.lhs.true.i.if.end96.sink.split.i_crit_edge
  %.sink22.i = phi i8 [ 25, %land.lhs.true.i.if.end96.sink.split.i_crit_edge ], [ 12, %if.else84.i.if.end96.sink.split.i_crit_edge ]
  %147 = ptrtoint ptr %minsync60.i383 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %.sink22.i, ptr %minsync60.i383, align 1
  br label %div_u64.exit.i

div_u64.exit.i:                                   ; preds = %if.end96.sink.split.i, %if.else84.i.div_u64.exit.i_crit_edge, %if.end74.i.div_u64.exit.i_crit_edge
  %arrayidx100.i = getelementptr [7 x i32], ptr @div_10M, i32 0, i32 %sub.i
  %148 = ptrtoint ptr %arrayidx100.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx100.i, align 4
  %mul101.i = mul i32 %149, 11
  %mul104.i = shl i32 %144, 2
  %div172.i.i.i = udiv i32 %mul101.i, %mul104.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2540, i32 %div172.i.i.i)
  %cmp107.i = icmp ugt i32 %div172.i.i.i, 2540
  %div109.i = udiv i32 %div172.i.i.i, 10
  %150 = trunc i32 %div109.i to i8
  %conv111.i = select i1 %cmp107.i, i8 -2, i8 %150
  %maxsync.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 65
  %151 = ptrtoint ptr %maxsync.i to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %conv111.i, ptr %maxsync.i, align 4
  %and113.i = and i32 %141, 136314880
  call void @__sanitizer_cov_trace_const_cmp4(i32 136314880, i32 %and113.i)
  %cmp114.i = icmp eq i32 %and113.i, 136314880
  call void @__sanitizer_cov_trace_const_cmp4(i32 160000, i32 %144)
  %cmp118.i = icmp eq i32 %144, 160000
  %or.cond18.i = select i1 %cmp114.i, i1 %cmp118.i, i1 false
  br i1 %or.cond18.i, label %if.then120.i, label %div_u64.exit.i.if.end125.i_crit_edge

div_u64.exit.i.if.end125.i_crit_edge:             ; preds = %div_u64.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end125.i

if.then120.i:                                     ; preds = %div_u64.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %minsync_dt.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 67
  %152 = ptrtoint ptr %minsync_dt.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 9, ptr %minsync_dt.i, align 2
  %maxsync_dt.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 68
  %153 = ptrtoint ptr %maxsync_dt.i to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 50, ptr %maxsync_dt.i, align 1
  %154 = ptrtoint ptr %nvram to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %nvram, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %155)
  %tobool121.not.i = icmp eq i32 %155, 0
  %conv123.i = select i1 %tobool121.not.i, i8 31, i8 62
  %maxoffs_dt.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 69
  %156 = ptrtoint ptr %maxoffs_dt.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %conv123.i, ptr %maxoffs_dt.i, align 4
  br label %if.end125.i

if.end125.i:                                      ; preds = %if.then120.i, %div_u64.exit.i.if.end125.i_crit_edge
  %and127.i = and i32 %141, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127.i)
  %tobool128.not.i = icmp eq i32 %and127.i, 0
  br i1 %tobool128.not.i, label %if.end125.i.if.end140.i_crit_edge, label %if.then129.i

if.end125.i.if.end140.i_crit_edge:                ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end140.i

if.then129.i:                                     ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #11
  %use_dac.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 96
  %157 = ptrtoint ptr %use_dac.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %use_dac.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %158)
  %tobool130.not.i = icmp eq i8 %158, 0
  %rv_ccntl1.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 36
  %159 = ptrtoint ptr %rv_ccntl1.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %rv_ccntl1.i, align 1
  %..i = select i1 %tobool130.not.i, i8 8, i8 6
  %161 = or i8 %..i, %160
  store i8 %161, ptr %rv_ccntl1.i, align 1
  br label %if.end140.i

if.end140.i:                                      ; preds = %if.then129.i, %if.end125.i.if.end140.i_crit_edge
  %and142.i = and i32 %141, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and142.i)
  %tobool143.not.i = icmp eq i32 %and142.i, 0
  br i1 %tobool143.not.i, label %if.end140.i.if.end148.i_crit_edge, label %if.then144.i

if.end140.i.if.end148.i_crit_edge:                ; preds = %if.end140.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end148.i

if.then144.i:                                     ; preds = %if.end140.i
  call void @__sanitizer_cov_trace_pc() #11
  %rv_ccntl0.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 35
  %162 = ptrtoint ptr %rv_ccntl0.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %rv_ccntl0.i, align 4
  %164 = or i8 %163, -128
  store i8 %164, ptr %rv_ccntl0.i, align 4
  br label %if.end148.i

if.end148.i:                                      ; preds = %if.then144.i, %if.end140.i.if.end148.i_crit_edge
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %94, i32 0, i32 8
  %165 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %166)
  %cmp150.i = icmp eq i16 %166, 32
  br i1 %cmp150.i, label %land.lhs.true152.i, label %if.end148.i.if.end161.i_crit_edge

if.end148.i.if.end161.i_crit_edge:                ; preds = %if.end148.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end161.i

land.lhs.true152.i:                               ; preds = %if.end148.i
  %revision.i = getelementptr inbounds %struct.pci_dev, ptr %94, i32 0, i32 12
  %167 = ptrtoint ptr %revision.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %revision.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %168)
  %cmp154.i = icmp eq i8 %168, 0
  br i1 %cmp154.i, label %if.then156.i, label %land.lhs.true152.i.if.end161.i_crit_edge

land.lhs.true152.i.if.end161.i_crit_edge:         ; preds = %land.lhs.true152.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end161.i

if.then156.i:                                     ; preds = %land.lhs.true152.i
  call void @__sanitizer_cov_trace_pc() #11
  %rv_ccntl0157.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 35
  %169 = ptrtoint ptr %rv_ccntl0157.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %rv_ccntl0157.i, align 4
  %171 = or i8 %170, 2
  store i8 %171, ptr %rv_ccntl0157.i, align 4
  br label %if.end161.i

if.end161.i:                                      ; preds = %if.then156.i, %land.lhs.true152.i.if.end161.i_crit_edge, %if.end148.i.if.end161.i_crit_edge
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.sym_driver_setup, ptr @sym_driver_setup, i32 0, i32 1) to i32))
  %172 = load i8, ptr getelementptr inbounds (%struct.sym_driver_setup, ptr @sym_driver_setup, i32 0, i32 1), align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %172)
  %cmp163.i = icmp eq i8 %172, -1
  br i1 %cmp163.i, label %if.then165.i, label %if.end161.i.if.end180.i_crit_edge

if.end161.i.if.end180.i_crit_edge:                ; preds = %if.end161.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end180.i

if.then165.i:                                     ; preds = %if.end161.i
  %173 = ptrtoint ptr %sv_ctest4.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %sv_ctest4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %174)
  %tobool168.not.i = icmp sgt i8 %174, -1
  br i1 %tobool168.not.i, label %cond.false170.i, label %if.then165.i.if.end180.i_crit_edge

if.then165.i.if.end180.i_crit_edge:               ; preds = %if.then165.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end180.i

cond.false170.i:                                  ; preds = %if.then165.i
  call void @__sanitizer_cov_trace_pc() #11
  %175 = ptrtoint ptr %sv_dmode.i to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %sv_dmode.i, align 2
  %177 = lshr i8 %176, 6
  %178 = ptrtoint ptr %79 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %79, align 2
  %180 = and i8 %179, 4
  %add1752.i = add nuw nsw i8 %177, 1
  %narrow.i = add nuw nsw i8 %add1752.i, %180
  br label %if.end180.i

if.end180.i:                                      ; preds = %cond.false170.i, %if.then165.i.if.end180.i_crit_edge, %if.end161.i.if.end180.i_crit_edge
  %burst_max.0.i = phi i8 [ %172, %if.end161.i.if.end180.i_crit_edge ], [ %narrow.i, %cond.false170.i ], [ 0, %if.then165.i.if.end180.i_crit_edge ]
  %maxburst.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 62
  %181 = ptrtoint ptr %maxburst.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %maxburst.i, align 1
  %183 = tail call i8 @llvm.umin.i8(i8 %burst_max.0.i, i8 %182) #9
  %184 = tail call i8 @llvm.umin.i8(i8 %183, i8 7) #9
  %185 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %device.i, align 2
  %187 = zext i16 %186 to i64
  call void @__sanitizer_cov_trace_switch(i64 %187, ptr @__sancov_gen_cov_switch_values.270)
  switch i16 %186, label %if.end180.i.if.end219.i_crit_edge [
    i16 1, label %land.lhs.true197.i
    i16 6, label %land.lhs.true211.i
  ]

if.end180.i.if.end219.i_crit_edge:                ; preds = %if.end180.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end219.i

land.lhs.true197.i:                               ; preds = %if.end180.i
  %revision198.i = getelementptr inbounds %struct.pci_dev, ptr %94, i32 0, i32 12
  %188 = ptrtoint ptr %revision198.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %revision198.i, align 4
  %190 = and i8 %189, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %190)
  %191 = icmp eq i8 %190, 16
  br i1 %191, label %land.lhs.true197.i.if.then216.i_crit_edge, label %land.lhs.true197.i.if.end219.i_crit_edge

land.lhs.true197.i.if.end219.i_crit_edge:         ; preds = %land.lhs.true197.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end219.i

land.lhs.true197.i.if.then216.i_crit_edge:        ; preds = %land.lhs.true197.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then216.i

land.lhs.true211.i:                               ; preds = %if.end180.i
  %revision212.i = getelementptr inbounds %struct.pci_dev, ptr %94, i32 0, i32 12
  %192 = ptrtoint ptr %revision212.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %revision212.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %193)
  %cmp214.i = icmp ult i8 %193, 2
  br i1 %cmp214.i, label %land.lhs.true211.i.if.then216.i_crit_edge, label %land.lhs.true211.i.if.end219.i_crit_edge

land.lhs.true211.i.if.end219.i_crit_edge:         ; preds = %land.lhs.true211.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end219.i

land.lhs.true211.i.if.then216.i_crit_edge:        ; preds = %land.lhs.true211.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then216.i

if.then216.i:                                     ; preds = %land.lhs.true211.i.if.then216.i_crit_edge, %land.lhs.true197.i.if.then216.i_crit_edge
  %and218.i = and i32 %141, -833
  %194 = ptrtoint ptr %features.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %and218.i, ptr %features.i, align 4
  br label %if.end219.i

if.end219.i:                                      ; preds = %if.then216.i, %land.lhs.true211.i.if.end219.i_crit_edge, %land.lhs.true197.i.if.end219.i_crit_edge, %if.end180.i.if.end219.i_crit_edge
  %195 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %features.i, align 4
  %and221.i = and i32 %196, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and221.i)
  %tobool222.not.i = icmp eq i32 %and221.i, 0
  br i1 %tobool222.not.i, label %if.end219.i.if.end227.i_crit_edge, label %if.then223.i

if.end219.i.if.end227.i_crit_edge:                ; preds = %if.end219.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end227.i

if.then223.i:                                     ; preds = %if.end219.i
  call void @__sanitizer_cov_trace_pc() #11
  %rv_dmode.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 29
  %197 = ptrtoint ptr %rv_dmode.i to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %rv_dmode.i, align 2
  %199 = or i8 %198, 8
  store i8 %199, ptr %rv_dmode.i, align 2
  br label %if.end227.i

if.end227.i:                                      ; preds = %if.then223.i, %if.end219.i.if.end227.i_crit_edge
  %and229.i = and i32 %196, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and229.i)
  %tobool230.not.i = icmp eq i32 %and229.i, 0
  br i1 %tobool230.not.i, label %if.end227.i.if.end236.i_crit_edge, label %if.then231.i

if.end227.i.if.end236.i_crit_edge:                ; preds = %if.end227.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end236.i

if.then231.i:                                     ; preds = %if.end227.i
  call void @__sanitizer_cov_trace_pc() #11
  %rv_dmode232.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 29
  %200 = ptrtoint ptr %rv_dmode232.i to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %rv_dmode232.i, align 2
  %202 = or i8 %201, 2
  store i8 %202, ptr %rv_dmode232.i, align 2
  br label %if.end236.i

if.end236.i:                                      ; preds = %if.then231.i, %if.end227.i.if.end236.i_crit_edge
  %and238.i = and i32 %196, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and238.i)
  %tobool239.not.i = icmp eq i32 %and238.i, 0
  br i1 %tobool239.not.i, label %if.end236.i.if.end245.i_crit_edge, label %if.then240.i

if.end236.i.if.end245.i_crit_edge:                ; preds = %if.end236.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end245.i

if.then240.i:                                     ; preds = %if.end236.i
  call void @__sanitizer_cov_trace_pc() #11
  %rv_dmode241.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 29
  %203 = ptrtoint ptr %rv_dmode241.i to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %rv_dmode241.i, align 2
  %205 = or i8 %204, 4
  store i8 %205, ptr %rv_dmode241.i, align 2
  br label %if.end245.i

if.end245.i:                                      ; preds = %if.then240.i, %if.end236.i.if.end245.i_crit_edge
  %and247.i = and i32 %196, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and247.i)
  %tobool248.not.i = icmp eq i32 %and247.i, 0
  br i1 %tobool248.not.i, label %if.end245.i.if.end255.i_crit_edge, label %land.lhs.true249.i

if.end245.i.if.end255.i_crit_edge:                ; preds = %if.end245.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end255.i

land.lhs.true249.i:                               ; preds = %if.end245.i
  %ram_ba.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 44
  %206 = ptrtoint ptr %ram_ba.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %ram_ba.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %207)
  %tobool250.not.i = icmp eq i32 %207, 0
  br i1 %tobool250.not.i, label %if.then251.i, label %land.lhs.true249.i.if.end255.i_crit_edge

land.lhs.true249.i.if.end255.i_crit_edge:         ; preds = %land.lhs.true249.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end255.i

if.then251.i:                                     ; preds = %land.lhs.true249.i
  call void @__sanitizer_cov_trace_pc() #11
  %rv_dcntl.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 30
  %208 = ptrtoint ptr %rv_dcntl.i to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %rv_dcntl.i, align 1
  %210 = or i8 %209, 32
  store i8 %210, ptr %rv_dcntl.i, align 1
  br label %if.end255.i

if.end255.i:                                      ; preds = %if.then251.i, %land.lhs.true249.i.if.end255.i_crit_edge, %if.end245.i.if.end255.i_crit_edge
  %and257.i = and i32 %196, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and257.i)
  %tobool258.not.i = icmp eq i32 %and257.i, 0
  br i1 %tobool258.not.i, label %if.end255.i.if.end264.i_crit_edge, label %if.then259.i

if.end255.i.if.end264.i_crit_edge:                ; preds = %if.end255.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end264.i

if.then259.i:                                     ; preds = %if.end255.i
  call void @__sanitizer_cov_trace_pc() #11
  %rv_dcntl260.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 30
  %211 = ptrtoint ptr %rv_dcntl260.i to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %rv_dcntl260.i, align 1
  %213 = or i8 %212, -128
  store i8 %213, ptr %rv_dcntl260.i, align 1
  br label %if.end264.i

if.end264.i:                                      ; preds = %if.then259.i, %if.end255.i.if.end264.i_crit_edge
  %and266.i = and i32 %196, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and266.i)
  %tobool267.not.i = icmp eq i32 %and266.i, 0
  br i1 %tobool267.not.i, label %if.end264.i.if.end272.i_crit_edge, label %if.then268.i

if.end264.i.if.end272.i_crit_edge:                ; preds = %if.end264.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end272.i

if.then268.i:                                     ; preds = %if.end264.i
  call void @__sanitizer_cov_trace_pc() #11
  %rv_ctest3.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 31
  %214 = ptrtoint ptr %rv_ctest3.i to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %rv_ctest3.i, align 4
  %216 = or i8 %215, 1
  store i8 %216, ptr %rv_ctest3.i, align 4
  br label %if.end272.i

if.end272.i:                                      ; preds = %if.then268.i, %if.end264.i.if.end272.i_crit_edge
  %and274.i = and i32 %196, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and274.i)
  %tobool275.not.i = icmp eq i32 %and274.i, 0
  br i1 %tobool275.not.i, label %if.end272.i.if.end280.i_crit_edge, label %if.then276.i

if.end272.i.if.end280.i_crit_edge:                ; preds = %if.end272.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end280.i

if.then276.i:                                     ; preds = %if.end272.i
  call void @__sanitizer_cov_trace_pc() #11
  %rv_ctest5.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 33
  %217 = ptrtoint ptr %rv_ctest5.i to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %rv_ctest5.i, align 2
  %219 = or i8 %218, 32
  store i8 %219, ptr %rv_ctest5.i, align 2
  br label %if.end280.i

if.end280.i:                                      ; preds = %if.then276.i, %if.end272.i.if.end280.i_crit_edge
  %rv_ctest4.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 32
  %220 = ptrtoint ptr %rv_ctest4.i to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %rv_ctest4.i, align 1
  %222 = or i8 %221, 8
  store i8 %222, ptr %rv_ctest4.i, align 1
  %rv_scntl0.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 27
  %223 = ptrtoint ptr %rv_scntl0.i to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %rv_scntl0.i, align 4
  %225 = or i8 %224, 10
  store i8 %225, ptr %rv_scntl0.i, align 4
  %myaddr.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 61
  %226 = ptrtoint ptr %myaddr.i to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 -1, ptr %myaddr.i, align 4
  %scsi_mode.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 86
  %227 = ptrtoint ptr %scsi_mode.i to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 0, ptr %scsi_mode.i, align 1
  tail call void @sym_nvram_setup_host(ptr noundef %shost, ptr noundef %1, ptr noundef %nvram) #9
  %228 = ptrtoint ptr %myaddr.i to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %myaddr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %229)
  %cmp289.i = icmp eq i8 %229, -1
  br i1 %cmp289.i, label %if.then291.i, label %if.end280.i.if.end302.i_crit_edge

if.end280.i.if.end302.i_crit_edge:                ; preds = %if.end280.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end302.i

if.then291.i:                                     ; preds = %if.end280.i
  %230 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i360 = getelementptr i8, ptr %231, i32 4
  %232 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i360) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  %233 = and i8 %232, 7
  %234 = ptrtoint ptr %myaddr.i to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 %233, ptr %myaddr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %233)
  %tobool298.not.i = icmp eq i8 %233, 0
  br i1 %tobool298.not.i, label %if.then299.i, label %if.then291.i.if.end302.i_crit_edge

if.then291.i.if.end302.i_crit_edge:               ; preds = %if.then291.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end302.i

if.then299.i:                                     ; preds = %if.then291.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.sym_driver_setup, ptr @sym_driver_setup, i32 0, i32 6) to i32))
  %235 = load i8, ptr getelementptr inbounds (%struct.sym_driver_setup, ptr @sym_driver_setup, i32 0, i32 6), align 1
  %236 = ptrtoint ptr %myaddr.i to i32
  call void @__asan_store1_noabort(i32 %236)
  store i8 %235, ptr %myaddr.i, align 4
  br label %if.end302.i

if.end302.i:                                      ; preds = %if.then299.i, %if.then291.i.if.end302.i_crit_edge, %if.end280.i.if.end302.i_crit_edge
  %237 = ptrtoint ptr %rv_ctest4.i to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %rv_ctest4.i, align 1
  %239 = and i8 %238, 127
  store i8 %239, ptr %rv_ctest4.i, align 1
  %rv_dmode.i.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 29
  %240 = ptrtoint ptr %rv_dmode.i.i to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %rv_dmode.i.i, align 2
  %242 = and i8 %241, 63
  store i8 %242, ptr %rv_dmode.i.i, align 2
  %rv_ctest5.i.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 33
  %243 = ptrtoint ptr %rv_ctest5.i.i to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %rv_ctest5.i.i, align 2
  %245 = and i8 %244, -5
  store i8 %245, ptr %rv_ctest5.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %184)
  %tobool.not.i4.i = icmp eq i8 %184, 0
  br i1 %tobool.not.i4.i, label %if.then.i5.i, label %if.else.i.i

if.then.i5.i:                                     ; preds = %if.end302.i
  call void @__sanitizer_cov_trace_pc() #11
  %246 = or i8 %238, -128
  %247 = ptrtoint ptr %rv_ctest4.i to i32
  call void @__asan_store1_noabort(i32 %247)
  store i8 %246, ptr %rv_ctest4.i, align 1
  br label %sym_init_burst.exit.i

if.else.i.i:                                      ; preds = %if.end302.i
  call void @__sanitizer_cov_trace_pc() #11
  %dec.i.i = add nsw i8 %184, -1
  %and12.i.i = shl i8 %dec.i.i, 6
  %or15.i.i = or i8 %242, %and12.i.i
  %248 = ptrtoint ptr %rv_dmode.i.i to i32
  call void @__asan_store1_noabort(i32 %248)
  store i8 %or15.i.i, ptr %rv_dmode.i.i, align 2
  %249 = and i8 %dec.i.i, 4
  %or2131.i.i = or i8 %245, %249
  %250 = ptrtoint ptr %rv_ctest5.i.i to i32
  call void @__asan_store1_noabort(i32 %250)
  store i8 %or2131.i.i, ptr %rv_ctest5.i.i, align 2
  br label %sym_init_burst.exit.i

sym_init_burst.exit.i:                            ; preds = %if.else.i.i, %if.then.i5.i
  %251 = ptrtoint ptr %scsi_mode.i to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %scsi_mode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %252)
  %tobool.not.i7.i = icmp eq i8 %252, 0
  br i1 %tobool.not.i7.i, label %if.end.i8.i, label %sym_init_burst.exit.i.sym_set_bus_mode.exit.i_crit_edge

sym_init_burst.exit.i.sym_set_bus_mode.exit.i_crit_edge: ; preds = %sym_init_burst.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sym_set_bus_mode.exit.i

if.end.i8.i:                                      ; preds = %sym_init_burst.exit.i
  %253 = ptrtoint ptr %scsi_mode.i to i32
  call void @__asan_store1_noabort(i32 %253)
  store i8 -128, ptr %scsi_mode.i, align 1
  %254 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %features.i, align 4
  %and.i.i = and i32 %255, 2097160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool2.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool2.not.i.i, label %if.else.i9.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i8.i
  call void @__sanitizer_cov_trace_pc() #11
  %256 = ptrtoint ptr %sv_stest4.i to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %sv_stest4.i, align 1
  %258 = and i8 %257, -64
  %259 = ptrtoint ptr %scsi_mode.i to i32
  call void @__asan_store1_noabort(i32 %259)
  store i8 %258, ptr %scsi_mode.i, align 1
  br label %if.end43.i.i

if.else.i9.i:                                     ; preds = %if.end.i8.i
  %and8.i.i = and i32 %255, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i)
  %tobool9.not.i.i = icmp eq i32 %and8.i.i, 0
  br i1 %tobool9.not.i.i, label %if.else.i9.i.if.end43thread-pre-split.i.i_crit_edge, label %if.then10.i.i

if.else.i9.i.if.end43thread-pre-split.i.i_crit_edge: ; preds = %if.else.i9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43thread-pre-split.i.i

if.then10.i.i:                                    ; preds = %if.else.i9.i
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.sym_driver_setup, ptr @sym_driver_setup, i32 0, i32 3) to i32))
  %260 = load i8, ptr getelementptr inbounds (%struct.sym_driver_setup, ptr @sym_driver_setup, i32 0, i32 3), align 4
  %261 = zext i8 %260 to i64
  call void @__sanitizer_cov_trace_switch(i64 %261, ptr @__sancov_gen_cov_switch_values.271)
  switch i8 %260, label %if.then10.i.i.if.end43thread-pre-split.i.i_crit_edge [
    i8 1, label %if.then13.i.i
    i8 2, label %if.then10.i.i.if.then48.sink.split.i.i_crit_edge
  ]

if.then10.i.i.if.then48.sink.split.i.i_crit_edge: ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then48.sink.split.i.i

if.then10.i.i.if.end43thread-pre-split.i.i_crit_edge: ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43thread-pre-split.i.i

if.then13.i.i:                                    ; preds = %if.then10.i.i
  %262 = ptrtoint ptr %sv_scntl3.i to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %sv_scntl3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %263)
  %tobool14.not.i.i = icmp eq i8 %263, 0
  br i1 %tobool14.not.i.i, label %if.else22.i.i, label %if.then15.i.i

if.then15.i.i:                                    ; preds = %if.then13.i.i
  %264 = ptrtoint ptr %sv_stest2.i to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %sv_stest2.i, align 4
  %266 = and i8 %265, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %266)
  %tobool18.not.i.i = icmp eq i8 %266, 0
  br i1 %tobool18.not.i.i, label %if.then15.i.i.if.end43thread-pre-split.i.i_crit_edge, label %if.then15.i.i.if.then48.sink.split.i.i_crit_edge

if.then15.i.i.if.then48.sink.split.i.i_crit_edge: ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then48.sink.split.i.i

if.then15.i.i.if.end43thread-pre-split.i.i_crit_edge: ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43thread-pre-split.i.i

if.else22.i.i:                                    ; preds = %if.then13.i.i
  %267 = ptrtoint ptr %nvram to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %nvram, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %268)
  %cmp23.i.i = icmp eq i32 %268, 1
  br i1 %cmp23.i.i, label %if.then25.i.i, label %if.else22.i.i.if.end43thread-pre-split.i.i_crit_edge

if.else22.i.i.if.end43thread-pre-split.i.i_crit_edge: ; preds = %if.else22.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43thread-pre-split.i.i

if.then25.i.i:                                    ; preds = %if.else22.i.i
  %269 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %270, i32 7
  %271 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i12.i) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  %272 = and i8 %271, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %272)
  %tobool28.not.i.i = icmp eq i8 %272, 0
  br i1 %tobool28.not.i.i, label %if.then25.i.i.if.then48.sink.split.i.i_crit_edge, label %if.then25.i.i.if.end43thread-pre-split.i.i_crit_edge

if.then25.i.i.if.end43thread-pre-split.i.i_crit_edge: ; preds = %if.then25.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43thread-pre-split.i.i

if.then25.i.i.if.then48.sink.split.i.i_crit_edge: ; preds = %if.then25.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then48.sink.split.i.i

if.end43thread-pre-split.i.i:                     ; preds = %if.then25.i.i.if.end43thread-pre-split.i.i_crit_edge, %if.else22.i.i.if.end43thread-pre-split.i.i_crit_edge, %if.then15.i.i.if.end43thread-pre-split.i.i_crit_edge, %if.then10.i.i.if.end43thread-pre-split.i.i_crit_edge, %if.else.i9.i.if.end43thread-pre-split.i.i_crit_edge
  %273 = ptrtoint ptr %scsi_mode.i to i32
  call void @__asan_load1_noabort(i32 %273)
  %.pr.i.i = load i8, ptr %scsi_mode.i, align 1
  br label %if.end43.i.i

if.end43.i.i:                                     ; preds = %if.end43thread-pre-split.i.i, %if.then3.i.i
  %274 = phi i8 [ %.pr.i.i, %if.end43thread-pre-split.i.i ], [ %258, %if.then3.i.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %274)
  %cmp46.i.i = icmp eq i8 %274, 64
  br i1 %cmp46.i.i, label %if.end43.i.i.if.then48.i.i_crit_edge, label %if.end43.i.i.sym_set_bus_mode.exit.i_crit_edge

if.end43.i.i.sym_set_bus_mode.exit.i_crit_edge:   ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sym_set_bus_mode.exit.i

if.end43.i.i.if.then48.i.i_crit_edge:             ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then48.i.i

if.then48.sink.split.i.i:                         ; preds = %if.then25.i.i.if.then48.sink.split.i.i_crit_edge, %if.then15.i.i.if.then48.sink.split.i.i_crit_edge, %if.then10.i.i.if.then48.sink.split.i.i_crit_edge
  %275 = ptrtoint ptr %scsi_mode.i to i32
  call void @__asan_store1_noabort(i32 %275)
  store i8 64, ptr %scsi_mode.i, align 1
  br label %if.then48.i.i

if.then48.i.i:                                    ; preds = %if.then48.sink.split.i.i, %if.end43.i.i.if.then48.i.i_crit_edge
  %rv_stest2.i.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 34
  %276 = ptrtoint ptr %rv_stest2.i.i to i32
  call void @__asan_load1_noabort(i32 %276)
  %277 = load i8, ptr %rv_stest2.i.i, align 1
  %278 = or i8 %277, 32
  store i8 %278, ptr %rv_stest2.i.i, align 1
  br label %sym_set_bus_mode.exit.i

sym_set_bus_mode.exit.i:                          ; preds = %if.then48.i.i, %if.end43.i.i.sym_set_bus_mode.exit.i_crit_edge, %sym_init_burst.exit.i.sym_set_bus_mode.exit.i_crit_edge
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.sym_driver_setup, ptr @sym_driver_setup, i32 0, i32 2) to i32))
  %279 = load i8, ptr getelementptr inbounds (%struct.sym_driver_setup, ptr @sym_driver_setup, i32 0, i32 2), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %279)
  %tobool304.not.i = icmp eq i8 %279, 0
  br i1 %tobool304.not.i, label %lor.lhs.false305.i, label %sym_set_bus_mode.exit.i.land.lhs.true318.i_crit_edge

sym_set_bus_mode.exit.i.land.lhs.true318.i_crit_edge: ; preds = %sym_set_bus_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true318.i

lor.lhs.false305.i:                               ; preds = %sym_set_bus_mode.exit.i
  %280 = ptrtoint ptr %nvram to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %nvram, align 4
  %282 = zext i32 %281 to i64
  call void @__sanitizer_cov_trace_switch(i64 %282, ptr @__sancov_gen_cov_switch_values.272)
  switch i32 %281, label %lor.lhs.false305.i.if.end329.i_crit_edge [
    i32 1, label %lor.lhs.false305.i.land.lhs.true318.i_crit_edge
    i32 2, label %land.lhs.true313.i
  ]

lor.lhs.false305.i.land.lhs.true318.i_crit_edge:  ; preds = %lor.lhs.false305.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true318.i

lor.lhs.false305.i.if.end329.i_crit_edge:         ; preds = %lor.lhs.false305.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end329.i

land.lhs.true313.i:                               ; preds = %lor.lhs.false305.i
  %283 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %283)
  %284 = load i16, ptr %device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %284)
  %cmp316.i = icmp eq i16 %284, 12
  br i1 %cmp316.i, label %land.lhs.true313.i.land.lhs.true318.i_crit_edge, label %land.lhs.true313.i.if.end329.i_crit_edge

land.lhs.true313.i.if.end329.i_crit_edge:         ; preds = %land.lhs.true313.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end329.i

land.lhs.true313.i.land.lhs.true318.i_crit_edge:  ; preds = %land.lhs.true313.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true318.i

land.lhs.true318.i:                               ; preds = %land.lhs.true313.i.land.lhs.true318.i_crit_edge, %lor.lhs.false305.i.land.lhs.true318.i_crit_edge, %sym_set_bus_mode.exit.i.land.lhs.true318.i_crit_edge
  %285 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %features.i, align 4
  %and320.i = and i32 %286, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and320.i)
  %tobool321.not.i = icmp eq i32 %and320.i, 0
  br i1 %tobool321.not.i, label %land.lhs.true322.i, label %land.lhs.true318.i.if.end329.i_crit_edge

land.lhs.true318.i.if.end329.i_crit_edge:         ; preds = %land.lhs.true318.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end329.i

land.lhs.true322.i:                               ; preds = %land.lhs.true318.i
  %287 = ptrtoint ptr %sv_gpcntl.i to i32
  call void @__asan_load1_noabort(i32 %287)
  %288 = load i8, ptr %sv_gpcntl.i, align 1
  %289 = and i8 %288, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %289)
  %tobool325.not.i = icmp eq i8 %289, 0
  br i1 %tobool325.not.i, label %if.then326.i, label %land.lhs.true322.i.if.end329.i_crit_edge

land.lhs.true322.i.if.end329.i_crit_edge:         ; preds = %land.lhs.true322.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end329.i

if.then326.i:                                     ; preds = %land.lhs.true322.i
  call void @__sanitizer_cov_trace_pc() #11
  %or328.i = or i32 %286, 1
  %290 = ptrtoint ptr %features.i to i32
  call void @__asan_store4_noabort(i32 %290)
  store i32 %or328.i, ptr %features.i, align 4
  br label %if.end329.i

if.end329.i:                                      ; preds = %if.then326.i, %land.lhs.true322.i.if.end329.i_crit_edge, %land.lhs.true318.i.if.end329.i_crit_edge, %land.lhs.true313.i.if.end329.i_crit_edge, %lor.lhs.false305.i.if.end329.i_crit_edge
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.sym_driver_setup, ptr @sym_driver_setup, i32 0, i32 4) to i32))
  %291 = load i8, ptr getelementptr inbounds (%struct.sym_driver_setup, ptr @sym_driver_setup, i32 0, i32 4), align 1
  %292 = and i8 %291, 3
  %and331.i = zext i8 %292 to i32
  %293 = zext i32 %and331.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %293, ptr @__sancov_gen_cov_switch_values.273)
  switch i32 %and331.i, label %if.end329.i.for.body.i.preheader_crit_edge [
    i32 2, label %if.end329.i.sw.epilog.sink.split.i_crit_edge
    i32 1, label %sw.bb336.i
  ]

if.end329.i.sw.epilog.sink.split.i_crit_edge:     ; preds = %if.end329.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split.i

if.end329.i.for.body.i.preheader_crit_edge:       ; preds = %if.end329.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.preheader

sw.bb336.i:                                       ; preds = %if.end329.i
  call void @__sanitizer_cov_trace_pc() #11
  %294 = ptrtoint ptr %sv_dcntl.i to i32
  call void @__asan_load1_noabort(i32 %294)
  %295 = load i8, ptr %sv_dcntl.i, align 1
  %296 = and i8 %295, 8
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb336.i, %if.end329.i.sw.epilog.sink.split.i_crit_edge
  %.sink26.i = phi i8 [ %296, %sw.bb336.i ], [ 8, %if.end329.i.sw.epilog.sink.split.i_crit_edge ]
  %rv_dcntl332.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 30
  %297 = ptrtoint ptr %rv_dcntl332.i to i32
  call void @__asan_load1_noabort(i32 %297)
  %298 = load i8, ptr %rv_dcntl332.i, align 1
  %or3411.i = or i8 %298, %.sink26.i
  store i8 %or3411.i, ptr %rv_dcntl332.i, align 1
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %sw.epilog.sink.split.i, %if.end329.i.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %if.end357.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.221.i = phi i32 [ %inc358.i, %if.end357.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %arrayidx345.i = getelementptr %struct.sym_hcb, ptr %1, i32 0, i32 38, i32 %i.221.i
  %usrflags.i = getelementptr %struct.sym_hcb, ptr %1, i32 0, i32 38, i32 %i.221.i, i32 9
  %299 = ptrtoint ptr %usrflags.i to i32
  call void @__asan_load1_noabort(i32 %299)
  %300 = load i8, ptr %usrflags.i, align 1
  %301 = or i8 %300, 3
  store i8 %301, ptr %usrflags.i, align 1
  call void @__asan_load2_noabort(i32 ptrtoint (ptr @sym_driver_setup to i32))
  %302 = load i16, ptr @sym_driver_setup, align 4
  %usrtags.i = getelementptr %struct.sym_hcb, ptr %1, i32 0, i32 38, i32 %i.221.i, i32 12
  %303 = ptrtoint ptr %usrtags.i to i32
  call void @__asan_store2_noabort(i32 %303)
  store i16 %302, ptr %usrtags.i, align 4
  %304 = ptrtoint ptr %maxwide.i to i32
  call void @__asan_load1_noabort(i32 %304)
  %305 = load i8, ptr %maxwide.i, align 2
  %usr_width.i = getelementptr %struct.sym_hcb, ptr %1, i32 0, i32 38, i32 %i.221.i, i32 11
  %306 = ptrtoint ptr %usr_width.i to i32
  call void @__asan_store1_noabort(i32 %306)
  store i8 %305, ptr %usr_width.i, align 1
  %usr_period.i = getelementptr %struct.sym_hcb, ptr %1, i32 0, i32 38, i32 %i.221.i, i32 10
  %307 = ptrtoint ptr %usr_period.i to i32
  call void @__asan_store1_noabort(i32 %307)
  store i8 9, ptr %usr_period.i, align 2
  tail call void @sym_nvram_setup_target(ptr noundef %arrayidx345.i, i32 noundef %i.221.i, ptr noundef %nvram) #9
  %308 = ptrtoint ptr %usrtags.i to i32
  call void @__asan_load2_noabort(i32 %308)
  %309 = load i16, ptr %usrtags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %309)
  %tobool351.not.i = icmp eq i16 %309, 0
  br i1 %tobool351.not.i, label %if.then352.i, label %for.body.i.if.end357.i_crit_edge

for.body.i.if.end357.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end357.i

if.then352.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %310 = ptrtoint ptr %usrflags.i to i32
  call void @__asan_load1_noabort(i32 %310)
  %311 = load i8, ptr %usrflags.i, align 1
  %312 = and i8 %311, -3
  store i8 %312, ptr %usrflags.i, align 1
  br label %if.end357.i

if.end357.i:                                      ; preds = %if.then352.i, %for.body.i.if.end357.i_crit_edge
  %inc358.i = add nuw nsw i32 %i.221.i, 1
  %exitcond.not.i = icmp eq i32 %inc358.i, 16
  br i1 %exitcond.not.i, label %do.end.i, label %if.end357.i.for.body.i_crit_edge

if.end357.i.for.body.i_crit_edge:                 ; preds = %if.end357.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

do.end.i:                                         ; preds = %if.end357.i
  %inst_name.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 42, i32 1
  %call360.i = tail call ptr @sym_nvram_type(ptr noundef %nvram) #9
  %313 = ptrtoint ptr %myaddr.i to i32
  call void @__asan_load1_noabort(i32 %313)
  %314 = load i8, ptr %myaddr.i, align 4
  %conv362.i = zext i8 %314 to i32
  %315 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %features.i, align 4
  %and364.i = and i32 %316, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and364.i)
  %tobool365.not.i = icmp eq i32 %and364.i, 0
  br i1 %tobool365.not.i, label %cond.false367.i, label %do.end.i.cond.end379.i_crit_edge

do.end.i.cond.end379.i_crit_edge:                 ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end379.i

cond.false367.i:                                  ; preds = %do.end.i
  %and369.i = and i32 %316, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and369.i)
  %tobool370.not.i = icmp eq i32 %and369.i, 0
  br i1 %tobool370.not.i, label %cond.false372.i, label %cond.false367.i.cond.end379.i_crit_edge

cond.false367.i.cond.end379.i_crit_edge:          ; preds = %cond.false367.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end379.i

cond.false372.i:                                  ; preds = %cond.false367.i
  call void @__sanitizer_cov_trace_pc() #11
  %and374.i = and i32 %316, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and374.i)
  %tobool375.not.i = icmp eq i32 %and374.i, 0
  %cond376.i = select i1 %tobool375.not.i, i32 10, i32 20
  br label %cond.end379.i

cond.end379.i:                                    ; preds = %cond.false372.i, %cond.false367.i.cond.end379.i_crit_edge, %do.end.i.cond.end379.i_crit_edge
  %cond380.i = phi i32 [ 80, %do.end.i.cond.end379.i_crit_edge ], [ %cond376.i, %cond.false372.i ], [ 40, %cond.false367.i.cond.end379.i_crit_edge ]
  %317 = ptrtoint ptr %scsi_mode.i to i32
  call void @__asan_load1_noabort(i32 %317)
  %318 = load i8, ptr %scsi_mode.i, align 1
  %319 = zext i8 %318 to i64
  call void @__sanitizer_cov_trace_switch(i64 %319, ptr @__sancov_gen_cov_switch_values.274)
  switch i8 %318, label %sw.epilog.i.i [
    i8 64, label %cond.end379.i.sym_scsi_bus_mode.exit.i_crit_edge
    i8 -128, label %sw.bb1.i.i
    i8 -64, label %sw.bb2.i.i
  ]

cond.end379.i.sym_scsi_bus_mode.exit.i_crit_edge: ; preds = %cond.end379.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sym_scsi_bus_mode.exit.i

sw.bb1.i.i:                                       ; preds = %cond.end379.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sym_scsi_bus_mode.exit.i

sw.bb2.i.i:                                       ; preds = %cond.end379.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sym_scsi_bus_mode.exit.i

sw.epilog.i.i:                                    ; preds = %cond.end379.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sym_scsi_bus_mode.exit.i

sym_scsi_bus_mode.exit.i:                         ; preds = %sw.epilog.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %cond.end379.i.sym_scsi_bus_mode.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ @.str.134, %sw.epilog.i.i ], [ @.str.133, %sw.bb2.i.i ], [ @.str.132, %sw.bb1.i.i ], [ @.str.131, %cond.end379.i.sym_scsi_bus_mode.exit.i_crit_edge ]
  %320 = ptrtoint ptr %rv_scntl0.i to i32
  call void @__asan_load1_noabort(i32 %320)
  %321 = load i8, ptr %rv_scntl0.i, align 4
  %322 = and i8 %321, 10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %322)
  %tobool387.not.i = icmp eq i8 %322, 0
  %cond388.i = select i1 %tobool387.not.i, ptr @.str.203, ptr @.str.202
  %call389.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.200, ptr noundef %inst_name.i, ptr noundef %call360.i, i32 noundef %conv362.i, i32 noundef %cond380.i, ptr noundef nonnull %retval.0.i.i, ptr noundef nonnull %cond388.i) #12
  %verbose.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 87
  %323 = ptrtoint ptr %verbose.i to i32
  call void @__asan_load1_noabort(i32 %323)
  %324 = load i8, ptr %verbose.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %324)
  %tobool390.not.i = icmp eq i8 %324, 0
  br i1 %tobool390.not.i, label %sym_scsi_bus_mode.exit.i.sym_prepare_setting.exit_crit_edge, label %do.end394.i

sym_scsi_bus_mode.exit.i.sym_prepare_setting.exit_crit_edge: ; preds = %sym_scsi_bus_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sym_prepare_setting.exit

do.end394.i:                                      ; preds = %sym_scsi_bus_mode.exit.i
  %rv_dcntl399.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 30
  %325 = ptrtoint ptr %rv_dcntl399.i to i32
  call void @__asan_load1_noabort(i32 %325)
  %326 = load i8, ptr %rv_dcntl399.i, align 1
  %327 = and i8 %326, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %327)
  %tobool402.not.i = icmp eq i8 %327, 0
  %cond403.i = select i1 %tobool402.not.i, ptr @.str.208, ptr @.str.207
  %ram_ba404.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 44
  %328 = ptrtoint ptr %ram_ba404.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %ram_ba404.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %329)
  %tobool405.not.i = icmp eq i32 %329, 0
  %cond406.i = select i1 %tobool405.not.i, ptr @.str.23, ptr @.str.209
  %call407.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.205, ptr noundef %inst_name.i, ptr noundef nonnull %cond403.i, ptr noundef nonnull %cond406.i) #12
  %330 = ptrtoint ptr %fw_name to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %fw_name, align 4
  %call415.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.211, ptr noundef %inst_name.i, ptr noundef %331) #12
  %332 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %features.i, align 4
  %and417.i = and i32 %333, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and417.i)
  %tobool418.not.i = icmp eq i32 %and417.i, 0
  br i1 %tobool418.not.i, label %do.end394.i.if.end429.i_crit_edge, label %do.end422.i

do.end394.i.if.end429.i_crit_edge:                ; preds = %do.end394.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end429.i

do.end422.i:                                      ; preds = %do.end394.i
  call void @__sanitizer_cov_trace_pc() #11
  %call427.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.214, ptr noundef %inst_name.i) #12
  br label %if.end429.i

if.end429.i:                                      ; preds = %do.end422.i, %do.end394.i.if.end429.i_crit_edge
  %334 = ptrtoint ptr %verbose.i to i32
  call void @__asan_load1_noabort(i32 %334)
  %.pr.i = load i8, ptr %verbose.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %.pr.i)
  %cmp432.i = icmp ugt i8 %.pr.i, 1
  br i1 %cmp432.i, label %do.end437.i, label %if.end429.i.sym_prepare_setting.exit_crit_edge

if.end429.i.sym_prepare_setting.exit_crit_edge:   ; preds = %if.end429.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sym_prepare_setting.exit

do.end437.i:                                      ; preds = %if.end429.i
  call void @__sanitizer_cov_trace_pc() #11
  %335 = ptrtoint ptr %sv_scntl3.i to i32
  call void @__asan_load1_noabort(i32 %335)
  %336 = load i8, ptr %sv_scntl3.i, align 1
  %conv442.i = zext i8 %336 to i32
  %337 = ptrtoint ptr %sv_dmode.i to i32
  call void @__asan_load1_noabort(i32 %337)
  %338 = load i8, ptr %sv_dmode.i, align 2
  %conv444.i = zext i8 %338 to i32
  %339 = ptrtoint ptr %sv_dcntl.i to i32
  call void @__asan_load1_noabort(i32 %339)
  %340 = load i8, ptr %sv_dcntl.i, align 1
  %conv446.i = zext i8 %340 to i32
  %341 = ptrtoint ptr %sv_ctest3.i to i32
  call void @__asan_load1_noabort(i32 %341)
  %342 = load i8, ptr %sv_ctest3.i, align 4
  %conv447.i = zext i8 %342 to i32
  %343 = ptrtoint ptr %sv_ctest4.i to i32
  call void @__asan_load1_noabort(i32 %343)
  %344 = load i8, ptr %sv_ctest4.i, align 1
  %conv449.i = zext i8 %344 to i32
  %345 = ptrtoint ptr %79 to i32
  call void @__asan_load1_noabort(i32 %345)
  %346 = load i8, ptr %79, align 2
  %conv451.i = zext i8 %346 to i32
  %call452.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.217, ptr noundef %inst_name.i, i32 noundef %conv442.i, i32 noundef %conv444.i, i32 noundef %conv446.i, i32 noundef %conv447.i, i32 noundef %conv449.i, i32 noundef %conv451.i) #12
  %347 = ptrtoint ptr %rv_scntl3.i to i32
  call void @__asan_load1_noabort(i32 %347)
  %348 = load i8, ptr %rv_scntl3.i, align 1
  %conv461.i = zext i8 %348 to i32
  %349 = ptrtoint ptr %rv_dmode.i.i to i32
  call void @__asan_load1_noabort(i32 %349)
  %350 = load i8, ptr %rv_dmode.i.i, align 2
  %conv463.i = zext i8 %350 to i32
  %351 = ptrtoint ptr %rv_dcntl399.i to i32
  call void @__asan_load1_noabort(i32 %351)
  %352 = load i8, ptr %rv_dcntl399.i, align 1
  %conv465.i = zext i8 %352 to i32
  %rv_ctest3466.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 31
  %353 = ptrtoint ptr %rv_ctest3466.i to i32
  call void @__asan_load1_noabort(i32 %353)
  %354 = load i8, ptr %rv_ctest3466.i, align 4
  %conv467.i = zext i8 %354 to i32
  %355 = ptrtoint ptr %rv_ctest4.i to i32
  call void @__asan_load1_noabort(i32 %355)
  %356 = load i8, ptr %rv_ctest4.i, align 1
  %conv469.i = zext i8 %356 to i32
  %357 = ptrtoint ptr %rv_ctest5.i.i to i32
  call void @__asan_load1_noabort(i32 %357)
  %358 = load i8, ptr %rv_ctest5.i.i, align 2
  %conv471.i = zext i8 %358 to i32
  %call472.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.220, ptr noundef %inst_name.i, i32 noundef %conv461.i, i32 noundef %conv463.i, i32 noundef %conv465.i, i32 noundef %conv467.i, i32 noundef %conv469.i, i32 noundef %conv471.i) #12
  br label %sym_prepare_setting.exit

sym_prepare_setting.exit:                         ; preds = %do.end437.i, %if.end429.i.sym_prepare_setting.exit_crit_edge, %sym_scsi_bus_mode.exit.i.sym_prepare_setting.exit_crit_edge
  %359 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %features.i, align 4
  %and.i = and i32 %360, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i366 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i366, label %sym_getpciclock.exit.thread, label %sym_getpciclock.exit

sym_getpciclock.exit.thread:                      ; preds = %sym_prepare_setting.exit
  call void @__sanitizer_cov_trace_pc() #11
  %pciclk_khz.i385 = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 73
  %361 = ptrtoint ptr %pciclk_khz.i385 to i32
  call void @__asan_store4_noabort(i32 %361)
  store i32 0, ptr %pciclk_khz.i385, align 4
  br label %if.end

sym_getpciclock.exit:                             ; preds = %sym_prepare_setting.exit
  %362 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i368 = getelementptr i8, ptr %363, i32 77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i368, i8 -128) #9, !srcloc !464
  %364 = tail call fastcc i32 @getfreq(ptr noundef %1) #9
  %call1.i.i = tail call fastcc i32 @getfreq(ptr noundef %1) #9
  %call2.i.i = tail call fastcc i32 @getfreq(ptr noundef %1) #9
  %365 = tail call i32 @llvm.umin.i32(i32 %call1.i.i, i32 %call2.i.i) #9
  %366 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr3.i369 = getelementptr i8, ptr %367, i32 77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i369, i8 0) #9, !srcloc !464
  %pciclk_khz.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 73
  %368 = ptrtoint ptr %pciclk_khz.i to i32
  call void @__asan_store4_noabort(i32 %368)
  store i32 %365, ptr %pciclk_khz.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 37000, i32 %365)
  %cmp = icmp sgt i32 %365, 37000
  br i1 %cmp, label %land.lhs.true, label %sym_getpciclock.exit.if.end_crit_edge

sym_getpciclock.exit.if.end_crit_edge:            ; preds = %sym_getpciclock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %sym_getpciclock.exit
  %369 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %features.i, align 4
  %and = and i32 %370, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %inst_name.i, i32 noundef %365) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %land.lhs.true.if.end_crit_edge, %sym_getpciclock.exit.if.end_crit_edge, %sym_getpciclock.exit.thread
  %bus_dmat = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 41
  %371 = ptrtoint ptr %bus_dmat to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %bus_dmat, align 4
  %call7 = tail call ptr @__sym_calloc_dma(ptr noundef %372, i32 noundef 3600, ptr noundef nonnull @.str.50) #9
  %squeue = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 74
  %373 = ptrtoint ptr %squeue to i32
  call void @__asan_store4_noabort(i32 %373)
  store ptr %call7, ptr %squeue, align 4
  %tobool9.not = icmp eq ptr %call7, null
  br i1 %tobool9.not, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %374 = ptrtoint ptr %bus_dmat to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %bus_dmat, align 4
  %call14 = tail call i32 @__vtobus(ptr noundef %375, ptr noundef nonnull %call7) #9
  %squeue_ba = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 75
  %376 = ptrtoint ptr %squeue_ba to i32
  call void @__asan_store4_noabort(i32 %376)
  store i32 %call14, ptr %squeue_ba, align 4
  %377 = ptrtoint ptr %bus_dmat to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %bus_dmat, align 4
  %call16 = tail call ptr @__sym_calloc_dma(ptr noundef %378, i32 noundef 3600, ptr noundef nonnull @.str.51) #9
  %dqueue = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 79
  %379 = ptrtoint ptr %dqueue to i32
  call void @__asan_store4_noabort(i32 %379)
  store ptr %call16, ptr %dqueue, align 4
  %tobool18.not = icmp eq ptr %call16, null
  br i1 %tobool18.not, label %if.end11.cleanup_crit_edge, label %if.end20

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end20:                                         ; preds = %if.end11
  %380 = ptrtoint ptr %bus_dmat to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %bus_dmat, align 4
  %call23 = tail call i32 @__vtobus(ptr noundef %381, ptr noundef nonnull %call16) #9
  %dqueue_ba = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 80
  %382 = ptrtoint ptr %dqueue_ba to i32
  call void @__asan_store4_noabort(i32 %382)
  store i32 %call23, ptr %dqueue_ba, align 4
  %383 = ptrtoint ptr %bus_dmat to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %bus_dmat, align 4
  %call25 = tail call ptr @__sym_calloc_dma(ptr noundef %384, i32 noundef 256, ptr noundef nonnull @.str.52) #9
  %targtbl = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 39
  %385 = ptrtoint ptr %targtbl to i32
  call void @__asan_store4_noabort(i32 %385)
  store ptr %call25, ptr %targtbl, align 4
  %tobool27.not = icmp eq ptr %call25, null
  br i1 %tobool27.not, label %if.end20.cleanup_crit_edge, label %if.end29

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end29:                                         ; preds = %if.end20
  %386 = ptrtoint ptr %bus_dmat to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %bus_dmat, align 4
  %call32 = tail call i32 @__vtobus(ptr noundef %387, ptr noundef nonnull %call25) #9
  %targtbl_ba = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 40
  %388 = ptrtoint ptr %targtbl_ba to i32
  call void @__asan_store4_noabort(i32 %388)
  store i32 %call32, ptr %targtbl_ba, align 4
  %389 = ptrtoint ptr %bus_dmat to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %bus_dmat, align 4
  %391 = ptrtoint ptr %scripta_sz to i32
  call void @__asan_load2_noabort(i32 %391)
  %392 = load i16, ptr %scripta_sz, align 4
  %conv35 = zext i16 %392 to i32
  %call36 = tail call ptr @__sym_calloc_dma(ptr noundef %390, i32 noundef %conv35, ptr noundef nonnull @.str.53) #9
  %scripta0 = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 45
  %393 = ptrtoint ptr %scripta0 to i32
  call void @__asan_store4_noabort(i32 %393)
  store ptr %call36, ptr %scripta0, align 4
  %394 = ptrtoint ptr %bus_dmat to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %bus_dmat, align 4
  %396 = ptrtoint ptr %scriptb_sz to i32
  call void @__asan_load2_noabort(i32 %396)
  %397 = load i16, ptr %scriptb_sz, align 2
  %conv39 = zext i16 %397 to i32
  %call40 = tail call ptr @__sym_calloc_dma(ptr noundef %395, i32 noundef %conv39, ptr noundef nonnull @.str.54) #9
  %scriptb0 = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 46
  %398 = ptrtoint ptr %scriptb0 to i32
  call void @__asan_store4_noabort(i32 %398)
  store ptr %call40, ptr %scriptb0, align 4
  %399 = ptrtoint ptr %bus_dmat to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %bus_dmat, align 4
  %401 = ptrtoint ptr %scriptz_sz to i32
  call void @__asan_load2_noabort(i32 %401)
  %402 = load i16, ptr %scriptz_sz, align 4
  %conv43 = zext i16 %402 to i32
  %call44 = tail call ptr @__sym_calloc_dma(ptr noundef %400, i32 noundef %conv43, ptr noundef nonnull @.str.55) #9
  %scriptz0 = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 47
  %403 = ptrtoint ptr %scriptz0 to i32
  call void @__asan_store4_noabort(i32 %403)
  store ptr %call44, ptr %scriptz0, align 4
  %404 = ptrtoint ptr %scripta0 to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %scripta0, align 4
  %tobool46.not = icmp eq ptr %405, null
  br i1 %tobool46.not, label %if.end29.cleanup_crit_edge, label %lor.lhs.false

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end29
  %406 = ptrtoint ptr %scriptb0 to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %scriptb0, align 4
  %tobool48.not = icmp eq ptr %407, null
  %tobool51.not = icmp eq ptr %call44, null
  %or.cond = select i1 %tobool48.not, i1 true, i1 %tobool51.not
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %if.end53

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end53:                                         ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %408 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %408, i32 noundef 3520, i32 noundef 1024) #14
  %ccbh = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 88
  %409 = ptrtoint ptr %ccbh to i32
  call void @__asan_store4_noabort(i32 %409)
  store ptr %call7.i.i.i, ptr %ccbh, align 4
  %tobool56.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool56.not, label %if.end53.cleanup_crit_edge, label %do.body59

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body59:                                        ; preds = %if.end53
  %free_ccbq = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 89
  %410 = ptrtoint ptr %free_ccbq to i32
  call void @__asan_store4_noabort(i32 %410)
  store ptr %free_ccbq, ptr %free_ccbq, align 4
  %blink = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 89, i32 1
  %411 = ptrtoint ptr %blink to i32
  call void @__asan_store4_noabort(i32 %411)
  store ptr %free_ccbq, ptr %blink, align 4
  %busy_ccbq = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 90
  %412 = ptrtoint ptr %busy_ccbq to i32
  call void @__asan_store4_noabort(i32 %412)
  store ptr %busy_ccbq, ptr %busy_ccbq, align 4
  %blink70 = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 90, i32 1
  %413 = ptrtoint ptr %blink70 to i32
  call void @__asan_store4_noabort(i32 %413)
  store ptr %busy_ccbq, ptr %blink70, align 4
  %comp_ccbq = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 91
  %414 = ptrtoint ptr %comp_ccbq to i32
  call void @__asan_store4_noabort(i32 %414)
  store ptr %comp_ccbq, ptr %comp_ccbq, align 4
  %blink78 = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 91, i32 1
  %415 = ptrtoint ptr %blink78 to i32
  call void @__asan_store4_noabort(i32 %415)
  store ptr %comp_ccbq, ptr %blink78, align 4
  %actccbs.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 77
  %416 = ptrtoint ptr %actccbs.i to i32
  call void @__asan_load2_noabort(i32 %416)
  %417 = load i16, ptr %actccbs.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 447, i16 %417)
  %cmp.i374 = icmp ugt i16 %417, 447
  br i1 %cmp.i374, label %do.body59.cleanup_crit_edge, label %if.end.i

do.body59.cleanup_crit_edge:                      ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %do.body59
  %418 = ptrtoint ptr %bus_dmat to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %bus_dmat, align 4
  %call.i = tail call ptr @__sym_calloc_dma(ptr noundef %419, i32 noundef 1000, ptr noundef nonnull @.str.60) #9
  %tobool.not.i375 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i375, label %if.end.i.cleanup_crit_edge, label %if.end84

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end84:                                         ; preds = %if.end.i
  %420 = ptrtoint ptr %actccbs.i to i32
  call void @__asan_load2_noabort(i32 %420)
  %421 = load i16, ptr %actccbs.i, align 2
  %inc.i = add i16 %421, 1
  store i16 %inc.i, ptr %actccbs.i, align 2
  %422 = ptrtoint ptr %bus_dmat to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %bus_dmat, align 4
  %call6.i = tail call i32 @__vtobus(ptr noundef %423, ptr noundef nonnull %call.i) #9
  %ccb_ba.i = getelementptr inbounds %struct.sym_ccb, ptr %call.i, i32 0, i32 17
  %424 = ptrtoint ptr %ccb_ba.i to i32
  call void @__asan_store4_noabort(i32 %424)
  store i32 %call6.i, ptr %ccb_ba.i, align 4
  %shr.i = lshr i32 %call6.i, 10
  %and.i376 = and i32 %shr.i, 255
  %425 = ptrtoint ptr %ccbh to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %ccbh, align 4
  %arrayidx.i377 = getelementptr ptr, ptr %426, i32 %and.i376
  %427 = ptrtoint ptr %arrayidx.i377 to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %arrayidx.i377, align 4
  %link_ccbh.i = getelementptr inbounds %struct.sym_ccb, ptr %call.i, i32 0, i32 21
  %429 = ptrtoint ptr %link_ccbh.i to i32
  call void @__asan_store4_noabort(i32 %429)
  store ptr %428, ptr %link_ccbh.i, align 4
  %430 = load ptr, ptr %ccbh, align 4
  %arrayidx9.i = getelementptr ptr, ptr %430, i32 %and.i376
  %431 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %431)
  store ptr %call.i, ptr %arrayidx9.i, align 4
  %idle.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 54, i32 12
  %432 = ptrtoint ptr %idle.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load i32, ptr %idle.i, align 4
  %434 = tail call i32 @llvm.bswap.i32(i32 %433) #9
  %435 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %435)
  store i32 %434, ptr %call.i, align 4
  %bad_i_t_l.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 55, i32 16
  %436 = ptrtoint ptr %bad_i_t_l.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load i32, ptr %bad_i_t_l.i, align 4
  %438 = tail call i32 @llvm.bswap.i32(i32 %437) #9
  %restart.i = getelementptr inbounds %struct.sym_actscr, ptr %call.i, i32 0, i32 1
  %439 = ptrtoint ptr %restart.i to i32
  call void @__asan_store4_noabort(i32 %439)
  store i32 %438, ptr %restart.i, align 4
  %hcb_ba.i = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 13
  %440 = ptrtoint ptr %hcb_ba.i to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load i32, ptr %hcb_ba.i, align 4
  %add.i = add i32 %441, 1374
  %442 = tail call i32 @llvm.bswap.i32(i32 %add.i) #9
  %addr.i = getelementptr inbounds %struct.sym_dsb, ptr %call.i, i32 0, i32 5, i32 1
  %443 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %443)
  store i32 %442, ptr %addr.i, align 4
  %link_ccbq.i = getelementptr inbounds %struct.sym_ccb, ptr %call.i, i32 0, i32 22
  %444 = ptrtoint ptr %free_ccbq to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %free_ccbq, align 4
  %blink1.i.i = getelementptr inbounds %struct.sym_quehead, ptr %445, i32 0, i32 1
  %446 = ptrtoint ptr %blink1.i.i to i32
  call void @__asan_store4_noabort(i32 %446)
  store ptr %link_ccbq.i, ptr %blink1.i.i, align 4
  %447 = ptrtoint ptr %link_ccbq.i to i32
  call void @__asan_store4_noabort(i32 %447)
  store ptr %445, ptr %link_ccbq.i, align 4
  %blink3.i.i = getelementptr inbounds %struct.sym_ccb, ptr %call.i, i32 0, i32 22, i32 1
  %448 = ptrtoint ptr %blink3.i.i to i32
  call void @__asan_store4_noabort(i32 %448)
  store ptr %free_ccbq, ptr %blink3.i.i, align 4
  store ptr %link_ccbq.i, ptr %free_ccbq, align 4
  %449 = ptrtoint ptr %bus_dmat to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load ptr, ptr %bus_dmat, align 4
  %451 = ptrtoint ptr %scripta0 to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %scripta0, align 4
  %call87 = tail call i32 @__vtobus(ptr noundef %450, ptr noundef %452) #9
  %scripta_ba = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 48
  %453 = ptrtoint ptr %scripta_ba to i32
  call void @__asan_store4_noabort(i32 %453)
  store i32 %call87, ptr %scripta_ba, align 4
  %454 = ptrtoint ptr %bus_dmat to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %bus_dmat, align 4
  %456 = ptrtoint ptr %scriptb0 to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %scriptb0, align 4
  %call90 = tail call i32 @__vtobus(ptr noundef %455, ptr noundef %457) #9
  %scriptb_ba = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 49
  %458 = ptrtoint ptr %scriptb_ba to i32
  call void @__asan_store4_noabort(i32 %458)
  store i32 %call90, ptr %scriptb_ba, align 4
  %459 = ptrtoint ptr %bus_dmat to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load ptr, ptr %bus_dmat, align 4
  %461 = ptrtoint ptr %scriptz0 to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load ptr, ptr %scriptz0, align 4
  %call93 = tail call i32 @__vtobus(ptr noundef %460, ptr noundef %462) #9
  %scriptz_ba = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 50
  %463 = ptrtoint ptr %scriptz_ba to i32
  call void @__asan_store4_noabort(i32 %463)
  store i32 %call93, ptr %scriptz_ba, align 4
  %ram_ba = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 44
  %464 = ptrtoint ptr %ram_ba to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load i32, ptr %ram_ba, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %465)
  %tobool94.not = icmp eq i32 %465, 0
  br i1 %tobool94.not, label %if.end84.if.end105_crit_edge, label %if.then95

if.end84.if.end105_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end105

if.then95:                                        ; preds = %if.end84
  %466 = ptrtoint ptr %scripta_ba to i32
  call void @__asan_store4_noabort(i32 %466)
  store i32 %465, ptr %scripta_ba, align 4
  %467 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load i32, ptr %features.i, align 4
  %and99 = and i32 %468, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  br i1 %tobool100.not, label %if.then95.if.end105_crit_edge, label %if.then101

if.then95.if.end105_crit_edge:                    ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end105

if.then101:                                       ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #11
  %add = add i32 %465, 4096
  %469 = ptrtoint ptr %scriptb_ba to i32
  call void @__asan_store4_noabort(i32 %469)
  store i32 %add, ptr %scriptb_ba, align 4
  br label %if.end105

if.end105:                                        ; preds = %if.then101, %if.then95.if.end105_crit_edge, %if.end84.if.end105_crit_edge
  %470 = ptrtoint ptr %scripta0 to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %scripta0, align 4
  %a_base = getelementptr inbounds %struct.sym_fw, ptr %fw, i32 0, i32 1
  %472 = ptrtoint ptr %a_base to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %a_base, align 4
  %474 = ptrtoint ptr %scripta_sz to i32
  call void @__asan_load2_noabort(i32 %474)
  %475 = load i16, ptr %scripta_sz, align 4
  %conv108 = zext i16 %475 to i32
  %476 = call ptr @memcpy(ptr %471, ptr %473, i32 %conv108)
  %477 = ptrtoint ptr %scriptb0 to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load ptr, ptr %scriptb0, align 4
  %b_base = getelementptr inbounds %struct.sym_fw, ptr %fw, i32 0, i32 4
  %479 = ptrtoint ptr %b_base to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load ptr, ptr %b_base, align 4
  %481 = ptrtoint ptr %scriptb_sz to i32
  call void @__asan_load2_noabort(i32 %481)
  %482 = load i16, ptr %scriptb_sz, align 2
  %conv111 = zext i16 %482 to i32
  %483 = call ptr @memcpy(ptr %478, ptr %480, i32 %conv111)
  %484 = ptrtoint ptr %scriptz0 to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %scriptz0, align 4
  %z_base = getelementptr inbounds %struct.sym_fw, ptr %fw, i32 0, i32 7
  %486 = ptrtoint ptr %z_base to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load ptr, ptr %z_base, align 4
  %488 = ptrtoint ptr %scriptz_sz to i32
  call void @__asan_load2_noabort(i32 %488)
  %489 = load i16, ptr %scriptz_sz, align 4
  %conv114 = zext i16 %489 to i32
  %490 = call ptr @memcpy(ptr %485, ptr %487, i32 %conv114)
  %491 = ptrtoint ptr %fw_setup to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load ptr, ptr %fw_setup, align 4
  tail call void %492(ptr noundef %1, ptr noundef %fw) #9
  %493 = ptrtoint ptr %scripta0 to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load ptr, ptr %scripta0, align 4
  %495 = ptrtoint ptr %scripta_sz to i32
  call void @__asan_load2_noabort(i32 %495)
  %496 = load i16, ptr %scripta_sz, align 4
  %conv118 = zext i16 %496 to i32
  tail call void @sym_fw_bind_script(ptr noundef %1, ptr noundef %494, i32 noundef %conv118) #9
  %497 = ptrtoint ptr %scriptb0 to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load ptr, ptr %scriptb0, align 4
  %499 = ptrtoint ptr %scriptb_sz to i32
  call void @__asan_load2_noabort(i32 %499)
  %500 = load i16, ptr %scriptb_sz, align 2
  %conv121 = zext i16 %500 to i32
  tail call void @sym_fw_bind_script(ptr noundef %1, ptr noundef %498, i32 noundef %conv121) #9
  %501 = ptrtoint ptr %scriptz0 to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load ptr, ptr %scriptz0, align 4
  %503 = ptrtoint ptr %scriptz_sz to i32
  call void @__asan_load2_noabort(i32 %503)
  %504 = load i16, ptr %scriptz_sz, align 4
  %conv124 = zext i16 %504 to i32
  tail call void @sym_fw_bind_script(ptr noundef %1, ptr noundef %502, i32 noundef %conv124) #9
  %505 = ptrtoint ptr %idle.i to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load i32, ptr %idle.i, align 4
  %507 = tail call i32 @llvm.bswap.i32(i32 %506)
  %idletask = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 3
  %508 = ptrtoint ptr %idletask to i32
  call void @__asan_store4_noabort(i32 %508)
  store i32 %507, ptr %idletask, align 4
  %509 = ptrtoint ptr %bad_i_t_l.i to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load i32, ptr %bad_i_t_l.i, align 4
  %511 = tail call i32 @llvm.bswap.i32(i32 %510)
  %restart = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 3, i32 1
  %512 = ptrtoint ptr %restart to i32
  call void @__asan_store4_noabort(i32 %512)
  store i32 %511, ptr %restart, align 4
  %513 = ptrtoint ptr %bus_dmat to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load ptr, ptr %bus_dmat, align 4
  %call128 = tail call i32 @__vtobus(ptr noundef %514, ptr noundef %idletask) #9
  %idletask_ba = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 7
  %515 = ptrtoint ptr %idletask_ba to i32
  call void @__asan_store4_noabort(i32 %515)
  store i32 %call128, ptr %idletask_ba, align 4
  %516 = ptrtoint ptr %idle.i to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load i32, ptr %idle.i, align 4
  %518 = tail call i32 @llvm.bswap.i32(i32 %517)
  %notask = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 4
  %519 = ptrtoint ptr %notask to i32
  call void @__asan_store4_noabort(i32 %519)
  store i32 %518, ptr %notask, align 4
  %520 = ptrtoint ptr %bad_i_t_l.i to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load i32, ptr %bad_i_t_l.i, align 4
  %522 = tail call i32 @llvm.bswap.i32(i32 %521)
  %restart135 = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 4, i32 1
  %523 = ptrtoint ptr %restart135 to i32
  call void @__asan_store4_noabort(i32 %523)
  store i32 %522, ptr %restart135, align 4
  %524 = ptrtoint ptr %bus_dmat to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load ptr, ptr %bus_dmat, align 4
  %call138 = tail call i32 @__vtobus(ptr noundef %525, ptr noundef %notask) #9
  %notask_ba = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 8
  %526 = ptrtoint ptr %notask_ba to i32
  call void @__asan_store4_noabort(i32 %526)
  store i32 %call138, ptr %notask_ba, align 4
  %527 = ptrtoint ptr %idle.i to i32
  call void @__asan_load4_noabort(i32 %527)
  %528 = load i32, ptr %idle.i, align 4
  %529 = tail call i32 @llvm.bswap.i32(i32 %528)
  %bad_itl = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 5
  %530 = ptrtoint ptr %bad_itl to i32
  call void @__asan_store4_noabort(i32 %530)
  store i32 %529, ptr %bad_itl, align 4
  %531 = ptrtoint ptr %bad_i_t_l.i to i32
  call void @__asan_load4_noabort(i32 %531)
  %532 = load i32, ptr %bad_i_t_l.i, align 4
  %533 = tail call i32 @llvm.bswap.i32(i32 %532)
  %restart145 = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 5, i32 1
  %534 = ptrtoint ptr %restart145 to i32
  call void @__asan_store4_noabort(i32 %534)
  store i32 %533, ptr %restart145, align 4
  %535 = ptrtoint ptr %bus_dmat to i32
  call void @__asan_load4_noabort(i32 %535)
  %536 = load ptr, ptr %bus_dmat, align 4
  %call148 = tail call i32 @__vtobus(ptr noundef %536, ptr noundef %bad_itl) #9
  %bad_itl_ba = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 9
  %537 = ptrtoint ptr %bad_itl_ba to i32
  call void @__asan_store4_noabort(i32 %537)
  store i32 %call148, ptr %bad_itl_ba, align 4
  %538 = ptrtoint ptr %idle.i to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load i32, ptr %idle.i, align 4
  %540 = tail call i32 @llvm.bswap.i32(i32 %539)
  %bad_itlq = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 6
  %541 = ptrtoint ptr %bad_itlq to i32
  call void @__asan_store4_noabort(i32 %541)
  store i32 %540, ptr %bad_itlq, align 4
  %bad_i_t_l_q = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 55, i32 17
  %542 = ptrtoint ptr %bad_i_t_l_q to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load i32, ptr %bad_i_t_l_q, align 4
  %544 = tail call i32 @llvm.bswap.i32(i32 %543)
  %restart154 = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 6, i32 1
  %545 = ptrtoint ptr %restart154 to i32
  call void @__asan_store4_noabort(i32 %545)
  store i32 %544, ptr %restart154, align 4
  %546 = ptrtoint ptr %bus_dmat to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load ptr, ptr %bus_dmat, align 4
  %call157 = tail call i32 @__vtobus(ptr noundef %547, ptr noundef %bad_itlq) #9
  %bad_itlq_ba = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 10
  %548 = ptrtoint ptr %bad_itlq_ba to i32
  call void @__asan_store4_noabort(i32 %548)
  store i32 %call157, ptr %bad_itlq_ba, align 4
  %549 = ptrtoint ptr %bus_dmat to i32
  call void @__asan_load4_noabort(i32 %549)
  %550 = load ptr, ptr %bus_dmat, align 4
  %call159 = tail call ptr @__sym_calloc_dma(ptr noundef %550, i32 noundef 256, ptr noundef nonnull @.str.56) #9
  %badluntbl = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 11
  %551 = ptrtoint ptr %badluntbl to i32
  call void @__asan_store4_noabort(i32 %551)
  store ptr %call159, ptr %badluntbl, align 4
  %tobool161.not = icmp eq ptr %call159, null
  br i1 %tobool161.not, label %if.end105.cleanup_crit_edge, label %if.end163

if.end105.cleanup_crit_edge:                      ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end163:                                        ; preds = %if.end105
  %resel_bad_lun = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 55, i32 15
  %552 = ptrtoint ptr %resel_bad_lun to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load i32, ptr %resel_bad_lun, align 4
  %554 = tail call i32 @llvm.bswap.i32(i32 %553)
  %badlun_sa = getelementptr inbounds %struct.sym_hcb, ptr %1, i32 0, i32 12
  %555 = ptrtoint ptr %badlun_sa to i32
  call void @__asan_store4_noabort(i32 %555)
  store i32 %554, ptr %badlun_sa, align 4
  %556 = ptrtoint ptr %bus_dmat to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load ptr, ptr %bus_dmat, align 4
  %call168 = tail call i32 @__vtobus(ptr noundef %557, ptr noundef %badlun_sa) #9
  %558 = tail call i32 @llvm.bswap.i32(i32 %call168)
  %call.i378 = tail call ptr @__memset32(ptr noundef nonnull %call159, i32 noundef %558, i32 noundef 256) #9
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end163
  %i.0389 = phi i32 [ 0, %if.end163 ], [ %inc, %for.body.for.body_crit_edge ]
  %559 = ptrtoint ptr %bus_dmat to i32
  call void @__asan_load4_noabort(i32 %559)
  %560 = load ptr, ptr %bus_dmat, align 4
  %arrayidx = getelementptr %struct.sym_hcb, ptr %1, i32 0, i32 38, i32 %i.0389
  %call173 = tail call i32 @__vtobus(ptr noundef %560, ptr noundef %arrayidx) #9
  %561 = tail call i32 @llvm.bswap.i32(i32 %call173)
  %562 = ptrtoint ptr %targtbl to i32
  call void @__asan_load4_noabort(i32 %562)
  %563 = load ptr, ptr %targtbl, align 4
  %arrayidx175 = getelementptr i32, ptr %563, i32 %i.0389
  %564 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_store4_noabort(i32 %564)
  store i32 %561, ptr %arrayidx175, align 4
  %565 = ptrtoint ptr %bus_dmat to i32
  call void @__asan_load4_noabort(i32 %565)
  %566 = load ptr, ptr %bus_dmat, align 4
  %567 = ptrtoint ptr %badluntbl to i32
  call void @__asan_load4_noabort(i32 %567)
  %568 = load ptr, ptr %badluntbl, align 4
  %call178 = tail call i32 @__vtobus(ptr noundef %566, ptr noundef %568) #9
  %569 = tail call i32 @llvm.bswap.i32(i32 %call178)
  %570 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %570)
  store i32 %569, ptr %arrayidx, align 4
  %571 = ptrtoint ptr %bus_dmat to i32
  call void @__asan_load4_noabort(i32 %571)
  %572 = load ptr, ptr %bus_dmat, align 4
  %call183 = tail call i32 @__vtobus(ptr noundef %572, ptr noundef %badlun_sa) #9
  %573 = tail call i32 @llvm.bswap.i32(i32 %call183)
  %lun0_sa = getelementptr inbounds %struct.sym_tcbh, ptr %arrayidx, i32 0, i32 1
  %574 = ptrtoint ptr %lun0_sa to i32
  call void @__asan_store4_noabort(i32 %574)
  store i32 %573, ptr %lun0_sa, align 4
  %inc = add nuw nsw i32 %i.0389, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  %call187 = tail call fastcc i32 @sym_snooptest(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call187)
  %tobool188.not = icmp eq i32 %call187, 0
  br i1 %tobool188.not, label %for.end.cleanup_crit_edge, label %do.end192

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end192:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %call197 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef %inst_name.i) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end192, %for.end.cleanup_crit_edge, %if.end105.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %do.body59.cleanup_crit_edge, %if.end53.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end.cleanup_crit_edge ], [ -6, %if.end105.cleanup_crit_edge ], [ -6, %if.end53.cleanup_crit_edge ], [ -6, %if.end29.cleanup_crit_edge ], [ -6, %lor.lhs.false.cleanup_crit_edge ], [ -6, %if.end20.cleanup_crit_edge ], [ -6, %if.end11.cleanup_crit_edge ], [ -6, %if.end.cleanup_crit_edge ], [ -6, %do.end192 ], [ -6, %do.body59.cleanup_crit_edge ], [ -6, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sym_fw_bind_script(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sym_snooptest(ptr noundef %np) unnamed_addr #0 align 64 {
entry:
  %data.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i)
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 -1, ptr %data.i, align 4
  store volatile i32 -1, ptr %data.i, align 4
  %data.i.0.data.i.0.data.0.data.0.data.0..i = load volatile i32, ptr %data.i, align 4
  %ioaddr.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 42, i32 4
  %1 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !473
  tail call void @arm_heavy_mb() #9
  %3 = tail call i32 @llvm.bswap.i32(i32 %data.i.0.data.i.0.data.0.data.0.data.0..i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %3) #9, !srcloc !474
  %4 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %5, i32 12
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #9, !srcloc !469
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !470
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 %7, ptr %data.i, align 4
  %data.i.0.data.i.0.data.0.data.0.data.0.5.i = load volatile i32, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %data.i.0.data.i.0.data.0.data.0.data.0.5.i)
  %cmp.i = icmp eq i32 %data.i.0.data.i.0.data.0.data.0.data.0.5.i, -1
  br i1 %cmp.i, label %sym_regtest.exit.thread, label %sym_regtest.exit

sym_regtest.exit.thread:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %data.i.0.data.i.0.data.0.data.0.data.0.6.i = load volatile i32, ptr %data.i, align 4
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.255, i32 noundef %data.i.0.data.i.0.data.0.data.0.data.0.6.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i)
  br label %cleanup

sym_regtest.exit:                                 ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i)
  %rv_ctest4 = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 32
  %fwz_bas = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 56
  %scratch = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 84
  %hcb_ba = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 13
  %inst_name = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 42, i32 1
  br label %restart_test

restart_test:                                     ; preds = %do.end46, %sym_regtest.exit
  %10 = ptrtoint ptr %rv_ctest4 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %rv_ctest4, align 1
  %12 = and i8 %11, 8
  %13 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %12) #9, !srcloc !464
  %15 = ptrtoint ptr %fwz_bas to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fwz_bas, align 4
  %17 = ptrtoint ptr %scratch to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 16777216, ptr %scratch, align 4
  %18 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr4 = getelementptr i8, ptr %19, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !473
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 33554432) #9, !srcloc !474
  %20 = ptrtoint ptr %hcb_ba to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hcb_ba, align 4
  %22 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr7 = getelementptr i8, ptr %23, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !473
  tail call void @arm_heavy_mb() #9
  %24 = tail call i32 @llvm.bswap.i32(i32 %21) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %24) #9, !srcloc !474
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !493
  tail call void @arm_heavy_mb() #9
  %25 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr11 = getelementptr i8, ptr %26, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !473
  tail call void @arm_heavy_mb() #9
  %27 = tail call i32 @llvm.bswap.i32(i32 %16) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %27) #9, !srcloc !474
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0179, 1
  %exitcond.not = icmp eq i32 %inc, 10000000
  br i1 %exitcond.not, label %do.end29, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %restart_test
  %i.0179 = phi i32 [ 0, %restart_test ], [ %inc, %for.cond.for.body_crit_edge ]
  %28 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr17 = getelementptr i8, ptr %29, i32 20
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr17) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  %31 = and i8 %30, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool21.not = icmp eq i8 %31, 0
  br i1 %tobool21.not, label %for.cond, label %if.end31

do.end29:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.232) #12
  br label %cleanup

if.end31:                                         ; preds = %for.body
  %32 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr34 = getelementptr i8, ptr %33, i32 12
  %34 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr34) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  %conv36 = zext i8 %34 to i32
  %and37 = and i32 %conv36, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end31.if.end54_crit_edge, label %land.lhs.true

if.end31.if.end54_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

land.lhs.true:                                    ; preds = %if.end31
  %35 = ptrtoint ptr %rv_ctest4 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %rv_ctest4, align 1
  %37 = and i8 %36, 8
  %tobool42.not = icmp eq i8 %37, 0
  br i1 %tobool42.not, label %land.lhs.true.if.end54_crit_edge, label %do.end46

land.lhs.true.if.end54_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

do.end46:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.235, ptr noundef %inst_name) #12
  %38 = ptrtoint ptr %rv_ctest4 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %rv_ctest4, align 1
  %40 = and i8 %39, -9
  store i8 %40, ptr %rv_ctest4, align 1
  br label %restart_test

if.end54:                                         ; preds = %land.lhs.true.if.end54_crit_edge, %if.end31.if.end54_crit_edge
  %and55 = and i32 %conv36, 97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.end63, label %do.end60

do.end60:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.238, i32 noundef %conv36) #12
  br label %cleanup

if.end63:                                         ; preds = %if.end54
  %41 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr66 = getelementptr i8, ptr %42, i32 44
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr66) #9, !srcloc !469
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !470
  %45 = ptrtoint ptr %scratch to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %scratch, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  %48 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr71 = getelementptr i8, ptr %49, i32 52
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr71) #9, !srcloc !469
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !470
  %52 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr75 = getelementptr i8, ptr %53, i32 28
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr75) #9, !srcloc !469
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !470
  %snoopend = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 56, i32 1
  %56 = ptrtoint ptr %snoopend to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %snoopend, align 4
  %add = add i32 %57, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %add)
  %cmp78.not = icmp eq i32 %44, %add
  br i1 %cmp78.not, label %if.end96, label %do.end83

do.end83:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  %call85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.241) #12
  %58 = ptrtoint ptr %fwz_bas to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %fwz_bas, align 4
  %60 = ptrtoint ptr %snoopend to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %snoopend, align 4
  %add94 = add i32 %61, 8
  %call95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.244, i32 noundef %59, i32 noundef %44, i32 noundef %add94) #12
  br label %cleanup

if.end96:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %50)
  %cmp97.not = icmp eq i32 %50, 16777216
  br i1 %cmp97.not, label %if.end96.if.end105_crit_edge, label %do.end102

if.end96.if.end105_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end105

do.end102:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #11
  %call104 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.247, i32 noundef 1, i32 noundef %51) #12
  br label %if.end105

if.end105:                                        ; preds = %do.end102, %if.end96.if.end105_crit_edge
  %err.0 = phi i32 [ 1, %do.end102 ], [ 0, %if.end96.if.end105_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %46)
  %cmp106.not = icmp eq i32 %46, 33554432
  br i1 %cmp106.not, label %if.end105.if.end115_crit_edge, label %do.end111

if.end105.if.end115_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end115

do.end111:                                        ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #11
  %call113 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.250, i32 noundef 2, i32 noundef %47) #12
  %or114 = or i32 %err.0, 2
  br label %if.end115

if.end115:                                        ; preds = %do.end111, %if.end105.if.end115_crit_edge
  %err.1 = phi i32 [ %or114, %do.end111 ], [ %err.0, %if.end105.if.end115_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %54)
  %cmp116.not = icmp eq i32 %54, 33554432
  br i1 %cmp116.not, label %if.end115.cleanup_crit_edge, label %do.end121

if.end115.cleanup_crit_edge:                      ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end121:                                        ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #11
  %call123 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.253, i32 noundef 2, i32 noundef %55) #12
  %or124 = or i32 %err.1, 4
  br label %cleanup

cleanup:                                          ; preds = %do.end121, %if.end115.cleanup_crit_edge, %do.end83, %do.end60, %do.end29, %sym_regtest.exit.thread
  %retval.0 = phi i32 [ 32, %do.end29 ], [ 128, %do.end60 ], [ 64, %do.end83 ], [ %or124, %do.end121 ], [ %err.1, %if.end115.cleanup_crit_edge ], [ 16, %sym_regtest.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sym_hcb_free(ptr noundef %np) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %scriptz0 = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 47
  %0 = ptrtoint ptr %scriptz0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scriptz0, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %bus_dmat = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 41
  %2 = ptrtoint ptr %bus_dmat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus_dmat, align 4
  %scriptz_sz = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 53
  %4 = ptrtoint ptr %scriptz_sz to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %scriptz_sz, align 4
  %conv = zext i16 %5 to i32
  tail call void @__sym_mfree_dma(ptr noundef %3, ptr noundef nonnull %1, i32 noundef %conv, ptr noundef nonnull @.str.55) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %scriptb0 = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 46
  %6 = ptrtoint ptr %scriptb0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %scriptb0, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %if.end.if.end7_crit_edge, label %if.then3

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %bus_dmat4 = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 41
  %8 = ptrtoint ptr %bus_dmat4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus_dmat4, align 4
  %scriptb_sz = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 52
  %10 = ptrtoint ptr %scriptb_sz to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %scriptb_sz, align 2
  %conv6 = zext i16 %11 to i32
  tail call void @__sym_mfree_dma(ptr noundef %9, ptr noundef nonnull %7, i32 noundef %conv6, ptr noundef nonnull @.str.54) #9
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.end.if.end7_crit_edge
  %scripta0 = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 45
  %12 = ptrtoint ptr %scripta0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %scripta0, align 4
  %tobool8.not = icmp eq ptr %13, null
  br i1 %tobool8.not, label %if.end7.if.end13_crit_edge, label %if.then9

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %bus_dmat10 = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 41
  %14 = ptrtoint ptr %bus_dmat10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus_dmat10, align 4
  %scripta_sz = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 51
  %16 = ptrtoint ptr %scripta_sz to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %scripta_sz, align 4
  %conv12 = zext i16 %17 to i32
  tail call void @__sym_mfree_dma(ptr noundef %15, ptr noundef nonnull %13, i32 noundef %conv12, ptr noundef nonnull @.str.53) #9
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.end7.if.end13_crit_edge
  %squeue = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 74
  %18 = ptrtoint ptr %squeue to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %squeue, align 4
  %tobool14.not = icmp eq ptr %19, null
  br i1 %tobool14.not, label %if.end13.if.end18_crit_edge, label %if.then15

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %bus_dmat16 = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 41
  %20 = ptrtoint ptr %bus_dmat16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus_dmat16, align 4
  tail call void @__sym_mfree_dma(ptr noundef %21, ptr noundef nonnull %19, i32 noundef 3600, ptr noundef nonnull @.str.50) #9
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end13.if.end18_crit_edge
  %dqueue = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 79
  %22 = ptrtoint ptr %dqueue to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dqueue, align 4
  %tobool19.not = icmp eq ptr %23, null
  br i1 %tobool19.not, label %if.end18.if.end23_crit_edge, label %if.then20

if.end18.if.end23_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %bus_dmat21 = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 41
  %24 = ptrtoint ptr %bus_dmat21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus_dmat21, align 4
  tail call void @__sym_mfree_dma(ptr noundef %25, ptr noundef nonnull %23, i32 noundef 3600, ptr noundef nonnull @.str.51) #9
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end18.if.end23_crit_edge
  %actccbs = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 77
  %26 = ptrtoint ptr %actccbs to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %actccbs, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool24.not = icmp eq i16 %27, 0
  br i1 %tobool24.not, label %if.end23.if.end28_crit_edge, label %while.cond.preheader

if.end23.if.end28_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

while.cond.preheader:                             ; preds = %if.end23
  %free_ccbq = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 89
  %28 = ptrtoint ptr %free_ccbq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %free_ccbq, align 4
  %cmp.not.i89 = icmp eq ptr %29, %free_ccbq
  br i1 %cmp.not.i89, label %while.cond.preheader.if.end28_crit_edge, label %sym_remque_head.exit.lr.ph

while.cond.preheader.if.end28_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

sym_remque_head.exit.lr.ph:                       ; preds = %while.cond.preheader
  %bus_dmat27 = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 41
  br label %sym_remque_head.exit

sym_remque_head.exit:                             ; preds = %while.body.sym_remque_head.exit_crit_edge, %sym_remque_head.exit.lr.ph
  %30 = phi ptr [ %29, %sym_remque_head.exit.lr.ph ], [ %38, %while.body.sym_remque_head.exit_crit_edge ]
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %blink1.i.i = getelementptr inbounds %struct.sym_quehead, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %blink1.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %free_ccbq, ptr %blink1.i.i, align 4
  %34 = ptrtoint ptr %free_ccbq to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %32, ptr %free_ccbq, align 4
  %cmp.not = icmp eq ptr %30, null
  br i1 %cmp.not, label %sym_remque_head.exit.if.end28_crit_edge, label %while.body

sym_remque_head.exit.if.end28_crit_edge:          ; preds = %sym_remque_head.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

while.body:                                       ; preds = %sym_remque_head.exit
  %add.ptr = getelementptr i8, ptr %30, i32 -972
  %35 = ptrtoint ptr %bus_dmat27 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bus_dmat27, align 4
  tail call void @__sym_mfree_dma(ptr noundef %36, ptr noundef %add.ptr, i32 noundef 1000, ptr noundef nonnull @.str.60) #9
  %37 = ptrtoint ptr %free_ccbq to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %free_ccbq, align 4
  %cmp.not.i = icmp eq ptr %38, %free_ccbq
  br i1 %cmp.not.i, label %while.body.if.end28_crit_edge, label %while.body.sym_remque_head.exit_crit_edge

while.body.sym_remque_head.exit_crit_edge:        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sym_remque_head.exit

while.body.if.end28_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.end28:                                         ; preds = %while.body.if.end28_crit_edge, %sym_remque_head.exit.if.end28_crit_edge, %while.cond.preheader.if.end28_crit_edge, %if.end23.if.end28_crit_edge
  %ccbh = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 88
  %39 = ptrtoint ptr %ccbh to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ccbh, align 4
  tail call void @kfree(ptr noundef %40) #9
  %badluntbl = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 11
  %41 = ptrtoint ptr %badluntbl to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %badluntbl, align 4
  %tobool29.not = icmp eq ptr %42, null
  br i1 %tobool29.not, label %if.end28.if.end33_crit_edge, label %if.then30

if.end28.if.end33_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %bus_dmat31 = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 41
  %43 = ptrtoint ptr %bus_dmat31 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bus_dmat31, align 4
  tail call void @__sym_mfree_dma(ptr noundef %44, ptr noundef nonnull %42, i32 noundef 256, ptr noundef nonnull @.str.56) #9
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %if.end28.if.end33_crit_edge
  %bus_dmat39 = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 41
  br label %for.body

for.body:                                         ; preds = %if.end41.for.body_crit_edge, %if.end33
  %target.090 = phi i32 [ 0, %if.end33 ], [ %inc, %if.end41.for.body_crit_edge ]
  %luntbl = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %target.090, i32 1
  %45 = ptrtoint ptr %luntbl to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %luntbl, align 4
  %tobool37.not = icmp eq ptr %46, null
  br i1 %tobool37.not, label %for.body.if.end41_crit_edge, label %if.then38

for.body.if.end41_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then38:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %bus_dmat39 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bus_dmat39, align 4
  tail call void @__sym_mfree_dma(ptr noundef %48, ptr noundef nonnull %46, i32 noundef 256, ptr noundef nonnull @.str.43) #9
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %for.body.if.end41_crit_edge
  %lunmp = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %target.090, i32 4
  %49 = ptrtoint ptr %lunmp to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %lunmp, align 4
  tail call void @kfree(ptr noundef %50) #9
  %inc = add nuw nsw i32 %target.090, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %if.end41.for.body_crit_edge

if.end41.for.body_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end41
  %targtbl = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 39
  %51 = ptrtoint ptr %targtbl to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %targtbl, align 4
  %tobool42.not = icmp eq ptr %52, null
  br i1 %tobool42.not, label %for.end.if.end46_crit_edge, label %if.then43

for.end.if.end46_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.then43:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %bus_dmat39 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bus_dmat39, align 4
  tail call void @__sym_mfree_dma(ptr noundef %54, ptr noundef nonnull %52, i32 noundef 256, ptr noundef nonnull @.str.52) #9
  br label %if.end46

if.end46:                                         ; preds = %if.then43, %for.end.if.end46_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sym_log_bus_error(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @sym_xpt_done(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sym_compute_residual(ptr nocapture noundef readonly %np, ptr noundef %cp) unnamed_addr #6 align 64 {
entry:
  %dp_ofs = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dp_ofs) #9
  %0 = ptrtoint ptr %dp_ofs to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %dp_ofs, align 4
  %xerr_status = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 9
  %1 = ptrtoint ptr %xerr_status to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %xerr_status, align 1
  %conv = zext i8 %2 to i32
  %and = and i32 %conv, 25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end18_crit_edge, label %if.then

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then:                                          ; preds = %entry
  %and3 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.then.if.end_crit_edge, label %if.then5

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %extra_bytes = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 10
  %3 = ptrtoint ptr %extra_bytes to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %extra_bytes, align 4
  %sub = sub i32 0, %4
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then.if.end_crit_edge
  %resid.0 = phi i32 [ %sub, %if.then5 ], [ 0, %if.then.if.end_crit_edge ]
  %5 = lshr i8 %2, 3
  %.lobit = and i8 %5, 1
  %6 = zext i8 %.lobit to i32
  %7 = shl i8 %2, 3
  %sext = ashr i8 %7, 7
  %dec = sext i8 %sext to i32
  %spec.select = add nsw i32 %dec, %6
  %spec.select81 = add i32 %spec.select, %resid.0
  br label %if.end18

if.end18:                                         ; preds = %if.end, %entry.if.end18_crit_edge
  %resid.2 = phi i32 [ 0, %entry.if.end18_crit_edge ], [ %spec.select81, %if.end ]
  %lastp = getelementptr inbounds %struct.sym_ccbh, ptr %cp, i32 0, i32 2
  %8 = ptrtoint ptr %lastp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lastp, align 4
  %goalp = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 24
  %10 = ptrtoint ptr %goalp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %goalp, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp = icmp eq i32 %9, %11
  br i1 %cmp, label %if.end18.cleanup_crit_edge, label %if.end21

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end21:                                         ; preds = %if.end18
  %startp = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 23
  %12 = ptrtoint ptr %startp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %startp, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %9)
  %cmp25 = icmp eq i32 %13, %9
  br i1 %cmp25, label %if.end21.if.then32_crit_edge, label %lor.lhs.false

if.end21.if.then32_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then32

lor.lhs.false:                                    ; preds = %if.end21
  %14 = tail call i32 @llvm.bswap.i32(i32 %9)
  %call = call fastcc i32 @sym_evaluate_dp(ptr noundef %np, ptr noundef %cp, i32 noundef %14, ptr noundef nonnull %dp_ofs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp30 = icmp slt i32 %call, 0
  br i1 %cmp30, label %lor.lhs.false.if.then32_crit_edge, label %if.end35

lor.lhs.false.if.then32_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then32

if.then32:                                        ; preds = %lor.lhs.false.if.then32_crit_edge, %if.end21.if.then32_crit_edge
  %data_len = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 4
  %15 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %data_len, align 4
  %odd_byte_adjustment = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 7
  %17 = ptrtoint ptr %odd_byte_adjustment to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %odd_byte_adjustment, align 1
  %conv33 = zext i8 %18 to i32
  %sub34 = sub i32 %16, %conv33
  br label %cleanup

if.end35:                                         ; preds = %lor.lhs.false
  %arrayidx = getelementptr %struct.sym_ccbh, ptr %cp, i32 0, i32 3, i32 3
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx, align 1
  %21 = and i8 %20, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool40.not = icmp eq i8 %21, 0
  br i1 %tobool40.not, label %if.end43, label %if.then41

if.then41:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %dp_ofs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dp_ofs, align 4
  %sub42 = sub i32 0, %23
  br label %cleanup

if.end43:                                         ; preds = %if.end35
  %ext_ofs = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 26
  %24 = ptrtoint ptr %ext_ofs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ext_ofs, align 4
  %sub44 = sub i32 0, %25
  %ext_sg = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 25
  %26 = ptrtoint ptr %ext_sg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ext_sg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %27)
  %cmp4582 = icmp slt i32 %27, 96
  br i1 %cmp4582, label %if.end43.for.body_crit_edge, label %if.end43.for.end_crit_edge

if.end43.for.end_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end43.for.body_crit_edge:                      ; preds = %if.end43
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end43.for.body_crit_edge
  %resid.384 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ %sub44, %if.end43.for.body_crit_edge ]
  %dp_sg.083 = phi i32 [ %inc50, %for.body.for.body_crit_edge ], [ %27, %if.end43.for.body_crit_edge ]
  %arrayidx48 = getelementptr %struct.sym_dsb, ptr %cp, i32 0, i32 9, i32 %dp_sg.083
  %28 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx48, align 4
  %30 = and i32 %29, -256
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %add = add i32 %31, %resid.384
  %inc50 = add i32 %dp_sg.083, 1
  %exitcond.not = icmp eq i32 %inc50, 96
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end43.for.end_crit_edge
  %resid.3.lcssa = phi i32 [ %sub44, %if.end43.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  %odd_byte_adjustment51 = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 7
  %32 = ptrtoint ptr %odd_byte_adjustment51 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %odd_byte_adjustment51, align 1
  %conv52 = zext i8 %33 to i32
  %sub53 = sub i32 %resid.3.lcssa, %conv52
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then41, %if.then32, %if.end18.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub34, %if.then32 ], [ %sub42, %if.then41 ], [ %sub53, %for.end ], [ %resid.2, %if.end18.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dp_ofs) #9
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sym_evaluate_dp(ptr nocapture noundef readonly %np, ptr noundef %cp, i32 noundef %scr, ptr nocapture noundef %ofs) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ofs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ofs, align 4
  %pm0_data = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 54, i32 22
  %2 = ptrtoint ptr %pm0_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pm0_data, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %scr)
  %cmp = icmp eq i32 %3, %scr
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pm0 = getelementptr inbounds %struct.sym_dsb, ptr %cp, i32 0, i32 1
  br label %if.end6

if.else:                                          ; preds = %entry
  %pm1_data = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 54, i32 23
  %4 = ptrtoint ptr %pm1_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pm1_data, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %scr)
  %cmp2 = icmp eq i32 %5, %scr
  %pm1 = getelementptr inbounds %struct.sym_dsb, ptr %cp, i32 0, i32 2
  br i1 %cmp2, label %if.else.if.end6_crit_edge, label %if.else.if.end8_crit_edge

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.end6:                                          ; preds = %if.else.if.end6_crit_edge, %if.then
  %pm.0 = phi ptr [ %pm0, %if.then ], [ %pm1, %if.else.if.end6_crit_edge ]
  %tobool.not = icmp eq ptr %pm.0, null
  br i1 %tobool.not, label %if.end6.if.end8_crit_edge, label %if.then7

if.end6.if.end8_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then7:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %ret = getelementptr inbounds %struct.sym_pmc, ptr %pm.0, i32 0, i32 1
  %6 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ret, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %9 = ptrtoint ptr %pm.0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pm.0, align 4
  %11 = and i32 %10, -256
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %sub = sub i32 %1, %12
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end6.if.end8_crit_edge, %if.else.if.end8_crit_edge
  %dp_scr.0 = phi i32 [ %8, %if.then7 ], [ %scr, %if.end6.if.end8_crit_edge ], [ %scr, %if.else.if.end8_crit_edge ]
  %dp_ofs.0 = phi i32 [ %sub, %if.then7 ], [ %1, %if.end6.if.end8_crit_edge ], [ %1, %if.else.if.end8_crit_edge ]
  %arrayidx = getelementptr %struct.sym_ccbh, ptr %cp, i32 0, i32 3, i32 3
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx, align 1
  %15 = and i8 %14, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool11.not = icmp eq i8 %15, 0
  br i1 %tobool11.not, label %if.end13, label %if.end8.cleanup.sink.split_crit_edge

if.end8.cleanup.sink.split_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end13:                                         ; preds = %if.end8
  %goalp = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 24
  %16 = ptrtoint ptr %goalp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %goalp, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  call void @__sanitizer_cov_trace_cmp4(i32 %dp_scr.0, i32 %18)
  %cmp14.not = icmp eq i32 %dp_scr.0, %18
  %sub17 = sub i32 -8, %dp_scr.0
  %sub18 = add i32 %sub17, %18
  %div.neg = sdiv i32 %sub18, -8
  %sub19 = add nsw i32 %div.neg, 96
  %dp_sg.0 = select i1 %cmp14.not, i32 96, i32 %sub19
  %segments = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 5
  %19 = ptrtoint ptr %segments to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %segments, align 4
  %sub21 = sub i32 96, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dp_ofs.0)
  %cmp22 = icmp slt i32 %dp_ofs.0, 0
  br i1 %cmp22, label %while.cond.preheader, label %if.else35

while.cond.preheader:                             ; preds = %if.end13
  %smin = call i32 @llvm.smin.i32(i32 %dp_sg.0, i32 %sub21)
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %while.cond.preheader
  %dp_ofs.1 = phi i32 [ %add, %while.body.while.cond_crit_edge ], [ %dp_ofs.0, %while.cond.preheader ]
  %dp_sg.1 = phi i32 [ %dec, %while.body.while.cond_crit_edge ], [ %dp_sg.0, %while.cond.preheader ]
  call void @__sanitizer_cov_trace_cmp4(i32 %dp_sg.1, i32 %sub21)
  %cmp25 = icmp sgt i32 %dp_sg.1, %sub21
  br i1 %cmp25, label %while.body, label %while.cond.if.end56_crit_edge

while.cond.if.end56_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

while.body:                                       ; preds = %while.cond
  %dec = add nsw i32 %dp_sg.1, -1
  %arrayidx28 = getelementptr %struct.sym_dsb, ptr %cp, i32 0, i32 9, i32 %dec
  %21 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx28, align 4
  %23 = and i32 %22, -256
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %add = add i32 %24, %dp_ofs.1
  %cmp31 = icmp sgt i32 %add, 0
  br i1 %cmp31, label %while.body.if.end56_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

while.body.if.end56_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

if.else35:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dp_ofs.0)
  %cmp36.not = icmp eq i32 %dp_ofs.0, 0
  br i1 %cmp36.not, label %if.else35.if.end56_crit_edge, label %while.cond39.preheader

if.else35.if.end56_crit_edge:                     ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

while.cond39.preheader:                           ; preds = %if.else35
  %smax = call i32 @llvm.smax.i32(i32 %dp_sg.0, i32 96)
  br label %while.cond39

while.cond39:                                     ; preds = %while.body42.while.cond39_crit_edge, %while.cond39.preheader
  %dp_ofs.2 = phi i32 [ %sub48, %while.body42.while.cond39_crit_edge ], [ %dp_ofs.0, %while.cond39.preheader ]
  %dp_sg.3 = phi i32 [ %inc49, %while.body42.while.cond39_crit_edge ], [ %dp_sg.0, %while.cond39.preheader ]
  call void @__sanitizer_cov_trace_cmp4(i32 %dp_sg.3, i32 %smax)
  %exitcond.not = icmp eq i32 %dp_sg.3, %smax
  br i1 %exitcond.not, label %while.cond39.if.end56_crit_edge, label %while.body42

while.cond39.if.end56_crit_edge:                  ; preds = %while.cond39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

while.body42:                                     ; preds = %while.cond39
  %arrayidx45 = getelementptr %struct.sym_dsb, ptr %cp, i32 0, i32 9, i32 %dp_sg.3
  %25 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx45, align 4
  %27 = and i32 %26, -256
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %sub48 = sub i32 %dp_ofs.2, %28
  %inc49 = add i32 %dp_sg.3, 1
  %cmp50 = icmp slt i32 %sub48, 1
  br i1 %cmp50, label %while.body42.if.end56_crit_edge, label %while.body42.while.cond39_crit_edge

while.body42.while.cond39_crit_edge:              ; preds = %while.body42
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond39

while.body42.if.end56_crit_edge:                  ; preds = %while.body42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

if.end56:                                         ; preds = %while.body42.if.end56_crit_edge, %while.cond39.if.end56_crit_edge, %if.else35.if.end56_crit_edge, %while.body.if.end56_crit_edge, %while.cond.if.end56_crit_edge
  %dp_ofs.3 = phi i32 [ 0, %if.else35.if.end56_crit_edge ], [ %dp_ofs.1, %while.body.if.end56_crit_edge ], [ %dp_ofs.1, %while.cond.if.end56_crit_edge ], [ %dp_ofs.2, %while.cond39.if.end56_crit_edge ], [ %sub48, %while.body42.if.end56_crit_edge ]
  %dp_sg.4 = phi i32 [ %dp_sg.0, %if.else35.if.end56_crit_edge ], [ %smin, %while.cond.if.end56_crit_edge ], [ %dp_sg.1, %while.body.if.end56_crit_edge ], [ %smax, %while.cond39.if.end56_crit_edge ], [ %inc49, %while.body42.if.end56_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %dp_sg.4, i32 %sub21)
  %cmp57 = icmp slt i32 %dp_sg.4, %sub21
  br i1 %cmp57, label %if.end56.cleanup_crit_edge, label %lor.lhs.false

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end56
  call void @__sanitizer_cov_trace_cmp4(i32 %dp_sg.4, i32 %sub21)
  %cmp59 = icmp eq i32 %dp_sg.4, %sub21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dp_ofs.3)
  %cmp61 = icmp slt i32 %dp_ofs.3, 0
  %or.cond = select i1 %cmp59, i1 %cmp61, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %dp_sg.4)
  %cmp65 = icmp sgt i32 %dp_sg.4, 96
  %or.cond146 = or i1 %cmp65, %or.cond
  br i1 %or.cond146, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false67

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false67:                                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %dp_sg.4)
  %cmp68 = icmp eq i32 %dp_sg.4, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dp_ofs.3)
  %cmp71 = icmp sgt i32 %dp_ofs.3, 0
  %or.cond147 = select i1 %cmp68, i1 %cmp71, i1 false
  br i1 %or.cond147, label %lor.lhs.false67.cleanup_crit_edge, label %if.end75

lor.lhs.false67.cleanup_crit_edge:                ; preds = %lor.lhs.false67
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end75:                                         ; preds = %lor.lhs.false67
  %ext_sg = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 25
  %29 = ptrtoint ptr %ext_sg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ext_sg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %dp_sg.4, i32 %30)
  %cmp76 = icmp sgt i32 %dp_sg.4, %30
  br i1 %cmp76, label %if.end75.if.then85_crit_edge, label %lor.lhs.false78

if.end75.if.then85_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then85

lor.lhs.false78:                                  ; preds = %if.end75
  call void @__sanitizer_cov_trace_cmp4(i32 %dp_sg.4, i32 %30)
  %cmp80 = icmp eq i32 %dp_sg.4, %30
  br i1 %cmp80, label %land.lhs.true82, label %lor.lhs.false78.cleanup.sink.split_crit_edge

lor.lhs.false78.cleanup.sink.split_crit_edge:     ; preds = %lor.lhs.false78
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

land.lhs.true82:                                  ; preds = %lor.lhs.false78
  %ext_ofs = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 26
  %31 = ptrtoint ptr %ext_ofs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ext_ofs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %dp_ofs.3, i32 %32)
  %cmp83 = icmp sgt i32 %dp_ofs.3, %32
  br i1 %cmp83, label %land.lhs.true82.if.then85_crit_edge, label %land.lhs.true82.cleanup.sink.split_crit_edge

land.lhs.true82.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

land.lhs.true82.if.then85_crit_edge:              ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then85

if.then85:                                        ; preds = %land.lhs.true82.if.then85_crit_edge, %if.end75.if.then85_crit_edge
  %33 = ptrtoint ptr %ext_sg to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %dp_sg.4, ptr %ext_sg, align 4
  %ext_ofs87 = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 26
  %34 = ptrtoint ptr %ext_ofs87 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %dp_ofs.3, ptr %ext_ofs87, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then85, %land.lhs.true82.cleanup.sink.split_crit_edge, %lor.lhs.false78.cleanup.sink.split_crit_edge, %if.end8.cleanup.sink.split_crit_edge
  %dp_ofs.3.sink = phi i32 [ %dp_ofs.0, %if.end8.cleanup.sink.split_crit_edge ], [ %dp_ofs.3, %if.then85 ], [ %dp_ofs.3, %land.lhs.true82.cleanup.sink.split_crit_edge ], [ %dp_ofs.3, %lor.lhs.false78.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 0, %if.end8.cleanup.sink.split_crit_edge ], [ %dp_sg.4, %if.then85 ], [ %dp_sg.4, %land.lhs.true82.cleanup.sink.split_crit_edge ], [ %dp_sg.4, %lor.lhs.false78.cleanup.sink.split_crit_edge ]
  %35 = ptrtoint ptr %ofs to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %dp_ofs.3.sink, ptr %ofs, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.lhs.false67.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end56.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %lor.lhs.false67.cleanup_crit_edge ], [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %if.end56.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__printk_ratelimit(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sym_recover_scsi_int(ptr noundef %np, i8 noundef zeroext %hsts) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 42, i32 4
  %0 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 44
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !469
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !470
  %4 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 16
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #9, !srcloc !469
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !470
  %shr.i = lshr i32 %7, 10
  %and.i = and i32 %shr.i, 255
  %ccbh.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 88
  %8 = ptrtoint ptr %ccbh.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ccbh.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %9, i32 %and.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %cp.05.i = load ptr, ptr %arrayidx.i, align 4
  %tobool.not6.i = icmp eq ptr %cp.05.i, null
  br i1 %tobool.not6.i, label %entry.sym_ccb_from_dsa.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.sym_ccb_from_dsa.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sym_ccb_from_dsa.exit

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %cp.07.i = phi ptr [ %cp.0.i, %if.end.i.while.body.i_crit_edge ], [ %cp.05.i, %entry.while.body.i_crit_edge ]
  %ccb_ba.i = getelementptr inbounds %struct.sym_ccb, ptr %cp.07.i, i32 0, i32 17
  %11 = ptrtoint ptr %ccb_ba.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ccb_ba.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %7)
  %cmp.i = icmp eq i32 %12, %7
  br i1 %cmp.i, label %while.body.i.sym_ccb_from_dsa.exit_crit_edge, label %if.end.i

while.body.i.sym_ccb_from_dsa.exit_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sym_ccb_from_dsa.exit

if.end.i:                                         ; preds = %while.body.i
  %link_ccbh.i = getelementptr inbounds %struct.sym_ccb, ptr %cp.07.i, i32 0, i32 21
  %13 = ptrtoint ptr %link_ccbh.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %cp.0.i = load ptr, ptr %link_ccbh.i, align 4
  %tobool.not.i = icmp eq ptr %cp.0.i, null
  br i1 %tobool.not.i, label %if.end.i.sym_ccb_from_dsa.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.end.i.sym_ccb_from_dsa.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sym_ccb_from_dsa.exit

sym_ccb_from_dsa.exit:                            ; preds = %if.end.i.sym_ccb_from_dsa.exit_crit_edge, %while.body.i.sym_ccb_from_dsa.exit_crit_edge, %entry.sym_ccb_from_dsa.exit_crit_edge
  %cp.0.lcssa.i = phi ptr [ null, %entry.sym_ccb_from_dsa.exit_crit_edge ], [ null, %if.end.i.sym_ccb_from_dsa.exit_crit_edge ], [ %cp.07.i, %while.body.i.sym_ccb_from_dsa.exit_crit_edge ]
  %fwa_bas = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 54
  %getjob_begin = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 54, i32 1
  %14 = ptrtoint ptr %getjob_begin to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %getjob_begin, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %15)
  %cmp = icmp ugt i32 %3, %15
  br i1 %cmp, label %land.lhs.true, label %sym_ccb_from_dsa.exit.land.lhs.true8_crit_edge

sym_ccb_from_dsa.exit.land.lhs.true8_crit_edge:   ; preds = %sym_ccb_from_dsa.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true8

land.lhs.true:                                    ; preds = %sym_ccb_from_dsa.exit
  %getjob_end = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 54, i32 2
  %16 = ptrtoint ptr %getjob_end to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %getjob_end, align 4
  %add = add i32 %17, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %add)
  %cmp7 = icmp ult i32 %3, %add
  br i1 %cmp7, label %land.lhs.true.reset_all_crit_edge, label %land.lhs.true.land.lhs.true8_crit_edge

land.lhs.true.land.lhs.true8_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true8

land.lhs.true.reset_all_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %reset_all

land.lhs.true8:                                   ; preds = %land.lhs.true.land.lhs.true8_crit_edge, %sym_ccb_from_dsa.exit.land.lhs.true8_crit_edge
  %ungetjob = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 54, i32 13
  %18 = ptrtoint ptr %ungetjob to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ungetjob, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %19)
  %cmp10 = icmp ugt i32 %3, %19
  br i1 %cmp10, label %land.lhs.true11, label %land.lhs.true8.land.lhs.true15_crit_edge

land.lhs.true8.land.lhs.true15_crit_edge:         ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true15

land.lhs.true11:                                  ; preds = %land.lhs.true8
  %reselect = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 54, i32 14
  %20 = ptrtoint ptr %reselect to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %reselect, align 4
  %add13 = add i32 %21, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %add13)
  %cmp14 = icmp ult i32 %3, %add13
  br i1 %cmp14, label %land.lhs.true11.reset_all_crit_edge, label %land.lhs.true11.land.lhs.true15_crit_edge

land.lhs.true11.land.lhs.true15_crit_edge:        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true15

land.lhs.true11.reset_all_crit_edge:              ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #11
  br label %reset_all

land.lhs.true15:                                  ; preds = %land.lhs.true11.land.lhs.true15_crit_edge, %land.lhs.true8.land.lhs.true15_crit_edge
  %sel_for_abort = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 55, i32 1
  %22 = ptrtoint ptr %sel_for_abort to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sel_for_abort, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %23)
  %cmp16 = icmp ugt i32 %3, %23
  br i1 %cmp16, label %land.lhs.true17, label %land.lhs.true15.land.lhs.true21_crit_edge

land.lhs.true15.land.lhs.true21_crit_edge:        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true21

land.lhs.true17:                                  ; preds = %land.lhs.true15
  %sel_for_abort_1 = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 55, i32 2
  %24 = ptrtoint ptr %sel_for_abort_1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sel_for_abort_1, align 4
  %add19 = add i32 %25, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %add19)
  %cmp20 = icmp ult i32 %3, %add19
  br i1 %cmp20, label %land.lhs.true17.reset_all_crit_edge, label %land.lhs.true17.land.lhs.true21_crit_edge

land.lhs.true17.land.lhs.true21_crit_edge:        ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true21

land.lhs.true17.reset_all_crit_edge:              ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #11
  br label %reset_all

land.lhs.true21:                                  ; preds = %land.lhs.true17.land.lhs.true21_crit_edge, %land.lhs.true15.land.lhs.true21_crit_edge
  %done = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 54, i32 10
  %26 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %done, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %27)
  %cmp23 = icmp ugt i32 %3, %27
  br i1 %cmp23, label %land.lhs.true24, label %land.lhs.true21.if.then_crit_edge

land.lhs.true21.if.then_crit_edge:                ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

land.lhs.true24:                                  ; preds = %land.lhs.true21
  %done_end = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 54, i32 11
  %28 = ptrtoint ptr %done_end to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %done_end, align 4
  %add26 = add i32 %29, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %add26)
  %cmp27 = icmp ult i32 %3, %add26
  br i1 %cmp27, label %land.lhs.true24.reset_all_crit_edge, label %land.lhs.true24.if.then_crit_edge

land.lhs.true24.if.then_crit_edge:                ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

land.lhs.true24.reset_all_crit_edge:              ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #11
  br label %reset_all

if.then:                                          ; preds = %land.lhs.true24.if.then_crit_edge, %land.lhs.true21.if.then_crit_edge
  %rv_ctest3 = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 31
  %30 = ptrtoint ptr %rv_ctest3 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %rv_ctest3, align 4
  %32 = or i8 %31, 4
  %33 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ioaddr, align 4
  %add.ptr31 = getelementptr i8, ptr %34, i32 27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr31, i8 %32) #9, !srcloc !464
  %35 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ioaddr, align 4
  %add.ptr34 = getelementptr i8, ptr %36, i32 79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr34, i8 -126) #9, !srcloc !464
  %tobool.not = icmp eq ptr %cp.0.lcssa.i, null
  br i1 %tobool.not, label %if.else, label %if.then35

if.then35:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.sym_ccbh, ptr %cp.0.lcssa.i, i32 0, i32 3, i32 1
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %hsts, ptr %arrayidx, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !494
  tail call void @arm_heavy_mb() #9
  %complete_error = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 54, i32 9
  %38 = ptrtoint ptr %complete_error to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %complete_error, align 4
  %40 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ioaddr, align 4
  %add.ptr40 = getelementptr i8, ptr %41, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !473
  tail call void @arm_heavy_mb() #9
  %42 = tail call i32 @llvm.bswap.i32(i32 %39) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40, i32 %42) #9, !srcloc !474
  br label %cleanup

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ioaddr, align 4
  %add.ptr45 = getelementptr i8, ptr %44, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !473
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 -256) #9, !srcloc !474
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !495
  tail call void @arm_heavy_mb() #9
  %45 = ptrtoint ptr %fwa_bas to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %fwa_bas, align 4
  %47 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ioaddr, align 4
  %add.ptr53 = getelementptr i8, ptr %48, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !473
  tail call void @arm_heavy_mb() #9
  %49 = tail call i32 @llvm.bswap.i32(i32 %46) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53, i32 %49) #9, !srcloc !474
  br label %cleanup

reset_all:                                        ; preds = %land.lhs.true24.reset_all_crit_edge, %land.lhs.true17.reset_all_crit_edge, %land.lhs.true11.reset_all_crit_edge, %land.lhs.true.reset_all_crit_edge
  %call.i = tail call i32 @sym_reset_scsi_bus(ptr noundef %np, i32 noundef 1) #9
  br label %cleanup

cleanup:                                          ; preds = %reset_all, %if.else, %if.then35
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sym_complete_error(ptr noundef %np, ptr noundef %cp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cp, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %cmd1 = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 1
  %0 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd1, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sym_debug_flags to i32))
  %4 = load i32, ptr @sym_debug_flags, align 4
  %and = and i32 %4, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end.if.end16_crit_edge, label %do.end

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %sdev_gendev = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 55
  %arrayidx = getelementptr %struct.sym_ccbh, ptr %cp, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %6 to i32
  %arrayidx9 = getelementptr %struct.sym_ccbh, ptr %cp, i32 0, i32 3, i32 2
  %7 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx9, align 2
  %conv10 = zext i8 %8 to i32
  %arrayidx14 = getelementptr %struct.sym_ccbh, ptr %cp, i32 0, i32 3, i32 3
  %9 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %10 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %sdev_gendev, ptr noundef nonnull @.str.161, ptr noundef nonnull %cp, i32 noundef %conv, i32 noundef %conv10, i32 noundef %conv15) #12
  br label %if.end16

if.end16:                                         ; preds = %do.end, %if.end.if.end16_crit_edge
  %xerr_status = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 9
  %11 = ptrtoint ptr %xerr_status to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %xerr_status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool17.not = icmp eq i8 %12, 0
  br i1 %tobool17.not, label %if.end16.if.end36_crit_edge, label %if.then18

if.end16.if.end36_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then18:                                        ; preds = %if.end16
  %verbose = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 87
  %13 = ptrtoint ptr %verbose to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %verbose, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool19.not = icmp eq i8 %14, 0
  br i1 %tobool19.not, label %if.then18.if.end23_crit_edge, label %if.then20

if.then18.if.end23_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then20:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  %conv22 = zext i8 %12 to i32
  tail call void @sym_print_xerr(ptr noundef nonnull %1, i32 noundef %conv22)
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.then18.if.end23_crit_edge
  %arrayidx27 = getelementptr %struct.sym_ccbh, ptr %cp, i32 0, i32 3, i32 1
  %15 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx27, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %16)
  %cmp = icmp eq i8 %16, -124
  br i1 %cmp, label %if.then30, label %if.end23.if.end36_crit_edge

if.end23.if.end36_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then30:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -121, ptr %arrayidx27, align 1
  br label %if.end36

if.end36:                                         ; preds = %if.then30, %if.end23.if.end36_crit_edge, %if.end16.if.end36_crit_edge
  %call = tail call fastcc i32 @sym_compute_residual(ptr noundef %np, ptr noundef nonnull %cp)
  %ioaddr = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 42, i32 4
  %18 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ioaddr, align 4
  %add.ptr = getelementptr i8, ptr %19, i32 52
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !469
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !470
  %squeue_ba = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 75
  %22 = ptrtoint ptr %squeue_ba to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %squeue_ba, align 4
  %sub = sub i32 %21, %23
  %div86 = lshr i32 %sub, 2
  %target = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 19
  %24 = ptrtoint ptr %target to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %target, align 2
  %conv38 = zext i8 %25 to i32
  %lun = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 18
  %26 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %lun, align 8
  %conv39 = trunc i64 %27 to i32
  %28 = tail call fastcc i32 @sym_dequeue_from_squeue(ptr noundef %np, i32 noundef %div86, i32 noundef %conv38, i32 noundef %conv39)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !496
  tail call void @arm_heavy_mb() #9
  %fwa_bas = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 54
  %29 = ptrtoint ptr %fwa_bas to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fwa_bas, align 4
  %31 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ioaddr, align 4
  %add.ptr47 = getelementptr i8, ptr %32, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !473
  tail call void @arm_heavy_mb() #9
  %33 = tail call i32 @llvm.bswap.i32(i32 %30) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 %33) #9, !srcloc !474
  tail call void @sym_set_cam_result_error(ptr noundef %np, ptr noundef nonnull %cp, i32 noundef %call) #9
  %link_ccbq = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 22
  %blink = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 22, i32 1
  %34 = ptrtoint ptr %blink to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %blink, align 4
  %36 = ptrtoint ptr %link_ccbq to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %link_ccbq, align 4
  %blink1.i = getelementptr inbounds %struct.sym_quehead, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %blink1.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %blink1.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %37, ptr %35, align 4
  %comp_ccbq = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 91
  %40 = ptrtoint ptr %comp_ccbq to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %comp_ccbq, align 4
  %blink1.i87 = getelementptr inbounds %struct.sym_quehead, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %blink1.i87 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %link_ccbq, ptr %blink1.i87, align 4
  store ptr %41, ptr %link_ccbq, align 4
  store ptr %comp_ccbq, ptr %blink, align 4
  store ptr %link_ccbq, ptr %comp_ccbq, align 4
  %cmp.not.i18.i = icmp eq ptr %link_ccbq, %comp_ccbq
  br i1 %cmp.not.i18.i, label %if.end36.cleanup_crit_edge, label %sym_remque_head.exit.lr.ph.i

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sym_remque_head.exit.lr.ph.i:                     ; preds = %if.end36
  %busy_ccbq.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 90
  %blink.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 90, i32 1
  br label %sym_remque_head.exit.i

sym_remque_head.exit.i:                           ; preds = %cleanup.i.sym_remque_head.exit.i_crit_edge, %sym_remque_head.exit.lr.ph.i
  %43 = phi ptr [ %link_ccbq, %sym_remque_head.exit.lr.ph.i ], [ %58, %cleanup.i.sym_remque_head.exit.i_crit_edge ]
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %blink1.i.i.i = getelementptr inbounds %struct.sym_quehead, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %blink1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %comp_ccbq, ptr %blink1.i.i.i, align 4
  %47 = ptrtoint ptr %comp_ccbq to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %45, ptr %comp_ccbq, align 4
  %cmp.not.i = icmp eq ptr %43, null
  br i1 %cmp.not.i, label %sym_remque_head.exit.i.cleanup_crit_edge, label %while.body.i

sym_remque_head.exit.i.cleanup_crit_edge:         ; preds = %sym_remque_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body.i:                                     ; preds = %sym_remque_head.exit.i
  %48 = ptrtoint ptr %blink.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %blink.i, align 4
  store ptr %43, ptr %blink.i, align 4
  %50 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %busy_ccbq.i, ptr %43, align 4
  %blink3.i.i = getelementptr inbounds %struct.sym_quehead, ptr %43, i32 0, i32 1
  %51 = ptrtoint ptr %blink3.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %49, ptr %blink3.i.i, align 4
  %52 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %43, ptr %49, align 4
  %arrayidx.i = getelementptr i8, ptr %43, i32 -955
  %53 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %54)
  %cmp2.i = icmp eq i8 %54, 4
  br i1 %cmp2.i, label %while.body.i.cleanup.i_crit_edge, label %if.end.i

while.body.i.cleanup.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.end.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %43, i32 -972
  %cmd4.i = getelementptr i8, ptr %43, i32 -116
  %55 = ptrtoint ptr %cmd4.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cmd4.i, align 4
  tail call void @sym_free_ccb(ptr noundef %np, ptr noundef %add.ptr.i) #9
  tail call void @sym_xpt_done(ptr noundef %np, ptr noundef %56) #9
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i, %while.body.i.cleanup.i_crit_edge
  %57 = ptrtoint ptr %comp_ccbq to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %comp_ccbq, align 4
  %cmp.not.i.i = icmp eq ptr %58, %comp_ccbq
  br i1 %cmp.not.i.i, label %cleanup.i.cleanup_crit_edge, label %cleanup.i.sym_remque_head.exit.i_crit_edge

cleanup.i.sym_remque_head.exit.i_crit_edge:       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sym_remque_head.exit.i

cleanup.i.cleanup_crit_edge:                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.i.cleanup_crit_edge, %sym_remque_head.exit.i.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sym_print_msg(ptr nocapture noundef readonly %cp, ptr noundef %label, ptr noundef %msg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 1
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd, align 4
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %sdev_gendev = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 55
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %sdev_gendev, ptr noundef nonnull @.str.180, ptr noundef %label) #12
  %call = tail call i32 @spi_print_msg(ptr noundef %msg) #9
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.183) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sym_modify_dp(ptr nocapture noundef %np, ptr noundef %cp, i32 noundef %ofs) unnamed_addr #0 align 64 {
entry:
  %dp_ofs = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dp_ofs) #9
  %0 = ptrtoint ptr %dp_ofs to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %ofs, ptr %dp_ofs, align 4
  %features = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 60
  %arrayidx = getelementptr %struct.sym_ccbh, ptr %cp, i32 0, i32 3, i32 3
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %3 = and i8 %2, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool5.not = icmp eq i8 %3, 0
  br i1 %tobool5.not, label %if.end, label %entry.do.body71_crit_edge

entry.do.body71_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body71

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %features, align 4
  %and = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %np.cp = select i1 %tobool.not, ptr %np, ptr %cp
  %cond.in = getelementptr inbounds %struct.sym_ccbh, ptr %np.cp, i32 0, i32 2
  %6 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %cond = load i32, ptr %cond.in, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %cond)
  %call = call fastcc i32 @sym_evaluate_dp(ptr noundef %np, ptr noundef %cp, i32 noundef %7, ptr noundef nonnull %dp_ofs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.do.body71_crit_edge, label %if.end8

if.end.do.body71_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body71

if.end8:                                          ; preds = %if.end
  %goalp = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 24
  %8 = ptrtoint ptr %goalp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %goalp, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %.neg.neg = shl i32 %call, 3
  %sub = add i32 %.neg.neg, -776
  %sub10 = add i32 %sub, %10
  %11 = ptrtoint ptr %dp_ofs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dp_ofs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp11 = icmp eq i32 %12, 0
  br i1 %cmp11, label %if.end8.do.body_crit_edge, label %if.end14

if.end8.do.body_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %ioaddr = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 42, i32 4
  %13 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ioaddr, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 95
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  %16 = and i8 %15, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool18.not = icmp eq i8 %16, 0
  %xor = xor i8 %15, 4
  %spec.select = select i1 %tobool18.not, i8 %15, i8 %xor
  %17 = and i8 %spec.select, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool25.not = icmp eq i8 %17, 0
  %pm1 = getelementptr inbounds %struct.sym_dsb, ptr %cp, i32 0, i32 2
  %pm1_data = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 54, i32 23
  %pm0 = getelementptr inbounds %struct.sym_dsb, ptr %cp, i32 0, i32 1
  %pm0_data = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 54, i32 22
  %dp_scr.0.in = select i1 %tobool25.not, ptr %pm0_data, ptr %pm1_data
  %pm.0 = select i1 %tobool25.not, ptr %pm0, ptr %pm1
  %18 = ptrtoint ptr %dp_scr.0.in to i32
  call void @__asan_load4_noabort(i32 %18)
  %dp_scr.0 = load i32, ptr %dp_scr.0.in, align 4
  %and32 = and i8 %spec.select, -9
  %19 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ioaddr, align 4
  %add.ptr36 = getelementptr i8, ptr %20, i32 95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr36, i8 %and32) #9, !srcloc !464
  %21 = tail call i32 @llvm.bswap.i32(i32 %sub10)
  %ret = getelementptr inbounds %struct.sym_pmc, ptr %pm.0, i32 0, i32 1
  %22 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %ret, align 4
  %sub38 = add nsw i32 %call, -1
  %arrayidx39 = getelementptr %struct.sym_dsb, ptr %cp, i32 0, i32 9, i32 %sub38
  %addr = getelementptr %struct.sym_dsb, ptr %cp, i32 0, i32 9, i32 %sub38, i32 1
  %23 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %addr, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %26 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx39, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %add = add i32 %25, %12
  %add44 = add i32 %add, %28
  %29 = tail call i32 @llvm.bswap.i32(i32 %add44)
  %addr45 = getelementptr inbounds %struct.sym_tblmove, ptr %pm.0, i32 0, i32 1
  %30 = ptrtoint ptr %addr45 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %addr45, align 4
  %sub46 = sub i32 0, %12
  %31 = tail call i32 @llvm.bswap.i32(i32 %sub46)
  %32 = ptrtoint ptr %pm.0 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %pm.0, align 4
  br label %do.body

do.body:                                          ; preds = %if.end14, %if.end8.do.body_crit_edge
  %dp_scr.1 = phi i32 [ %dp_scr.0, %if.end14 ], [ %sub10, %if.end8.do.body_crit_edge ]
  %33 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %features, align 4
  %and50 = and i32 %34, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  %35 = tail call i32 @llvm.bswap.i32(i32 %dp_scr.1)
  %np.cp1 = select i1 %tobool51.not, ptr %np, ptr %cp
  %lastp58 = getelementptr inbounds %struct.sym_ccbh, ptr %np.cp1, i32 0, i32 2
  %36 = ptrtoint ptr %lastp58 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %lastp58, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !497
  tail call void @arm_heavy_mb() #9
  %clrack = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 54, i32 8
  %37 = ptrtoint ptr %clrack to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %clrack, align 4
  %ioaddr66 = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 42, i32 4
  %39 = ptrtoint ptr %ioaddr66 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ioaddr66, align 4
  %add.ptr67 = getelementptr i8, ptr %40, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !473
  tail call void @arm_heavy_mb() #9
  %41 = tail call i32 @llvm.bswap.i32(i32 %38) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67, i32 %41) #9, !srcloc !474
  br label %cleanup

do.body71:                                        ; preds = %if.end.do.body71_crit_edge, %entry.do.body71_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !498
  tail call void @arm_heavy_mb() #9
  %msg_bad = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 55, i32 3
  %42 = ptrtoint ptr %msg_bad to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %msg_bad, align 4
  %ioaddr75 = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 42, i32 4
  %44 = ptrtoint ptr %ioaddr75 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ioaddr75, align 4
  %add.ptr76 = getelementptr i8, ptr %45, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !473
  tail call void @arm_heavy_mb() #9
  %46 = tail call i32 @llvm.bswap.i32(i32 %43) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr76, i32 %46) #9, !srcloc !474
  br label %cleanup

cleanup:                                          ; preds = %do.body71, %do.body
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dp_ofs) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sym_sync_nego(ptr noundef %np, ptr nocapture noundef %cp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 42, i32 4
  %0 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 93
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %2)
  %cmp = icmp eq i8 %2, 2
  br i1 %cmp, label %if.then, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then:                                          ; preds = %entry
  %3 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ioaddr, align 4
  %add.ptr4 = getelementptr i8, ptr %4, i32 93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4, i8 1) #9, !srcloc !464
  %nego_status = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 8
  %5 = ptrtoint ptr %nego_status to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %nego_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %switch = icmp ult i8 %6, 2
  br i1 %switch, label %if.then.if.end11_crit_edge, label %if.then.do.body36_crit_edge

if.then.do.body36_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body36

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.end11:                                         ; preds = %if.then.if.end11_crit_edge, %entry.if.end11_crit_edge
  %target1.i = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 19
  %7 = ptrtoint ptr %target1.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %target1.i, align 2
  %conv.i = zext i8 %8 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sym_debug_flags to i32))
  %9 = load i32, ptr @sym_debug_flags, align 4
  %and.i = and i32 %9, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end11.if.end.i_crit_edge, label %if.then.i

if.end11.if.end.i_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %msgin.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 82
  %starget.i.i = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %conv.i, i32 13
  %10 = ptrtoint ptr %starget.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %starget.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.scsi_target, ptr %11, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.i, ptr noundef nonnull @.str.180, ptr noundef nonnull @.str.185) #12
  %call.i.i = tail call i32 @spi_print_msg(ptr noundef %msgin.i) #9
  %call5.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.183) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end11.if.end.i_crit_edge
  %msgin2.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 82
  %arrayidx.i = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 82, i32 3
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i, align 1
  %arrayidx4.i = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 82, i32 4
  %14 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool5.not.i = icmp eq i8 %15, 0
  br i1 %tobool5.not.i, label %if.end.i.if.end29.i_crit_edge, label %if.then6.i

if.end.i.if.end29.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29.i

if.then6.i:                                       ; preds = %if.end.i
  %maxoffs.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 66
  %16 = ptrtoint ptr %maxoffs.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %maxoffs.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %17)
  %cmp.i = icmp ugt i8 %15, %17
  br i1 %cmp.i, label %if.end13.i, label %if.end23.i

if.end13.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool14.not.i = icmp eq i8 %17, 0
  br i1 %tobool14.not.i, label %if.end13.i.if.end29.i_crit_edge, label %if.end23.thread129.i

if.end13.i.if.end29.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29.i

if.end23.thread129.i:                             ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  %minsync133.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 64
  %18 = ptrtoint ptr %minsync133.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %minsync133.i, align 1
  br label %land.lhs.true.i

if.end23.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #11
  %minsync.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 64
  %20 = ptrtoint ptr %minsync.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %minsync.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %21)
  %cmp18.i = icmp ult i8 %13, %21
  %spec.select96.i = zext i1 %cmp18.i to i8
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end23.i, %if.end23.thread129.i
  %.sink.i = phi i8 [ %21, %if.end23.i ], [ %19, %if.end23.thread129.i ]
  %spec.select96139.i = phi i8 [ %spec.select96.i, %if.end23.i ], [ 1, %if.end23.thread129.i ]
  %ofs.0115138.i = phi i8 [ %15, %if.end23.i ], [ %17, %if.end23.thread129.i ]
  %22 = tail call i8 @llvm.umax.i8(i8 %13, i8 %.sink.i) #9
  %clock_khz.i.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 72
  %23 = ptrtoint ptr %clock_khz.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %clock_khz.i.i, align 4
  %clock_divn.i.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 71
  %25 = ptrtoint ptr %clock_divn.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %clock_divn.i.i, align 2
  %conv.i.i = zext i8 %26 to i32
  %conv4.i.i = zext i8 %22 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %22)
  %cmp5.i.i = icmp ult i8 %22, 11
  br i1 %cmp5.i.i, label %land.lhs.true.i.if.end22.i.i_crit_edge, label %if.else8.i.i

land.lhs.true.i.if.end22.i.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i.i

if.else8.i.i:                                     ; preds = %land.lhs.true.i
  %27 = zext i8 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.275)
  switch i8 %22, label %if.else18.i.i [
    i8 11, label %if.else8.i.i.if.end22.i.i_crit_edge
    i8 12, label %if.then17.i.i
  ]

if.else8.i.i.if.end22.i.i_crit_edge:              ; preds = %if.else8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i.i

if.then17.i.i:                                    ; preds = %if.else8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i.i

if.else18.i.i:                                    ; preds = %if.else8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %mul.i.i = mul nuw nsw i32 %conv4.i.i, 40
  br label %if.end22.i.i

if.end22.i.i:                                     ; preds = %if.else18.i.i, %if.then17.i.i, %if.else8.i.i.if.end22.i.i_crit_edge, %land.lhs.true.i.if.end22.i.i_crit_edge
  %per.0.i.i = phi i32 [ 500, %if.then17.i.i ], [ %mul.i.i, %if.else18.i.i ], [ 250, %land.lhs.true.i.if.end22.i.i_crit_edge ], [ 303, %if.else8.i.i.if.end22.i.i_crit_edge ]
  %mul23.i.i = mul i32 %per.0.i.i, %24
  %features.i.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 60
  %28 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %features.i.i, align 4
  %and.i.i = and i32 %29, 402653184
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %and.i.i)
  %cmp27.i.i = icmp eq i32 %and.i.i, 134217728
  br i1 %cmp27.i.i, label %if.end22.i.i.while.cond.i.i_crit_edge, label %while.cond46.preheader.i.i

if.end22.i.i.while.cond.i.i_crit_edge:            ; preds = %if.end22.i.i
  br label %while.cond.i.i

while.cond46.preheader.i.i:                       ; preds = %if.end22.i.i
  %30 = tail call i32 @llvm.smin.i32(i32 %conv.i.i, i32 1) #9
  %smin.i.i = add nsw i32 %30, -1
  br label %while.cond46.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %if.end22.i.i.while.cond.i.i_crit_edge
  %div.0.i.i = phi i32 [ %dec.i.i, %while.body.i.i.while.cond.i.i_crit_edge ], [ %conv.i.i, %if.end22.i.i.while.cond.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div.0.i.i)
  %cmp30.i.i = icmp sgt i32 %div.0.i.i, 0
  br i1 %cmp30.i.i, label %while.body.i.i, label %while.cond.i.i.while.end.i.i_crit_edge

while.cond.i.i.while.end.i.i_crit_edge:           ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  %dec.i.i = add nsw i32 %div.0.i.i, -1
  %arrayidx.i.i = getelementptr [7 x i32], ptr @div_10M, i32 0, i32 %dec.i.i
  %31 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i.i, align 4
  %shl32.i.i = shl i32 %32, 2
  %cmp33.i.i = icmp ugt i32 %mul23.i.i, %shl32.i.i
  br i1 %cmp33.i.i, label %while.body.i.i.while.end.i.i_crit_edge, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.i

while.body.i.i.while.end.i.i_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %while.body.i.i.while.end.i.i_crit_edge, %while.cond.i.i.while.end.i.i_crit_edge
  %div.0.lcssa.i.i = phi i32 [ %div.0.i.i, %while.body.i.i.while.end.i.i_crit_edge ], [ 0, %while.cond.i.i.while.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %div.0.lcssa.i.i, i32 %conv.i.i)
  %cmp39.i.i = icmp eq i32 %div.0.lcssa.i.i, %conv.i.i
  %conv43.i.i = trunc i32 %div.0.lcssa.i.i to i8
  br i1 %cmp39.i.i, label %while.end.i.i.reject_it.i_crit_edge, label %while.end.i.i.if.end29.i_crit_edge

while.end.i.i.if.end29.i_crit_edge:               ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29.i

while.end.i.i.reject_it.i_crit_edge:              ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %reject_it.i

while.cond46.i.i:                                 ; preds = %while.body50.i.i.while.cond46.i.i_crit_edge, %while.cond46.preheader.i.i
  %div.2.i.i = phi i32 [ %dec47.i.i, %while.body50.i.i.while.cond46.i.i_crit_edge ], [ %conv.i.i, %while.cond46.preheader.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %div.2.i.i)
  %cmp48.i.i = icmp sgt i32 %div.2.i.i, 1
  br i1 %cmp48.i.i, label %while.body50.i.i, label %while.cond46.i.i.while.end57.i.i_crit_edge

while.cond46.i.i.while.end57.i.i_crit_edge:       ; preds = %while.cond46.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end57.i.i

while.body50.i.i:                                 ; preds = %while.cond46.i.i
  %dec47.i.i = add nsw i32 %div.2.i.i, -1
  %arrayidx51.i.i = getelementptr [7 x i32], ptr @div_10M, i32 0, i32 %dec47.i.i
  %33 = ptrtoint ptr %arrayidx51.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx51.i.i, align 4
  %shl52.i.i = shl i32 %34, 2
  %cmp53.not.i.i = icmp ult i32 %mul23.i.i, %shl52.i.i
  br i1 %cmp53.not.i.i, label %while.body50.i.i.while.cond46.i.i_crit_edge, label %while.body50.i.i.while.end57.i.i_crit_edge

while.body50.i.i.while.end57.i.i_crit_edge:       ; preds = %while.body50.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end57.i.i

while.body50.i.i.while.cond46.i.i_crit_edge:      ; preds = %while.body50.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond46.i.i

while.end57.i.i:                                  ; preds = %while.body50.i.i.while.end57.i.i_crit_edge, %while.cond46.i.i.while.end57.i.i_crit_edge
  %dec47.lcssa.i.i = phi i32 [ %dec47.i.i, %while.body50.i.i.while.end57.i.i_crit_edge ], [ %smin.i.i, %while.cond46.i.i.while.end57.i.i_crit_edge ]
  %sub65.i.i = add i32 %mul23.i.i, -1
  %arrayidx66.i.i = getelementptr [7 x i32], ptr @div_10M, i32 0, i32 %dec47.lcssa.i.i
  %35 = ptrtoint ptr %arrayidx66.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx66.i.i, align 4
  %div67.i.i = udiv i32 %sub65.i.i, %36
  %sub69.i.i = add i32 %div67.i.i, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub69.i.i)
  %cmp71.i.i = icmp ugt i32 %sub69.i.i, 2
  %37 = tail call i32 @llvm.umin.i32(i32 %sub69.i.i, i32 2) #9
  %conv75.i.i = trunc i32 %dec47.lcssa.i.i to i8
  %conv76.i.i = trunc i32 %37 to i8
  br i1 %cmp71.i.i, label %while.end57.i.i.reject_it.i_crit_edge, label %while.end57.i.i.if.end29.i_crit_edge

while.end57.i.i.if.end29.i_crit_edge:             ; preds = %while.end57.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29.i

while.end57.i.i.reject_it.i_crit_edge:            ; preds = %while.end57.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %reject_it.i

if.end29.i:                                       ; preds = %while.end57.i.i.if.end29.i_crit_edge, %while.end.i.i.if.end29.i_crit_edge, %if.end13.i.if.end29.i_crit_edge, %if.end.i.if.end29.i_crit_edge
  %per.0125.i = phi i8 [ %22, %while.end.i.i.if.end29.i_crit_edge ], [ %22, %while.end57.i.i.if.end29.i_crit_edge ], [ %13, %if.end13.i.if.end29.i_crit_edge ], [ %13, %if.end.i.if.end29.i_crit_edge ]
  %chg.1123.i = phi i8 [ %spec.select96139.i, %while.end.i.i.if.end29.i_crit_edge ], [ %spec.select96139.i, %while.end57.i.i.if.end29.i_crit_edge ], [ 1, %if.end13.i.if.end29.i_crit_edge ], [ 0, %if.end.i.if.end29.i_crit_edge ]
  %ofs.0108122.i = phi i8 [ %ofs.0115138.i, %while.end.i.i.if.end29.i_crit_edge ], [ %ofs.0115138.i, %while.end57.i.i.if.end29.i_crit_edge ], [ 0, %if.end13.i.if.end29.i_crit_edge ], [ 0, %if.end.i.if.end29.i_crit_edge ]
  %fak.0.i = phi i8 [ 0, %while.end.i.i.if.end29.i_crit_edge ], [ %conv76.i.i, %while.end57.i.i.if.end29.i_crit_edge ], [ 0, %if.end13.i.if.end29.i_crit_edge ], [ 0, %if.end.i.if.end29.i_crit_edge ]
  %div.1.i = phi i8 [ %conv43.i.i, %while.end.i.i.if.end29.i_crit_edge ], [ %conv75.i.i, %while.end57.i.i.if.end29.i_crit_edge ], [ 0, %if.end13.i.if.end29.i_crit_edge ], [ 0, %if.end.i.if.end29.i_crit_edge ]
  %conv24127.i = zext i8 %ofs.0108122.i to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sym_debug_flags to i32))
  %38 = load i32, ptr @sym_debug_flags, align 4
  %and30.i = and i32 %38, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  br i1 %tobool31.not.i, label %if.end29.i.if.end38.i_crit_edge, label %do.end.i

if.end29.i.if.end38.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38.i

do.end.i:                                         ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  %cmd.i = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 1
  %39 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cmd.i, align 4
  %device.i = getelementptr inbounds %struct.scsi_cmnd, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %device.i, align 4
  %sdev_gendev.i = getelementptr inbounds %struct.scsi_device, ptr %42, i32 0, i32 55
  %conv34.i = zext i8 %per.0125.i to i32
  %conv35.i = zext i8 %div.1.i to i32
  %conv36.i = zext i8 %fak.0.i to i32
  %conv37.i = zext i8 %chg.1123.i to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %sdev_gendev.i, ptr noundef nonnull @.str.186, i32 noundef %conv24127.i, i32 noundef %conv34.i, i32 noundef %conv35.i, i32 noundef %conv36.i, i32 noundef %conv37.i) #12
  br label %if.end38.i

if.end38.i:                                       ; preds = %do.end.i, %if.end29.i.if.end38.i_crit_edge
  %tobool39.not.not.i = xor i1 %cmp, true
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %chg.1123.i)
  %tobool42.not.i = icmp eq i8 %chg.1123.i, 0
  %or.cond.i = select i1 %tobool39.not.not.i, i1 true, i1 %tobool42.not.i
  br i1 %or.cond.i, label %if.end44.i, label %if.end38.i.reject_it.i_crit_edge

if.end38.i.reject_it.i_crit_edge:                 ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %reject_it.i

if.end44.i:                                       ; preds = %if.end38.i
  tail call fastcc void @sym_setsync(ptr noundef %np, i32 noundef %conv.i, i8 noundef zeroext %ofs.0108122.i, i8 noundef zeroext %per.0125.i, i8 noundef zeroext %div.1.i, i8 noundef zeroext %fak.0.i) #9
  br i1 %cmp, label %do.body26, label %if.end47.i

if.end47.i:                                       ; preds = %if.end44.i
  %msgout.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 81
  %conv49.i = zext i8 %per.0125.i to i32
  %call51.i = tail call i32 @spi_populate_sync_msg(ptr noundef %msgout.i, i32 noundef %conv49.i, i32 noundef %conv24127.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sym_debug_flags to i32))
  %43 = load i32, ptr @sym_debug_flags, align 4
  %and52.i = and i32 %43, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52.i)
  %tobool53.not.i = icmp eq i32 %and52.i, 0
  br i1 %tobool53.not.i, label %if.end47.i.if.end57.i_crit_edge, label %if.then54.i

if.end47.i.if.end57.i_crit_edge:                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57.i

if.then54.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #11
  %starget.i98.i = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %conv.i, i32 13
  %44 = ptrtoint ptr %starget.i98.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %starget.i98.i, align 4
  %dev.i99.i = getelementptr inbounds %struct.scsi_target, ptr %45, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i99.i, ptr noundef nonnull @.str.180, ptr noundef nonnull @.str.188) #12
  %call.i100.i = tail call i32 @spi_print_msg(ptr noundef %msgout.i) #9
  %call5.i101.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.183) #12
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.then54.i, %if.end47.i.if.end57.i_crit_edge
  %46 = ptrtoint ptr %msgin2.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 8, ptr %msgin2.i, align 4
  %nego_status18 = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 8
  %47 = ptrtoint ptr %nego_status18 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %nego_status18, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !499
  tail call void @arm_heavy_mb() #9
  %sdtr_resp = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 55, i32 7
  %48 = ptrtoint ptr %sdtr_resp to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sdtr_resp, align 4
  %50 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ioaddr, align 4
  %add.ptr22 = getelementptr i8, ptr %51, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !473
  tail call void @arm_heavy_mb() #9
  %52 = tail call i32 @llvm.bswap.i32(i32 %49) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %52) #9, !srcloc !474
  br label %cleanup

reject_it.i:                                      ; preds = %if.end38.i.reject_it.i_crit_edge, %while.end57.i.i.reject_it.i_crit_edge, %while.end.i.i.reject_it.i_crit_edge
  %arrayidx.i102.i = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %conv.i
  %starget2.i.i = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %conv.i, i32 13
  %53 = ptrtoint ptr %starget2.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %starget2.i.i, align 4
  %wval.i.i = getelementptr inbounds %struct.sym_tcbh, ptr %arrayidx.i102.i, i32 0, i32 5
  %55 = ptrtoint ptr %wval.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %wval.i.i, align 1
  %57 = lshr i8 %56, 3
  %.lobit.i.i = and i8 %57, 1
  tail call fastcc void @sym_settrans(ptr noundef %np, i32 noundef %conv.i, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext %.lobit.i.i, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %renego14.i.i = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %conv.i, i32 5, i32 2
  %58 = ptrtoint ptr %renego14.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load15.i.i = load i8, ptr %renego14.i.i, align 2
  %bf.clear16.i.i = and i8 %bf.load15.i.i, -7
  %59 = shl nuw nsw i8 %.lobit.i.i, 2
  %60 = or i8 %59, %bf.clear16.i.i
  store i8 %60, ptr %renego14.i.i, align 2
  %starget_data.i.i = getelementptr inbounds %struct.scsi_target, ptr %54, i32 0, i32 15
  %61 = ptrtoint ptr %starget_data.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %starget_data.i.i, align 4
  %offset.i.i = getelementptr inbounds %struct.scsi_target, ptr %54, i32 1, i32 1
  %62 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %offset.i.i, align 4
  %qas.i.i = getelementptr inbounds %struct.scsi_target, ptr %54, i32 1, i32 2
  %63 = ptrtoint ptr %qas.i.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %bf.load23.i.i = load i16, ptr %qas.i.i, align 4
  %bf.clear32.i.i = and i16 %bf.load23.i.i, -11265
  store i16 %bf.clear32.i.i, ptr %qas.i.i, align 4
  %bf.load36.i.i = load i8, ptr %renego14.i.i, align 2
  %64 = and i8 %bf.load36.i.i, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %if.then54.i.i, label %reject_it.i.sym_sync_nego_check.exit_crit_edge

reject_it.i.sym_sync_nego_check.exit_crit_edge:   ; preds = %reject_it.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sym_sync_nego_check.exit

if.then54.i.i:                                    ; preds = %reject_it.i
  call void @__sanitizer_cov_trace_pc() #11
  %tgoal34.i.i = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %conv.i, i32 5
  %66 = ptrtoint ptr %tgoal34.i.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %tgoal34.i.i, align 4
  %offset58.i.i = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %conv.i, i32 5, i32 1
  %67 = ptrtoint ptr %offset58.i.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %offset58.i.i, align 1
  %bf.clear61.i.i = and i8 %bf.load36.i.i, -9
  %68 = ptrtoint ptr %renego14.i.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %bf.clear61.i.i, ptr %renego14.i.i, align 2
  br label %sym_sync_nego_check.exit

sym_sync_nego_check.exit:                         ; preds = %if.then54.i.i, %reject_it.i.sym_sync_nego_check.exit_crit_edge
  tail call fastcc void @sym_announce_transfer_rate(ptr noundef %arrayidx.i102.i) #9
  br label %do.body36

do.body26:                                        ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !500
  tail call void @arm_heavy_mb() #9
  %clrack = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 54, i32 8
  %69 = ptrtoint ptr %clrack to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %clrack, align 4
  %71 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ioaddr, align 4
  %add.ptr31 = getelementptr i8, ptr %72, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !473
  tail call void @arm_heavy_mb() #9
  %73 = tail call i32 @llvm.bswap.i32(i32 %70) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %73) #9, !srcloc !474
  br label %cleanup

do.body36:                                        ; preds = %sym_sync_nego_check.exit, %if.then.do.body36_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !501
  tail call void @arm_heavy_mb() #9
  %msg_bad = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 55, i32 3
  %74 = ptrtoint ptr %msg_bad to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %msg_bad, align 4
  %76 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ioaddr, align 4
  %add.ptr42 = getelementptr i8, ptr %77, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !473
  tail call void @arm_heavy_mb() #9
  %78 = tail call i32 @llvm.bswap.i32(i32 %75) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 %78) #9, !srcloc !474
  br label %cleanup

cleanup:                                          ; preds = %do.body36, %do.body26, %if.end57.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sym_ppr_nego(ptr noundef %np, ptr nocapture noundef %cp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 42, i32 4
  %0 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 93
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %2)
  %cmp = icmp eq i8 %2, 2
  br i1 %cmp, label %if.then, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then:                                          ; preds = %entry
  %3 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ioaddr, align 4
  %add.ptr4 = getelementptr i8, ptr %4, i32 93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4, i8 1) #9, !srcloc !464
  %nego_status = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 8
  %5 = ptrtoint ptr %nego_status to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %nego_status, align 2
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.276)
  switch i8 %6, label %if.then.do.body37_crit_edge [
    i8 0, label %if.then.if.end11_crit_edge
    i8 3, label %if.then.if.end11_crit_edge5
  ]

if.then.if.end11_crit_edge5:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then.do.body37_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body37

if.end11:                                         ; preds = %if.then.if.end11_crit_edge, %if.then.if.end11_crit_edge5, %entry.if.end11_crit_edge
  %target = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 19
  %8 = ptrtoint ptr %target to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %target, align 2
  %conv12 = zext i8 %9 to i32
  %msgin.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 82
  %arrayidx2.i = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 82, i32 3
  %10 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx2.i, align 1
  %arrayidx4.i = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 82, i32 5
  %12 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx4.i, align 1
  %arrayidx6.i = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 82, i32 6
  %14 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx6.i, align 2
  %arrayidx8.i = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 82, i32 7
  %16 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx8.i, align 1
  %18 = and i8 %17, 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sym_debug_flags to i32))
  %19 = load i32, ptr @sym_debug_flags, align 4
  %and10.i = and i32 %19, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool.not.i, label %if.end11.if.end.i_crit_edge, label %if.then.i

if.end11.if.end.i_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %starget.i.i = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %conv12, i32 13
  %20 = ptrtoint ptr %starget.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %starget.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.scsi_target, ptr %21, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.i, ptr noundef nonnull @.str.180, ptr noundef nonnull @.str.194) #12
  %call.i.i = tail call i32 @spi_print_msg(ptr noundef %msgin.i) #9
  %call5.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.183) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end11.if.end.i_crit_edge
  %maxwide.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 63
  %22 = ptrtoint ptr %maxwide.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %maxwide.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %23)
  %cmp.i = icmp ugt i8 %15, %23
  %24 = tail call i8 @llvm.umin.i8(i8 %15, i8 %23) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool18.not.i = icmp eq i8 %24, 0
  br i1 %tobool18.not.i, label %if.end.i.if.then21.i_crit_edge, label %lor.lhs.false.i

if.end.i.if.then21.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %features.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 60
  %25 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %features.i, align 4
  %and19.i = and i32 %26, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %lor.lhs.false.i.if.then21.i_crit_edge, label %lor.lhs.false.i.if.end22.i_crit_edge

lor.lhs.false.i.if.end22.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

lor.lhs.false.i.if.then21.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21.i

if.then21.i:                                      ; preds = %lor.lhs.false.i.if.then21.i_crit_edge, %if.end.i.if.then21.i_crit_edge
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then21.i, %lor.lhs.false.i.if.end22.i_crit_edge
  %opts.0.i = phi i8 [ %18, %lor.lhs.false.i.if.end22.i_crit_edge ], [ 0, %if.then21.i ]
  %conv23.i = zext i8 %opts.0.i to i32
  %27 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx8.i, align 1
  %29 = and i8 %28, 7
  call void @__sanitizer_cov_trace_cmp1(i8 %opts.0.i, i8 %29)
  %cmp28.not.i = icmp ne i8 %opts.0.i, %29
  %narrow.i = select i1 %cmp28.not.i, i1 true, i1 %cmp.i
  %spec.select186.i = zext i1 %narrow.i to i32
  %and33.i = and i32 %conv23.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool34.not.i = icmp eq i8 %13, 0
  br i1 %tobool34.not.i, label %if.end22.i.if.end72.i_crit_edge, label %if.then35.i

if.end22.i.if.end72.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72.i

if.then35.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool36.not.i = icmp eq i32 %and33.i, 0
  %maxoffs_dt.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 69
  %maxoffs38.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 66
  %cond.in.in.i = select i1 %tobool36.not.i, ptr %maxoffs38.i, ptr %maxoffs_dt.i
  %30 = ptrtoint ptr %cond.in.in.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %cond.in184.i = load i8, ptr %cond.in.in.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %cond.in184.i)
  %cmp43.i = icmp ugt i8 %13, %cond.in184.i
  br i1 %cmp43.i, label %if.end47.i, label %if.then35.i.if.end65.i_crit_edge

if.then35.i.if.end65.i_crit_edge:                 ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65.i

if.end47.i:                                       ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %cond.in184.i)
  %tobool48.not.i = icmp eq i8 %cond.in184.i, 0
  br i1 %tobool48.not.i, label %if.end47.i.if.end72.i_crit_edge, label %if.end47.i.if.end65.i_crit_edge

if.end47.i.if.end65.i_crit_edge:                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65.i

if.end47.i.if.end72.i_crit_edge:                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72.i

if.end65.i:                                       ; preds = %if.end47.i.if.end65.i_crit_edge, %if.then35.i.if.end65.i_crit_edge
  %ofs.1203.i = phi i8 [ %cond.in184.i, %if.end47.i.if.end65.i_crit_edge ], [ %13, %if.then35.i.if.end65.i_crit_edge ]
  %chg.3202.i = phi i32 [ 1, %if.end47.i.if.end65.i_crit_edge ], [ %spec.select186.i, %if.then35.i.if.end65.i_crit_edge ]
  %minsync_dt.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 67
  %minsync54.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 64
  %cond57.in.in.i = select i1 %tobool36.not.i, ptr %minsync54.i, ptr %minsync_dt.i
  %31 = ptrtoint ptr %cond57.in.in.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %cond57.in183.i = load i8, ptr %cond57.in.in.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %cond57.in183.i)
  %cmp61.i = icmp ult i8 %11, %cond57.in183.i
  %chg.4.i = select i1 %cmp61.i, i32 1, i32 %chg.3202.i
  %32 = tail call i8 @llvm.umax.i8(i8 %11, i8 %cond57.in183.i) #9
  %conv68.i = trunc i32 %and33.i to i8
  %clock_khz.i.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 72
  %33 = ptrtoint ptr %clock_khz.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %clock_khz.i.i, align 4
  %clock_divn.i.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 71
  %35 = ptrtoint ptr %clock_divn.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %clock_divn.i.i, align 2
  %conv.i.i = zext i8 %36 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv68.i)
  %tobool.not.i.i = icmp ne i8 %conv68.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %32)
  %cmp.i.i = icmp ult i8 %32, 10
  %or.cond.i.i = and i1 %tobool.not.i.i, %cmp.i.i
  br i1 %or.cond.i.i, label %if.end65.i.if.end22.i.i_crit_edge, label %if.else.i.i

if.end65.i.if.end22.i.i_crit_edge:                ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i.i

if.else.i.i:                                      ; preds = %if.end65.i
  %conv4.i.i = zext i8 %32 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %32)
  %cmp5.i.i = icmp ult i8 %32, 11
  br i1 %cmp5.i.i, label %if.else.i.i.if.end22.i.i_crit_edge, label %if.else8.i.i

if.else.i.i.if.end22.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i.i

if.else8.i.i:                                     ; preds = %if.else.i.i
  %37 = zext i8 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.277)
  switch i8 %32, label %if.else18.i.i [
    i8 11, label %if.else8.i.i.if.end22.i.i_crit_edge
    i8 12, label %if.then17.i.i
  ]

if.else8.i.i.if.end22.i.i_crit_edge:              ; preds = %if.else8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i.i

if.then17.i.i:                                    ; preds = %if.else8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i.i

if.else18.i.i:                                    ; preds = %if.else8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %mul.i.i = mul nuw nsw i32 %conv4.i.i, 40
  br label %if.end22.i.i

if.end22.i.i:                                     ; preds = %if.else18.i.i, %if.then17.i.i, %if.else8.i.i.if.end22.i.i_crit_edge, %if.else.i.i.if.end22.i.i_crit_edge, %if.end65.i.if.end22.i.i_crit_edge
  %per.0.i.i = phi i32 [ 500, %if.then17.i.i ], [ %mul.i.i, %if.else18.i.i ], [ 125, %if.end65.i.if.end22.i.i_crit_edge ], [ 250, %if.else.i.i.if.end22.i.i_crit_edge ], [ 303, %if.else8.i.i.if.end22.i.i_crit_edge ]
  %mul23.i.i = mul i32 %per.0.i.i, %34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv68.i)
  %tobool24.not.i.i = icmp eq i8 %conv68.i, 0
  %not.tobool24.not.i.i = xor i1 %tobool24.not.i.i, true
  %shl.i.i = zext i1 %not.tobool24.not.i.i to i32
  %spec.select.i.i = shl i32 %mul23.i.i, %shl.i.i
  %features.i.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 60
  %38 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %features.i.i, align 4
  %and.i.i = and i32 %39, 402653184
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %and.i.i)
  %cmp27.i.i = icmp eq i32 %and.i.i, 134217728
  br i1 %cmp27.i.i, label %if.end22.i.i.while.cond.i.i_crit_edge, label %while.cond46.preheader.i.i

if.end22.i.i.while.cond.i.i_crit_edge:            ; preds = %if.end22.i.i
  br label %while.cond.i.i

while.cond46.preheader.i.i:                       ; preds = %if.end22.i.i
  %40 = tail call i32 @llvm.smin.i32(i32 %conv.i.i, i32 1) #9
  %smin.i.i = add nsw i32 %40, -1
  br label %while.cond46.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %if.end22.i.i.while.cond.i.i_crit_edge
  %div.0.i.i = phi i32 [ %dec.i.i, %while.body.i.i.while.cond.i.i_crit_edge ], [ %conv.i.i, %if.end22.i.i.while.cond.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div.0.i.i)
  %cmp30.i.i = icmp sgt i32 %div.0.i.i, 0
  br i1 %cmp30.i.i, label %while.body.i.i, label %while.cond.i.i.while.end.i.i_crit_edge

while.cond.i.i.while.end.i.i_crit_edge:           ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  %dec.i.i = add nsw i32 %div.0.i.i, -1
  %arrayidx.i.i = getelementptr [7 x i32], ptr @div_10M, i32 0, i32 %dec.i.i
  %41 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.i.i, align 4
  %shl32.i.i = shl i32 %42, 2
  %cmp33.i.i = icmp ugt i32 %spec.select.i.i, %shl32.i.i
  br i1 %cmp33.i.i, label %while.body.i.i.while.end.i.i_crit_edge, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.i

while.body.i.i.while.end.i.i_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %while.body.i.i.while.end.i.i_crit_edge, %while.cond.i.i.while.end.i.i_crit_edge
  %div.0.lcssa.i.i = phi i32 [ %div.0.i.i, %while.body.i.i.while.end.i.i_crit_edge ], [ 0, %while.cond.i.i.while.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %div.0.lcssa.i.i, i32 %conv.i.i)
  %cmp39.i.i = icmp eq i32 %div.0.lcssa.i.i, %conv.i.i
  %conv43.i.i = trunc i32 %div.0.lcssa.i.i to i8
  br i1 %cmp39.i.i, label %while.end.i.i.reject_it.i_crit_edge, label %while.end.i.i.if.end72.i_crit_edge

while.end.i.i.if.end72.i_crit_edge:               ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72.i

while.end.i.i.reject_it.i_crit_edge:              ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %reject_it.i

while.cond46.i.i:                                 ; preds = %while.body50.i.i.while.cond46.i.i_crit_edge, %while.cond46.preheader.i.i
  %div.2.i.i = phi i32 [ %dec47.i.i, %while.body50.i.i.while.cond46.i.i_crit_edge ], [ %conv.i.i, %while.cond46.preheader.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %div.2.i.i)
  %cmp48.i.i = icmp sgt i32 %div.2.i.i, 1
  br i1 %cmp48.i.i, label %while.body50.i.i, label %while.cond46.i.i.while.end57.i.i_crit_edge

while.cond46.i.i.while.end57.i.i_crit_edge:       ; preds = %while.cond46.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end57.i.i

while.body50.i.i:                                 ; preds = %while.cond46.i.i
  %dec47.i.i = add nsw i32 %div.2.i.i, -1
  %arrayidx51.i.i = getelementptr [7 x i32], ptr @div_10M, i32 0, i32 %dec47.i.i
  %43 = ptrtoint ptr %arrayidx51.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx51.i.i, align 4
  %shl52.i.i = shl i32 %44, 2
  %cmp53.not.i.i = icmp ult i32 %spec.select.i.i, %shl52.i.i
  br i1 %cmp53.not.i.i, label %while.body50.i.i.while.cond46.i.i_crit_edge, label %while.body50.i.i.while.end57.i.i_crit_edge

while.body50.i.i.while.end57.i.i_crit_edge:       ; preds = %while.body50.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end57.i.i

while.body50.i.i.while.cond46.i.i_crit_edge:      ; preds = %while.body50.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond46.i.i

while.end57.i.i:                                  ; preds = %while.body50.i.i.while.end57.i.i_crit_edge, %while.cond46.i.i.while.end57.i.i_crit_edge
  %dec47.lcssa.i.i = phi i32 [ %dec47.i.i, %while.body50.i.i.while.end57.i.i_crit_edge ], [ %smin.i.i, %while.cond46.i.i.while.end57.i.i_crit_edge ]
  %sub65.i.i = add i32 %spec.select.i.i, -1
  %arrayidx66.i.i = getelementptr [7 x i32], ptr @div_10M, i32 0, i32 %dec47.lcssa.i.i
  %45 = ptrtoint ptr %arrayidx66.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx66.i.i, align 4
  %.sink114.i.i = shl i32 %46, %shl.i.i
  %.sink.i.i = select i1 %tobool24.not.i.i, i32 -3, i32 -1
  %div67.i.i = udiv i32 %sub65.i.i, %.sink114.i.i
  %sub69.i.i = add i32 %div67.i.i, %.sink.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub69.i.i)
  %cmp71.i.i = icmp ugt i32 %sub69.i.i, 2
  %47 = tail call i32 @llvm.umin.i32(i32 %sub69.i.i, i32 2) #9
  %conv75.i.i = trunc i32 %dec47.lcssa.i.i to i8
  %conv76.i.i = trunc i32 %47 to i8
  br i1 %cmp71.i.i, label %while.end57.i.i.reject_it.i_crit_edge, label %while.end57.i.i.if.end72.i_crit_edge

while.end57.i.i.if.end72.i_crit_edge:             ; preds = %while.end57.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72.i

while.end57.i.i.reject_it.i_crit_edge:            ; preds = %while.end57.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %reject_it.i

if.end72.i:                                       ; preds = %while.end57.i.i.if.end72.i_crit_edge, %while.end.i.i.if.end72.i_crit_edge, %if.end47.i.if.end72.i_crit_edge, %if.end22.i.if.end72.i_crit_edge
  %per.1214.i = phi i8 [ %32, %while.end.i.i.if.end72.i_crit_edge ], [ %32, %while.end57.i.i.if.end72.i_crit_edge ], [ %11, %if.end47.i.if.end72.i_crit_edge ], [ %11, %if.end22.i.if.end72.i_crit_edge ]
  %chg.5212.i = phi i32 [ %chg.4.i, %while.end.i.i.if.end72.i_crit_edge ], [ %chg.4.i, %while.end57.i.i.if.end72.i_crit_edge ], [ 1, %if.end47.i.if.end72.i_crit_edge ], [ %spec.select186.i, %if.end22.i.if.end72.i_crit_edge ]
  %ofs.1196211.i = phi i8 [ %ofs.1203.i, %while.end.i.i.if.end72.i_crit_edge ], [ %ofs.1203.i, %while.end57.i.i.if.end72.i_crit_edge ], [ 0, %if.end47.i.if.end72.i_crit_edge ], [ 0, %if.end22.i.if.end72.i_crit_edge ]
  %fak.0.i = phi i8 [ 0, %while.end.i.i.if.end72.i_crit_edge ], [ %conv76.i.i, %while.end57.i.i.if.end72.i_crit_edge ], [ 0, %if.end47.i.if.end72.i_crit_edge ], [ 0, %if.end22.i.if.end72.i_crit_edge ]
  %div.1.i = phi i8 [ %conv43.i.i, %while.end.i.i.if.end72.i_crit_edge ], [ %conv75.i.i, %while.end57.i.i.if.end72.i_crit_edge ], [ 0, %if.end47.i.if.end72.i_crit_edge ], [ 0, %if.end22.i.if.end72.i_crit_edge ]
  %conv66215.i = zext i8 %ofs.1196211.i to i32
  %tobool73.not.not.i = xor i1 %cmp, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %chg.5212.i)
  %tobool75.not.i = icmp eq i32 %chg.5212.i, 0
  %or.cond.i = select i1 %tobool73.not.not.i, i1 true, i1 %tobool75.not.i
  br i1 %or.cond.i, label %if.end77.i, label %if.end72.i.reject_it.i_crit_edge

if.end72.i.reject_it.i_crit_edge:                 ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %reject_it.i

if.end77.i:                                       ; preds = %if.end72.i
  %starget2.i = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %conv12, i32 13
  %48 = ptrtoint ptr %starget2.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %starget2.i, align 4
  tail call fastcc void @sym_settrans(ptr noundef %np, i32 noundef %conv12, i8 noundef zeroext %opts.0.i, i8 noundef zeroext %ofs.1196211.i, i8 noundef zeroext %per.1214.i, i8 noundef zeroext %24, i8 noundef zeroext %div.1.i, i8 noundef zeroext %fak.0.i) #9
  %50 = or i8 %ofs.1196211.i, %24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %51 = icmp eq i8 %50, 0
  %renego6.i = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %conv12, i32 5, i32 2
  %52 = ptrtoint ptr %renego6.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load7.i = load i8, ptr %renego6.i, align 2
  %bf.clear8.i = and i8 %bf.load7.i, 121
  %masksel.i = select i1 %51, i8 0, i8 6
  %bf.clear8.sink.i = or i8 %masksel.i, %bf.clear8.i
  %arrayidx.i = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %conv12
  %tgoal11.i = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %conv12, i32 5
  %bf.shl.i1 = shl i8 %24, 7
  %bf.set14.i = or i8 %bf.clear8.sink.i, %bf.shl.i1
  store i8 %bf.set14.i, ptr %renego6.i, align 2
  %starget_data.i = getelementptr inbounds %struct.scsi_target, ptr %49, i32 0, i32 15
  %width15.i = getelementptr inbounds %struct.scsi_target, ptr %49, i32 1, i32 2
  %53 = ptrtoint ptr %width15.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %bf.load16.i = load i16, ptr %width15.i, align 4
  %bf.value17.i = zext i8 %24 to i16
  %bf.shl18.i = shl i16 %bf.value17.i, 15
  %bf.clear19.i = and i16 %bf.load16.i, 32767
  %bf.set20.i = or i16 %bf.clear19.i, %bf.shl18.i
  store i16 %bf.set20.i, ptr %width15.i, align 4
  %54 = ptrtoint ptr %tgoal11.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %per.1214.i, ptr %tgoal11.i, align 4
  %conv23.i2 = zext i8 %per.1214.i to i32
  %55 = ptrtoint ptr %starget_data.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %conv23.i2, ptr %starget_data.i, align 4
  %offset.i = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %conv12, i32 5, i32 1
  %56 = ptrtoint ptr %offset.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %ofs.1196211.i, ptr %offset.i, align 1
  %offset29.i = getelementptr inbounds %struct.scsi_target, ptr %49, i32 1, i32 1
  %57 = ptrtoint ptr %offset29.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %conv66215.i, ptr %offset29.i, align 4
  %bf.load34.i = load i8, ptr %renego6.i, align 2
  %and.i = shl i8 %opts.0.i, 6
  %bf.shl36.i = and i8 %and.i, 64
  %bf.clear37.i = and i8 %bf.load34.i, -65
  %bf.set38.i = or i8 %bf.clear37.i, %bf.shl36.i
  store i8 %bf.set38.i, ptr %renego6.i, align 2
  %bf.load42.i = load i16, ptr %width15.i, align 4
  %58 = and i8 %opts.0.i, 1
  %bf.value43.i = zext i8 %58 to i16
  %bf.shl44.i = shl nuw nsw i16 %bf.value43.i, 13
  %bf.clear45.i = and i16 %bf.load42.i, -8193
  %bf.set46.i = or i16 %bf.clear45.i, %bf.shl44.i
  store i16 %bf.set46.i, ptr %width15.i, align 4
  %and49.i = lshr i8 %opts.0.i, 1
  %bf.load56.i = load i8, ptr %renego6.i, align 2
  %and49.lobit.i = shl nuw nsw i8 %and49.i, 5
  %bf.shl58.i = and i8 %and49.lobit.i, 32
  %bf.clear59.i = and i8 %bf.load56.i, -33
  %bf.set60.i = or i8 %bf.clear59.i, %bf.shl58.i
  store i8 %bf.set60.i, ptr %renego6.i, align 2
  %bf.load64.i = load i16, ptr %width15.i, align 4
  %59 = and i8 %and49.i, 1
  %bf.value65.i = zext i8 %59 to i16
  %bf.shl66.i = shl nuw nsw i16 %bf.value65.i, 11
  %bf.clear67.i = and i16 %bf.load64.i, -2049
  %bf.set68.i = or i16 %bf.clear67.i, %bf.shl66.i
  store i16 %bf.set68.i, ptr %width15.i, align 4
  %60 = lshr i8 %opts.0.i, 2
  %bf.load78.i = load i8, ptr %renego6.i, align 2
  %.lobit.i = shl nuw nsw i8 %60, 4
  %bf.clear81.i = and i8 %bf.load78.i, -17
  %bf.set82.i = or i8 %bf.clear81.i, %.lobit.i
  store i8 %bf.set82.i, ptr %renego6.i, align 2
  %bf.load86.i = load i16, ptr %width15.i, align 4
  %bf.value87.i = zext i8 %60 to i16
  %bf.shl88.i = shl nuw nsw i16 %bf.value87.i, 10
  %bf.clear89.i = and i16 %bf.load86.i, -1025
  %bf.set90.i = or i16 %bf.clear89.i, %bf.shl88.i
  store i16 %bf.set90.i, ptr %width15.i, align 4
  %bf.load93.i = load i8, ptr %renego6.i, align 2
  %bf.clear94.i = and i8 %bf.load93.i, -9
  store i8 %bf.clear94.i, ptr %renego6.i, align 2
  tail call fastcc void @sym_announce_transfer_rate(ptr noundef %arrayidx.i) #9
  br i1 %cmp, label %do.body27, label %if.end80.i

if.end80.i:                                       ; preds = %if.end77.i
  %msgout.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 81
  %conv84.i = zext i8 %24 to i32
  %call86.i = tail call i32 @spi_populate_ppr_msg(ptr noundef %msgout.i, i32 noundef %conv23.i2, i32 noundef %conv66215.i, i32 noundef %conv84.i, i32 noundef %conv23.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sym_debug_flags to i32))
  %61 = load i32, ptr @sym_debug_flags, align 4
  %and87.i = and i32 %61, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87.i)
  %tobool88.not.i = icmp eq i32 %and87.i, 0
  br i1 %tobool88.not.i, label %if.end80.i.if.end92.i_crit_edge, label %if.then89.i

if.end80.i.if.end92.i_crit_edge:                  ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92.i

if.then89.i:                                      ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %starget2.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %starget2.i, align 4
  %dev.i189.i = getelementptr inbounds %struct.scsi_target, ptr %63, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i189.i, ptr noundef nonnull @.str.180, ptr noundef nonnull @.str.195) #12
  %call.i190.i = tail call i32 @spi_print_msg(ptr noundef %msgout.i) #9
  %call5.i191.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.183) #12
  br label %if.end92.i

if.end92.i:                                       ; preds = %if.then89.i, %if.end80.i.if.end92.i_crit_edge
  %64 = ptrtoint ptr %msgin.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 8, ptr %msgin.i, align 4
  %nego_status19 = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 8
  %65 = ptrtoint ptr %nego_status19 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 3, ptr %nego_status19, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !502
  tail call void @arm_heavy_mb() #9
  %ppr_resp = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 55, i32 9
  %66 = ptrtoint ptr %ppr_resp to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %ppr_resp, align 4
  %68 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ioaddr, align 4
  %add.ptr23 = getelementptr i8, ptr %69, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !473
  tail call void @arm_heavy_mb() #9
  %70 = tail call i32 @llvm.bswap.i32(i32 %67) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %70) #9, !srcloc !474
  br label %cleanup

reject_it.i:                                      ; preds = %if.end72.i.reject_it.i_crit_edge, %while.end57.i.i.reject_it.i_crit_edge, %while.end.i.i.reject_it.i_crit_edge
  %per.1213.i = phi i8 [ %per.1214.i, %if.end72.i.reject_it.i_crit_edge ], [ %32, %while.end57.i.i.reject_it.i_crit_edge ], [ %32, %while.end.i.i.reject_it.i_crit_edge ]
  %ofs.1196210.i = phi i8 [ %ofs.1196211.i, %if.end72.i.reject_it.i_crit_edge ], [ %ofs.1203.i, %while.end57.i.i.reject_it.i_crit_edge ], [ %ofs.1203.i, %while.end.i.i.reject_it.i_crit_edge ]
  %starget2.i.i = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %conv12, i32 13
  %71 = ptrtoint ptr %starget2.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %starget2.i.i, align 4
  tail call fastcc void @sym_settrans(ptr noundef %np, i32 noundef %conv12, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %renego6.i.i = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %conv12, i32 5, i32 2
  %73 = ptrtoint ptr %renego6.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %bf.load7.i.i = load i8, ptr %renego6.i.i, align 2
  %arrayidx.i192.i = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %conv12
  %tgoal11.i.i = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %conv12, i32 5
  %bf.clear13.i.i = and i8 %bf.load7.i.i, 121
  store i8 %bf.clear13.i.i, ptr %renego6.i.i, align 2
  %starget_data.i.i = getelementptr inbounds %struct.scsi_target, ptr %72, i32 0, i32 15
  %width15.i.i = getelementptr inbounds %struct.scsi_target, ptr %72, i32 1, i32 2
  %74 = ptrtoint ptr %width15.i.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %bf.load16.i.i = load i16, ptr %width15.i.i, align 4
  %bf.clear19.i.i = and i16 %bf.load16.i.i, 32767
  store i16 %bf.clear19.i.i, ptr %width15.i.i, align 4
  %75 = ptrtoint ptr %tgoal11.i.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %tgoal11.i.i, align 4
  %76 = ptrtoint ptr %starget_data.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %starget_data.i.i, align 4
  %offset.i.i = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %conv12, i32 5, i32 1
  %77 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %offset.i.i, align 1
  %offset29.i.i = getelementptr inbounds %struct.scsi_target, ptr %72, i32 1, i32 1
  %78 = ptrtoint ptr %offset29.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %offset29.i.i, align 4
  %bf.load34.i.i = load i8, ptr %renego6.i.i, align 2
  %bf.clear37.i.i = and i8 %bf.load34.i.i, -65
  store i8 %bf.clear37.i.i, ptr %renego6.i.i, align 2
  %bf.load42.i.i = load i16, ptr %width15.i.i, align 4
  %bf.clear45.i.i = and i16 %bf.load42.i.i, -8193
  store i16 %bf.clear45.i.i, ptr %width15.i.i, align 4
  %bf.load56.i.i = load i8, ptr %renego6.i.i, align 2
  %bf.clear59.i.i = and i8 %bf.load56.i.i, -33
  store i8 %bf.clear59.i.i, ptr %renego6.i.i, align 2
  %bf.load64.i.i = load i16, ptr %width15.i.i, align 4
  %bf.clear67.i.i = and i16 %bf.load64.i.i, -2049
  store i16 %bf.clear67.i.i, ptr %width15.i.i, align 4
  %bf.load78.i.i = load i8, ptr %renego6.i.i, align 2
  %bf.clear81.i.i = and i8 %bf.load78.i.i, -17
  store i8 %bf.clear81.i.i, ptr %renego6.i.i, align 2
  %bf.load86.i.i = load i16, ptr %width15.i.i, align 4
  %bf.clear89.i.i = and i16 %bf.load86.i.i, -1025
  store i16 %bf.clear89.i.i, ptr %width15.i.i, align 4
  %bf.load93.i.i = load i8, ptr %renego6.i.i, align 2
  %bf.clear94.i.i = and i8 %bf.load93.i.i, -9
  store i8 %bf.clear94.i.i, ptr %renego6.i.i, align 2
  tail call fastcc void @sym_announce_transfer_rate(ptr noundef %arrayidx.i192.i) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %opts.0.i)
  %tobool97.not.i = icmp eq i8 %opts.0.i, 0
  %or.cond187.i = select i1 %cmp, i1 %tobool97.not.i, i1 false
  br i1 %or.cond187.i, label %if.then98.i, label %reject_it.i.do.body37_crit_edge

reject_it.i.do.body37_crit_edge:                  ; preds = %reject_it.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body37

if.then98.i:                                      ; preds = %reject_it.i
  call void @__sanitizer_cov_trace_pc() #11
  %79 = ptrtoint ptr %tgoal11.i.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %per.1213.i, ptr %tgoal11.i.i, align 4
  %80 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %ofs.1196210.i, ptr %offset.i.i, align 1
  %81 = ptrtoint ptr %renego6.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %bf.load.i = load i8, ptr %renego6.i.i, align 2
  %bf.shl.i = shl i8 %24, 7
  %bf.clear.i = and i8 %bf.load.i, 7
  %bf.set.i = or i8 %bf.clear.i, %bf.shl.i
  %bf.set118.i = or i8 %bf.set.i, 8
  store i8 %bf.set118.i, ptr %renego6.i.i, align 2
  br label %do.body37

do.body27:                                        ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !503
  tail call void @arm_heavy_mb() #9
  %clrack = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 54, i32 8
  %82 = ptrtoint ptr %clrack to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %clrack, align 4
  %84 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ioaddr, align 4
  %add.ptr32 = getelementptr i8, ptr %85, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !473
  tail call void @arm_heavy_mb() #9
  %86 = tail call i32 @llvm.bswap.i32(i32 %83) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 %86) #9, !srcloc !474
  br label %cleanup

do.body37:                                        ; preds = %if.then98.i, %reject_it.i.do.body37_crit_edge, %if.then.do.body37_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !504
  tail call void @arm_heavy_mb() #9
  %msg_bad = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 55, i32 3
  %87 = ptrtoint ptr %msg_bad to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %msg_bad, align 4
  %89 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ioaddr, align 4
  %add.ptr43 = getelementptr i8, ptr %90, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !473
  tail call void @arm_heavy_mb() #9
  %91 = tail call i32 @llvm.bswap.i32(i32 %88) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 %91) #9, !srcloc !474
  br label %cleanup

cleanup:                                          ; preds = %do.body37, %do.body27, %if.end92.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sym_wide_nego(ptr noundef %np, ptr nocapture noundef readonly %tp, ptr nocapture noundef %cp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 42, i32 4
  %0 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 93
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %2)
  %cmp = icmp eq i8 %2, 2
  br i1 %cmp, label %if.then, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then:                                          ; preds = %entry
  %3 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ioaddr, align 4
  %add.ptr4 = getelementptr i8, ptr %4, i32 93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4, i8 1) #9, !srcloc !464
  %nego_status = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 8
  %5 = ptrtoint ptr %nego_status to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %nego_status, align 2
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.278)
  switch i8 %6, label %if.then.do.body66_crit_edge [
    i8 0, label %if.then.if.end11_crit_edge
    i8 2, label %if.then.if.end11_crit_edge102
  ]

if.then.if.end11_crit_edge102:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then.do.body66_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body66

if.end11:                                         ; preds = %if.then.if.end11_crit_edge, %if.then.if.end11_crit_edge102, %entry.if.end11_crit_edge
  %target1.i = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 19
  %8 = ptrtoint ptr %target1.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %target1.i, align 2
  %conv.i = zext i8 %9 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sym_debug_flags to i32))
  %10 = load i32, ptr @sym_debug_flags, align 4
  %and.i = and i32 %10, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end11.if.end.i_crit_edge, label %if.then.i

if.end11.if.end.i_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %msgin.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 82
  %starget.i.i = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %conv.i, i32 13
  %11 = ptrtoint ptr %starget.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %starget.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.scsi_target, ptr %12, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.i, ptr noundef nonnull @.str.180, ptr noundef nonnull @.str.196) #12
  %call.i.i = tail call i32 @spi_print_msg(ptr noundef %msgin.i) #9
  %call5.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.183) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end11.if.end.i_crit_edge
  %msgin2.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 82
  %arrayidx.i = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 82, i32 3
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i, align 1
  %maxwide.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 63
  %15 = ptrtoint ptr %maxwide.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %maxwide.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %16)
  %cmp.i = icmp ugt i8 %14, %16
  %17 = tail call i8 @llvm.umin.i8(i8 %14, i8 %16) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sym_debug_flags to i32))
  %18 = load i32, ptr @sym_debug_flags, align 4
  %and9.i = and i32 %18, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.end.i.if.end14.i_crit_edge, label %do.end.i

if.end.i.if.end14.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %spec.select.i = zext i1 %cmp.i to i32
  %cmd.i = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 1
  %19 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cmd.i, align 4
  %device.i = getelementptr inbounds %struct.scsi_cmnd, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device.i, align 4
  %sdev_gendev.i = getelementptr inbounds %struct.scsi_device, ptr %22, i32 0, i32 55
  %conv12.i = zext i8 %17 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %sdev_gendev.i, ptr noundef nonnull @.str.197, i32 noundef %conv12.i, i32 noundef %spec.select.i) #12
  br label %if.end14.i

if.end14.i:                                       ; preds = %do.end.i, %if.end.i.if.end14.i_crit_edge
  %23 = select i1 %cmp, i1 %cmp.i, i1 false
  br i1 %23, label %if.end14.i.do.body66_crit_edge, label %if.end19.i

if.end14.i.do.body66_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body66

if.end19.i:                                       ; preds = %if.end14.i
  %starget2.i.i = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %conv.i, i32 13
  %24 = ptrtoint ptr %starget2.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %starget2.i.i, align 4
  tail call fastcc void @sym_settrans(ptr noundef %np, i32 noundef %conv.i, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext %17, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i.i = icmp eq i8 %17, 0
  %renego4.i.i = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %conv.i, i32 5, i32 2
  %26 = ptrtoint ptr %renego4.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load5.i.i = load i8, ptr %renego4.i.i, align 2
  %bf.clear6.i.i = and i8 %bf.load5.i.i, 113
  %bf.set.i.i = or i8 %bf.load5.i.i, 4
  %bf.clear6.sink.i.i = select i1 %tobool.not.i.i, i8 %bf.clear6.i.i, i8 %bf.set.i.i
  %bf.shl.i.i = shl i8 %17, 7
  %bf.clear14.i.i = and i8 %bf.clear6.sink.i.i, 117
  %bf.set15.i.i = or i8 %bf.clear14.i.i, %bf.shl.i.i
  store i8 %bf.set15.i.i, ptr %renego4.i.i, align 2
  %starget_data.i.i = getelementptr inbounds %struct.scsi_target, ptr %25, i32 0, i32 15
  %offset.i.i = getelementptr inbounds %struct.scsi_target, ptr %25, i32 1, i32 1
  %27 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %offset.i.i, align 4
  %28 = ptrtoint ptr %starget_data.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %starget_data.i.i, align 4
  %width19.i.i = getelementptr inbounds %struct.scsi_target, ptr %25, i32 1, i32 2
  %29 = ptrtoint ptr %width19.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %bf.load20.i.i = load i16, ptr %width19.i.i, align 4
  %bf.value21.i.i = zext i8 %17 to i16
  %bf.shl22.i.i = shl i16 %bf.value21.i.i, 15
  %bf.clear23.i.i = and i16 %bf.load20.i.i, 21503
  %bf.set24.i.i = or i16 %bf.clear23.i.i, %bf.shl22.i.i
  store i16 %bf.set24.i.i, ptr %width19.i.i, align 4
  %verbose.i.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 87
  %30 = ptrtoint ptr %verbose.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %verbose.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %31)
  %cmp.i.i = icmp ugt i8 %31, 2
  br i1 %cmp.i.i, label %if.then40.i.i, label %if.end19.i.sym_setwide.exit.i_crit_edge

if.end19.i.sym_setwide.exit.i_crit_edge:          ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sym_setwide.exit.i

if.then40.i.i:                                    ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %conv.i
  tail call fastcc void @sym_announce_transfer_rate(ptr noundef %arrayidx.i.i) #9
  br label %sym_setwide.exit.i

sym_setwide.exit.i:                               ; preds = %if.then40.i.i, %if.end19.i.sym_setwide.exit.i_crit_edge
  br i1 %cmp, label %if.else, label %if.end22.i

if.end22.i:                                       ; preds = %sym_setwide.exit.i
  %msgout.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 81
  %conv24.i = zext i8 %17 to i32
  %call.i = tail call i32 @spi_populate_width_msg(ptr noundef %msgout.i, i32 noundef %conv24.i) #9
  %32 = ptrtoint ptr %msgin2.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 8, ptr %msgin2.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sym_debug_flags to i32))
  %33 = load i32, ptr @sym_debug_flags, align 4
  %and27.i = and i32 %33, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %if.end22.i.if.then17_crit_edge, label %if.then29.i

if.end22.i.if.then17_crit_edge:                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then17

if.then29.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %starget2.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %starget2.i.i, align 4
  %dev.i54.i = getelementptr inbounds %struct.scsi_target, ptr %35, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i54.i, ptr noundef nonnull @.str.180, ptr noundef nonnull @.str.199) #12
  %call.i55.i = tail call i32 @spi_print_msg(ptr noundef %msgout.i) #9
  %call5.i56.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.183) #12
  br label %if.then17

if.then17:                                        ; preds = %if.then29.i, %if.end22.i.if.then17_crit_edge
  %nego_status18 = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 8
  %36 = ptrtoint ptr %nego_status18 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 2, ptr %nego_status18, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !505
  tail call void @arm_heavy_mb() #9
  %wdtr_resp = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 55, i32 5
  %37 = ptrtoint ptr %wdtr_resp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %wdtr_resp, align 4
  %39 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ioaddr, align 4
  %add.ptr22 = getelementptr i8, ptr %40, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !473
  tail call void @arm_heavy_mb() #9
  %41 = tail call i32 @llvm.bswap.i32(i32 %38) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %41) #9, !srcloc !474
  br label %cleanup

if.else:                                          ; preds = %sym_setwide.exit.i
  %offset = getelementptr inbounds %struct.sym_tcb, ptr %tp, i32 0, i32 5, i32 1
  %42 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %offset, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool25.not = icmp eq i8 %43, 0
  br i1 %tobool25.not, label %do.body55, label %if.then26

if.then26:                                        ; preds = %if.else
  %tgoal = getelementptr inbounds %struct.sym_tcb, ptr %tp, i32 0, i32 5
  %msgout = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 81
  %44 = ptrtoint ptr %tgoal to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %tgoal, align 4
  %conv28 = zext i8 %45 to i32
  %conv31 = zext i8 %43 to i32
  %call32 = tail call i32 @spi_populate_sync_msg(ptr noundef %msgout, i32 noundef %conv28, i32 noundef %conv31) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sym_debug_flags to i32))
  %46 = load i32, ptr @sym_debug_flags, align 4
  %and = and i32 %46, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool33.not = icmp eq i32 %and, 0
  br i1 %tobool33.not, label %if.then26.if.end38_crit_edge, label %if.then34

if.then26.if.end38_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then34:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %target1.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %target1.i, align 2
  %conv35 = zext i8 %48 to i32
  %starget.i = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %conv35, i32 13
  %49 = ptrtoint ptr %starget.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %starget.i, align 4
  %dev.i = getelementptr inbounds %struct.scsi_target, ptr %50, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.180, ptr noundef nonnull @.str.188) #12
  %call.i98 = tail call i32 @spi_print_msg(ptr noundef %msgout) #9
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.183) #12
  br label %if.end38

if.end38:                                         ; preds = %if.then34, %if.then26.if.end38_crit_edge
  %nego_status39 = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 8
  %51 = ptrtoint ptr %nego_status39 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %nego_status39, align 2
  %52 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ioaddr, align 4
  %add.ptr42 = getelementptr i8, ptr %53, i32 93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr42, i8 2) #9, !srcloc !464
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !506
  tail call void @arm_heavy_mb() #9
  %sdtr_resp = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 55, i32 7
  %54 = ptrtoint ptr %sdtr_resp to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %sdtr_resp, align 4
  %56 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ioaddr, align 4
  %add.ptr50 = getelementptr i8, ptr %57, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !473
  tail call void @arm_heavy_mb() #9
  %58 = tail call i32 @llvm.bswap.i32(i32 %55) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50, i32 %58) #9, !srcloc !474
  br label %cleanup

do.body55:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !507
  tail call void @arm_heavy_mb() #9
  %clrack = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 54, i32 8
  %59 = ptrtoint ptr %clrack to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %clrack, align 4
  %61 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ioaddr, align 4
  %add.ptr60 = getelementptr i8, ptr %62, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !473
  tail call void @arm_heavy_mb() #9
  %63 = tail call i32 @llvm.bswap.i32(i32 %60) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60, i32 %63) #9, !srcloc !474
  br label %cleanup

do.body66:                                        ; preds = %if.end14.i.do.body66_crit_edge, %if.then.do.body66_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !508
  tail call void @arm_heavy_mb() #9
  %msg_bad = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 55, i32 3
  %64 = ptrtoint ptr %msg_bad to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %msg_bad, align 4
  %66 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ioaddr, align 4
  %add.ptr72 = getelementptr i8, ptr %67, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !473
  tail call void @arm_heavy_mb() #9
  %68 = tail call i32 @llvm.bswap.i32(i32 %65) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr72, i32 %68) #9, !srcloc !474
  br label %cleanup

cleanup:                                          ; preds = %do.body66, %do.body55, %if.end38, %if.then17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sym_nego_rejected(ptr noundef %np, ptr nocapture noundef %tp, ptr nocapture noundef %cp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @sym_nego_default(ptr noundef %np, ptr noundef %tp, ptr noundef %cp)
  %ioaddr = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 42, i32 4
  %0 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 1) #9, !srcloc !464
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sym_nego_default(ptr noundef %np, ptr nocapture noundef %tp, ptr nocapture noundef %cp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %nego_status = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 8
  %0 = ptrtoint ptr %nego_status to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nego_status, align 2
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.279)
  switch i8 %1, label %entry.sw.epilog_crit_edge [
    i8 3, label %sw.bb
    i8 1, label %sw.bb30
    i8 2, label %sw.bb32
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %tgoal = getelementptr inbounds %struct.sym_tcb, ptr %tp, i32 0, i32 5
  %3 = ptrtoint ptr %tgoal to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %tgoal, align 4
  %minsync = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 64
  %5 = ptrtoint ptr %minsync to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %minsync, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %6)
  %cmp = icmp ult i8 %4, %6
  br i1 %cmp, label %if.then, label %sw.bb.if.end_crit_edge

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %tgoal to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %tgoal, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.if.end_crit_edge
  %offset = getelementptr inbounds %struct.sym_tcb, ptr %tp, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %offset, align 1
  %maxoffs = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 66
  %10 = ptrtoint ptr %maxoffs to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %maxoffs, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %11)
  %cmp10 = icmp ugt i8 %9, %11
  br i1 %cmp10, label %if.then12, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %offset to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %offset, align 1
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.end.if.end16_crit_edge
  %qas = getelementptr inbounds %struct.sym_tcb, ptr %tp, i32 0, i32 5, i32 2
  %13 = ptrtoint ptr %qas to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %qas, align 2
  %bf.clear28 = and i8 %bf.load, -121
  %bf.set29 = or i8 %bf.clear28, 8
  store i8 %bf.set29, ptr %qas, align 2
  br label %sw.epilog

sw.bb30:                                          ; preds = %entry
  %target = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 19
  %14 = ptrtoint ptr %target to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %target, align 2
  %conv31 = zext i8 %15 to i32
  %arrayidx.i = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %conv31
  %starget2.i = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %conv31, i32 13
  %16 = ptrtoint ptr %starget2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %starget2.i, align 4
  %wval.i = getelementptr inbounds %struct.sym_tcbh, ptr %arrayidx.i, i32 0, i32 5
  %18 = ptrtoint ptr %wval.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %wval.i, align 1
  %20 = lshr i8 %19, 3
  %.lobit.i = and i8 %20, 1
  tail call fastcc void @sym_settrans(ptr noundef %np, i32 noundef %conv31, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext %.lobit.i, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %renego14.i = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %conv31, i32 5, i32 2
  %21 = ptrtoint ptr %renego14.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load15.i = load i8, ptr %renego14.i, align 2
  %bf.clear16.i = and i8 %bf.load15.i, -7
  %22 = shl nuw nsw i8 %.lobit.i, 2
  %23 = or i8 %22, %bf.clear16.i
  store i8 %23, ptr %renego14.i, align 2
  %starget_data.i = getelementptr inbounds %struct.scsi_target, ptr %17, i32 0, i32 15
  %24 = ptrtoint ptr %starget_data.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %starget_data.i, align 4
  %offset.i = getelementptr inbounds %struct.scsi_target, ptr %17, i32 1, i32 1
  %25 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %offset.i, align 4
  %qas.i = getelementptr inbounds %struct.scsi_target, ptr %17, i32 1, i32 2
  %26 = ptrtoint ptr %qas.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %bf.load23.i = load i16, ptr %qas.i, align 4
  %bf.clear32.i = and i16 %bf.load23.i, -11265
  store i16 %bf.clear32.i, ptr %qas.i, align 4
  %dt35.i = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %conv31, i32 5, i32 2
  %27 = ptrtoint ptr %dt35.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load36.i = load i8, ptr %dt35.i, align 2
  %28 = and i8 %bf.load36.i, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %if.then54.i, label %sw.bb30.sym_setsync.exit_crit_edge

sw.bb30.sym_setsync.exit_crit_edge:               ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #11
  br label %sym_setsync.exit

if.then54.i:                                      ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #11
  %tgoal34.i = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %conv31, i32 5
  %30 = ptrtoint ptr %tgoal34.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %tgoal34.i, align 4
  %offset58.i = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %conv31, i32 5, i32 1
  %31 = ptrtoint ptr %offset58.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %offset58.i, align 1
  %bf.clear61.i = and i8 %bf.load36.i, -9
  %32 = ptrtoint ptr %dt35.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %bf.clear61.i, ptr %dt35.i, align 2
  br label %sym_setsync.exit

sym_setsync.exit:                                 ; preds = %if.then54.i, %sw.bb30.sym_setsync.exit_crit_edge
  tail call fastcc void @sym_announce_transfer_rate(ptr noundef %arrayidx.i) #9
  br label %sw.epilog

sw.bb32:                                          ; preds = %entry
  %target33 = getelementptr inbounds %struct.sym_ccb, ptr %cp, i32 0, i32 19
  %33 = ptrtoint ptr %target33 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %target33, align 2
  %conv34 = zext i8 %34 to i32
  %starget2.i54 = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %conv34, i32 13
  %35 = ptrtoint ptr %starget2.i54 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %starget2.i54, align 4
  tail call fastcc void @sym_settrans(ptr noundef %np, i32 noundef %conv34, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %renego4.i = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %conv34, i32 5, i32 2
  %37 = ptrtoint ptr %renego4.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load5.i = load i8, ptr %renego4.i, align 2
  %bf.clear6.i = and i8 %bf.load5.i, 113
  store i8 %bf.clear6.i, ptr %renego4.i, align 2
  %starget_data.i56 = getelementptr inbounds %struct.scsi_target, ptr %36, i32 0, i32 15
  %offset.i57 = getelementptr inbounds %struct.scsi_target, ptr %36, i32 1, i32 1
  %38 = ptrtoint ptr %offset.i57 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %offset.i57, align 4
  %39 = ptrtoint ptr %starget_data.i56 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %starget_data.i56, align 4
  %width19.i = getelementptr inbounds %struct.scsi_target, ptr %36, i32 1, i32 2
  %40 = ptrtoint ptr %width19.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %bf.load20.i = load i16, ptr %width19.i, align 4
  %bf.clear23.i = and i16 %bf.load20.i, 21503
  store i16 %bf.clear23.i, ptr %width19.i, align 4
  %verbose.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 87
  %41 = ptrtoint ptr %verbose.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %verbose.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %42)
  %cmp.i = icmp ugt i8 %42, 2
  br i1 %cmp.i, label %if.then40.i, label %sw.bb32.sw.epilog_crit_edge

sw.bb32.sw.epilog_crit_edge:                      ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then40.i:                                      ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i58 = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %conv34
  tail call fastcc void @sym_announce_transfer_rate(ptr noundef %arrayidx.i58) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then40.i, %sw.bb32.sw.epilog_crit_edge, %sym_setsync.exit, %if.end16, %entry.sw.epilog_crit_edge
  %msgin = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 82
  %43 = ptrtoint ptr %msgin to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 8, ptr %msgin, align 4
  %msgout = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 81
  %44 = ptrtoint ptr %msgout to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 8, ptr %msgout, align 4
  %45 = ptrtoint ptr %nego_status to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %nego_status, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sym_dequeue_from_squeue(ptr noundef %np, i32 noundef %i, i32 noundef %target, i32 noundef %lun) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 900, i32 %i)
  %cmp1 = icmp slt i32 %i, 900
  br i1 %cmp1, label %while.cond.preheader, label %if.then

while.cond.preheader:                             ; preds = %entry
  %squeueput = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 76
  %0 = ptrtoint ptr %squeueput to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %squeueput, align 4
  %conv15 = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv15, i32 %i)
  %cmp2.not16 = icmp eq i32 %conv15, %i
  br i1 %cmp2.not16, label %while.cond.preheader.if.end57_crit_edge, label %while.body.lr.ph

while.cond.preheader.if.end57_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %squeue = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 74
  %ccbh.i = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 88
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %lun)
  %cmp13 = icmp eq i32 %lun, -1
  %comp_ccbq = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 91
  %blink30 = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 91, i32 1
  br label %while.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.163, ptr noundef nonnull @.str.2, i32 noundef 2973) #13
  unreachable

while.body:                                       ; preds = %if.end44.while.body_crit_edge, %while.body.lr.ph
  %j.018 = phi i32 [ %i, %while.body.lr.ph ], [ %j.1, %if.end44.while.body_crit_edge ]
  %i.addr.017 = phi i32 [ %i, %while.body.lr.ph ], [ %spec.store.select60, %if.end44.while.body_crit_edge ]
  %2 = ptrtoint ptr %squeue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %squeue, align 4
  %arrayidx = getelementptr i32, ptr %3, i32 %i.addr.017
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %shr.i = lshr i32 %6, 10
  %and.i = and i32 %shr.i, 255
  %7 = ptrtoint ptr %ccbh.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ccbh.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %8, i32 %and.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %cp.05.i = load ptr, ptr %arrayidx.i, align 4
  %tobool.not6.i = icmp eq ptr %cp.05.i, null
  br i1 %tobool.not6.i, label %while.body.if.then4_crit_edge, label %while.body.while.body.i_crit_edge

while.body.while.body.i_crit_edge:                ; preds = %while.body
  br label %while.body.i

while.body.if.then4_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.body.while.body.i_crit_edge
  %cp.07.i = phi ptr [ %cp.0.i, %if.end.i.while.body.i_crit_edge ], [ %cp.05.i, %while.body.while.body.i_crit_edge ]
  %ccb_ba.i = getelementptr inbounds %struct.sym_ccb, ptr %cp.07.i, i32 0, i32 17
  %10 = ptrtoint ptr %ccb_ba.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ccb_ba.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %6)
  %cmp.i = icmp eq i32 %11, %6
  br i1 %cmp.i, label %lor.lhs.false, label %if.end.i

if.end.i:                                         ; preds = %while.body.i
  %link_ccbh.i = getelementptr inbounds %struct.sym_ccb, ptr %cp.07.i, i32 0, i32 21
  %12 = ptrtoint ptr %link_ccbh.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %cp.0.i = load ptr, ptr %link_ccbh.i, align 4
  %tobool.not.i = icmp eq ptr %cp.0.i, null
  br i1 %tobool.not.i, label %if.end.i.if.then4_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.end.i.if.then4_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4

if.then4:                                         ; preds = %if.end.i.if.then4_crit_edge, %while.body.if.then4_crit_edge
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.164, ptr noundef nonnull @.str.2, i32 noundef 2982) #13
  unreachable

lor.lhs.false:                                    ; preds = %while.body.i
  %target8 = getelementptr inbounds %struct.sym_ccb, ptr %cp.07.i, i32 0, i32 19
  %13 = ptrtoint ptr %target8 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %target8, align 2
  %conv9 = zext i8 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv9, i32 %target)
  %cmp10 = icmp eq i32 %conv9, %target
  br i1 %cmp10, label %land.lhs.true12, label %lor.lhs.false.if.else_crit_edge

lor.lhs.false.if.else_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true12:                                  ; preds = %lor.lhs.false
  br i1 %cmp13, label %land.lhs.true12.if.then27_crit_edge, label %lor.lhs.false15

land.lhs.true12.if.then27_crit_edge:              ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then27

lor.lhs.false15:                                  ; preds = %land.lhs.true12
  %lun16 = getelementptr inbounds %struct.sym_ccb, ptr %cp.07.i, i32 0, i32 20
  %15 = ptrtoint ptr %lun16 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %lun16, align 1
  %conv17 = zext i8 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv17, i32 %lun)
  %cmp18 = icmp eq i32 %conv17, %lun
  br i1 %cmp18, label %lor.lhs.false15.if.then27_crit_edge, label %lor.lhs.false15.if.else_crit_edge

lor.lhs.false15.if.else_crit_edge:                ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

lor.lhs.false15.if.then27_crit_edge:              ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then27

if.then27:                                        ; preds = %lor.lhs.false15.if.then27_crit_edge, %land.lhs.true12.if.then27_crit_edge
  %cmd = getelementptr inbounds %struct.sym_ccb, ptr %cp.07.i, i32 0, i32 1
  %17 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cmd, align 4
  %result.i = getelementptr inbounds %struct.scsi_cmnd, ptr %18, i32 0, i32 24
  %19 = ptrtoint ptr %result.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %result.i, align 4
  %and.i1 = and i32 %20, -16711681
  %or.i = or i32 %and.i1, 851968
  store i32 %or.i, ptr %result.i, align 4
  %link_ccbq = getelementptr inbounds %struct.sym_ccb, ptr %cp.07.i, i32 0, i32 22
  %blink = getelementptr inbounds %struct.sym_ccb, ptr %cp.07.i, i32 0, i32 22, i32 1
  %21 = ptrtoint ptr %blink to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %blink, align 4
  %23 = ptrtoint ptr %link_ccbq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %link_ccbq, align 4
  %blink1.i = getelementptr inbounds %struct.sym_quehead, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %blink1.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %blink1.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %24, ptr %22, align 4
  %27 = ptrtoint ptr %blink30 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %blink30, align 4
  store ptr %link_ccbq, ptr %blink30, align 4
  store ptr %comp_ccbq, ptr %link_ccbq, align 4
  store ptr %28, ptr %blink, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %link_ccbq, ptr %28, align 4
  br label %if.end44

if.else:                                          ; preds = %lor.lhs.false15.if.else_crit_edge, %lor.lhs.false.if.else_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %i.addr.017, i32 %j.018)
  %cmp32.not = icmp eq i32 %i.addr.017, %j.018
  br i1 %cmp32.not, label %if.else.if.end39_crit_edge, label %if.then34

if.else.if.end39_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then34:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %arrayidx, align 4
  %arrayidx38 = getelementptr i32, ptr %3, i32 %j.018
  %32 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile i32 %31, ptr %arrayidx38, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then34, %if.else.if.end39_crit_edge
  %add = add i32 %j.018, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 899, i32 %add)
  %cmp40 = icmp sgt i32 %add, 899
  %spec.store.select = select i1 %cmp40, i32 0, i32 %add
  br label %if.end44

if.end44:                                         ; preds = %if.end39, %if.then27
  %j.1 = phi i32 [ %j.018, %if.then27 ], [ %spec.store.select, %if.end39 ]
  %add45 = add i32 %i.addr.017, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 899, i32 %add45)
  %cmp46 = icmp sgt i32 %add45, 899
  %spec.store.select60 = select i1 %cmp46, i32 0, i32 %add45
  %33 = ptrtoint ptr %squeueput to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %squeueput, align 4
  %conv = zext i16 %34 to i32
  %cmp2.not = icmp eq i32 %spec.store.select60, %conv
  br i1 %cmp2.not, label %while.end, label %if.end44.while.body_crit_edge

if.end44.while.body_crit_edge:                    ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.store.select60, i32 %j.1)
  %cmp50.not = icmp eq i32 %spec.store.select60, %j.1
  br i1 %cmp50.not, label %while.end.if.end57_crit_edge, label %if.then52

while.end.if.end57_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

if.then52:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %squeue53 = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 74
  %35 = ptrtoint ptr %squeue53 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %squeue53, align 4
  %arrayidx54 = getelementptr i32, ptr %36, i32 %spec.store.select60
  %37 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %arrayidx54, align 4
  %arrayidx56 = getelementptr i32, ptr %36, i32 %j.1
  %39 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile i32 %38, ptr %arrayidx56, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then52, %while.end.if.end57_crit_edge, %while.cond.preheader.if.end57_crit_edge
  %j.0.lcssa29 = phi i32 [ %j.1, %if.then52 ], [ %j.1, %while.end.if.end57_crit_edge ], [ %i, %while.cond.preheader.if.end57_crit_edge ]
  %i.addr.0.lcssa28 = phi i32 [ %spec.store.select60, %if.then52 ], [ %spec.store.select60, %while.end.if.end57_crit_edge ], [ %i, %while.cond.preheader.if.end57_crit_edge ]
  %conv58 = trunc i32 %j.0.lcssa29 to i16
  %40 = ptrtoint ptr %squeueput to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv58, ptr %squeueput, align 4
  %sub = sub i32 %i.addr.0.lcssa28, %j.0.lcssa29
  %div = sdiv i32 %sub, 2
  ret i32 %div
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sym_set_cam_result_error(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_print_msg(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sym_setsync(ptr noundef %np, i32 noundef %target, i8 noundef zeroext %ofs, i8 noundef zeroext %per, i8 noundef zeroext %div, i8 noundef zeroext %fak) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %target
  %starget2 = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %target, i32 13
  %0 = ptrtoint ptr %starget2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %starget2, align 4
  %wval = getelementptr inbounds %struct.sym_tcbh, ptr %arrayidx, i32 0, i32 5
  %2 = ptrtoint ptr %wval to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %wval, align 1
  %4 = lshr i8 %3, 3
  %.lobit = and i8 %4, 1
  tail call fastcc void @sym_settrans(ptr noundef %np, i32 noundef %target, i8 noundef zeroext 0, i8 noundef zeroext %ofs, i8 noundef zeroext %per, i8 noundef zeroext %.lobit, i8 noundef zeroext %div, i8 noundef zeroext %fak)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.lobit)
  %tobool4.not = icmp eq i8 %.lobit, 0
  br i1 %tobool4.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %renego = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %target, i32 5, i32 2
  %5 = ptrtoint ptr %renego to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %renego, align 2
  %bf.clear = and i8 %bf.load, -7
  %bf.set = or i8 %bf.clear, 4
  store i8 %bf.set, ptr %renego, align 2
  br label %if.end18

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ofs)
  %tobool5.not = icmp eq i8 %ofs, 0
  %renego14 = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %target, i32 5, i32 2
  %6 = ptrtoint ptr %renego14 to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load15 = load i8, ptr %renego14, align 2
  %bf.clear16 = and i8 %bf.load15, -7
  br i1 %tobool5.not, label %if.else12, label %if.then6

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %bf.set11 = or i8 %bf.clear16, 2
  %7 = ptrtoint ptr %renego14 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %bf.set11, ptr %renego14, align 2
  br label %if.end18

if.else12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %renego14 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %bf.clear16, ptr %renego14, align 2
  br label %if.end18

if.end18:                                         ; preds = %if.else12, %if.then6, %if.then
  %conv19 = zext i8 %per to i32
  %starget_data = getelementptr inbounds %struct.scsi_target, ptr %1, i32 0, i32 15
  %9 = ptrtoint ptr %starget_data to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv19, ptr %starget_data, align 4
  %conv20 = zext i8 %ofs to i32
  %offset = getelementptr inbounds %struct.scsi_target, ptr %1, i32 1, i32 1
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv20, ptr %offset, align 4
  %qas = getelementptr inbounds %struct.scsi_target, ptr %1, i32 1, i32 2
  %11 = ptrtoint ptr %qas to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load23 = load i16, ptr %qas, align 4
  %bf.clear32 = and i16 %bf.load23, -11265
  store i16 %bf.clear32, ptr %qas, align 4
  %dt35 = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %target, i32 5, i32 2
  %12 = ptrtoint ptr %dt35 to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load36 = load i8, ptr %dt35, align 2
  %13 = and i8 %bf.load36, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %if.then54, label %if.end18.if.end63_crit_edge

if.end18.if.end63_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63

if.then54:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %tgoal34 = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %target, i32 5
  %15 = ptrtoint ptr %tgoal34 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %per, ptr %tgoal34, align 4
  %offset58 = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %target, i32 5, i32 1
  %16 = ptrtoint ptr %offset58 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %ofs, ptr %offset58, align 1
  %bf.clear61 = and i8 %bf.load36, -9
  %17 = ptrtoint ptr %dt35 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %bf.clear61, ptr %dt35, align 2
  br label %if.end63

if.end63:                                         ; preds = %if.then54, %if.end18.if.end63_crit_edge
  tail call fastcc void @sym_announce_transfer_rate(ptr noundef %arrayidx)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_populate_sync_msg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sym_settrans(ptr noundef %np, i32 noundef %target, i8 noundef zeroext %opts, i8 noundef zeroext %ofs, i8 noundef zeroext %per, i8 noundef zeroext %wide, i8 noundef zeroext %div, i8 noundef zeroext %fak) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 42, i32 4
  %0 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 6
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  %3 = and i8 %2, 15
  %and = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %target)
  %cmp = icmp eq i32 %and, %target
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.192, ptr noundef nonnull @.str.2, i32 noundef 1938) #13
  unreachable

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.sym_hcb, ptr %np, i32 0, i32 38, i32 %target
  %sval3 = getelementptr inbounds %struct.sym_tcbh, ptr %arrayidx, i32 0, i32 3
  %4 = ptrtoint ptr %sval3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sval3, align 1
  %wval5 = getelementptr inbounds %struct.sym_tcbh, ptr %arrayidx, i32 0, i32 5
  %6 = ptrtoint ptr %wval5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %wval5, align 1
  %uval7 = getelementptr inbounds %struct.sym_tcbh, ptr %arrayidx, i32 0, i32 2
  %8 = ptrtoint ptr %uval7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %uval7, align 4
  %features = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 60
  %10 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %features, align 4
  %and8 = and i32 %11, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool.not = icmp eq i32 %and8, 0
  %.pn.v = select i1 %tobool.not, i8 -32, i8 -64
  %.pn = and i8 %.pn.v, %5
  %sval.0 = or i8 %.pn, %ofs
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ofs)
  %cmp21.not = icmp eq i8 %ofs, 0
  br i1 %cmp21.not, label %if.end60, label %if.then23

if.then23:                                        ; preds = %if.end
  %12 = and i8 %7, -113
  %add = shl i8 %div, 4
  %shl = add i8 %add, 16
  %or27 = or i8 %12, %shl
  br i1 %tobool.not, label %if.end60.thread, label %if.end60.thread273

if.end60.thread:                                  ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  %13 = and i8 %ofs, 31
  %shl36 = shl i8 %fak, 5
  %or37 = or i8 %shl36, %13
  %14 = and i8 %or27, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %wide)
  %cmp65.not267 = icmp eq i8 %wide, 0
  %masksel283 = select i1 %cmp65.not267, i8 0, i8 8
  %spec.select261268 = or i8 %14, %masksel283
  br label %if.else90

if.end60.thread273:                               ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  %15 = and i8 %9, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %fak)
  %cmp44.not = icmp eq i8 %fak, 0
  %16 = or i8 %15, 12
  %spec.select = select i1 %cmp44.not, i8 %15, i8 %16
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %fak)
  %cmp52 = icmp ugt i8 %fak, 1
  %17 = or i8 %spec.select, 3
  %spec.select263 = select i1 %cmp52, i8 %17, i8 %spec.select
  %18 = and i8 %or27, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %wide)
  %cmp65.not277 = icmp eq i8 %wide, 0
  %masksel = select i1 %cmp65.not277, i8 0, i8 8
  %spec.select261278 = or i8 %18, %masksel
  br label %if.then75

if.end60:                                         ; preds = %if.end
  %19 = and i8 %7, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %wide)
  %cmp65.not = icmp eq i8 %wide, 0
  %masksel285 = select i1 %cmp65.not, i8 0, i8 8
  %spec.select261 = or i8 %19, %masksel285
  br i1 %tobool.not, label %if.end60.if.else90_crit_edge, label %if.end60.if.then75_crit_edge

if.end60.if.then75_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then75

if.end60.if.else90_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else90

if.then75:                                        ; preds = %if.end60.if.then75_crit_edge, %if.end60.thread273
  %spec.select261281 = phi i8 [ %spec.select261278, %if.end60.thread273 ], [ %spec.select261, %if.end60.if.then75_crit_edge ]
  %uval.1279 = phi i8 [ %spec.select263, %if.end60.thread273 ], [ %9, %if.end60.if.then75_crit_edge ]
  %20 = and i8 %uval.1279, 63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %opts)
  %tobool79.not = icmp eq i8 %opts, 0
  br i1 %tobool79.not, label %if.then75.if.end102_crit_edge, label %if.then80

if.then75.if.end102_crit_edge:                    ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end102

if.then80:                                        ; preds = %if.then75
  %and82 = and i32 %11, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %if.then84, label %if.end85

if.then84:                                        ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.193, ptr noundef nonnull @.str.2, i32 noundef 1983) #13
  unreachable

if.end85:                                         ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #11
  %21 = or i8 %20, -128
  br label %if.end102

if.else90:                                        ; preds = %if.end60.if.else90_crit_edge, %if.end60.thread
  %spec.select261272 = phi i8 [ %spec.select261268, %if.end60.thread ], [ %spec.select261, %if.end60.if.else90_crit_edge ]
  %sval.1271 = phi i8 [ %or37, %if.end60.thread ], [ %sval.0, %if.end60.if.else90_crit_edge ]
  %22 = and i8 %spec.select261272, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %per)
  %cmp95 = icmp ult i8 %per, 13
  %masksel284 = select i1 %cmp95, i8 -128, i8 0
  %spec.select262 = or i8 %22, %masksel284
  br label %if.end102

if.end102:                                        ; preds = %if.else90, %if.end85, %if.then75.if.end102_crit_edge
  %sval.1270 = phi i8 [ %sval.0, %if.end85 ], [ %sval.0, %if.then75.if.end102_crit_edge ], [ %sval.1271, %if.else90 ]
  %wval.2 = phi i8 [ %spec.select261281, %if.end85 ], [ %spec.select261281, %if.then75.if.end102_crit_edge ], [ %spec.select262, %if.else90 ]
  %uval.2 = phi i8 [ %21, %if.end85 ], [ %20, %if.then75.if.end102_crit_edge ], [ %9, %if.else90 ]
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %sval.1270)
  %cmp107 = icmp eq i8 %5, %sval.1270
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %wval.2)
  %cmp113 = icmp eq i8 %7, %wval.2
  %or.cond = select i1 %cmp107, i1 %cmp113, i1 false
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %uval.2)
  %cmp120 = icmp eq i8 %9, %uval.2
  %or.cond282 = select i1 %or.cond, i1 %cmp120, i1 false
  br i1 %or.cond282, label %if.end102.cleanup195_crit_edge, label %if.end123

if.end102.cleanup195_crit_edge:                   ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup195

if.end123:                                        ; preds = %if.end102
  %23 = ptrtoint ptr %sval3 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %sval.1270, ptr %sval3, align 1
  %24 = ptrtoint ptr %wval5 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %wval.2, ptr %wval5, align 1
  %25 = ptrtoint ptr %uval7 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %uval.2, ptr %uval7, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %per)
  %cmp131 = icmp ult i8 %per, 50
  br i1 %cmp131, label %land.lhs.true133, label %if.end123.if.end148_crit_edge

if.end123.if.end148_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end148

land.lhs.true133:                                 ; preds = %if.end123
  %26 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %features, align 4
  %and135 = and i32 %27, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135)
  %tobool136.not = icmp eq i32 %and135, 0
  br i1 %tobool136.not, label %if.then137, label %land.lhs.true133.if.end148_crit_edge

land.lhs.true133.if.end148_crit_edge:             ; preds = %land.lhs.true133
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end148

if.then137:                                       ; preds = %land.lhs.true133
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ioaddr, align 4
  %add.ptr140 = getelementptr i8, ptr %29, i32 78
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr140) #9, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  %31 = and i8 %30, -3
  %32 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ioaddr, align 4
  %add.ptr147 = getelementptr i8, ptr %33, i32 78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr147, i8 %31) #9, !srcloc !464
  br label %if.end148

if.end148:                                        ; preds = %if.then137, %land.lhs.true133.if.end148_crit_edge, %if.end123.if.end148_crit_edge
  %34 = ptrtoint ptr %sval3 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %sval3, align 1
  %36 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ioaddr, align 4
  %add.ptr153 = getelementptr i8, ptr %37, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr153, i8 %35) #9, !srcloc !464
  %38 = ptrtoint ptr %wval5 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %wval5, align 1
  %40 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ioaddr, align 4
  %add.ptr158 = getelementptr i8, ptr %41, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr158, i8 %39) #9, !srcloc !464
  %42 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %features, align 4
  %and160 = and i32 %43, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and160)
  %tobool161.not = icmp eq i32 %and160, 0
  br i1 %tobool161.not, label %if.end148.if.end168_crit_edge, label %if.then162

if.end148.if.end168_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end168

if.then162:                                       ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %uval7 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %uval7, align 4
  %46 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ioaddr, align 4
  %add.ptr167 = getelementptr i8, ptr %47, i32 188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr167, i8 %45) #9, !srcloc !464
  br label %if.end168

if.end168:                                        ; preds = %if.then162, %if.end148.if.end168_crit_edge
  %busy_ccbq = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 90
  %48 = ptrtoint ptr %busy_ccbq to i32
  call void @__asan_load4_noabort(i32 %48)
  %qp.0286 = load ptr, ptr %busy_ccbq, align 4
  %cmp170.not287 = icmp eq ptr %qp.0286, %busy_ccbq
  br i1 %cmp170.not287, label %if.end168.cleanup195_crit_edge, label %if.end168.for.body_crit_edge

if.end168.for.body_crit_edge:                     ; preds = %if.end168
  br label %for.body

if.end168.cleanup195_crit_edge:                   ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup195

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end168.for.body_crit_edge
  %qp.0288 = phi ptr [ %qp.0, %cleanup.for.body_crit_edge ], [ %qp.0286, %if.end168.for.body_crit_edge ]
  %target173 = getelementptr i8, ptr %qp.0288, i32 -6
  %49 = ptrtoint ptr %target173 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %target173, align 2
  %conv174 = zext i8 %50 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv174, i32 %target)
  %cmp175.not = icmp eq i32 %conv174, %target
  br i1 %cmp175.not, label %if.end178, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end178:                                        ; preds = %for.body
  %51 = ptrtoint ptr %wval5 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %wval5, align 1
  %sel_scntl3 = getelementptr i8, ptr %qp.0288, i32 -925
  %53 = ptrtoint ptr %sel_scntl3 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %sel_scntl3, align 1
  %54 = ptrtoint ptr %sval3 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %sval3, align 1
  %sel_sxfer = getelementptr i8, ptr %qp.0288, i32 -927
  %56 = ptrtoint ptr %sel_sxfer to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %sel_sxfer, align 1
  %57 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %features, align 4
  %and186 = and i32 %58, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and186)
  %tobool187.not = icmp eq i32 %and186, 0
  br i1 %tobool187.not, label %if.end178.cleanup_crit_edge, label %if.then188

if.end178.cleanup_crit_edge:                      ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then188:                                       ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #11
  %select = getelementptr i8, ptr %qp.0288, i32 -928
  %59 = ptrtoint ptr %uval7 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %uval7, align 4
  %61 = ptrtoint ptr %select to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %select, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then188, %if.end178.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %62 = ptrtoint ptr %qp.0288 to i32
  call void @__asan_load4_noabort(i32 %62)
  %qp.0 = load ptr, ptr %qp.0288, align 4
  %cmp170.not = icmp eq ptr %qp.0, %busy_ccbq
  br i1 %cmp170.not, label %cleanup.cleanup195_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup.cleanup195_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup195

cleanup195:                                       ; preds = %cleanup.cleanup195_crit_edge, %if.end168.cleanup195_crit_edge, %if.end102.cleanup195_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sym_announce_transfer_rate(ptr nocapture noundef %tp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %starget1 = getelementptr inbounds %struct.sym_tcb, ptr %tp, i32 0, i32 13
  %0 = ptrtoint ptr %starget1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %starget1, align 4
  %tprint = getelementptr inbounds %struct.sym_tcb, ptr %tp, i32 0, i32 6
  %2 = ptrtoint ptr %tprint to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tprint, align 4
  %conv = zext i8 %3 to i32
  %starget_data = getelementptr inbounds %struct.scsi_target, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %starget_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %starget_data, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp.not = icmp eq i32 %5, %conv
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %offset = getelementptr inbounds %struct.sym_tcb, ptr %tp, i32 0, i32 6, i32 1
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %offset, align 1
  %conv5 = zext i8 %7 to i32
  %offset7 = getelementptr inbounds %struct.scsi_target, ptr %1, i32 1, i32 1
  %8 = ptrtoint ptr %offset7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offset7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv5)
  %cmp8.not = icmp eq i32 %9, %conv5
  br i1 %cmp8.not, label %lor.lhs.false10, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %width = getelementptr inbounds %struct.sym_tcb, ptr %tp, i32 0, i32 6, i32 2
  %10 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %width, align 2
  %bf.lshr = lshr i8 %bf.load, 7
  %width13 = getelementptr inbounds %struct.scsi_target, ptr %1, i32 1, i32 2
  %11 = ptrtoint ptr %width13 to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load14 = load i16, ptr %width13, align 4
  %bf.lshr15 = lshr i16 %bf.load14, 15
  %12 = zext i8 %bf.lshr to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %bf.lshr15, i16 %12)
  %cmp17.not = icmp eq i16 %bf.lshr15, %12
  br i1 %cmp17.not, label %lor.lhs.false19, label %lor.lhs.false10.if.then_crit_edge

lor.lhs.false10.if.then_crit_edge:                ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false19:                                  ; preds = %lor.lhs.false10
  %bf.lshr22 = lshr i8 %bf.load, 6
  %bf.clear = and i8 %bf.lshr22, 1
  %bf.lshr27 = lshr i16 %bf.load14, 13
  %bf.clear28 = and i16 %bf.lshr27, 1
  %13 = zext i8 %bf.clear to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %bf.clear28, i16 %13)
  %cmp30.not = icmp eq i16 %bf.clear28, %13
  br i1 %cmp30.not, label %lor.lhs.false32, label %lor.lhs.false19.if.then_crit_edge

lor.lhs.false19.if.then_crit_edge:                ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false32:                                  ; preds = %lor.lhs.false19
  %bf.lshr35 = lshr i8 %bf.load, 5
  %bf.clear36 = and i8 %bf.lshr35, 1
  %bf.lshr41 = lshr i16 %bf.load14, 11
  %bf.clear42 = and i16 %bf.lshr41, 1
  %14 = zext i8 %bf.clear36 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %bf.clear42, i16 %14)
  %cmp44.not = icmp eq i16 %bf.clear42, %14
  br i1 %cmp44.not, label %lor.lhs.false46, label %lor.lhs.false32.if.then_crit_edge

lor.lhs.false32.if.then_crit_edge:                ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false46:                                  ; preds = %lor.lhs.false32
  %bf.lshr49 = lshr i8 %bf.load, 4
  %bf.clear50 = and i8 %bf.lshr49, 1
  %bf.lshr55 = lshr i16 %bf.load14, 10
  %bf.clear56 = and i16 %bf.lshr55, 1
  %15 = zext i8 %bf.clear50 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %bf.clear56, i16 %15)
  %cmp58.not = icmp ne i16 %bf.clear56, %15
  %16 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not = icmp eq i8 %16, 0
  %or.cond = select i1 %cmp58.not, i1 true, i1 %tobool.not
  br i1 %or.cond, label %lor.lhs.false46.if.then_crit_edge, label %lor.lhs.false46.if.end_crit_edge

lor.lhs.false46.if.end_crit_edge:                 ; preds = %lor.lhs.false46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

lor.lhs.false46.if.then_crit_edge:                ; preds = %lor.lhs.false46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false46.if.then_crit_edge, %lor.lhs.false32.if.then_crit_edge, %lor.lhs.false19.if.then_crit_edge, %lor.lhs.false10.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %conv68 = trunc i32 %5 to i8
  %17 = ptrtoint ptr %tprint to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv68, ptr %tprint, align 4
  %offset72 = getelementptr inbounds %struct.scsi_target, ptr %1, i32 1, i32 1
  %18 = ptrtoint ptr %offset72 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %offset72, align 4
  %conv73 = trunc i32 %19 to i8
  %offset75 = getelementptr inbounds %struct.sym_tcb, ptr %tp, i32 0, i32 6, i32 1
  %20 = ptrtoint ptr %offset75 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv73, ptr %offset75, align 1
  %width77 = getelementptr inbounds %struct.scsi_target, ptr %1, i32 1, i32 2
  %21 = ptrtoint ptr %width77 to i32
  call void @__asan_load2_noabort(i32 %21)
  %bf.load78 = load i16, ptr %width77, align 4
  %width82 = getelementptr inbounds %struct.sym_tcb, ptr %tp, i32 0, i32 6, i32 2
  %22 = ptrtoint ptr %width82 to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load83 = load i8, ptr %width82, align 2
  %sh.diff = lshr i16 %bf.load78, 8
  %tr.sh.diff = trunc i16 %sh.diff to i8
  %bf.shl = and i8 %tr.sh.diff, -128
  %bf.clear84 = and i8 %bf.load83, 127
  %bf.set = or i8 %bf.shl, %bf.clear84
  store i8 %bf.set, ptr %width82, align 2
  %bf.load87 = load i16, ptr %width77, align 4
  %sh.diff158 = lshr i16 %bf.load87, 7
  %tr.sh.diff159 = trunc i16 %sh.diff158 to i8
  %bf.shl95 = and i8 %tr.sh.diff159, 64
  %bf.clear96 = and i8 %bf.set, -65
  %bf.set97 = or i8 %bf.shl95, %bf.clear96
  store i8 %bf.set97, ptr %width82, align 2
  %bf.load101 = load i16, ptr %width77, align 4
  %sh.diff160 = lshr i16 %bf.load101, 6
  %tr.sh.diff161 = trunc i16 %sh.diff160 to i8
  %bf.shl109 = and i8 %tr.sh.diff161, 32
  %bf.clear110 = and i8 %bf.set97, -33
  %bf.set111 = or i8 %bf.clear110, %bf.shl109
  store i8 %bf.set111, ptr %width82, align 2
  %bf.load115 = load i16, ptr %width77, align 4
  %sh.diff162 = lshr i16 %bf.load115, 6
  %tr.sh.diff163 = trunc i16 %sh.diff162 to i8
  %bf.shl123 = and i8 %tr.sh.diff163, 16
  %bf.clear124 = and i8 %bf.set111, -25
  %bf.set125 = or i8 %bf.shl123, %bf.clear124
  %bf.set131 = or i8 %bf.set125, 8
  store i8 %bf.set131, ptr %width82, align 2
  tail call void @spi_display_xfer_agreement(ptr noundef %1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false46.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_display_xfer_agreement(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_populate_ppr_msg(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_populate_width_msg(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__memset32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @sym_nvram_setup_host(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @sym_nvram_setup_target(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sym_nvram_type(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @getfreq(ptr noundef %np) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 42, i32 4
  %0 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !461
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 0) #9, !srcloc !462
  %2 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr, align 4
  %add.ptr3 = getelementptr i8, ptr %3, i32 66
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr3) #9, !srcloc !467
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !468
  %5 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ioaddr, align 4
  %add.ptr6 = getelementptr i8, ptr %6, i32 57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6, i8 0) #9, !srcloc !464
  %7 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ioaddr, align 4
  %add.ptr9 = getelementptr i8, ptr %8, i32 66
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr9) #9, !srcloc !467
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !468
  %features = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 60
  %10 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %features, align 4
  %and = and i32 %11, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ioaddr, align 4
  %add.ptr13 = getelementptr i8, ptr %13, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !461
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr13, i16 2) #9, !srcloc !462
  %14 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ioaddr, align 4
  %add.ptr16 = getelementptr i8, ptr %15, i32 21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr16, i8 1) #9, !srcloc !464
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %16 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ioaddr, align 4
  %add.ptr19 = getelementptr i8, ptr %17, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr19, i8 4) #9, !srcloc !464
  %18 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ioaddr, align 4
  %add.ptr22 = getelementptr i8, ptr %19, i32 73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr22, i8 0) #9, !srcloc !464
  %20 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ioaddr, align 4
  %add.ptr25 = getelementptr i8, ptr %21, i32 73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr25, i8 8) #9, !srcloc !464
  %22 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ioaddr, align 4
  %add.ptr282 = getelementptr i8, ptr %23, i32 66
  %24 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr282) #9, !srcloc !467
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !468
  %25 = and i16 %24, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool32.not3 = icmp eq i16 %25, 0
  br i1 %tobool32.not3, label %if.end.land.rhs_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end.land.rhs_crit_edge:                        ; preds = %if.end
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %if.end.land.rhs_crit_edge
  %ms.04 = phi i32 [ %inc, %while.body.land.rhs_crit_edge ], [ 0, %if.end.land.rhs_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %ms.04)
  %exitcond.not = icmp eq i32 %ms.04, 100000
  br i1 %exitcond.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %inc = add nuw nsw i32 %ms.04, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 53687000) #9
  %27 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ioaddr, align 4
  %add.ptr28 = getelementptr i8, ptr %28, i32 66
  %29 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr28) #9, !srcloc !467
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !468
  %30 = and i16 %29, 2
  %tobool32.not = icmp eq i16 %30, 0
  br i1 %tobool32.not, label %while.body.land.rhs_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge, %if.end.while.end_crit_edge
  %ms.1 = phi i32 [ 0, %if.end.while.end_crit_edge ], [ 100001, %land.rhs.while.end_crit_edge ], [ %inc, %while.body.while.end_crit_edge ]
  %31 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ioaddr, align 4
  %add.ptr36 = getelementptr i8, ptr %32, i32 73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr36, i8 0) #9, !srcloc !464
  %33 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %features, align 4
  %and38 = and i32 %34, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %while.end.if.end47_crit_edge, label %if.then40

while.end.if.end47_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

if.then40:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ioaddr, align 4
  %add.ptr43 = getelementptr i8, ptr %36, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !461
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr43, i16 0) #9, !srcloc !462
  %37 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ioaddr, align 4
  %add.ptr46 = getelementptr i8, ptr %38, i32 21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr46, i8 0) #9, !srcloc !464
  br label %if.end47

if.end47:                                         ; preds = %if.then40, %while.end.if.end47_crit_edge
  %39 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ioaddr, align 4
  %add.ptr50 = getelementptr i8, ptr %40, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr50, i8 0) #9, !srcloc !464
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ms.1)
  %tobool51.not = icmp eq i32 %ms.1, 0
  br i1 %tobool51.not, label %if.end47.cond.end_crit_edge, label %cond.true

if.end47.cond.end_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  %div = udiv i32 4444160, %ms.1
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end47.cond.end_crit_edge
  %cond = phi i32 [ %div, %cond.true ], [ 0, %if.end47.cond.end_crit_edge ]
  %41 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %features, align 4
  %and53 = and i32 %42, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  %mul56 = shl nuw nsw i32 %cond, 1
  %div57 = udiv i32 %mul56, 3
  %f.0 = select i1 %tobool54.not, i32 %cond, i32 %div57
  %verbose = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 87
  %43 = ptrtoint ptr %verbose to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %verbose, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %44)
  %cmp60 = icmp ugt i8 %44, 1
  br i1 %cmp60, label %do.end, label %cond.end.if.end66_crit_edge

cond.end.if.end66_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %inst_name = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 42, i32 1
  %div641 = lshr i32 %ms.1, 2
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.230, ptr noundef %inst_name, i32 noundef 8, i32 noundef %div641, i32 noundef %f.0) #12
  br label %if.end66

if.end66:                                         ; preds = %do.end, %cond.end.if.end66_crit_edge
  ret i32 %f.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 246)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 246)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { cold noreturn nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !34, !35, !37, !39, !41, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !71, !73, !75, !77, !79, !80, !81, !82, !84, !85, !86, !87, !89, !91, !93, !95, !97, !99, !101, !103, !104, !105, !107, !109, !110, !111, !112, !114, !116, !118, !120, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !176, !177, !178, !180, !181, !182, !184, !185, !186, !187, !189, !190, !192, !194, !195, !196, !198, !199, !200, !201, !203, !204, !205, !207, !208, !209, !211, !212, !213, !215, !216, !217, !219, !220, !221, !223, !224, !225, !227, !228, !229, !231, !232, !233, !234, !236, !238, !240, !242, !244, !245, !246, !247, !249, !250, !251, !252, !254, !255, !256, !257, !259, !260, !261, !262, !264, !265, !266, !268, !269, !270, !272, !273, !274, !276, !278, !280, !282, !283, !284, !286, !288, !289, !290, !291, !293, !295, !297, !299, !300, !301, !302, !303, !305, !306, !307, !309, !310, !311, !312, !314, !315, !317, !318, !319, !320, !321, !322, !324, !325, !326, !327, !329, !330, !331, !333, !335, !336, !337, !338, !340, !342, !343, !344, !346, !347, !349, !351, !353, !355, !357, !359, !361, !362, !363, !364, !366, !368, !369, !370, !371, !372, !373, !375, !376, !377, !378, !379, !380, !382, !383, !384, !386, !387, !388, !390, !391, !392, !394, !395, !396, !398, !399, !400, !401, !403, !404, !405, !407, !408, !409, !411, !412, !413, !414, !416, !417, !418, !419, !421, !422, !423, !425, !426, !427, !429, !430, !431, !433, !434, !435, !437, !438, !439, !441, !442, !443, !445, !446, !447, !449, !450, !451}
!llvm.module.flags = !{!452, !453, !454, !455, !456, !457, !458, !459}
!llvm.ident = !{!460}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 83, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @sym_print_xerr._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @sym_print_xerr._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 86, i32 3}
!10 = !{ptr @sym_print_xerr._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @sym_print_xerr._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 89, i32 3}
!14 = !{ptr @sym_print_xerr._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @sym_print_xerr._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 92, i32 3}
!18 = !{ptr @sym_print_xerr._entry.11, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @sym_print_xerr._entry_ptr.13, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.15, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 95, i32 3}
!22 = !{ptr @sym_print_xerr._entry.14, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @sym_print_xerr._entry_ptr.16, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.17, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 214, i32 3}
!26 = !{ptr @.str.18, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @sym_reset_scsi_bus._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @sym_reset_scsi_bus._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.20, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 216, i32 3}
!31 = !{ptr @sym_reset_scsi_bus._entry.19, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @sym_reset_scsi_bus._entry_ptr.21, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.22, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.23, !30, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.24, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 1512, i32 15}
!37 = !{ptr @.str.25, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 1512, i32 36}
!39 = !{ptr @.str.26, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 1904, i32 4}
!41 = !{ptr @.str.27, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @sym_start_up._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @sym_start_up._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.28, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 2823, i32 33}
!46 = !{ptr @.str.29, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @sym_interrupt._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @sym_interrupt._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.31, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 2865, i32 3}
!51 = !{ptr @sym_interrupt._entry.30, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @sym_interrupt._entry_ptr.32, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.34, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 2913, i32 3}
!55 = !{ptr @sym_interrupt._entry.33, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @sym_interrupt._entry_ptr.35, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.37, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 2950, i32 2}
!59 = !{ptr @sym_interrupt._entry.36, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @sym_interrupt._entry_ptr.38, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.39, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 4758, i32 3}
!63 = !{ptr @.str.40, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @sym_get_ccb._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @sym_get_ccb._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.41, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 4777, i32 3}
!68 = !{ptr @.str.42, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @sym_free_ccb._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @sym_free_ccb._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.43, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 4982, i32 16}
!73 = !{ptr @.str.44, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 5003, i32 7}
!75 = !{ptr @.str.45, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 5118, i32 3}
!77 = !{ptr @.str.46, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 5187, i32 6}
!79 = !{ptr @.str.47, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @sym_queue_scsiio._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @sym_queue_scsiio._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.48, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 5619, i32 3}
!84 = !{ptr @.str.49, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @sym_hcb_attach._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @sym_hcb_attach._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.50, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 5625, i32 15}
!89 = !{ptr @.str.51, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 5633, i32 15}
!91 = !{ptr @.str.52, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 5641, i32 16}
!93 = !{ptr @.str.53, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 5649, i32 17}
!95 = !{ptr @.str.54, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 5650, i32 17}
!97 = !{ptr @.str.55, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 5651, i32 17}
!99 = !{ptr @.str.56, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 5760, i32 18}
!101 = !{ptr @.str.58, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 5784, i32 3}
!103 = !{ptr @sym_hcb_attach._entry.57, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @sym_hcb_attach._entry_ptr.59, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.60, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 5821, i32 4}
!107 = !{ptr @.str.61, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 161, i32 3}
!109 = !{ptr @.str.62, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @sym_soft_reset._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @sym_soft_reset._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.63, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 1134, i32 17}
!114 = !{ptr @.str.64, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 1141, i32 17}
!116 = !{ptr @.str.65, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 1146, i32 17}
!118 = !{ptr @.str.66, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 1149, i32 2}
!120 = !{ptr @.str.67, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @sym_log_hard_error._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @sym_log_hard_error._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.69, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 1159, i32 3}
!125 = !{ptr @sym_log_hard_error._entry.68, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @sym_log_hard_error._entry_ptr.70, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.72, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 1163, i32 2}
!129 = !{ptr @sym_log_hard_error._entry.71, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @sym_log_hard_error._entry_ptr.73, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.75, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 1165, i32 3}
!133 = !{ptr @sym_log_hard_error._entry.74, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @sym_log_hard_error._entry_ptr.76, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.78, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 1166, i32 2}
!137 = !{ptr @sym_log_hard_error._entry.77, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @sym_log_hard_error._entry_ptr.79, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.80, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 1187, i32 35}
!141 = !{ptr @.str.81, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 1195, i32 35}
!143 = !{ptr @.str.82, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 1199, i32 35}
!145 = !{ptr @.str.83, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 1202, i32 35}
!147 = !{ptr @.str.84, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 1205, i32 35}
!149 = !{ptr @.str.85, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 1208, i32 35}
!151 = !{ptr @.str.86, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 1211, i32 35}
!153 = !{ptr @.str.87, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 1219, i32 36}
!155 = !{ptr @.str.88, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 1223, i32 35}
!157 = !{ptr @.str.89, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 1233, i32 35}
!159 = !{ptr @.str.90, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 1238, i32 35}
!161 = !{ptr @.str.91, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 1242, i32 36}
!163 = !{ptr @.str.92, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 1246, i32 36}
!165 = !{ptr @.str.93, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 1250, i32 39}
!167 = !{ptr @.str.94, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 1260, i32 39}
!169 = !{ptr @.str.95, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 1265, i32 36}
!171 = !{ptr @sym_dev_table, !172, !"sym_dev_table", i1 false, i1 false}
!172 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 1186, i32 24}
!173 = !{ptr @.str.96, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 243, i32 3}
!175 = !{ptr @.str.97, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @sym_selectclock._entry, !174, !"_entry", i1 false, i1 false}
!177 = !{ptr @sym_selectclock._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.99, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 255, i32 4}
!180 = !{ptr @sym_selectclock._entry.98, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @sym_selectclock._entry_ptr.100, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.101, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 1606, i32 4}
!184 = !{ptr @.str.102, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @sym_wakeup_done._entry, !183, !"_entry", i1 false, i1 false}
!186 = !{ptr @sym_wakeup_done._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.103, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 5499, i32 2}
!189 = !{ptr @.str.104, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @__func__.sym_int_par, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 2308, i32 6}
!192 = !{ptr @.str.105, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 2309, i32 3}
!194 = !{ptr @sym_int_par._entry, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @sym_int_par._entry_ptr, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.106, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 2475, i32 3}
!198 = !{ptr @.str.107, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @sym_int_ma._entry, !197, !"_entry", i1 false, i1 false}
!200 = !{ptr @sym_int_ma._entry_ptr, !197, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.109, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 2499, i32 3}
!203 = !{ptr @sym_int_ma._entry.108, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @sym_int_ma._entry_ptr.110, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.112, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 2504, i32 3}
!207 = !{ptr @sym_int_ma._entry.111, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @sym_int_ma._entry_ptr.113, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.115, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 2510, i32 3}
!211 = !{ptr @sym_int_ma._entry.114, !210, !"_entry", i1 false, i1 false}
!212 = !{ptr @sym_int_ma._entry_ptr.116, !210, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.118, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 2530, i32 3}
!215 = !{ptr @sym_int_ma._entry.117, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @sym_int_ma._entry_ptr.119, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.121, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 2543, i32 3}
!219 = !{ptr @sym_int_ma._entry.120, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @sym_int_ma._entry_ptr.122, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.124, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 2554, i32 3}
!223 = !{ptr @sym_int_ma._entry.123, !222, !"_entry", i1 false, i1 false}
!224 = !{ptr @sym_int_ma._entry_ptr.125, !222, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.127, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 2640, i32 3}
!227 = !{ptr @sym_int_ma._entry.126, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @sym_int_ma._entry_ptr.128, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.129, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 2263, i32 2}
!231 = !{ptr @.str.130, !230, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @sym_int_sbmc._entry, !230, !"_entry", i1 false, i1 false}
!233 = !{ptr @sym_int_sbmc._entry_ptr, !230, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.131, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 105, i32 25}
!236 = !{ptr @.str.132, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 106, i32 24}
!238 = !{ptr @.str.133, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 107, i32 25}
!240 = !{ptr @.str.134, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 109, i32 9}
!242 = !{ptr @.str.135, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 2228, i32 32}
!244 = !{ptr @.str.136, !243, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @sym_int_sto._entry, !243, !"_entry", i1 false, i1 false}
!246 = !{ptr @sym_int_sto._entry_ptr, !243, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.137, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 2241, i32 2}
!249 = !{ptr @.str.138, !248, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @sym_int_udc._entry, !248, !"_entry", i1 false, i1 false}
!251 = !{ptr @sym_int_udc._entry_ptr, !248, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.139, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 4380, i32 32}
!254 = !{ptr @.str.140, !253, !"<string literal>", i1 false, i1 false}
!255 = !{ptr @sym_int_sir._entry, !253, !"_entry", i1 false, i1 false}
!256 = !{ptr @sym_int_sir._entry_ptr, !253, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.141, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 4413, i32 3}
!259 = !{ptr @.str.142, !258, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @sym_int_sir._entry.143, !258, !"_entry", i1 false, i1 false}
!261 = !{ptr @sym_int_sir._entry_ptr.144, !258, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @.str.145, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 4421, i32 3}
!264 = !{ptr @sym_int_sir._entry.146, !263, !"_entry", i1 false, i1 false}
!265 = !{ptr @sym_int_sir._entry_ptr.147, !263, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.148, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 4429, i32 3}
!268 = !{ptr @sym_int_sir._entry.149, !267, !"_entry", i1 false, i1 false}
!269 = !{ptr @sym_int_sir._entry_ptr.150, !267, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @.str.151, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 4458, i32 3}
!272 = !{ptr @sym_int_sir._entry.152, !271, !"_entry", i1 false, i1 false}
!273 = !{ptr @sym_int_sir._entry_ptr.153, !271, !"_entry_ptr", i1 false, i1 false}
!274 = !{ptr @.str.154, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 4492, i32 21}
!276 = !{ptr @.str.155, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 4556, i32 24}
!278 = !{ptr @.str.156, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 4584, i32 23}
!280 = !{ptr @.str.158, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 4594, i32 5}
!282 = !{ptr @sym_int_sir._entry.157, !281, !"_entry", i1 false, i1 false}
!283 = !{ptr @sym_int_sir._entry_ptr.159, !281, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @.str.160, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 4608, i32 21}
!286 = !{ptr @.str.161, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 5370, i32 3}
!288 = !{ptr @.str.162, !287, !"<string literal>", i1 false, i1 false}
!289 = !{ptr @sym_complete_error._entry, !287, !"_entry", i1 false, i1 false}
!290 = !{ptr @sym_complete_error._entry_ptr, !287, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @.str.163, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 2973, i32 2}
!293 = !{ptr @.str.164, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 2982, i32 3}
!295 = !{ptr @.str.165, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 3387, i32 3}
!297 = !{ptr @.str.166, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 3580, i32 4}
!299 = !{ptr @.str.167, !298, !"<string literal>", i1 false, i1 false}
!300 = !{ptr @.str.168, !298, !"<string literal>", i1 false, i1 false}
!301 = !{ptr @sym_sir_task_recovery._entry, !298, !"_entry", i1 false, i1 false}
!302 = !{ptr @sym_sir_task_recovery._entry_ptr, !298, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @.str.170, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 3589, i32 3}
!305 = !{ptr @sym_sir_task_recovery._entry.169, !304, !"_entry", i1 false, i1 false}
!306 = !{ptr @sym_sir_task_recovery._entry_ptr.171, !304, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @.str.172, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 56, i32 3}
!309 = !{ptr @.str.173, !308, !"<string literal>", i1 false, i1 false}
!310 = !{ptr @sym_printl_hex._entry, !308, !"_entry", i1 false, i1 false}
!311 = !{ptr @sym_printl_hex._entry_ptr, !308, !"_entry_ptr", i1 false, i1 false}
!312 = !{ptr @sym_printl_hex._entry.174, !313, !"_entry", i1 false, i1 false}
!313 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 57, i32 2}
!314 = !{ptr @sym_printl_hex._entry_ptr.175, !313, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.176, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 3059, i32 4}
!317 = !{ptr @.str.177, !316, !"<string literal>", i1 false, i1 false}
!318 = !{ptr @sym_sir_bad_scsi_status._entry, !316, !"_entry", i1 false, i1 false}
!319 = !{ptr @sym_sir_bad_scsi_status._entry_ptr, !316, !"_entry_ptr", i1 false, i1 false}
!320 = !{ptr @.str.178, !316, !"<string literal>", i1 false, i1 false}
!321 = !{ptr @.str.179, !316, !"<string literal>", i1 false, i1 false}
!322 = !{ptr @.str.180, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 62, i32 2}
!324 = !{ptr @.str.181, !323, !"<string literal>", i1 false, i1 false}
!325 = !{ptr @sym_print_msg._entry, !323, !"_entry", i1 false, i1 false}
!326 = !{ptr @sym_print_msg._entry_ptr, !323, !"_entry_ptr", i1 false, i1 false}
!327 = !{ptr @.str.183, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 65, i32 2}
!329 = !{ptr @sym_print_msg._entry.182, !328, !"_entry", i1 false, i1 false}
!330 = !{ptr @sym_print_msg._entry_ptr.184, !328, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @.str.185, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 3951, i32 34}
!333 = !{ptr @.str.186, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 3982, i32 3}
!335 = !{ptr @.str.187, !334, !"<string literal>", i1 false, i1 false}
!336 = !{ptr @sym_sync_nego_check._entry, !334, !"_entry", i1 false, i1 false}
!337 = !{ptr @sym_sync_nego_check._entry_ptr, !334, !"_entry_ptr", i1 false, i1 false}
!338 = !{ptr @.str.188, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 4011, i32 34}
!340 = !{ptr @.str.189, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 71, i32 2}
!342 = !{ptr @sym_print_nego_msg._entry, !341, !"_entry", i1 false, i1 false}
!343 = !{ptr @sym_print_nego_msg._entry_ptr, !341, !"_entry_ptr", i1 false, i1 false}
!344 = !{ptr @sym_print_nego_msg._entry.190, !345, !"_entry", i1 false, i1 false}
!345 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 74, i32 2}
!346 = !{ptr @sym_print_nego_msg._entry_ptr.191, !345, !"_entry_ptr", i1 false, i1 false}
!347 = !{ptr @div_10M, !348, !"div_10M", i1 false, i1 false}
!348 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 462, i32 18}
!349 = !{ptr @.str.192, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 1938, i32 2}
!351 = !{ptr @.str.193, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 1983, i32 4}
!353 = !{ptr @.str.194, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 4072, i32 34}
!355 = !{ptr @.str.195, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 4137, i32 34}
!357 = !{ptr @.str.196, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 4203, i32 34}
!359 = !{ptr @.str.197, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 4221, i32 3}
!361 = !{ptr @.str.198, !360, !"<string literal>", i1 false, i1 false}
!362 = !{ptr @sym_wide_nego_check._entry, !360, !"_entry", i1 false, i1 false}
!363 = !{ptr @sym_wide_nego_check._entry_ptr, !360, !"_entry_ptr", i1 false, i1 false}
!364 = !{ptr @.str.199, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 4251, i32 34}
!366 = !{ptr @.str.200, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 918, i32 2}
!368 = !{ptr @.str.201, !367, !"<string literal>", i1 false, i1 false}
!369 = !{ptr @sym_prepare_setting._entry, !367, !"_entry", i1 false, i1 false}
!370 = !{ptr @sym_prepare_setting._entry_ptr, !367, !"_entry_ptr", i1 false, i1 false}
!371 = !{ptr @.str.202, !367, !"<string literal>", i1 false, i1 false}
!372 = !{ptr @.str.203, !367, !"<string literal>", i1 false, i1 false}
!373 = !{ptr @.str.205, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 929, i32 3}
!375 = !{ptr @sym_prepare_setting._entry.204, !374, !"_entry", i1 false, i1 false}
!376 = !{ptr @sym_prepare_setting._entry_ptr.206, !374, !"_entry_ptr", i1 false, i1 false}
!377 = !{ptr @.str.207, !374, !"<string literal>", i1 false, i1 false}
!378 = !{ptr @.str.208, !374, !"<string literal>", i1 false, i1 false}
!379 = !{ptr @.str.209, !374, !"<string literal>", i1 false, i1 false}
!380 = !{ptr @.str.211, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 933, i32 3}
!382 = !{ptr @sym_prepare_setting._entry.210, !381, !"_entry", i1 false, i1 false}
!383 = !{ptr @sym_prepare_setting._entry_ptr.212, !381, !"_entry_ptr", i1 false, i1 false}
!384 = !{ptr @.str.214, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 935, i32 4}
!386 = !{ptr @sym_prepare_setting._entry.213, !385, !"_entry", i1 false, i1 false}
!387 = !{ptr @sym_prepare_setting._entry_ptr.215, !385, !"_entry_ptr", i1 false, i1 false}
!388 = !{ptr @.str.217, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 942, i32 3}
!390 = !{ptr @sym_prepare_setting._entry.216, !389, !"_entry", i1 false, i1 false}
!391 = !{ptr @sym_prepare_setting._entry_ptr.218, !389, !"_entry_ptr", i1 false, i1 false}
!392 = !{ptr @.str.220, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 947, i32 3}
!394 = !{ptr @sym_prepare_setting._entry.219, !393, !"_entry", i1 false, i1 false}
!395 = !{ptr @sym_prepare_setting._entry_ptr.221, !393, !"_entry_ptr", i1 false, i1 false}
!396 = !{ptr @.str.222, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 389, i32 4}
!398 = !{ptr @.str.223, !397, !"<string literal>", i1 false, i1 false}
!399 = !{ptr @sym_getclock._entry, !397, !"_entry", i1 false, i1 false}
!400 = !{ptr @sym_getclock._entry_ptr, !397, !"_entry_ptr", i1 false, i1 false}
!401 = !{ptr @.str.225, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 403, i32 4}
!403 = !{ptr @sym_getclock._entry.224, !402, !"_entry", i1 false, i1 false}
!404 = !{ptr @sym_getclock._entry_ptr.226, !402, !"_entry_ptr", i1 false, i1 false}
!405 = !{ptr @.str.228, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 411, i32 5}
!407 = !{ptr @sym_getclock._entry.227, !406, !"_entry", i1 false, i1 false}
!408 = !{ptr @sym_getclock._entry_ptr.229, !406, !"_entry_ptr", i1 false, i1 false}
!409 = !{ptr @.str.230, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 355, i32 3}
!411 = !{ptr @.str.231, !410, !"<string literal>", i1 false, i1 false}
!412 = !{ptr @getfreq._entry, !410, !"_entry", i1 false, i1 false}
!413 = !{ptr @getfreq._entry_ptr, !410, !"_entry_ptr", i1 false, i1 false}
!414 = !{ptr @.str.232, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 1028, i32 3}
!416 = !{ptr @.str.233, !415, !"<string literal>", i1 false, i1 false}
!417 = !{ptr @sym_snooptest._entry, !415, !"_entry", i1 false, i1 false}
!418 = !{ptr @sym_snooptest._entry_ptr, !415, !"_entry_ptr", i1 false, i1 false}
!419 = !{ptr @.str.235, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 1037, i32 3}
!421 = !{ptr @sym_snooptest._entry.234, !420, !"_entry", i1 false, i1 false}
!422 = !{ptr @sym_snooptest._entry_ptr.236, !420, !"_entry_ptr", i1 false, i1 false}
!423 = !{ptr @.str.238, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 1045, i32 3}
!425 = !{ptr @sym_snooptest._entry.237, !424, !"_entry", i1 false, i1 false}
!426 = !{ptr @sym_snooptest._entry_ptr.239, !424, !"_entry_ptr", i1 false, i1 false}
!427 = !{ptr @.str.241, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 1062, i32 3}
!429 = !{ptr @sym_snooptest._entry.240, !428, !"_entry", i1 false, i1 false}
!430 = !{ptr @sym_snooptest._entry_ptr.242, !428, !"_entry_ptr", i1 false, i1 false}
!431 = !{ptr @.str.244, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 1063, i32 3}
!433 = !{ptr @sym_snooptest._entry.243, !432, !"_entry", i1 false, i1 false}
!434 = !{ptr @sym_snooptest._entry_ptr.245, !432, !"_entry_ptr", i1 false, i1 false}
!435 = !{ptr @.str.247, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 1072, i32 3}
!437 = !{ptr @sym_snooptest._entry.246, !436, !"_entry", i1 false, i1 false}
!438 = !{ptr @sym_snooptest._entry_ptr.248, !436, !"_entry_ptr", i1 false, i1 false}
!439 = !{ptr @.str.250, !440, !"<string literal>", i1 false, i1 false}
!440 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 1077, i32 3}
!441 = !{ptr @sym_snooptest._entry.249, !440, !"_entry", i1 false, i1 false}
!442 = !{ptr @sym_snooptest._entry_ptr.251, !440, !"_entry_ptr", i1 false, i1 false}
!443 = !{ptr @.str.253, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 1082, i32 3}
!445 = !{ptr @sym_snooptest._entry.252, !444, !"_entry", i1 false, i1 false}
!446 = !{ptr @sym_snooptest._entry_ptr.254, !444, !"_entry_ptr", i1 false, i1 false}
!447 = !{ptr @.str.255, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../drivers/scsi/sym53c8xx_2/sym_hipd.c", i32 978, i32 3}
!449 = !{ptr @.str.256, !448, !"<string literal>", i1 false, i1 false}
!450 = !{ptr @sym_regtest._entry, !448, !"_entry", i1 false, i1 false}
!451 = !{ptr @sym_regtest._entry_ptr, !448, !"_entry_ptr", i1 false, i1 false}
!452 = !{i32 1, !"wchar_size", i32 2}
!453 = !{i32 1, !"min_enum_size", i32 4}
!454 = !{i32 8, !"branch-target-enforcement", i32 0}
!455 = !{i32 8, !"sign-return-address", i32 0}
!456 = !{i32 8, !"sign-return-address-all", i32 0}
!457 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!458 = !{i32 7, !"uwtable", i32 1}
!459 = !{i32 7, !"frame-pointer", i32 2}
!460 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!461 = !{i64 2152347905}
!462 = !{i64 4805713}
!463 = !{i64 2152347481}
!464 = !{i64 4806136}
!465 = !{i64 4806531}
!466 = !{i64 2152345876}
!467 = !{i64 4805913}
!468 = !{i64 2152346488}
!469 = !{i64 4806751}
!470 = !{i64 2152347100}
!471 = !{i64 2155348610}
!472 = !{i64 2155348945}
!473 = !{i64 2152348455}
!474 = !{i64 4806333}
!475 = !{i64 2155370882}
!476 = !{i64 2155349601}
!477 = !{!"branch_weights", i32 1, i32 2000}
!478 = !{i64 2155421209}
!479 = !{i64 2155389411}
!480 = !{i64 2155390404}
!481 = !{i64 2155391023}
!482 = !{i64 2155421538}
!483 = !{i64 2155414002}
!484 = !{i64 2155414964}
!485 = !{i64 2155436502}
!486 = !{i64 2155445786}
!487 = !{i64 2155429862}
!488 = !{i64 2155478802}
!489 = !{i64 2155481752}
!490 = !{i64 2155482645}
!491 = !{i64 2155483735}
!492 = !{i64 2155484348}
!493 = !{i64 2155316999}
!494 = !{i64 2155378779}
!495 = !{i64 2155379682}
!496 = !{i64 2155508419}
!497 = !{i64 2155450390}
!498 = !{i64 2155451003}
!499 = !{i64 2155454711}
!500 = !{i64 2155455328}
!501 = !{i64 2155455941}
!502 = !{i64 2155457186}
!503 = !{i64 2155457801}
!504 = !{i64 2155458414}
!505 = !{i64 2155461411}
!506 = !{i64 2155462345}
!507 = !{i64 2155462962}
!508 = !{i64 2155463575}
