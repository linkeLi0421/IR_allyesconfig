; ModuleID = '/llk/IR_all_yes/drivers/scsi/atp870u.c_pt.bc'
source_filename = "../drivers/scsi/atp870u.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.atp_id = type { i8, i8, i8, i32, i32, ptr, ptr, i32, i32, ptr }
%struct.atp_unit = type { i32, [2 x i32], [2 x i32], [2 x i8], [2 x i8], [2 x i8], [2 x i8], [2 x i8], [2 x i8], [2 x i8], [2 x i32], [2 x i16], [2 x i16], [2 x i16], [2 x i16], [2 x [16 x i8]], [2 x [16 x i8]], [2 x [32 x ptr]], [2 x [16 x %struct.atp_id]], ptr, ptr, i32 }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@__UNIQUE_ID_file287 = internal constant [34 x i8] c"atp870u.file=drivers/scsi/atp870u\00", section ".modinfo", align 1
@__UNIQUE_ID_license288 = internal constant [20 x i8] c"atp870u.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_atp870u__289_1767_atp870u_driver_init6 = internal global ptr @atp870u_driver_init, section ".initcall6.init", align 4
@atp870u_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @atp870u_id_table, ptr @atp870u_probe, ptr @atp870u_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_atp870u_driver_exit = internal global ptr @atp870u_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"atp870u\00", [24 x i8] zeroinitializer }, align 32
@atp870u_id_table = internal global { [11 x %struct.pci_device_id], [64 x i8] } { [11 x %struct.pci_device_id] [%struct.pci_device_id { i32 4497, i32 32906, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4497, i32 32896, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4497, i32 32897, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4497, i32 32770, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4497, i32 32784, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4497, i32 32800, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4497, i32 32816, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4497, i32 32832, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4497, i32 32848, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4497, i32 32864, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [64 x i8] zeroinitializer }, align 32
@atp870u_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1562, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"ATP850S chips (AEC6710L/F cards) are not supported.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"atp870u_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/scsi/atp870u.c\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@atp870u_probe._entry_ptr = internal global ptr @atp870u_probe._entry, section ".printk_index", align 4
@atp870u_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1571, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013atp870u: DMA mask required but not available.\0A\00", [47 x i8] zeroinitializer }, align 32
@atp870u_probe._entry_ptr.8 = internal global ptr @atp870u_probe._entry.6, section ".printk_index", align 4
@atp870u_template = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @atp870u_queuecommand, ptr null, ptr null, ptr @.str, ptr @atp870u_info, ptr null, ptr null, ptr null, ptr @atp870u_abort, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atp870u_biosparam, ptr null, ptr @atp870u_show_info, ptr null, ptr null, ptr null, ptr null, ptr @.str, ptr null, i32 32, i32 7, i16 128, i16 0, i32 128, i32 0, i32 0, i32 0, i16 0, i8 0, i32 0, i8 0, i32 0, ptr null, ptr null, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@atp870u_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 1601, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Unable to allocate tables for Acard controller\0A\00", [48 x i8] zeroinitializer }, align 32
@atp870u_probe._entry_ptr.11 = internal global ptr @atp870u_probe._entry.9, section ".printk_index", align 4
@atp870u_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 1614, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unable to allocate IRQ %d.\0A\00", [36 x i8] zeroinitializer }, align 32
@atp870u_probe._entry_ptr.14 = internal global ptr @atp870u_probe._entry.12, section ".printk_index", align 4
@atp870u_info.buffer = internal global { [128 x i8], [32 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"ACARD AEC-6710/6712/67160 PCI Ultra/W/LVD SCSI-3 Adapter Driver V2.6+ac \00", [55 x i8] zeroinitializer }, align 32
@atp870u_abort._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 1653, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c" atp870u: abort Channel = %x \0A\00", [33 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"atp870u_abort\00", [18 x i8] zeroinitializer }, align 32
@atp870u_abort._entry_ptr = internal global ptr @atp870u_abort._entry, section ".printk_index", align 4
@atp870u_abort._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.3, i32 1654, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"working=%x last_cmd=%x \00", [40 x i8] zeroinitializer }, align 32
@atp870u_abort._entry_ptr.20 = internal global ptr @atp870u_abort._entry.18, section ".printk_index", align 4
@atp870u_abort._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.17, ptr @.str.3, i32 1655, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c" quhdu=%x quendu=%x \00", [43 x i8] zeroinitializer }, align 32
@atp870u_abort._entry_ptr.23 = internal global ptr @atp870u_abort._entry.21, section ".printk_index", align 4
@atp870u_abort._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.17, ptr @.str.3, i32 1657, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" r%2x=%2x\00", [22 x i8] zeroinitializer }, align 32
@atp870u_abort._entry_ptr.26 = internal global ptr @atp870u_abort._entry.24, section ".printk_index", align 4
@atp870u_abort._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.17, ptr @.str.3, i32 1659, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" r1c=%2x\00", [23 x i8] zeroinitializer }, align 32
@atp870u_abort._entry_ptr.29 = internal global ptr @atp870u_abort._entry.27, section ".printk_index", align 4
@atp870u_abort._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.17, ptr @.str.3, i32 1660, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c" r1f=%2x in_snd=%2x \00", [43 x i8] zeroinitializer }, align 32
@atp870u_abort._entry_ptr.32 = internal global ptr @atp870u_abort._entry.30, section ".printk_index", align 4
@atp870u_abort._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.17, ptr @.str.3, i32 1661, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" d00=%2x\00", [23 x i8] zeroinitializer }, align 32
@atp870u_abort._entry_ptr.35 = internal global ptr @atp870u_abort._entry.33, section ".printk_index", align 4
@atp870u_abort._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.17, ptr @.str.3, i32 1662, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" d02=%2x\00", [23 x i8] zeroinitializer }, align 32
@atp870u_abort._entry_ptr.38 = internal global ptr @atp870u_abort._entry.36, section ".printk_index", align 4
@atp870u_abort._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.17, ptr @.str.3, i32 1666, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\0A que cdb= \00", [20 x i8] zeroinitializer }, align 32
@atp870u_abort._entry_ptr.41 = internal global ptr @atp870u_abort._entry.39, section ".printk_index", align 4
@atp870u_abort._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.17, ptr @.str.3, i32 1668, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %2x \00", [26 x i8] zeroinitializer }, align 32
@atp870u_abort._entry_ptr.44 = internal global ptr @atp870u_abort._entry.42, section ".printk_index", align 4
@atp870u_abort._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.17, ptr @.str.3, i32 1670, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c" last_lenu= %x \00", [16 x i8] zeroinitializer }, align 32
@atp870u_abort._entry_ptr.47 = internal global ptr @atp870u_abort._entry.45, section ".printk_index", align 4
@.str.48 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"ACARD AEC-671X Driver Version: 2.6+ac\0A\0AAdapter Configuration:\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"               Base IO: %#.4lx\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"                   IRQ: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@atp870u_init_tables._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.3, i32 1263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"atp870u_init_tables fail\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"atp870u_init_tables\00", [44 x i8] zeroinitializer }, align 32
@atp870u_init_tables._entry_ptr = internal global ptr @atp870u_init_tables._entry, section ".printk_index", align 4
@atp880_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.3, i32 1373, ptr @.str.55, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"ACARD AEC-67160 PCI Ultra3 LVD Host Adapter: IO:%lx, IRQ:%d.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"atp880_init\00", [20 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@atp880_init._entry_ptr = internal global ptr @atp880_init._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@tscam.g2q_tab = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"812+4-.'", [24 x i8] zeroinitializer }, align 32
@atp_is.mbuf = internal global { [512 x i8], [128 x i8] } zeroinitializer, align 32
@atp_is.synn = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\80\01\03\01\19\0E", [26 x i8] zeroinitializer }, align 32
@atp_is.synw = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\80\01\03\01\19\0E", [26 x i8] zeroinitializer }, align 32
@atp_is.synw_870 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\80\01\03\01\0C\07", [26 x i8] zeroinitializer }, align 32
@__const.atp_is.synuw = private unnamed_addr constant [6 x i8] c"\80\01\03\01\0A\0E", align 1
@atp_is.wide = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\80\01\02\03\01\00", [26 x i8] zeroinitializer }, align 32
@atp_is.u3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\80\01\06\04\09\00\0E\01\02", [23 x i8] zeroinitializer }, align 32
@atp_is._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.3, i32 1794, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016         ID: %2d  Host Adapter\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"atp_is\00", [25 x i8] zeroinitializer }, align 32
@atp_is._entry_ptr = internal global ptr @atp_is._entry, section ".printk_index", align 4
@atp_is._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.3, i32 1901, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016         ID: %2d  %s\0A\00", [40 x i8] zeroinitializer }, align 32
@atp_is._entry_ptr.60 = internal global ptr @atp_is._entry.58, section ".printk_index", align 4
@atp885_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.3, i32 1453, ptr @.str.55, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"ACARD AEC-67162 PCI Ultra3 LVD Host Adapter: IO:%lx, IRQ:%d.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"atp885_init\00", [20 x i8] zeroinitializer }, align 32
@atp885_init._entry_ptr = internal global ptr @atp885_init._entry, section ".printk_index", align 4
@atp885_init._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.3, i32 1535, ptr @.str.55, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Scanning Channel A SCSI Device ...\0A\00", [60 x i8] zeroinitializer }, align 32
@atp885_init._entry_ptr.65 = internal global ptr @atp885_init._entry.63, section ".printk_index", align 4
@atp885_init._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.62, ptr @.str.3, i32 1538, ptr @.str.55, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Scanning Channel B SCSI Device ...\0A\00", [60 x i8] zeroinitializer }, align 32
@atp885_init._entry_ptr.68 = internal global ptr @atp885_init._entry.66, section ".printk_index", align 4
@atp870_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.3, i32 1321, ptr @.str.55, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"ACARD AEC-671X PCI Ultra/W SCSI-2/3 Host Adapter: IO:%lx, IRQ:%d.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"atp870_init\00", [20 x i8] zeroinitializer }, align 32
@atp870_init._entry_ptr = internal global ptr @atp870_init._entry, section ".printk_index", align 4
@atp870u_intr_handle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.3, i32 499, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\014AEC67162 CRC ERROR !\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"atp870u_intr_handle\00", [44 x i8] zeroinitializer }, align 32
@atp870u_intr_handle._entry_ptr = internal global ptr @atp870u_intr_handle._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 33, i64 64, i64 133]
@__sancov_gen_cov_switch_values.73 = internal global [8 x i64] [i64 6, i64 8, i64 76, i64 77, i64 128, i64 140, i64 141, i64 143]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 8, i64 128, i64 143]
@__sancov_gen_cov_switch_values.75 = internal global [6 x i64] [i64 4, i64 8, i64 8, i64 10, i64 40, i64 42]
@__sancov_gen_cov_switch_values.76 = internal global [6 x i64] [i64 4, i64 8, i64 8, i64 10, i64 40, i64 42]
@__sancov_gen_cov_switch_values.77 = internal global [6 x i64] [i64 4, i64 8, i64 8, i64 10, i64 40, i64 42]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 8, i64 22, i64 66]
@__sancov_gen_cov_switch_values.79 = internal global [5 x i64] [i64 3, i64 4, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 37]
@__sancov_gen_cov_switch_values.81 = internal global [6 x i64] [i64 4, i64 8, i64 8, i64 10, i64 40, i64 42]
@__sancov_gen_cov_switch_values.82 = internal global [6 x i64] [i64 4, i64 8, i64 8, i64 10, i64 40, i64 42]
@__sancov_gen_cov_switch_values.83 = internal global [6 x i64] [i64 4, i64 8, i64 8, i64 10, i64 40, i64 42]
@__sancov_gen_cov_switch_values.84 = internal global [5 x i64] [i64 3, i64 8, i64 22, i64 66, i64 133]
@__sancov_gen_cov_switch_values.85 = internal global [5 x i64] [i64 3, i64 16, i64 32896, i64 32897, i64 32906]
@__sancov_gen_cov_switch_values.86 = internal global [5 x i64] [i64 3, i64 16, i64 32896, i64 32897, i64 32906]
@__sancov_gen_cov_switch_values.87 = internal global [5 x i64] [i64 3, i64 4, i64 10, i64 14, i64 15]
@__sancov_gen_cov_switch_values.88 = internal global [5 x i64] [i64 3, i64 4, i64 10, i64 14, i64 15]
@__sancov_gen_cov_switch_values.89 = internal global [5 x i64] [i64 3, i64 4, i64 10, i64 14, i64 15]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 8, i64 22, i64 78]
@__sancov_gen_cov_switch_values.91 = internal global [5 x i64] [i64 3, i64 4, i64 10, i64 14, i64 15]
@__sancov_gen_cov_switch_values.92 = internal global [5 x i64] [i64 3, i64 4, i64 10, i64 14, i64 15]
@__sancov_gen_cov_switch_values.93 = internal global [5 x i64] [i64 3, i64 4, i64 10, i64 14, i64 15]
@__sancov_gen_cov_switch_values.94 = internal global [4 x i64] [i64 2, i64 8, i64 22, i64 78]
@__sancov_gen_cov_switch_values.95 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 5, i64 7]
@__sancov_gen_cov_switch_values.96 = internal global [5 x i64] [i64 3, i64 16, i64 32896, i64 32897, i64 32906]
@__sancov_gen_cov_switch_values.97 = internal global [5 x i64] [i64 3, i64 16, i64 32896, i64 32897, i64 32906]
@__sancov_gen_cov_switch_values.98 = internal global [5 x i64] [i64 3, i64 4, i64 10, i64 14, i64 15]
@__sancov_gen_cov_switch_values.99 = internal global [5 x i64] [i64 3, i64 4, i64 10, i64 14, i64 15]
@__sancov_gen_cov_switch_values.100 = internal global [5 x i64] [i64 3, i64 16, i64 32896, i64 32897, i64 32906]
@__sancov_gen_cov_switch_values.101 = internal global [5 x i64] [i64 3, i64 4, i64 10, i64 14, i64 15]
@__sancov_gen_cov_switch_values.102 = internal global [5 x i64] [i64 3, i64 16, i64 32896, i64 32897, i64 32906]
@__sancov_gen_cov_switch_values.103 = internal global [5 x i64] [i64 3, i64 16, i64 32896, i64 32897, i64 32906]
@___asan_gen_.104 = private unnamed_addr constant [15 x i8] c"atp870u_driver\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1760, i32 26 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1767, i32 1 }
@___asan_gen_.110 = private unnamed_addr constant [17 x i8] c"atp870u_id_table\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1744, i32 29 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1562, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1571, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant [17 x i8] c"atp870u_template\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1729, i32 34 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1601, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1614, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant [7 x i8] c"buffer\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1678, i32 14 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1680, i32 17 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1653, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1654, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1655, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1657, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1659, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1660, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1661, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1662, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1666, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1668, i32 7 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1670, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1687, i32 14 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1689, i32 16 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1690, i32 16 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1263, i32 5 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1371, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant [8 x i8] c"g2q_tab\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1022, i32 23 }
@___asan_gen_.260 = private unnamed_addr constant [5 x i8] c"mbuf\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1774, i32 23 }
@___asan_gen_.263 = private unnamed_addr constant [5 x i8] c"synn\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1777, i32 23 }
@___asan_gen_.266 = private unnamed_addr constant [5 x i8] c"synw\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1779, i32 23 }
@___asan_gen_.269 = private unnamed_addr constant [9 x i8] c"synw_870\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1780, i32 23 }
@___asan_gen_.272 = private unnamed_addr constant [5 x i8] c"wide\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1782, i32 23 }
@___asan_gen_.275 = private unnamed_addr constant [3 x i8] c"u3\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1783, i32 23 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1794, i32 4 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1901, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1451, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1535, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1538, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1319, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.329 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.330 = private constant [26 x i8] c"../drivers/scsi/atp870u.c\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 499, i32 6 }
@llvm.compiler.used = appending global [105 x ptr] [ptr @__UNIQUE_ID_file287, ptr @__UNIQUE_ID_license288, ptr @__exitcall_atp870u_driver_exit, ptr @__initcall__kmod_atp870u__289_1767_atp870u_driver_init6, ptr @atp870_init._entry, ptr @atp870_init._entry_ptr, ptr @atp870u_abort._entry, ptr @atp870u_abort._entry.18, ptr @atp870u_abort._entry.21, ptr @atp870u_abort._entry.24, ptr @atp870u_abort._entry.27, ptr @atp870u_abort._entry.30, ptr @atp870u_abort._entry.33, ptr @atp870u_abort._entry.36, ptr @atp870u_abort._entry.39, ptr @atp870u_abort._entry.42, ptr @atp870u_abort._entry.45, ptr @atp870u_abort._entry_ptr, ptr @atp870u_abort._entry_ptr.20, ptr @atp870u_abort._entry_ptr.23, ptr @atp870u_abort._entry_ptr.26, ptr @atp870u_abort._entry_ptr.29, ptr @atp870u_abort._entry_ptr.32, ptr @atp870u_abort._entry_ptr.35, ptr @atp870u_abort._entry_ptr.38, ptr @atp870u_abort._entry_ptr.41, ptr @atp870u_abort._entry_ptr.44, ptr @atp870u_abort._entry_ptr.47, ptr @atp870u_driver_exit, ptr @atp870u_init_tables._entry, ptr @atp870u_init_tables._entry_ptr, ptr @atp870u_intr_handle._entry, ptr @atp870u_intr_handle._entry_ptr, ptr @atp870u_probe._entry, ptr @atp870u_probe._entry.12, ptr @atp870u_probe._entry.6, ptr @atp870u_probe._entry.9, ptr @atp870u_probe._entry_ptr, ptr @atp870u_probe._entry_ptr.11, ptr @atp870u_probe._entry_ptr.14, ptr @atp870u_probe._entry_ptr.8, ptr @atp880_init._entry, ptr @atp880_init._entry_ptr, ptr @atp885_init._entry, ptr @atp885_init._entry.63, ptr @atp885_init._entry.66, ptr @atp885_init._entry_ptr, ptr @atp885_init._entry_ptr.65, ptr @atp885_init._entry_ptr.68, ptr @atp_is._entry, ptr @atp_is._entry.58, ptr @atp_is._entry_ptr, ptr @atp_is._entry_ptr.60, ptr @atp870u_driver, ptr @.str, ptr @atp870u_id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @atp870u_template, ptr @.str.10, ptr @.str.13, ptr @atp870u_info.buffer, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @tscam.g2q_tab, ptr @atp_is.mbuf, ptr @atp_is.synn, ptr @atp_is.synw, ptr @atp_is.synw_870, ptr @atp_is.wide, ptr @atp_is.u3, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72], section "llvm.metadata"
@0 = internal global [76 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp870u_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp870u_id_table to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp870u_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp870u_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp870u_template to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp870u_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp870u_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp870u_info.buffer to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp870u_abort._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp870u_abort._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp870u_abort._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp870u_abort._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp870u_abort._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp870u_abort._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp870u_abort._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp870u_abort._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp870u_abort._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp870u_abort._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp870u_abort._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp870u_init_tables._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp880_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tscam.g2q_tab to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp_is.mbuf to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp_is.synn to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp_is.synw to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp_is.synw_870 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp_is.wide to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp_is.u3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp_is._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp_is._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp885_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp885_init._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp885_init._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp870_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp870u_intr_handle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @atp870u_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @atp870u_driver, ptr noundef null, ptr noundef nonnull @.str) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @atp870u_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pci_unregister_driver(ptr noundef nonnull @atp870u_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atp870u_probe(ptr noundef %pdev, ptr nocapture noundef readonly %ent) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %device, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32770, i32 %1)
  %cmp = icmp eq i32 %1, 32770
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %revision = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 12
  %2 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp1 = icmp ult i8 %3, 2
  br i1 %cmp1, label %do.end, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call6 = tail call i32 @dma_set_mask(ptr noundef %dev5, i64 noundef 4294967295) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end13, label %do.end11

do.end11:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #12
  br label %disable_device

if.end13:                                         ; preds = %if.end4
  %call14 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.disable_device_crit_edge

if.end13.disable_device_crit_edge:                ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %disable_device

if.end17:                                         ; preds = %if.end13
  tail call void @pci_set_master(ptr noundef %pdev) #9
  %call18 = tail call ptr @scsi_host_alloc(ptr noundef nonnull @atp870u_template, i32 noundef 1416) #9
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.end17.release_region_crit_edge, label %if.end21

if.end17.release_region_crit_edge:                ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %release_region

if.end21:                                         ; preds = %if.end17
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %call18, i32 0, i32 53
  %host = getelementptr inbounds %struct.Scsi_Host, ptr %call18, i32 1, i32 49, i32 25
  %4 = ptrtoint ptr %host to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call18, ptr %host, align 4
  %pdev23 = getelementptr inbounds %struct.Scsi_Host, ptr %call18, i32 1, i32 49, i32 26
  %5 = ptrtoint ptr %pdev23 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %pdev, ptr %pdev23, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %hostdata.i, ptr %driver_data.i.i, align 4
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %7 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %resource, align 8
  %io_port = getelementptr inbounds %struct.Scsi_Host, ptr %call18, i32 0, i32 44
  %and = and i32 %8, -8
  %9 = ptrtoint ptr %io_port to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and, ptr %io_port, align 8
  %end = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %10 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp27 = icmp eq i32 %11, 0
  br i1 %cmp27, label %if.end21.cond.end_crit_edge, label %cond.false

if.end21.cond.end_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %resource, align 8
  %sub = sub i32 %11, %13
  %14 = trunc i32 %sub to i8
  %phi.cast = add i8 %14, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end21.cond.end_crit_edge
  %cond = phi i8 [ %phi.cast, %cond.false ], [ 0, %if.end21.cond.end_crit_edge ]
  %n_io_port = getelementptr inbounds %struct.Scsi_Host, ptr %call18, i32 0, i32 45
  %15 = ptrtoint ptr %n_io_port to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %cond, ptr %n_io_port, align 4
  %16 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and, ptr %hostdata.i, align 4
  %unique_id = getelementptr inbounds %struct.Scsi_Host, ptr %call18, i32 0, i32 23
  %17 = ptrtoint ptr %unique_id to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and, ptr %unique_id, align 8
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %18 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq, align 4
  %irq38 = getelementptr inbounds %struct.Scsi_Host, ptr %call18, i32 0, i32 47
  %20 = ptrtoint ptr %irq38 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %irq38, align 8
  %id.i = getelementptr inbounds %struct.Scsi_Host, ptr %call18, i32 1, i32 13, i32 13, i32 2
  %active_id.i = getelementptr inbounds %struct.Scsi_Host, ptr %call18, i32 1, i32 3, i32 0, i32 0, i32 4, i32 1, i32 1
  %wide_id.i = getelementptr inbounds %struct.Scsi_Host, ptr %call18, i32 1, i32 3, i32 0, i32 0, i32 4, i32 1
  %host_id.i = getelementptr inbounds %struct.Scsi_Host, ptr %call18, i32 1, i32 3, i32 0, i32 0, i32 2
  %quend.i = getelementptr inbounds %struct.Scsi_Host, ptr %call18, i32 1, i32 3, i32 0, i32 0, i32 1
  %last_cmd.i = getelementptr inbounds %struct.Scsi_Host, ptr %call18, i32 1, i32 2, i32 1
  %in_int.i = getelementptr inbounds %struct.Scsi_Host, ptr %call18, i32 1, i32 3
  %sp.i = getelementptr inbounds %struct.Scsi_Host, ptr %call18, i32 1, i32 3, i32 0, i32 0, i32 4, i32 6
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.end.i.for.cond1.preheader.i_crit_edge, %cond.end
  %c.0122.i = phi i32 [ 0, %cond.end ], [ %inc58.i, %for.end.i.for.cond1.preheader.i_crit_edge ]
  %21 = shl nuw nsw i32 %c.0122.i, 7
  %22 = add nuw nsw i32 %21, 2572
  %uglygep.i = getelementptr i8, ptr %call18, i32 %22
  br label %for.body3.i

for.body3.i:                                      ; preds = %if.end.i.for.body3.i_crit_edge, %for.cond1.preheader.i
  %k.0119.i = phi i32 [ 0, %for.cond1.preheader.i ], [ %inc.i, %if.end.i.for.body3.i_crit_edge ]
  %23 = ptrtoint ptr %pdev23 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev23, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %prd_bus.i = getelementptr [2 x [16 x %struct.atp_id]], ptr %id.i, i32 0, i32 %c.0122.i, i32 %k.0119.i, i32 7
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef 1024, ptr noundef %prd_bus.i, i32 noundef 3264, i32 noundef 0) #9
  %prd_table.i = getelementptr [2 x [16 x %struct.atp_id]], ptr %id.i, i32 0, i32 %c.0122.i, i32 %k.0119.i, i32 6
  %25 = ptrtoint ptr %prd_table.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i.i, ptr %prd_table.i, align 4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %for.body3.i
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #12
  br label %for.body3.i.i

for.body3.i.i:                                    ; preds = %for.inc.i.i.for.body3.i.i_crit_edge, %do.end.i
  %k.033.i.i = phi i32 [ 0, %do.end.i ], [ %inc.i.i, %for.inc.i.i.for.body3.i.i_crit_edge ]
  %prd_table.i.i = getelementptr [2 x [16 x %struct.atp_id]], ptr %id.i, i32 0, i32 0, i32 %k.033.i.i, i32 6
  %26 = ptrtoint ptr %prd_table.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prd_table.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %27, null
  br i1 %tobool.not.i.i, label %for.body3.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

for.body3.i.i.for.inc.i.i_crit_edge:              ; preds = %for.body3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %pdev23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdev23, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  %prd_bus.i.i = getelementptr [2 x [16 x %struct.atp_id]], ptr %id.i, i32 0, i32 0, i32 %k.033.i.i, i32 7
  %30 = ptrtoint ptr %prd_bus.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %prd_bus.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i.i, i32 noundef 1024, ptr noundef nonnull %27, i32 noundef %31, i32 noundef 0) #9
  %32 = ptrtoint ptr %prd_table.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %prd_table.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end.i.i, %for.body3.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %k.033.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 16
  br i1 %exitcond.not.i.i, label %for.inc.i.i.for.body3.1.i.i_crit_edge, label %for.inc.i.i.for.body3.i.i_crit_edge

for.inc.i.i.for.body3.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body3.i.i

for.inc.i.i.for.body3.1.i.i_crit_edge:            ; preds = %for.inc.i.i
  br label %for.body3.1.i.i

for.body3.1.i.i:                                  ; preds = %for.inc.1.i.i.for.body3.1.i.i_crit_edge, %for.inc.i.i.for.body3.1.i.i_crit_edge
  %k.033.1.i.i = phi i32 [ %inc.1.i.i, %for.inc.1.i.i.for.body3.1.i.i_crit_edge ], [ 0, %for.inc.i.i.for.body3.1.i.i_crit_edge ]
  %prd_table.1.i.i = getelementptr [2 x [16 x %struct.atp_id]], ptr %id.i, i32 0, i32 1, i32 %k.033.1.i.i, i32 6
  %33 = ptrtoint ptr %prd_table.1.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prd_table.1.i.i, align 4
  %tobool.not.1.i.i = icmp eq ptr %34, null
  br i1 %tobool.not.1.i.i, label %for.body3.1.i.i.for.inc.1.i.i_crit_edge, label %if.end.1.i.i

for.body3.1.i.i.for.inc.1.i.i_crit_edge:          ; preds = %for.body3.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1.i.i

if.end.1.i.i:                                     ; preds = %for.body3.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %pdev23 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdev23, align 4
  %dev.1.i.i = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  %prd_bus.1.i.i = getelementptr [2 x [16 x %struct.atp_id]], ptr %id.i, i32 0, i32 1, i32 %k.033.1.i.i, i32 7
  %37 = ptrtoint ptr %prd_bus.1.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %prd_bus.1.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.1.i.i, i32 noundef 1024, ptr noundef nonnull %34, i32 noundef %38, i32 noundef 0) #9
  %39 = ptrtoint ptr %prd_table.1.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %prd_table.1.i.i, align 4
  br label %for.inc.1.i.i

for.inc.1.i.i:                                    ; preds = %if.end.1.i.i, %for.body3.1.i.i.for.inc.1.i.i_crit_edge
  %inc.1.i.i = add nuw nsw i32 %k.033.1.i.i, 1
  %exitcond.1.not.i.i = icmp eq i32 %inc.1.i.i, 16
  br i1 %exitcond.1.not.i.i, label %do.end44, label %for.inc.1.i.i.for.body3.1.i.i_crit_edge

for.inc.1.i.i.for.body3.1.i.i_crit_edge:          ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body3.1.i.i

if.end.i:                                         ; preds = %for.body3.i
  %40 = ptrtoint ptr %prd_bus.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %prd_bus.i, align 4
  %prdaddr.i = getelementptr [2 x [16 x %struct.atp_id]], ptr %id.i, i32 0, i32 %c.0122.i, i32 %k.0119.i, i32 8
  %42 = ptrtoint ptr %prdaddr.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %prdaddr.i, align 4
  %devsp.i = getelementptr [2 x [16 x %struct.atp_id]], ptr %id.i, i32 0, i32 %c.0122.i, i32 %k.0119.i, i32 1
  %43 = ptrtoint ptr %devsp.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 32, ptr %devsp.i, align 1
  %devtype.i = getelementptr [2 x [16 x %struct.atp_id]], ptr %id.i, i32 0, i32 %c.0122.i, i32 %k.0119.i, i32 2
  %44 = ptrtoint ptr %devtype.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 127, ptr %devtype.i, align 2
  %curr_req.i = getelementptr [2 x [16 x %struct.atp_id]], ptr %id.i, i32 0, i32 %c.0122.i, i32 %k.0119.i, i32 9
  %45 = ptrtoint ptr %curr_req.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %curr_req.i, align 4
  %inc.i = add nuw nsw i32 %k.0119.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %for.end.i, label %if.end.i.for.body3.i_crit_edge

if.end.i.for.body3.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body3.i

for.end.i:                                        ; preds = %if.end.i
  %arrayidx29.i = getelementptr [2 x i16], ptr %active_id.i, i32 0, i32 %c.0122.i
  %46 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 0, ptr %arrayidx29.i, align 2
  %arrayidx30.i = getelementptr [2 x i16], ptr %wide_id.i, i32 0, i32 %c.0122.i
  %47 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 0, ptr %arrayidx30.i, align 2
  %arrayidx31.i = getelementptr [2 x i8], ptr %host_id.i, i32 0, i32 %c.0122.i
  %48 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 7, ptr %arrayidx31.i, align 1
  %arrayidx32.i = getelementptr %struct.atp_unit, ptr %hostdata.i, i32 0, i32 6, i32 %c.0122.i
  %49 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %arrayidx32.i, align 1
  %arrayidx33.i = getelementptr [2 x i8], ptr %quend.i, i32 0, i32 %c.0122.i
  %50 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %arrayidx33.i, align 1
  %arrayidx34.i = getelementptr [2 x i8], ptr %last_cmd.i, i32 0, i32 %c.0122.i
  %51 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 -1, ptr %arrayidx34.i, align 1
  %arrayidx35.i = getelementptr %struct.atp_unit, ptr %hostdata.i, i32 0, i32 4, i32 %c.0122.i
  %52 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %arrayidx35.i, align 1
  %arrayidx36.i = getelementptr [2 x i8], ptr %in_int.i, i32 0, i32 %c.0122.i
  %53 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %arrayidx36.i, align 1
  %54 = call ptr @memset(ptr %uglygep.i, i32 0, i32 128)
  %curr_req51.i = getelementptr [2 x [16 x %struct.atp_id]], ptr %id.i, i32 0, i32 %c.0122.i, i32 0, i32 9
  %55 = ptrtoint ptr %curr_req51.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %curr_req51.i, align 4
  %arrayidx53.i = getelementptr [2 x [16 x i8]], ptr %sp.i, i32 0, i32 %c.0122.i, i32 0
  %56 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 4, ptr %arrayidx53.i, align 1
  %curr_req51.1.i = getelementptr [2 x [16 x %struct.atp_id]], ptr %id.i, i32 0, i32 %c.0122.i, i32 1, i32 9
  %57 = ptrtoint ptr %curr_req51.1.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %curr_req51.1.i, align 4
  %arrayidx53.1.i = getelementptr [2 x [16 x i8]], ptr %sp.i, i32 0, i32 %c.0122.i, i32 1
  %58 = ptrtoint ptr %arrayidx53.1.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 4, ptr %arrayidx53.1.i, align 1
  %curr_req51.2.i = getelementptr [2 x [16 x %struct.atp_id]], ptr %id.i, i32 0, i32 %c.0122.i, i32 2, i32 9
  %59 = ptrtoint ptr %curr_req51.2.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %curr_req51.2.i, align 4
  %arrayidx53.2.i = getelementptr [2 x [16 x i8]], ptr %sp.i, i32 0, i32 %c.0122.i, i32 2
  %60 = ptrtoint ptr %arrayidx53.2.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 4, ptr %arrayidx53.2.i, align 1
  %curr_req51.3.i = getelementptr [2 x [16 x %struct.atp_id]], ptr %id.i, i32 0, i32 %c.0122.i, i32 3, i32 9
  %61 = ptrtoint ptr %curr_req51.3.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %curr_req51.3.i, align 4
  %arrayidx53.3.i = getelementptr [2 x [16 x i8]], ptr %sp.i, i32 0, i32 %c.0122.i, i32 3
  %62 = ptrtoint ptr %arrayidx53.3.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 4, ptr %arrayidx53.3.i, align 1
  %curr_req51.4.i = getelementptr [2 x [16 x %struct.atp_id]], ptr %id.i, i32 0, i32 %c.0122.i, i32 4, i32 9
  %63 = ptrtoint ptr %curr_req51.4.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %curr_req51.4.i, align 4
  %arrayidx53.4.i = getelementptr [2 x [16 x i8]], ptr %sp.i, i32 0, i32 %c.0122.i, i32 4
  %64 = ptrtoint ptr %arrayidx53.4.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 4, ptr %arrayidx53.4.i, align 1
  %curr_req51.5.i = getelementptr [2 x [16 x %struct.atp_id]], ptr %id.i, i32 0, i32 %c.0122.i, i32 5, i32 9
  %65 = ptrtoint ptr %curr_req51.5.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %curr_req51.5.i, align 4
  %arrayidx53.5.i = getelementptr [2 x [16 x i8]], ptr %sp.i, i32 0, i32 %c.0122.i, i32 5
  %66 = ptrtoint ptr %arrayidx53.5.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 4, ptr %arrayidx53.5.i, align 1
  %curr_req51.6.i = getelementptr [2 x [16 x %struct.atp_id]], ptr %id.i, i32 0, i32 %c.0122.i, i32 6, i32 9
  %67 = ptrtoint ptr %curr_req51.6.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %curr_req51.6.i, align 4
  %arrayidx53.6.i = getelementptr [2 x [16 x i8]], ptr %sp.i, i32 0, i32 %c.0122.i, i32 6
  %68 = ptrtoint ptr %arrayidx53.6.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 4, ptr %arrayidx53.6.i, align 1
  %curr_req51.7.i = getelementptr [2 x [16 x %struct.atp_id]], ptr %id.i, i32 0, i32 %c.0122.i, i32 7, i32 9
  %69 = ptrtoint ptr %curr_req51.7.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %curr_req51.7.i, align 4
  %arrayidx53.7.i = getelementptr [2 x [16 x i8]], ptr %sp.i, i32 0, i32 %c.0122.i, i32 7
  %70 = ptrtoint ptr %arrayidx53.7.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 4, ptr %arrayidx53.7.i, align 1
  %curr_req51.8.i = getelementptr [2 x [16 x %struct.atp_id]], ptr %id.i, i32 0, i32 %c.0122.i, i32 8, i32 9
  %71 = ptrtoint ptr %curr_req51.8.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %curr_req51.8.i, align 4
  %arrayidx53.8.i = getelementptr [2 x [16 x i8]], ptr %sp.i, i32 0, i32 %c.0122.i, i32 8
  %72 = ptrtoint ptr %arrayidx53.8.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 4, ptr %arrayidx53.8.i, align 1
  %curr_req51.9.i = getelementptr [2 x [16 x %struct.atp_id]], ptr %id.i, i32 0, i32 %c.0122.i, i32 9, i32 9
  %73 = ptrtoint ptr %curr_req51.9.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %curr_req51.9.i, align 4
  %arrayidx53.9.i = getelementptr [2 x [16 x i8]], ptr %sp.i, i32 0, i32 %c.0122.i, i32 9
  %74 = ptrtoint ptr %arrayidx53.9.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 4, ptr %arrayidx53.9.i, align 1
  %curr_req51.10.i = getelementptr [2 x [16 x %struct.atp_id]], ptr %id.i, i32 0, i32 %c.0122.i, i32 10, i32 9
  %75 = ptrtoint ptr %curr_req51.10.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %curr_req51.10.i, align 4
  %arrayidx53.10.i = getelementptr [2 x [16 x i8]], ptr %sp.i, i32 0, i32 %c.0122.i, i32 10
  %76 = ptrtoint ptr %arrayidx53.10.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 4, ptr %arrayidx53.10.i, align 1
  %curr_req51.11.i = getelementptr [2 x [16 x %struct.atp_id]], ptr %id.i, i32 0, i32 %c.0122.i, i32 11, i32 9
  %77 = ptrtoint ptr %curr_req51.11.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %curr_req51.11.i, align 4
  %arrayidx53.11.i = getelementptr [2 x [16 x i8]], ptr %sp.i, i32 0, i32 %c.0122.i, i32 11
  %78 = ptrtoint ptr %arrayidx53.11.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 4, ptr %arrayidx53.11.i, align 1
  %curr_req51.12.i = getelementptr [2 x [16 x %struct.atp_id]], ptr %id.i, i32 0, i32 %c.0122.i, i32 12, i32 9
  %79 = ptrtoint ptr %curr_req51.12.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %curr_req51.12.i, align 4
  %arrayidx53.12.i = getelementptr [2 x [16 x i8]], ptr %sp.i, i32 0, i32 %c.0122.i, i32 12
  %80 = ptrtoint ptr %arrayidx53.12.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 4, ptr %arrayidx53.12.i, align 1
  %curr_req51.13.i = getelementptr [2 x [16 x %struct.atp_id]], ptr %id.i, i32 0, i32 %c.0122.i, i32 13, i32 9
  %81 = ptrtoint ptr %curr_req51.13.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %curr_req51.13.i, align 4
  %arrayidx53.13.i = getelementptr [2 x [16 x i8]], ptr %sp.i, i32 0, i32 %c.0122.i, i32 13
  %82 = ptrtoint ptr %arrayidx53.13.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 4, ptr %arrayidx53.13.i, align 1
  %curr_req51.14.i = getelementptr [2 x [16 x %struct.atp_id]], ptr %id.i, i32 0, i32 %c.0122.i, i32 14, i32 9
  %83 = ptrtoint ptr %curr_req51.14.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %curr_req51.14.i, align 4
  %arrayidx53.14.i = getelementptr [2 x [16 x i8]], ptr %sp.i, i32 0, i32 %c.0122.i, i32 14
  %84 = ptrtoint ptr %arrayidx53.14.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 4, ptr %arrayidx53.14.i, align 1
  %curr_req51.15.i = getelementptr [2 x [16 x %struct.atp_id]], ptr %id.i, i32 0, i32 %c.0122.i, i32 15, i32 9
  %85 = ptrtoint ptr %curr_req51.15.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr null, ptr %curr_req51.15.i, align 4
  %arrayidx53.15.i = getelementptr [2 x [16 x i8]], ptr %sp.i, i32 0, i32 %c.0122.i, i32 15
  %86 = ptrtoint ptr %arrayidx53.15.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 4, ptr %arrayidx53.15.i, align 1
  %inc58.i = add nuw nsw i32 %c.0122.i, 1
  %exitcond126.not.i = icmp eq i32 %inc58.i, 2
  br i1 %exitcond126.not.i, label %if.end46, label %for.end.i.for.cond1.preheader.i_crit_edge

for.end.i.for.cond1.preheader.i_crit_edge:        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond1.preheader.i

do.end44:                                         ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.10) #12
  br label %unregister

if.end46:                                         ; preds = %for.end.i
  %87 = ptrtoint ptr %pdev23 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pdev23, align 4
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %88, i32 0, i32 8
  %89 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %device.i, align 2
  %91 = and i16 %90, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32640, i16 %91)
  %92 = icmp eq i16 %91, -32640
  br i1 %92, label %if.then48, label %if.else

if.then48:                                        ; preds = %if.end46
  %93 = ptrtoint ptr %pdev23 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %pdev23, align 4
  %call2.i = tail call i32 @pci_write_config_byte(ptr noundef %94, i32 noundef 13, i8 noundef zeroext -128) #9
  %95 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %io_port, align 8
  %add.i = add i32 %96, 64
  %ioport.i = getelementptr %struct.Scsi_Host, ptr %call18, i32 1, i32 0, i32 1
  %97 = ptrtoint ptr %ioport.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %add.i, ptr %ioport.i, align 4
  %add4.i = add i32 %96, 40
  %pciport.i = getelementptr inbounds %struct.Scsi_Host, ptr %call18, i32 1, i32 1, i32 1
  %98 = ptrtoint ptr %pciport.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %add4.i, ptr %pciport.i, align 4
  %99 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %hostdata.i, align 4
  %add.i.i = add i32 %100, 57
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %101 = inttoptr i32 %add1.i.i to ptr
  %102 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %101) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !159
  %103 = lshr i8 %102, 4
  %dev.i124 = getelementptr inbounds %struct.pci_dev, ptr %94, i32 0, i32 44
  %104 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %io_port, align 8
  %106 = ptrtoint ptr %irq38 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %irq38, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i124, ptr noundef nonnull @.str.53, i32 noundef %105, i32 noundef %107) #12
  %108 = ptrtoint ptr %host_id.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %103, ptr %host_id.i, align 4
  %109 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %hostdata.i, align 4
  %add.i284.i = add i32 %110, 53
  %and.i285.i = and i32 %add.i284.i, 1048575
  %add1.i286.i = or i32 %and.i285.i, -18874368
  %111 = inttoptr i32 %add1.i286.i to ptr
  %112 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %111) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !159
  %global_map.i = getelementptr inbounds %struct.atp_unit, ptr %hostdata.i, i32 0, i32 8
  %113 = ptrtoint ptr %global_map.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %112, ptr %global_map.i, align 2
  %114 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %hostdata.i, align 4
  %add.i287.i = add i32 %115, 60
  %and.i288.i = and i32 %add.i287.i, 1048575
  %add1.i289.i = or i32 %and.i288.i, -18874368
  %116 = inttoptr i32 %add1.i289.i to ptr
  %117 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %116) #9, !srcloc !160
  %118 = tail call i16 @llvm.bswap.i16(i16 %117) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !161
  %ultra_map.i = getelementptr inbounds %struct.Scsi_Host, ptr %call18, i32 1, i32 3, i32 0, i32 0, i32 4, i32 2
  %119 = ptrtoint ptr %ultra_map.i to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 %118, ptr %ultra_map.i, align 4
  %arrayidx30.i126 = getelementptr %struct.atp_unit, ptr %hostdata.i, i32 0, i32 15, i32 0, i32 1
  %arrayidx36.i127 = getelementptr %struct.atp_unit, ptr %hostdata.i, i32 0, i32 15, i32 0, i32 2
  %arrayidx42.i = getelementptr %struct.atp_unit, ptr %hostdata.i, i32 0, i32 15, i32 0, i32 3
  %arrayidx50.i = getelementptr %struct.Scsi_Host, ptr %call18, i32 1, i32 3, i32 0, i32 0, i32 4, i32 7
  %arrayidx56.i = getelementptr %struct.atp_unit, ptr %hostdata.i, i32 0, i32 15, i32 0, i32 5
  %arrayidx62.i = getelementptr %struct.atp_unit, ptr %hostdata.i, i32 0, i32 15, i32 0, i32 6
  %arrayidx68.i = getelementptr %struct.atp_unit, ptr %hostdata.i, i32 0, i32 15, i32 0, i32 7
  %arrayidx76.i = getelementptr %struct.Scsi_Host, ptr %call18, i32 1, i32 4
  %arrayidx82.i = getelementptr %struct.atp_unit, ptr %hostdata.i, i32 0, i32 15, i32 0, i32 9
  %arrayidx88.i = getelementptr %struct.atp_unit, ptr %hostdata.i, i32 0, i32 15, i32 0, i32 10
  %arrayidx94.i = getelementptr %struct.atp_unit, ptr %hostdata.i, i32 0, i32 15, i32 0, i32 11
  %arrayidx102.i = getelementptr %struct.Scsi_Host, ptr %call18, i32 1, i32 5
  %arrayidx108.i = getelementptr %struct.atp_unit, ptr %hostdata.i, i32 0, i32 15, i32 0, i32 13
  %arrayidx114.i = getelementptr %struct.atp_unit, ptr %hostdata.i, i32 0, i32 15, i32 0, i32 14
  %arrayidx120.i = getelementptr %struct.atp_unit, ptr %hostdata.i, i32 0, i32 15, i32 0, i32 15
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i128.while.body.i_crit_edge, %if.then48
  %n.0387.i = phi i32 [ 16137, %if.then48 ], [ %add121.i, %if.end.i128.while.body.i_crit_edge ]
  %conv16.i = trunc i32 %n.0387.i to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !162
  tail call void @arm_heavy_mb() #9
  %120 = tail call i16 @llvm.bswap.i16(i16 %conv16.i) #9
  %121 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %hostdata.i, align 4
  %add.i290.i = add i32 %122, 52
  %and.i291.i = and i32 %add.i290.i, 1048575
  %add1.i292.i = or i32 %and.i291.i, -18874368
  %123 = inttoptr i32 %add1.i292.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %123, i16 %120) #9, !srcloc !163
  %124 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %hostdata.i, align 4
  %add.i293.i = add i32 %125, 48
  %and.i294.i = and i32 %add.i293.i, 1048575
  %add1.i295.i = or i32 %and.i294.i, -18874368
  %126 = inttoptr i32 %add1.i295.i to ptr
  %127 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %126) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %127)
  %cmp20.i = icmp eq i8 %127, -1
  br i1 %cmp20.i, label %while.body.i.while.end.i_crit_edge, label %if.end.i128

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

if.end.i128:                                      ; preds = %while.body.i
  %128 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %hostdata.i, align 4
  %add.i296.i = add i32 %129, 48
  %and.i297.i = and i32 %add.i296.i, 1048575
  %add1.i298.i = or i32 %and.i297.i, -18874368
  %130 = inttoptr i32 %add1.i298.i to ptr
  %131 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %130) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !159
  %132 = ptrtoint ptr %sp.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %131, ptr %sp.i, align 1
  %133 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %hostdata.i, align 4
  %add.i299.i = add i32 %134, 49
  %and.i300.i = and i32 %add.i299.i, 1048575
  %add1.i301.i = or i32 %and.i300.i, -18874368
  %135 = inttoptr i32 %add1.i301.i to ptr
  %136 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %135) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !159
  %137 = ptrtoint ptr %arrayidx30.i126 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %136, ptr %arrayidx30.i126, align 1
  %138 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %hostdata.i, align 4
  %add.i302.i = add i32 %139, 50
  %and.i303.i = and i32 %add.i302.i, 1048575
  %add1.i304.i = or i32 %and.i303.i, -18874368
  %140 = inttoptr i32 %add1.i304.i to ptr
  %141 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %140) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !159
  %142 = ptrtoint ptr %arrayidx36.i127 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %141, ptr %arrayidx36.i127, align 1
  %143 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %hostdata.i, align 4
  %add.i305.i = add i32 %144, 51
  %and.i306.i = and i32 %add.i305.i, 1048575
  %add1.i307.i = or i32 %and.i306.i, -18874368
  %145 = inttoptr i32 %add1.i307.i to ptr
  %146 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %145) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !159
  %147 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %146, ptr %arrayidx42.i, align 1
  %conv43.i = add nuw nsw i16 %conv16.i, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !162
  tail call void @arm_heavy_mb() #9
  %148 = tail call i16 @llvm.bswap.i16(i16 %conv43.i) #9
  %149 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %hostdata.i, align 4
  %add.i308.i = add i32 %150, 52
  %and.i309.i = and i32 %add.i308.i, 1048575
  %add1.i310.i = or i32 %and.i309.i, -18874368
  %151 = inttoptr i32 %add1.i310.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %151, i16 %148) #9, !srcloc !163
  %152 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %hostdata.i, align 4
  %add.i311.i = add i32 %153, 48
  %and.i312.i = and i32 %add.i311.i, 1048575
  %add1.i313.i = or i32 %and.i312.i, -18874368
  %154 = inttoptr i32 %add1.i313.i to ptr
  %155 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %154) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !159
  %156 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %155, ptr %arrayidx50.i, align 1
  %157 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %hostdata.i, align 4
  %add.i314.i = add i32 %158, 49
  %and.i315.i = and i32 %add.i314.i, 1048575
  %add1.i316.i = or i32 %and.i315.i, -18874368
  %159 = inttoptr i32 %add1.i316.i to ptr
  %160 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %159) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !159
  %161 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %160, ptr %arrayidx56.i, align 1
  %162 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %hostdata.i, align 4
  %add.i317.i = add i32 %163, 50
  %and.i318.i = and i32 %add.i317.i, 1048575
  %add1.i319.i = or i32 %and.i318.i, -18874368
  %164 = inttoptr i32 %add1.i319.i to ptr
  %165 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %164) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !159
  %166 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 %165, ptr %arrayidx62.i, align 1
  %167 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %hostdata.i, align 4
  %add.i320.i = add i32 %168, 51
  %and.i321.i = and i32 %add.i320.i, 1048575
  %add1.i322.i = or i32 %and.i321.i, -18874368
  %169 = inttoptr i32 %add1.i322.i to ptr
  %170 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %169) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !159
  %171 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 %170, ptr %arrayidx68.i, align 1
  %conv69.i = add nuw nsw i16 %conv16.i, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !162
  tail call void @arm_heavy_mb() #9
  %172 = tail call i16 @llvm.bswap.i16(i16 %conv69.i) #9
  %173 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %hostdata.i, align 4
  %add.i323.i = add i32 %174, 52
  %and.i324.i = and i32 %add.i323.i, 1048575
  %add1.i325.i = or i32 %and.i324.i, -18874368
  %175 = inttoptr i32 %add1.i325.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %175, i16 %172) #9, !srcloc !163
  %176 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %hostdata.i, align 4
  %add.i326.i = add i32 %177, 48
  %and.i327.i = and i32 %add.i326.i, 1048575
  %add1.i328.i = or i32 %and.i327.i, -18874368
  %178 = inttoptr i32 %add1.i328.i to ptr
  %179 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %178) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !159
  %180 = ptrtoint ptr %arrayidx76.i to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 %179, ptr %arrayidx76.i, align 1
  %181 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %hostdata.i, align 4
  %add.i329.i = add i32 %182, 49
  %and.i330.i = and i32 %add.i329.i, 1048575
  %add1.i331.i = or i32 %and.i330.i, -18874368
  %183 = inttoptr i32 %add1.i331.i to ptr
  %184 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %183) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !159
  %185 = ptrtoint ptr %arrayidx82.i to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 %184, ptr %arrayidx82.i, align 1
  %186 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %hostdata.i, align 4
  %add.i332.i = add i32 %187, 50
  %and.i333.i = and i32 %add.i332.i, 1048575
  %add1.i334.i = or i32 %and.i333.i, -18874368
  %188 = inttoptr i32 %add1.i334.i to ptr
  %189 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %188) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !159
  %190 = ptrtoint ptr %arrayidx88.i to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 %189, ptr %arrayidx88.i, align 1
  %191 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %hostdata.i, align 4
  %add.i335.i = add i32 %192, 51
  %and.i336.i = and i32 %add.i335.i, 1048575
  %add1.i337.i = or i32 %and.i336.i, -18874368
  %193 = inttoptr i32 %add1.i337.i to ptr
  %194 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %193) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !159
  %195 = ptrtoint ptr %arrayidx94.i to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 %194, ptr %arrayidx94.i, align 1
  %conv95.i = add nuw nsw i16 %conv16.i, 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !162
  tail call void @arm_heavy_mb() #9
  %196 = tail call i16 @llvm.bswap.i16(i16 %conv95.i) #9
  %197 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %hostdata.i, align 4
  %add.i338.i = add i32 %198, 52
  %and.i339.i = and i32 %add.i338.i, 1048575
  %add1.i340.i = or i32 %and.i339.i, -18874368
  %199 = inttoptr i32 %add1.i340.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %199, i16 %196) #9, !srcloc !163
  %200 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %hostdata.i, align 4
  %add.i341.i = add i32 %201, 48
  %and.i342.i = and i32 %add.i341.i, 1048575
  %add1.i343.i = or i32 %and.i342.i, -18874368
  %202 = inttoptr i32 %add1.i343.i to ptr
  %203 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %202) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !159
  %204 = ptrtoint ptr %arrayidx102.i to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 %203, ptr %arrayidx102.i, align 1
  %205 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %hostdata.i, align 4
  %add.i344.i = add i32 %206, 49
  %and.i345.i = and i32 %add.i344.i, 1048575
  %add1.i346.i = or i32 %and.i345.i, -18874368
  %207 = inttoptr i32 %add1.i346.i to ptr
  %208 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %207) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !159
  %209 = ptrtoint ptr %arrayidx108.i to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 %208, ptr %arrayidx108.i, align 1
  %210 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %hostdata.i, align 4
  %add.i347.i = add i32 %211, 50
  %and.i348.i = and i32 %add.i347.i, 1048575
  %add1.i349.i = or i32 %and.i348.i, -18874368
  %212 = inttoptr i32 %add1.i349.i to ptr
  %213 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %212) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !159
  %214 = ptrtoint ptr %arrayidx114.i to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 %213, ptr %arrayidx114.i, align 1
  %215 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %hostdata.i, align 4
  %add.i350.i = add i32 %216, 51
  %and.i351.i = and i32 %add.i350.i, 1048575
  %add1.i352.i = or i32 %and.i351.i, -18874368
  %217 = inttoptr i32 %add1.i352.i to ptr
  %218 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %217) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !159
  %219 = ptrtoint ptr %arrayidx120.i to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 %218, ptr %arrayidx120.i, align 1
  %add121.i = add nuw nsw i32 %n.0387.i, 32
  %cmp.i = icmp ult i32 %n.0387.i, 16352
  br i1 %cmp.i, label %if.end.i128.while.body.i_crit_edge, label %if.end.i128.while.end.i_crit_edge

if.end.i128.while.end.i_crit_edge:                ; preds = %if.end.i128
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

if.end.i128.while.body.i_crit_edge:               ; preds = %if.end.i128
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.end.i:                                      ; preds = %if.end.i128.while.end.i_crit_edge, %while.body.i.while.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !162
  tail call void @arm_heavy_mb() #9
  %220 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %hostdata.i, align 4
  %add.i353.i = add i32 %221, 52
  %and.i354.i = and i32 %add.i353.i, 1048575
  %add1.i355.i = or i32 %and.i354.i, -18874368
  %222 = inttoptr i32 %add1.i355.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %222, i16 0) #9, !srcloc !163
  %223 = ptrtoint ptr %ultra_map.i to i32
  call void @__asan_store2_noabort(i32 %223)
  store i16 0, ptr %ultra_map.i, align 4
  %async.i = getelementptr inbounds %struct.Scsi_Host, ptr %call18, i32 1, i32 3, i32 0, i32 0, i32 4, i32 3
  %224 = ptrtoint ptr %async.i to i32
  call void @__asan_store2_noabort(i32 %224)
  store i16 0, ptr %async.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %while.end.i
  %indvars.iv.i = phi i32 [ 0, %while.end.i ], [ %indvars.iv.next.i, %for.inc.i.for.body.i_crit_edge ]
  %shl.i = shl nuw nsw i32 1, %indvars.iv.i
  %arrayidx132.i = getelementptr [16 x i8], ptr %sp.i, i32 0, i32 %indvars.iv.i
  %225 = ptrtoint ptr %arrayidx132.i to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %arrayidx132.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %226)
  %cmp134.i = icmp ugt i8 %226, 1
  br i1 %cmp134.i, label %for.body.i.for.inc.sink.split.i_crit_edge, label %if.else.i

for.body.i.for.inc.sink.split.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %226)
  %cmp146.i = icmp eq i8 %226, 0
  br i1 %cmp146.i, label %if.else.i.for.inc.sink.split.i_crit_edge, label %if.else.i.for.inc.i_crit_edge

if.else.i.for.inc.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.else.i.for.inc.sink.split.i_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split.i

for.inc.sink.split.i:                             ; preds = %if.else.i.for.inc.sink.split.i_crit_edge, %for.body.i.for.inc.sink.split.i_crit_edge
  %ultra_map.sink390.i = phi ptr [ %ultra_map.i, %for.body.i.for.inc.sink.split.i_crit_edge ], [ %async.i, %if.else.i.for.inc.sink.split.i_crit_edge ]
  %227 = ptrtoint ptr %ultra_map.sink390.i to i32
  call void @__asan_load2_noabort(i32 %227)
  %228 = load i16, ptr %ultra_map.sink390.i, align 4
  %229 = trunc i32 %shl.i to i16
  %conv140.i = or i16 %228, %229
  store i16 %conv140.i, ptr %ultra_map.sink390.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.sink.split.i, %if.else.i.for.inc.i_crit_edge
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i129 = icmp eq i32 %indvars.iv.next.i, 16
  br i1 %exitcond.not.i129, label %atp880_init.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

atp880_init.exit:                                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  %230 = ptrtoint ptr %async.i to i32
  call void @__asan_load2_noabort(i32 %230)
  %231 = load i16, ptr %async.i, align 4
  %neg.i = xor i16 %231, -1
  store i16 %neg.i, ptr %async.i, align 4
  %232 = ptrtoint ptr %global_map.i to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %global_map.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !164
  tail call void @arm_heavy_mb() #9
  %234 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %hostdata.i, align 4
  %add.i356.i = add i32 %235, 53
  %and.i357.i = and i32 %add.i356.i, 1048575
  %add1.i358.i = or i32 %and.i357.i, -18874368
  %236 = inttoptr i32 %add1.i358.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %236, i8 %233) #9, !srcloc !165
  %237 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %hostdata.i, align 4
  %add.i359.i = add i32 %238, 56
  %and.i360.i = and i32 %add.i359.i, 1048575
  %add1.i361.i = or i32 %and.i360.i, -18874368
  %239 = inttoptr i32 %add1.i361.i to ptr
  %240 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %239) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !159
  %241 = and i8 %240, -128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !164
  tail call void @arm_heavy_mb() #9
  %242 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %hostdata.i, align 4
  %add.i362.i = add i32 %243, 56
  %and.i363.i = and i32 %add.i362.i, 1048575
  %add1.i364.i = or i32 %and.i363.i, -18874368
  %244 = inttoptr i32 %add1.i364.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %244, i8 %241) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !164
  tail call void @arm_heavy_mb() #9
  %245 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %hostdata.i, align 4
  %add.i365.i = add i32 %246, 59
  %and.i366.i = and i32 %add.i365.i, 1048575
  %add1.i367.i = or i32 %and.i366.i, -18874368
  %247 = inttoptr i32 %add1.i367.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %247, i8 32) #9, !srcloc !165
  tail call void @msleep(i32 noundef 32) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !164
  tail call void @arm_heavy_mb() #9
  %248 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %hostdata.i, align 4
  %add.i368.i = add i32 %249, 59
  %and.i369.i = and i32 %add.i368.i, 1048575
  %add1.i370.i = or i32 %and.i369.i, -18874368
  %250 = inttoptr i32 %add1.i370.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %250, i8 0) #9, !srcloc !165
  tail call void @msleep(i32 noundef 32) #9
  %251 = ptrtoint ptr %ioport.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %ioport.i, align 4
  %add.i371.i = add i32 %252, 27
  %and.i372.i = and i32 %add.i371.i, 1048575
  %add1.i373.i = or i32 %and.i372.i, -18874368
  %253 = inttoptr i32 %add1.i373.i to ptr
  %254 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %253) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %255 = ptrtoint ptr %ioport.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %ioport.i, align 4
  %add.i375.i = add i32 %256, 23
  %and.i376.i = and i32 %add.i375.i, 1048575
  %add1.i377.i = or i32 %and.i376.i, -18874368
  %257 = inttoptr i32 %add1.i377.i to ptr
  %258 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %257) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  tail call fastcc void @atp_set_host_id(ptr noundef %hostdata.i, i8 noundef zeroext 0, i8 noundef zeroext %103) #9
  %259 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %hostdata.i, align 4
  %add.i378.i = add i32 %260, 34
  %and.i379.i = and i32 %add.i378.i, 1048575
  %add1.i380.i = or i32 %and.i379.i, -18874368
  %261 = inttoptr i32 %add1.i380.i to ptr
  %262 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %261) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !159
  tail call fastcc void @tscam(ptr noundef %call18, i1 noundef zeroext true, i8 noundef zeroext %262) #9
  %263 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %hostdata.i, align 4
  %add.i381.i = add i32 %264, 63
  %and.i382.i = and i32 %add.i381.i, 1048575
  %add1.i383.i = or i32 %and.i382.i, -18874368
  %265 = inttoptr i32 %add1.i383.i to ptr
  %266 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %265) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !159
  %267 = and i8 %266, 64
  tail call fastcc void @atp_is(ptr noundef %hostdata.i, i8 noundef zeroext 0, i1 noundef zeroext true, i8 noundef zeroext %267) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !164
  tail call void @arm_heavy_mb() #9
  %268 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %hostdata.i, align 4
  %add.i384.i = add i32 %269, 56
  %and.i385.i = and i32 %add.i384.i, 1048575
  %add1.i386.i = or i32 %and.i385.i, -18874368
  %270 = inttoptr i32 %add1.i386.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %270, i8 -80) #9, !srcloc !165
  %max_id.i = getelementptr inbounds %struct.Scsi_Host, ptr %call18, i32 0, i32 21
  %271 = ptrtoint ptr %max_id.i to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 16, ptr %max_id.i, align 4
  %conv175.i = zext i8 %103 to i32
  %this_id.i = getelementptr inbounds %struct.Scsi_Host, ptr %call18, i32 0, i32 25
  %272 = ptrtoint ptr %this_id.i to i32
  call void @__asan_store4_noabort(i32 %272)
  store i32 %conv175.i, ptr %this_id.i, align 8
  br label %if.end53

if.else:                                          ; preds = %if.end46
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32630, i16 %90)
  %cmp.i133 = icmp eq i16 %90, -32630
  br i1 %cmp.i133, label %if.then50, label %if.else51

if.then50:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @atp885_init(ptr noundef nonnull %call18)
  br label %if.end53

if.else51:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @atp870_init(ptr noundef nonnull %call18)
  br label %if.end53

if.end53:                                         ; preds = %if.else51, %if.then50, %atp880_init.exit
  %273 = ptrtoint ptr %irq38 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %irq38, align 8
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %274, ptr noundef nonnull @atp870u_intr_handle, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %call18) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool56.not = icmp eq i32 %call.i, 0
  br i1 %tobool56.not, label %if.end63, label %do.end60

do.end60:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  %275 = ptrtoint ptr %irq38 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %irq38, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.13, i32 noundef %276) #12
  br label %free_tables

if.end63:                                         ; preds = %if.end53
  %call.i134 = tail call i32 @scsi_add_host_with_dma(ptr noundef %call18, ptr noundef %dev5, ptr noundef %dev5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i134)
  %tobool66.not = icmp eq i32 %call.i134, 0
  br i1 %tobool66.not, label %if.end68, label %scsi_add_fail

if.end68:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @scsi_scan_host(ptr noundef nonnull %call18) #9
  br label %cleanup

scsi_add_fail:                                    ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  %277 = ptrtoint ptr %irq38 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %irq38, align 8
  %call70 = tail call ptr @free_irq(i32 noundef %278, ptr noundef nonnull %call18) #9
  br label %free_tables

free_tables:                                      ; preds = %scsi_add_fail, %do.end60
  %err.0 = phi i32 [ %call.i, %do.end60 ], [ %call.i134, %scsi_add_fail ]
  br label %for.body3.i139

for.body3.i139:                                   ; preds = %for.inc.i145.for.body3.i139_crit_edge, %free_tables
  %k.033.i = phi i32 [ 0, %free_tables ], [ %inc.i143, %for.inc.i145.for.body3.i139_crit_edge ]
  %prd_table.i137 = getelementptr [2 x [16 x %struct.atp_id]], ptr %id.i, i32 0, i32 0, i32 %k.033.i, i32 6
  %279 = ptrtoint ptr %prd_table.i137 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %prd_table.i137, align 4
  %tobool.not.i138 = icmp eq ptr %280, null
  br i1 %tobool.not.i138, label %for.body3.i139.for.inc.i145_crit_edge, label %if.end.i142

for.body3.i139.for.inc.i145_crit_edge:            ; preds = %for.body3.i139
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i145

if.end.i142:                                      ; preds = %for.body3.i139
  call void @__sanitizer_cov_trace_pc() #11
  %281 = ptrtoint ptr %pdev23 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %pdev23, align 4
  %dev.i140 = getelementptr inbounds %struct.pci_dev, ptr %282, i32 0, i32 44
  %prd_bus.i141 = getelementptr [2 x [16 x %struct.atp_id]], ptr %id.i, i32 0, i32 0, i32 %k.033.i, i32 7
  %283 = ptrtoint ptr %prd_bus.i141 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %prd_bus.i141, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i140, i32 noundef 1024, ptr noundef nonnull %280, i32 noundef %284, i32 noundef 0) #9
  %285 = ptrtoint ptr %prd_table.i137 to i32
  call void @__asan_store4_noabort(i32 %285)
  store ptr null, ptr %prd_table.i137, align 4
  br label %for.inc.i145

for.inc.i145:                                     ; preds = %if.end.i142, %for.body3.i139.for.inc.i145_crit_edge
  %inc.i143 = add nuw nsw i32 %k.033.i, 1
  %exitcond.not.i144 = icmp eq i32 %inc.i143, 16
  br i1 %exitcond.not.i144, label %for.inc.i145.for.body3.1.i_crit_edge, label %for.inc.i145.for.body3.i139_crit_edge

for.inc.i145.for.body3.i139_crit_edge:            ; preds = %for.inc.i145
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body3.i139

for.inc.i145.for.body3.1.i_crit_edge:             ; preds = %for.inc.i145
  br label %for.body3.1.i

for.body3.1.i:                                    ; preds = %for.inc.1.i.for.body3.1.i_crit_edge, %for.inc.i145.for.body3.1.i_crit_edge
  %k.033.1.i = phi i32 [ %inc.1.i, %for.inc.1.i.for.body3.1.i_crit_edge ], [ 0, %for.inc.i145.for.body3.1.i_crit_edge ]
  %prd_table.1.i = getelementptr [2 x [16 x %struct.atp_id]], ptr %id.i, i32 0, i32 1, i32 %k.033.1.i, i32 6
  %286 = ptrtoint ptr %prd_table.1.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %prd_table.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %287, null
  br i1 %tobool.not.1.i, label %for.body3.1.i.for.inc.1.i_crit_edge, label %if.end.1.i

for.body3.1.i.for.inc.1.i_crit_edge:              ; preds = %for.body3.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1.i

if.end.1.i:                                       ; preds = %for.body3.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %288 = ptrtoint ptr %pdev23 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %pdev23, align 4
  %dev.1.i = getelementptr inbounds %struct.pci_dev, ptr %289, i32 0, i32 44
  %prd_bus.1.i = getelementptr [2 x [16 x %struct.atp_id]], ptr %id.i, i32 0, i32 1, i32 %k.033.1.i, i32 7
  %290 = ptrtoint ptr %prd_bus.1.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %prd_bus.1.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.1.i, i32 noundef 1024, ptr noundef nonnull %287, i32 noundef %291, i32 noundef 0) #9
  %292 = ptrtoint ptr %prd_table.1.i to i32
  call void @__asan_store4_noabort(i32 %292)
  store ptr null, ptr %prd_table.1.i, align 4
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.end.1.i, %for.body3.1.i.for.inc.1.i_crit_edge
  %inc.1.i = add nuw nsw i32 %k.033.1.i, 1
  %exitcond.1.not.i = icmp eq i32 %inc.1.i, 16
  br i1 %exitcond.1.not.i, label %for.inc.1.i.unregister_crit_edge, label %for.inc.1.i.for.body3.1.i_crit_edge

for.inc.1.i.for.body3.1.i_crit_edge:              ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body3.1.i

for.inc.1.i.unregister_crit_edge:                 ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %unregister

unregister:                                       ; preds = %for.inc.1.i.unregister_crit_edge, %do.end44
  %err.1 = phi i32 [ -12, %do.end44 ], [ %err.0, %for.inc.1.i.unregister_crit_edge ]
  tail call void @scsi_host_put(ptr noundef nonnull %call18) #9
  br label %release_region

release_region:                                   ; preds = %unregister, %if.end17.release_region_crit_edge
  %err.2 = phi i32 [ %err.1, %unregister ], [ -12, %if.end17.release_region_crit_edge ]
  tail call void @pci_release_regions(ptr noundef %pdev) #9
  br label %disable_device

disable_device:                                   ; preds = %release_region, %if.end13.disable_device_crit_edge, %do.end11
  %err.3 = phi i32 [ -5, %do.end11 ], [ %call14, %if.end13.disable_device_crit_edge ], [ %err.2, %release_region ]
  tail call void @pci_disable_device(ptr noundef %pdev) #9
  br label %cleanup

cleanup:                                          ; preds = %disable_device, %if.end68, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ 0, %if.end68 ], [ %call, %if.end.cleanup_crit_edge ], [ %err.3, %disable_device ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atp870u_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %host = getelementptr inbounds %struct.atp_unit, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  tail call void @scsi_remove_host(ptr noundef %3) #9
  %irq = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 47
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 8
  %call1 = tail call ptr @free_irq(i32 noundef %5, ptr noundef %3) #9
  tail call void @pci_release_regions(ptr noundef %pdev) #9
  tail call void @pci_disable_device(ptr noundef %pdev) #9
  %id.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 13, i32 13, i32 2
  %pdev.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 49, i32 26
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.inc.i.for.body3.i_crit_edge, %entry
  %k.033.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body3.i_crit_edge ]
  %prd_table.i = getelementptr [2 x [16 x %struct.atp_id]], ptr %id.i, i32 0, i32 0, i32 %k.033.i, i32 6
  %6 = ptrtoint ptr %prd_table.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prd_table.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %for.body3.i.for.inc.i_crit_edge, label %if.end.i

for.body3.i.for.inc.i_crit_edge:                  ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %prd_bus.i = getelementptr [2 x [16 x %struct.atp_id]], ptr %id.i, i32 0, i32 0, i32 %k.033.i, i32 7
  %10 = ptrtoint ptr %prd_bus.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %prd_bus.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef 1024, ptr noundef nonnull %7, i32 noundef %11, i32 noundef 0) #9
  %12 = ptrtoint ptr %prd_table.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %prd_table.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body3.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %k.033.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %for.inc.i.for.body3.1.i_crit_edge, label %for.inc.i.for.body3.i_crit_edge

for.inc.i.for.body3.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body3.i

for.inc.i.for.body3.1.i_crit_edge:                ; preds = %for.inc.i
  br label %for.body3.1.i

for.body3.1.i:                                    ; preds = %for.inc.1.i.for.body3.1.i_crit_edge, %for.inc.i.for.body3.1.i_crit_edge
  %k.033.1.i = phi i32 [ %inc.1.i, %for.inc.1.i.for.body3.1.i_crit_edge ], [ 0, %for.inc.i.for.body3.1.i_crit_edge ]
  %prd_table.1.i = getelementptr [2 x [16 x %struct.atp_id]], ptr %id.i, i32 0, i32 1, i32 %k.033.1.i, i32 6
  %13 = ptrtoint ptr %prd_table.1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prd_table.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %14, null
  br i1 %tobool.not.1.i, label %for.body3.1.i.for.inc.1.i_crit_edge, label %if.end.1.i

for.body3.1.i.for.inc.1.i_crit_edge:              ; preds = %for.body3.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1.i

if.end.1.i:                                       ; preds = %for.body3.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev.i, align 4
  %dev.1.i = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %prd_bus.1.i = getelementptr [2 x [16 x %struct.atp_id]], ptr %id.i, i32 0, i32 1, i32 %k.033.1.i, i32 7
  %17 = ptrtoint ptr %prd_bus.1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %prd_bus.1.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.1.i, i32 noundef 1024, ptr noundef nonnull %14, i32 noundef %18, i32 noundef 0) #9
  %19 = ptrtoint ptr %prd_table.1.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %prd_table.1.i, align 4
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.end.1.i, %for.body3.1.i.for.inc.1.i_crit_edge
  %inc.1.i = add nuw nsw i32 %k.033.1.i, 1
  %exitcond.1.not.i = icmp eq i32 %inc.1.i, 16
  br i1 %exitcond.1.not.i, label %atp870u_free_tables.exit, label %for.inc.1.i.for.body3.1.i_crit_edge

for.inc.1.i.for.body3.1.i_crit_edge:              ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body3.1.i

atp870u_free_tables.exit:                         ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @scsi_host_put(ptr noundef %3) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_host_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atp885_init(ptr noundef %shpnt) unnamed_addr #2 align 64 {
entry:
  %setupdata = alloca [2 x [16 x i8]], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 0, i32 53
  %pdev1 = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 49, i32 26
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %setupdata) #9
  %2 = getelementptr inbounds [16 x i8], ptr %setupdata, i32 0, i32 1
  %3 = getelementptr inbounds [16 x i8], ptr %setupdata, i32 0, i32 2
  %4 = getelementptr inbounds [2 x [16 x i8]], ptr %setupdata, i32 0, i32 1
  %5 = getelementptr inbounds [2 x [16 x i8]], ptr %setupdata, i32 0, i32 1, i32 1
  %6 = getelementptr inbounds [2 x [16 x i8]], ptr %setupdata, i32 0, i32 1, i32 2
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %io_port = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 0, i32 44
  %7 = call ptr @memset(ptr %setupdata, i32 255, i32 32)
  %8 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %io_port, align 8
  %irq = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 0, i32 47
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.61, i32 noundef %9, i32 noundef %11) #12
  %12 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %io_port, align 8
  %add = add i32 %13, 128
  %ioport = getelementptr %struct.Scsi_Host, ptr %shpnt, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %ioport to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add, ptr %ioport, align 4
  %add4 = add i32 %13, 192
  %arrayidx6 = getelementptr %struct.Scsi_Host, ptr %shpnt, i32 1, i32 1
  %15 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add4, ptr %arrayidx6, align 4
  %add8 = add i32 %13, 64
  %pciport = getelementptr %struct.Scsi_Host, ptr %shpnt, i32 1, i32 1, i32 1
  %16 = ptrtoint ptr %pciport to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add8, ptr %pciport, align 4
  %add11 = add i32 %13, 80
  %arrayidx13 = getelementptr %struct.Scsi_Host, ptr %shpnt, i32 1, i32 2
  %17 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add11, ptr %arrayidx13, align 4
  %18 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hostdata.i, align 4
  %add.i = add i32 %19, 41
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %20 = inttoptr i32 %add1.i to ptr
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %20) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !159
  %22 = or i8 %21, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !164
  tail call void @arm_heavy_mb() #9
  %23 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hostdata.i, align 4
  %add.i374 = add i32 %24, 41
  %and.i375 = and i32 %add.i374, 1048575
  %add1.i376 = or i32 %and.i375, -18874368
  %25 = inttoptr i32 %add1.i376 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 %22) #9, !srcloc !165
  br label %while.body

while.cond.loopexit:                              ; preds = %for.body
  %cmp = icmp ult i32 %add54, 8192
  br i1 %cmp, label %while.cond.loopexit.while.body_crit_edge, label %while.cond.loopexit.while.end_crit_edge

while.cond.loopexit.while.end_crit_edge:          ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.cond.loopexit.while.body_crit_edge:         ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body:                                       ; preds = %while.cond.loopexit.while.body_crit_edge, %entry
  %n.0479 = phi i32 [ 8064, %entry ], [ %add54, %while.cond.loopexit.while.body_crit_edge ]
  %conv17 = trunc i32 %n.0479 to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !162
  tail call void @arm_heavy_mb() #9
  %26 = tail call i16 @llvm.bswap.i16(i16 %conv17) #9
  %27 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %hostdata.i, align 4
  %add.i377 = add i32 %28, 60
  %and.i378 = and i32 %add.i377, 1048575
  %add1.i379 = or i32 %and.i378, -18874368
  %29 = inttoptr i32 %add1.i379 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %29, i16 %26) #9, !srcloc !163
  %30 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %hostdata.i, align 4
  %add.i380 = add i32 %31, 56
  %and.i381 = and i32 %add.i380, 1048575
  %add1.i382 = or i32 %and.i381, -18874368
  %32 = inttoptr i32 %add1.i382 to ptr
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %32) #9, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !168
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %cmp19 = icmp eq i32 %33, -1
  br i1 %cmp19, label %while.body.while.end_crit_edge, label %while.body.for.body_crit_edge

while.body.for.body_crit_edge:                    ; preds = %while.body
  br label %for.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %while.body.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.body.for.body_crit_edge ], [ 0, %while.body.for.body_crit_edge ]
  %n.1477 = phi i32 [ %add54, %for.body.for.body_crit_edge ], [ %n.0479, %while.body.for.body_crit_edge ]
  %arrayidx24 = getelementptr %struct.atp_unit, ptr %hostdata.i, i32 0, i32 8, i32 %indvars.iv
  %34 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %arrayidx24, align 1
  %arrayidx33 = getelementptr [2 x [16 x i8]], ptr %setupdata, i32 0, i32 %indvars.iv
  %conv30 = trunc i32 %n.1477 to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !162
  tail call void @arm_heavy_mb() #9
  %35 = tail call i16 @llvm.bswap.i16(i16 %conv30) #9
  %36 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %hostdata.i, align 4
  %add.i383 = add i32 %37, 60
  %and.i384 = and i32 %add.i383, 1048575
  %add1.i385 = or i32 %and.i384, -18874368
  %38 = inttoptr i32 %add1.i385 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %38, i16 %35) #9, !srcloc !163
  %39 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %hostdata.i, align 4
  %add.i386 = add i32 %40, 56
  %and.i387 = and i32 %add.i386, 1048575
  %add1.i388 = or i32 %and.i387, -18874368
  %41 = inttoptr i32 %add1.i388 to ptr
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %41) #9, !srcloc !167
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !168
  %44 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 %43, ptr %arrayidx33, align 1
  %45 = trunc i32 %n.1477 to i16
  %conv30.1 = add i16 %45, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !162
  tail call void @arm_heavy_mb() #9
  %46 = tail call i16 @llvm.bswap.i16(i16 %conv30.1) #9
  %47 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %hostdata.i, align 4
  %add.i383.1 = add i32 %48, 60
  %and.i384.1 = and i32 %add.i383.1, 1048575
  %add1.i385.1 = or i32 %and.i384.1, -18874368
  %49 = inttoptr i32 %add1.i385.1 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %49, i16 %46) #9, !srcloc !163
  %50 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %hostdata.i, align 4
  %add.i386.1 = add i32 %51, 56
  %and.i387.1 = and i32 %add.i386.1, 1048575
  %add1.i388.1 = or i32 %and.i387.1, -18874368
  %52 = inttoptr i32 %add1.i388.1 to ptr
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %52) #9, !srcloc !167
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !168
  %arrayidx36.1 = getelementptr i32, ptr %arrayidx33, i32 1
  %55 = ptrtoint ptr %arrayidx36.1 to i32
  call void @__asan_storeN_noabort(i32 %55, i32 4)
  store i32 %54, ptr %arrayidx36.1, align 1
  %56 = trunc i32 %n.1477 to i16
  %conv30.2 = add i16 %56, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !162
  tail call void @arm_heavy_mb() #9
  %57 = tail call i16 @llvm.bswap.i16(i16 %conv30.2) #9
  %58 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %hostdata.i, align 4
  %add.i383.2 = add i32 %59, 60
  %and.i384.2 = and i32 %add.i383.2, 1048575
  %add1.i385.2 = or i32 %and.i384.2, -18874368
  %60 = inttoptr i32 %add1.i385.2 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %60, i16 %57) #9, !srcloc !163
  %61 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %hostdata.i, align 4
  %add.i386.2 = add i32 %62, 56
  %and.i387.2 = and i32 %add.i386.2, 1048575
  %add1.i388.2 = or i32 %and.i387.2, -18874368
  %63 = inttoptr i32 %add1.i388.2 to ptr
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %63) #9, !srcloc !167
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !168
  %arrayidx36.2 = getelementptr i32, ptr %arrayidx33, i32 2
  %66 = ptrtoint ptr %arrayidx36.2 to i32
  call void @__asan_storeN_noabort(i32 %66, i32 4)
  store i32 %65, ptr %arrayidx36.2, align 1
  %67 = trunc i32 %n.1477 to i16
  %conv30.3 = add i16 %67, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !162
  tail call void @arm_heavy_mb() #9
  %68 = tail call i16 @llvm.bswap.i16(i16 %conv30.3) #9
  %69 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %hostdata.i, align 4
  %add.i383.3 = add i32 %70, 60
  %and.i384.3 = and i32 %add.i383.3, 1048575
  %add1.i385.3 = or i32 %and.i384.3, -18874368
  %71 = inttoptr i32 %add1.i385.3 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %71, i16 %68) #9, !srcloc !163
  %72 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %hostdata.i, align 4
  %add.i386.3 = add i32 %73, 56
  %and.i387.3 = and i32 %add.i386.3, 1048575
  %add1.i388.3 = or i32 %and.i387.3, -18874368
  %74 = inttoptr i32 %add1.i388.3 to ptr
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %74) #9, !srcloc !167
  %76 = tail call i32 @llvm.bswap.i32(i32 %75) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !168
  %arrayidx36.3 = getelementptr i32, ptr %arrayidx33, i32 3
  %77 = ptrtoint ptr %arrayidx36.3 to i32
  call void @__asan_storeN_noabort(i32 %77, i32 4)
  store i32 %76, ptr %arrayidx36.3, align 1
  %arrayidx47 = getelementptr %struct.atp_unit, ptr %hostdata.i, i32 0, i32 15, i32 %indvars.iv
  %78 = trunc i32 %n.1477 to i16
  %conv44 = add i16 %78, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !162
  tail call void @arm_heavy_mb() #9
  %79 = tail call i16 @llvm.bswap.i16(i16 %conv44) #9
  %80 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %hostdata.i, align 4
  %add.i389 = add i32 %81, 60
  %and.i390 = and i32 %add.i389, 1048575
  %add1.i391 = or i32 %and.i390, -18874368
  %82 = inttoptr i32 %add1.i391 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %82, i16 %79) #9, !srcloc !163
  %83 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %hostdata.i, align 4
  %add.i392 = add i32 %84, 56
  %and.i393 = and i32 %add.i392, 1048575
  %add1.i394 = or i32 %and.i393, -18874368
  %85 = inttoptr i32 %add1.i394 to ptr
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %85) #9, !srcloc !167
  %87 = tail call i32 @llvm.bswap.i32(i32 %86) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !168
  %88 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %arrayidx47, align 4
  %89 = trunc i32 %n.1477 to i16
  %conv44.1 = add i16 %89, 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !162
  tail call void @arm_heavy_mb() #9
  %90 = tail call i16 @llvm.bswap.i16(i16 %conv44.1) #9
  %91 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %hostdata.i, align 4
  %add.i389.1 = add i32 %92, 60
  %and.i390.1 = and i32 %add.i389.1, 1048575
  %add1.i391.1 = or i32 %and.i390.1, -18874368
  %93 = inttoptr i32 %add1.i391.1 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %93, i16 %90) #9, !srcloc !163
  %94 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %hostdata.i, align 4
  %add.i392.1 = add i32 %95, 56
  %and.i393.1 = and i32 %add.i392.1, 1048575
  %add1.i394.1 = or i32 %and.i393.1, -18874368
  %96 = inttoptr i32 %add1.i394.1 to ptr
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %96) #9, !srcloc !167
  %98 = tail call i32 @llvm.bswap.i32(i32 %97) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !168
  %arrayidx50.1 = getelementptr i32, ptr %arrayidx47, i32 1
  %99 = ptrtoint ptr %arrayidx50.1 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %arrayidx50.1, align 4
  %100 = trunc i32 %n.1477 to i16
  %conv44.2 = add i16 %100, 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !162
  tail call void @arm_heavy_mb() #9
  %101 = tail call i16 @llvm.bswap.i16(i16 %conv44.2) #9
  %102 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %hostdata.i, align 4
  %add.i389.2 = add i32 %103, 60
  %and.i390.2 = and i32 %add.i389.2, 1048575
  %add1.i391.2 = or i32 %and.i390.2, -18874368
  %104 = inttoptr i32 %add1.i391.2 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %104, i16 %101) #9, !srcloc !163
  %105 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %hostdata.i, align 4
  %add.i392.2 = add i32 %106, 56
  %and.i393.2 = and i32 %add.i392.2, 1048575
  %add1.i394.2 = or i32 %and.i393.2, -18874368
  %107 = inttoptr i32 %add1.i394.2 to ptr
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %107) #9, !srcloc !167
  %109 = tail call i32 @llvm.bswap.i32(i32 %108) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !168
  %arrayidx50.2 = getelementptr i32, ptr %arrayidx47, i32 2
  %110 = ptrtoint ptr %arrayidx50.2 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %arrayidx50.2, align 4
  %111 = trunc i32 %n.1477 to i16
  %conv44.3 = add i16 %111, 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !162
  tail call void @arm_heavy_mb() #9
  %112 = tail call i16 @llvm.bswap.i16(i16 %conv44.3) #9
  %113 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %hostdata.i, align 4
  %add.i389.3 = add i32 %114, 60
  %and.i390.3 = and i32 %add.i389.3, 1048575
  %add1.i391.3 = or i32 %and.i390.3, -18874368
  %115 = inttoptr i32 %add1.i391.3 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %115, i16 %112) #9, !srcloc !163
  %116 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %hostdata.i, align 4
  %add.i392.3 = add i32 %117, 56
  %and.i393.3 = and i32 %add.i392.3, 1048575
  %add1.i394.3 = or i32 %and.i393.3, -18874368
  %118 = inttoptr i32 %add1.i394.3 to ptr
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %118) #9, !srcloc !167
  %120 = tail call i32 @llvm.bswap.i32(i32 %119) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !168
  %arrayidx50.3 = getelementptr i32, ptr %arrayidx47, i32 3
  %121 = ptrtoint ptr %arrayidx50.3 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %arrayidx50.3, align 4
  %add54 = add i32 %n.1477, 16
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 2
  br i1 %exitcond.not, label %while.cond.loopexit, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.loopexit.while.end_crit_edge
  %122 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %hostdata.i, align 4
  %add.i395 = add i32 %123, 41
  %and.i396 = and i32 %add.i395, 1048575
  %add1.i397 = or i32 %and.i396, -18874368
  %124 = inttoptr i32 %add1.i397 to ptr
  %125 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %124) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !159
  %126 = and i8 %125, -5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !164
  tail call void @arm_heavy_mb() #9
  %127 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %hostdata.i, align 4
  %add.i398 = add i32 %128, 41
  %and.i399 = and i32 %add.i398, 1048575
  %add1.i400 = or i32 %and.i399, -18874368
  %129 = inttoptr i32 %add1.i400 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %129, i8 %126) #9, !srcloc !165
  %arrayidx67 = getelementptr %struct.Scsi_Host, ptr %shpnt, i32 1, i32 3, i32 0, i32 0, i32 4, i32 2
  %130 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 0, ptr %arrayidx67, align 2
  %arrayidx69 = getelementptr %struct.Scsi_Host, ptr %shpnt, i32 1, i32 3, i32 0, i32 0, i32 4, i32 3
  %131 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 0, ptr %arrayidx69, align 2
  br label %for.body74

for.body74:                                       ; preds = %for.inc108.for.body74_crit_edge, %while.end
  %indvars.iv483 = phi i32 [ 0, %while.end ], [ %indvars.iv.next484, %for.inc108.for.body74_crit_edge ]
  %shl = shl nuw nsw i32 1, %indvars.iv483
  %arrayidx80 = getelementptr %struct.atp_unit, ptr %hostdata.i, i32 0, i32 15, i32 0, i32 %indvars.iv483
  %132 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %arrayidx80, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %133)
  %cmp82 = icmp ugt i8 %133, 1
  br i1 %cmp82, label %for.body74.for.inc108.sink.split_crit_edge, label %if.else

for.body74.for.inc108.sink.split_crit_edge:       ; preds = %for.body74
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc108.sink.split

if.else:                                          ; preds = %for.body74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %cmp97 = icmp eq i8 %133, 0
  br i1 %cmp97, label %if.else.for.inc108.sink.split_crit_edge, label %if.else.for.inc108_crit_edge

if.else.for.inc108_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc108

if.else.for.inc108.sink.split_crit_edge:          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc108.sink.split

for.inc108.sink.split:                            ; preds = %if.else.for.inc108.sink.split_crit_edge, %for.body74.for.inc108.sink.split_crit_edge
  %arrayidx67.sink490 = phi ptr [ %arrayidx67, %for.body74.for.inc108.sink.split_crit_edge ], [ %arrayidx69, %if.else.for.inc108.sink.split_crit_edge ]
  %134 = ptrtoint ptr %arrayidx67.sink490 to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %arrayidx67.sink490, align 2
  %136 = trunc i32 %shl to i16
  %conv90 = or i16 %135, %136
  store i16 %conv90, ptr %arrayidx67.sink490, align 2
  br label %for.inc108

for.inc108:                                       ; preds = %for.inc108.sink.split, %if.else.for.inc108_crit_edge
  %indvars.iv.next484 = add nuw nsw i32 %indvars.iv483, 1
  %exitcond485.not = icmp eq i32 %indvars.iv.next484, 16
  br i1 %exitcond485.not, label %for.end110, label %for.inc108.for.body74_crit_edge

for.inc108.for.body74_crit_edge:                  ; preds = %for.inc108
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body74

for.end110:                                       ; preds = %for.inc108
  %137 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %arrayidx69, align 2
  %neg = xor i16 %138, -1
  store i16 %neg, ptr %arrayidx69, align 2
  %arrayidx121 = getelementptr %struct.atp_unit, ptr %hostdata.i, i32 0, i32 8, i32 0
  %139 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %arrayidx121, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %cmp123 = icmp eq i8 %140, 0
  br i1 %cmp123, label %if.then125, label %for.end110.for.inc175_crit_edge

for.end110.for.inc175_crit_edge:                  ; preds = %for.end110
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc175

if.then125:                                       ; preds = %for.end110
  %141 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %2, align 1
  %143 = and i8 %142, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %cmp131.not = icmp eq i8 %143, 0
  br i1 %cmp131.not, label %if.then125.if.end140_crit_edge, label %if.then133

if.then125.if.end140_crit_edge:                   ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end140

if.then133:                                       ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #11
  %144 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 32, ptr %arrayidx121, align 1
  br label %if.end140

if.end140:                                        ; preds = %if.then133, %if.then125.if.end140_crit_edge
  %and142 = and i8 %142, 7
  %145 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %arrayidx121, align 1
  %or149373 = or i8 %146, %and142
  store i8 %or149373, ptr %arrayidx121, align 1
  %147 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %3, align 1
  %149 = and i8 %148, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %cmp156.not = icmp eq i8 %149, 0
  br i1 %cmp156.not, label %if.end140.if.end165_crit_edge, label %if.then158

if.end140.if.end165_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end165

if.then158:                                       ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #11
  %150 = or i8 %or149373, 8
  %151 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %150, ptr %arrayidx121, align 1
  br label %if.end165

if.end165:                                        ; preds = %if.then158, %if.end140.if.end165_crit_edge
  %152 = ptrtoint ptr %setupdata to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %setupdata, align 1
  %154 = and i8 %153, 7
  %arrayidx173 = getelementptr %struct.Scsi_Host, ptr %shpnt, i32 1, i32 3, i32 0, i32 0, i32 2
  %155 = ptrtoint ptr %arrayidx173 to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %154, ptr %arrayidx173, align 1
  br label %for.inc175

for.inc175:                                       ; preds = %if.end165, %for.end110.for.inc175_crit_edge
  %arrayidx67.1 = getelementptr %struct.atp_unit, ptr %hostdata.i, i32 0, i32 13, i32 1
  %156 = ptrtoint ptr %arrayidx67.1 to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 0, ptr %arrayidx67.1, align 2
  %arrayidx69.1 = getelementptr %struct.Scsi_Host, ptr %shpnt, i32 1, i32 3, i32 0, i32 0, i32 4, i32 5
  %157 = ptrtoint ptr %arrayidx69.1 to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 0, ptr %arrayidx69.1, align 2
  br label %for.body74.1

for.body74.1:                                     ; preds = %for.inc108.1.for.body74.1_crit_edge, %for.inc175
  %indvars.iv483.1 = phi i32 [ 0, %for.inc175 ], [ %indvars.iv.next484.1, %for.inc108.1.for.body74.1_crit_edge ]
  %shl.1 = shl nuw nsw i32 1, %indvars.iv483.1
  %arrayidx80.1 = getelementptr %struct.atp_unit, ptr %hostdata.i, i32 0, i32 15, i32 1, i32 %indvars.iv483.1
  %158 = ptrtoint ptr %arrayidx80.1 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %arrayidx80.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %159)
  %cmp82.1 = icmp ugt i8 %159, 1
  br i1 %cmp82.1, label %for.body74.1.for.inc108.1.sink.split_crit_edge, label %if.else.1

for.body74.1.for.inc108.1.sink.split_crit_edge:   ; preds = %for.body74.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc108.1.sink.split

if.else.1:                                        ; preds = %for.body74.1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %159)
  %cmp97.1 = icmp eq i8 %159, 0
  br i1 %cmp97.1, label %if.else.1.for.inc108.1.sink.split_crit_edge, label %if.else.1.for.inc108.1_crit_edge

if.else.1.for.inc108.1_crit_edge:                 ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc108.1

if.else.1.for.inc108.1.sink.split_crit_edge:      ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc108.1.sink.split

for.inc108.1.sink.split:                          ; preds = %if.else.1.for.inc108.1.sink.split_crit_edge, %for.body74.1.for.inc108.1.sink.split_crit_edge
  %arrayidx67.1.sink492 = phi ptr [ %arrayidx69.1, %if.else.1.for.inc108.1.sink.split_crit_edge ], [ %arrayidx67.1, %for.body74.1.for.inc108.1.sink.split_crit_edge ]
  %160 = ptrtoint ptr %arrayidx67.1.sink492 to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %arrayidx67.1.sink492, align 2
  %162 = trunc i32 %shl.1 to i16
  %conv90.1 = or i16 %161, %162
  store i16 %conv90.1, ptr %arrayidx67.1.sink492, align 2
  br label %for.inc108.1

for.inc108.1:                                     ; preds = %for.inc108.1.sink.split, %if.else.1.for.inc108.1_crit_edge
  %indvars.iv.next484.1 = add nuw nsw i32 %indvars.iv483.1, 1
  %exitcond485.1.not = icmp eq i32 %indvars.iv.next484.1, 16
  br i1 %exitcond485.1.not, label %for.end110.1, label %for.inc108.1.for.body74.1_crit_edge

for.inc108.1.for.body74.1_crit_edge:              ; preds = %for.inc108.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body74.1

for.end110.1:                                     ; preds = %for.inc108.1
  %163 = ptrtoint ptr %arrayidx69.1 to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %arrayidx69.1, align 2
  %neg.1 = xor i16 %164, -1
  store i16 %neg.1, ptr %arrayidx69.1, align 2
  %arrayidx121.1 = getelementptr %struct.atp_unit, ptr %hostdata.i, i32 0, i32 8, i32 1
  %165 = ptrtoint ptr %arrayidx121.1 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %arrayidx121.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %166)
  %cmp123.1 = icmp eq i8 %166, 0
  br i1 %cmp123.1, label %if.then125.1, label %for.end110.1.for.inc175.1_crit_edge

for.end110.1.for.inc175.1_crit_edge:              ; preds = %for.end110.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc175.1

if.then125.1:                                     ; preds = %for.end110.1
  %167 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %5, align 1
  %169 = and i8 %168, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %169)
  %cmp131.not.1 = icmp eq i8 %169, 0
  br i1 %cmp131.not.1, label %if.then125.1.if.end140.1_crit_edge, label %if.then133.1

if.then125.1.if.end140.1_crit_edge:               ; preds = %if.then125.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end140.1

if.then133.1:                                     ; preds = %if.then125.1
  call void @__sanitizer_cov_trace_pc() #11
  %170 = ptrtoint ptr %arrayidx121.1 to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 32, ptr %arrayidx121.1, align 1
  br label %if.end140.1

if.end140.1:                                      ; preds = %if.then133.1, %if.then125.1.if.end140.1_crit_edge
  %and142.1 = and i8 %168, 7
  %171 = ptrtoint ptr %arrayidx121.1 to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %arrayidx121.1, align 1
  %or149373.1 = or i8 %172, %and142.1
  store i8 %or149373.1, ptr %arrayidx121.1, align 1
  %173 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %6, align 1
  %175 = and i8 %174, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %175)
  %cmp156.not.1 = icmp eq i8 %175, 0
  br i1 %cmp156.not.1, label %if.end140.1.if.end165.1_crit_edge, label %if.then158.1

if.end140.1.if.end165.1_crit_edge:                ; preds = %if.end140.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end165.1

if.then158.1:                                     ; preds = %if.end140.1
  call void @__sanitizer_cov_trace_pc() #11
  %176 = or i8 %or149373.1, 8
  %177 = ptrtoint ptr %arrayidx121.1 to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 %176, ptr %arrayidx121.1, align 1
  br label %if.end165.1

if.end165.1:                                      ; preds = %if.then158.1, %if.end140.1.if.end165.1_crit_edge
  %178 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %4, align 1
  %180 = and i8 %179, 7
  %arrayidx173.1 = getelementptr %struct.atp_unit, ptr %hostdata.i, i32 0, i32 9, i32 1
  %181 = ptrtoint ptr %arrayidx173.1 to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 %180, ptr %arrayidx173.1, align 1
  br label %for.inc175.1

for.inc175.1:                                     ; preds = %if.end165.1, %for.end110.1.for.inc175.1_crit_edge
  %182 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %hostdata.i, align 4
  %add.i401 = add i32 %183, 40
  %and.i402 = and i32 %add.i401, 1048575
  %add1.i403 = or i32 %and.i402, -18874368
  %184 = inttoptr i32 %add1.i403 to ptr
  %185 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %184) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !159
  %186 = and i8 %185, -113
  %187 = or i8 %186, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !164
  tail call void @arm_heavy_mb() #9
  %188 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %hostdata.i, align 4
  %add.i404 = add i32 %189, 40
  %and.i405 = and i32 %add.i404, 1048575
  %add1.i406 = or i32 %and.i405, -18874368
  %190 = inttoptr i32 %add1.i406 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %190, i8 %187) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !169
  tail call void @arm_heavy_mb() #9
  %191 = ptrtoint ptr %pciport to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %pciport, align 4
  %add.i407 = add i32 %192, 1
  %and.i408 = and i32 %add.i407, 1048575
  %add1.i409 = or i32 %and.i408, -18874368
  %193 = inttoptr i32 %add1.i409 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %193, i8 -128) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !169
  tail call void @arm_heavy_mb() #9
  %194 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %arrayidx13, align 4
  %add.i411 = add i32 %195, 1
  %and.i412 = and i32 %add.i411, 1048575
  %add1.i413 = or i32 %and.i412, -18874368
  %196 = inttoptr i32 %add1.i413 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %196, i8 -128) #9, !srcloc !165
  tail call void @msleep(i32 noundef 100) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !169
  tail call void @arm_heavy_mb() #9
  %197 = ptrtoint ptr %pciport to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %pciport, align 4
  %add.i415 = add i32 %198, 1
  %and.i416 = and i32 %add.i415, 1048575
  %add1.i417 = or i32 %and.i416, -18874368
  %199 = inttoptr i32 %add1.i417 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %199, i8 0) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !169
  tail call void @arm_heavy_mb() #9
  %200 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %arrayidx13, align 4
  %add.i419 = add i32 %201, 1
  %and.i420 = and i32 %add.i419, 1048575
  %add1.i421 = or i32 %and.i420, -18874368
  %202 = inttoptr i32 %add1.i421 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %202, i8 0) #9, !srcloc !165
  tail call void @msleep(i32 noundef 1000) #9
  %203 = ptrtoint ptr %ioport to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %ioport, align 4
  %add.i423 = add i32 %204, 27
  %and.i424 = and i32 %add.i423, 1048575
  %add1.i425 = or i32 %and.i424, -18874368
  %205 = inttoptr i32 %add1.i425 to ptr
  %206 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %205) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %207 = ptrtoint ptr %ioport to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %ioport, align 4
  %add.i427 = add i32 %208, 23
  %and.i428 = and i32 %add.i427, 1048575
  %add1.i429 = or i32 %and.i428, -18874368
  %209 = inttoptr i32 %add1.i429 to ptr
  %210 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %209) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %211 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %arrayidx6, align 4
  %add.i431 = add i32 %212, 27
  %and.i432 = and i32 %add.i431, 1048575
  %add1.i433 = or i32 %and.i432, -18874368
  %213 = inttoptr i32 %add1.i433 to ptr
  %214 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %213) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %215 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %arrayidx6, align 4
  %add.i435 = add i32 %216, 23
  %and.i436 = and i32 %add.i435, 1048575
  %add1.i437 = or i32 %and.i436, -18874368
  %217 = inttoptr i32 %add1.i437 to ptr
  %218 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %217) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %host_id189 = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 3, i32 0, i32 0, i32 2
  %219 = ptrtoint ptr %host_id189 to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %host_id189, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %220)
  %cmp192 = icmp ugt i8 %220, 7
  %221 = and i8 %220, 7
  %222 = or i8 %221, 64
  %k.3 = select i1 %cmp192, i8 %222, i8 %220
  tail call fastcc void @atp_set_host_id(ptr noundef %hostdata.i, i8 noundef zeroext 0, i8 noundef zeroext %k.3)
  %arrayidx201 = getelementptr %struct.atp_unit, ptr %hostdata.i, i32 0, i32 9, i32 1
  %223 = ptrtoint ptr %arrayidx201 to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %arrayidx201, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %224)
  %cmp203 = icmp ugt i8 %224, 7
  %225 = and i8 %224, 7
  %226 = or i8 %225, 64
  %k.4 = select i1 %cmp203, i8 %226, i8 %224
  tail call fastcc void @atp_set_host_id(ptr noundef %hostdata.i, i8 noundef zeroext 1, i8 noundef zeroext %k.4)
  tail call void @msleep(i32 noundef 600) #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.64) #12
  %227 = ptrtoint ptr %ioport to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %ioport, align 4
  %add.i439 = add i32 %228, 27
  %and.i440 = and i32 %add.i439, 1048575
  %add1.i441 = or i32 %and.i440, -18874368
  %229 = inttoptr i32 %add1.i441 to ptr
  %230 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %229) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %231 = lshr i8 %230, 7
  tail call fastcc void @atp_is(ptr noundef %hostdata.i, i8 noundef zeroext 0, i1 noundef zeroext true, i8 noundef zeroext %231)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %232 = ptrtoint ptr %ioport to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %ioport, align 4
  %add.i443 = add i32 %233, 22
  %and.i444 = and i32 %add.i443, 1048575
  %add1.i445 = or i32 %and.i444, -18874368
  %234 = inttoptr i32 %add1.i445 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %234, i8 -128) #9, !srcloc !165
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.67) #12
  %235 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %arrayidx6, align 4
  %add.i447 = add i32 %236, 27
  %and.i448 = and i32 %add.i447, 1048575
  %add1.i449 = or i32 %and.i448, -18874368
  %237 = inttoptr i32 %add1.i449 to ptr
  %238 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %237) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %239 = lshr i8 %238, 7
  tail call fastcc void @atp_is(ptr noundef %hostdata.i, i8 noundef zeroext 1, i1 noundef zeroext true, i8 noundef zeroext %239)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %240 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %arrayidx6, align 4
  %add.i451 = add i32 %241, 22
  %and.i452 = and i32 %add.i451, 1048575
  %add1.i453 = or i32 %and.i452, -18874368
  %242 = inttoptr i32 %add1.i453 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %242, i8 -128) #9, !srcloc !165
  %243 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %hostdata.i, align 4
  %add.i454 = add i32 %244, 40
  %and.i455 = and i32 %add.i454, 1048575
  %add1.i456 = or i32 %and.i455, -18874368
  %245 = inttoptr i32 %add1.i456 to ptr
  %246 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %245) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !159
  %247 = and i8 %246, 15
  %248 = or i8 %247, -64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !164
  tail call void @arm_heavy_mb() #9
  %249 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %hostdata.i, align 4
  %add.i457 = add i32 %250, 40
  %and.i458 = and i32 %add.i457, 1048575
  %add1.i459 = or i32 %and.i458, -18874368
  %251 = inttoptr i32 %add1.i459 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %251, i8 %248) #9, !srcloc !165
  %252 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %hostdata.i, align 4
  %add.i460 = add i32 %253, 31
  %and.i461 = and i32 %add.i460, 1048575
  %add1.i462 = or i32 %and.i461, -18874368
  %254 = inttoptr i32 %add1.i462 to ptr
  %255 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %254) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !159
  %256 = or i8 %255, -128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !164
  tail call void @arm_heavy_mb() #9
  %257 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %hostdata.i, align 4
  %add.i463 = add i32 %258, 31
  %and.i464 = and i32 %add.i463, 1048575
  %add1.i465 = or i32 %and.i464, -18874368
  %259 = inttoptr i32 %add1.i465 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %259, i8 %256) #9, !srcloc !165
  %260 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %hostdata.i, align 4
  %add.i466 = add i32 %261, 41
  %and.i467 = and i32 %add.i466, 1048575
  %add1.i468 = or i32 %and.i467, -18874368
  %262 = inttoptr i32 %add1.i468 to ptr
  %263 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %262) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !159
  %264 = or i8 %263, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !164
  tail call void @arm_heavy_mb() #9
  %265 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %hostdata.i, align 4
  %add.i469 = add i32 %266, 41
  %and.i470 = and i32 %add.i469, 1048575
  %add1.i471 = or i32 %and.i470, -18874368
  %267 = inttoptr i32 %add1.i471 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %267, i8 %264) #9, !srcloc !165
  %max_id = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 0, i32 21
  %268 = ptrtoint ptr %max_id to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 16, ptr %max_id, align 4
  %269 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %arrayidx121, align 2
  %271 = and i8 %270, 7
  %narrow = add nuw nsw i8 %271, 1
  %272 = zext i8 %narrow to i64
  %max_lun = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 0, i32 22
  %273 = ptrtoint ptr %max_lun to i32
  call void @__asan_store8_noabort(i32 %273)
  store i64 %272, ptr %max_lun, align 8
  %max_channel = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 0, i32 20
  %274 = ptrtoint ptr %max_channel to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 1, ptr %max_channel, align 8
  %275 = ptrtoint ptr %host_id189 to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %host_id189, align 4
  %conv249 = zext i8 %276 to i32
  %this_id = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 0, i32 25
  %277 = ptrtoint ptr %this_id to i32
  call void @__asan_store4_noabort(i32 %277)
  store i32 %conv249, ptr %this_id, align 8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %setupdata) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atp870_init(ptr noundef %shpnt) unnamed_addr #2 align 64 {
entry:
  %host_id = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 0, i32 53
  %pdev1 = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 49, i32 26
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %host_id) #9
  %2 = ptrtoint ptr %host_id to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %host_id, align 1, !annotation !171
  %device = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32766, i16 %4)
  %cmp = icmp eq i16 %4, -32766
  br i1 %cmp, label %land.lhs.true, label %entry.lor.lhs.false_crit_edge

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %revision = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 12
  %5 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %6)
  %cmp4 = icmp eq i8 %6, 4
  br i1 %cmp4, label %land.lhs.true.lor.end_crit_edge, label %land.lhs.true.lor.lhs.false_crit_edge

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

land.lhs.true.lor.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %7 = and i16 %4, -65
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32752, i16 %7)
  %8 = icmp eq i16 %7, -32752
  br label %lor.end

lor.end:                                          ; preds = %lor.lhs.false, %land.lhs.true.lor.end_crit_edge
  %9 = phi i1 [ true, %land.lhs.true.lor.end_crit_edge ], [ %8, %lor.lhs.false ]
  %call14 = call i32 @pci_read_config_byte(ptr noundef %1, i32 noundef 73, ptr noundef nonnull %host_id) #9
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %io_port = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 0, i32 44
  %10 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %io_port, align 8
  %irq = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 0, i32 47
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.69, i32 noundef %11, i32 noundef %13) #12
  %14 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %io_port, align 8
  %ioport = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %ioport to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %ioport, align 4
  %add = add i32 %15, 32
  %pciport = getelementptr %struct.Scsi_Host, ptr %shpnt, i32 1, i32 1, i32 1
  %17 = ptrtoint ptr %pciport to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add, ptr %pciport, align 4
  %18 = ptrtoint ptr %host_id to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %host_id, align 1
  %20 = and i8 %19, 7
  store i8 %20, ptr %host_id, align 1
  %host_id20 = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 3, i32 0, i32 0, i32 2
  %21 = ptrtoint ptr %host_id20 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %host_id20, align 4
  %add.i = add i32 %15, 34
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %22 = inttoptr i32 %add1.i to ptr
  %23 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %22) #9, !srcloc !158
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %24 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hostdata.i, align 4
  %add.i106 = add i32 %25, 45
  %and.i107 = and i32 %add.i106, 1048575
  %add1.i108 = or i32 %and.i107, -18874368
  %26 = inttoptr i32 %add1.i108 to ptr
  %27 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %26) #9, !srcloc !158
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !159
  %global_map = getelementptr inbounds %struct.atp_unit, ptr %hostdata.i, i32 0, i32 8
  %28 = ptrtoint ptr %global_map to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %global_map, align 2
  %29 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %hostdata.i, align 4
  %add.i109 = add i32 %30, 46
  %and.i110 = and i32 %add.i109, 1048575
  %add1.i111 = or i32 %and.i110, -18874368
  %31 = inttoptr i32 %add1.i111 to ptr
  %32 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %31) #9, !srcloc !160
  %33 = call i16 @llvm.bswap.i16(i16 %32) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !161
  %ultra_map = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 1, i32 3, i32 0, i32 0, i32 4, i32 2
  %34 = ptrtoint ptr %ultra_map to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %ultra_map, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %cmp30 = icmp eq i16 %32, 0
  br i1 %cmp30, label %if.then, label %lor.end.if.end_crit_edge

lor.end.if.end_crit_edge:                         ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %global_map to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 32, ptr %global_map, align 2
  %36 = ptrtoint ptr %ultra_map to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 -1, ptr %ultra_map, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.end.if.end_crit_edge
  %scam_on.0 = phi i8 [ 0, %if.then ], [ %23, %lor.end.if.end_crit_edge ]
  %revision36 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 12
  %37 = ptrtoint ptr %revision36 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %revision36, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %38)
  %cmp38 = icmp ugt i8 %38, 7
  br i1 %cmp38, label %if.then40, label %if.end.if.end41_crit_edge

if.end.if.end41_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then40:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !164
  call void @arm_heavy_mb() #9
  %39 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %hostdata.i, align 4
  %add.i112 = add i32 %40, 62
  %and.i113 = and i32 %add.i112, 1048575
  %add1.i114 = or i32 %and.i113, -18874368
  %41 = inttoptr i32 %add1.i114 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %41, i8 0) #9, !srcloc !165
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end.if.end41_crit_edge
  %42 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %hostdata.i, align 4
  %add.i115 = add i32 %43, 58
  %and.i116 = and i32 %add.i115, 1048575
  %add1.i117 = or i32 %and.i116, -18874368
  %44 = inttoptr i32 %add1.i117 to ptr
  %45 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %44) #9, !srcloc !158
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !159
  %46 = and i8 %45, -29
  %47 = or i8 %46, 16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !164
  call void @arm_heavy_mb() #9
  %48 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %hostdata.i, align 4
  %add.i118 = add i32 %49, 58
  %and.i119 = and i32 %add.i118, 1048575
  %add1.i120 = or i32 %and.i119, -18874368
  %50 = inttoptr i32 %add1.i120 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %50, i8 %47) #9, !srcloc !165
  %51 = and i8 %47, -45
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !164
  call void @arm_heavy_mb() #9
  %52 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %hostdata.i, align 4
  %add.i121 = add i32 %53, 58
  %and.i122 = and i32 %add.i121, 1048575
  %add1.i123 = or i32 %and.i122, -18874368
  %54 = inttoptr i32 %add1.i123 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %54, i8 %51) #9, !srcloc !165
  call void @msleep(i32 noundef 32) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !164
  call void @arm_heavy_mb() #9
  %55 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %hostdata.i, align 4
  %add.i124 = add i32 %56, 58
  %and.i125 = and i32 %add.i124, 1048575
  %add1.i126 = or i32 %and.i125, -18874368
  %57 = inttoptr i32 %add1.i126 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %57, i8 %47) #9, !srcloc !165
  call void @msleep(i32 noundef 32) #9
  %58 = ptrtoint ptr %host_id to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %host_id, align 1
  call fastcc void @atp_set_host_id(ptr noundef %hostdata.i, i8 noundef zeroext 0, i8 noundef zeroext %59)
  call fastcc void @tscam(ptr noundef %shpnt, i1 noundef zeroext %9, i8 noundef zeroext %scam_on.0)
  %60 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %hostdata.i, align 4
  %add.i127 = add i32 %61, 58
  %and.i128 = and i32 %add.i127, 1048575
  %add1.i129 = or i32 %and.i128, -18874368
  %62 = inttoptr i32 %add1.i129 to ptr
  %63 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %62) #9, !srcloc !158
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !159
  %64 = or i8 %63, 16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !164
  call void @arm_heavy_mb() #9
  %65 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %hostdata.i, align 4
  %add.i130 = add i32 %66, 58
  %and.i131 = and i32 %add.i130, 1048575
  %add1.i132 = or i32 %and.i131, -18874368
  %67 = inttoptr i32 %add1.i132 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %67, i8 %64) #9, !srcloc !165
  call fastcc void @atp_is(ptr noundef %hostdata.i, i8 noundef zeroext 0, i1 noundef zeroext %9, i8 noundef zeroext 0)
  %68 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %hostdata.i, align 4
  %add.i133 = add i32 %69, 58
  %and.i134 = and i32 %add.i133, 1048575
  %add1.i135 = or i32 %and.i134, -18874368
  %70 = inttoptr i32 %add1.i135 to ptr
  %71 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %70) #9, !srcloc !158
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !159
  %72 = and i8 %71, -17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !164
  call void @arm_heavy_mb() #9
  %73 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %hostdata.i, align 4
  %add.i136 = add i32 %74, 58
  %and.i137 = and i32 %add.i136, 1048575
  %add1.i138 = or i32 %and.i137, -18874368
  %75 = inttoptr i32 %add1.i138 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %75, i8 %72) #9, !srcloc !165
  %76 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %hostdata.i, align 4
  %add.i139 = add i32 %77, 59
  %and.i140 = and i32 %add.i139, 1048575
  %add1.i141 = or i32 %and.i140, -18874368
  %78 = inttoptr i32 %add1.i141 to ptr
  %79 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %78) #9, !srcloc !158
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !159
  %80 = or i8 %79, 32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !164
  call void @arm_heavy_mb() #9
  %81 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %hostdata.i, align 4
  %add.i142 = add i32 %82, 59
  %and.i143 = and i32 %add.i142, 1048575
  %add1.i144 = or i32 %and.i143, -18874368
  %83 = inttoptr i32 %add1.i144 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %83, i8 %80) #9, !srcloc !165
  %cond = select i1 %9, i32 16, i32 8
  %max_id = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 0, i32 21
  %84 = ptrtoint ptr %max_id to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %cond, ptr %max_id, align 4
  %85 = ptrtoint ptr %host_id to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %host_id, align 1
  %conv64 = zext i8 %86 to i32
  %this_id = getelementptr inbounds %struct.Scsi_Host, ptr %shpnt, i32 0, i32 25
  %87 = ptrtoint ptr %this_id to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %conv64, ptr %this_id, align 8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %host_id) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atp870u_intr_handle(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %dev_id, i32 0, i32 53
  %in_int = getelementptr inbounds %struct.Scsi_Host, ptr %dev_id, i32 1, i32 3
  %arrayidx.i = getelementptr %struct.Scsi_Host, ptr %dev_id, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %1, 31
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add1.i to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp3.not = icmp sgt i8 %3, -1
  br i1 %cmp3.not, label %if.end, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %in_int to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %in_int, align 1
  %arrayidx.i.1 = getelementptr %struct.Scsi_Host, ptr %dev_id, i32 1, i32 1
  %5 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i.1, align 4
  %add.i.1 = add i32 %6, 31
  %and.i.1 = and i32 %add.i.1, 1048575
  %add1.i.1 = or i32 %and.i.1, -18874368
  %7 = inttoptr i32 %add1.i.1 to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %8)
  %cmp3.not.1 = icmp sgt i8 %8, -1
  br i1 %cmp3.not.1, label %if.end.1, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end.1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.1 = getelementptr [2 x i8], ptr %in_int, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx.1, align 1
  br label %for.end

for.end:                                          ; preds = %if.end.1, %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi i8 [ %3, %entry.for.end_crit_edge ], [ %8, %if.end.for.end_crit_edge ], [ %8, %if.end.1 ]
  %c.0.lcssa = phi i8 [ 0, %entry.for.end_crit_edge ], [ 1, %if.end.for.end_crit_edge ], [ 2, %if.end.1 ]
  %conv.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ 1, %if.end.for.end_crit_edge ], [ 2, %if.end.1 ]
  %conv5 = zext i8 %.lcssa to i32
  %and6 = and i32 %conv5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %cmp7 = icmp eq i32 %and6, 0
  br i1 %cmp7, label %for.end.cleanup_crit_edge, label %if.end10

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %for.end
  %arrayidx13 = getelementptr [2 x i8], ptr %in_int, i32 0, i32 %conv.lcssa
  %10 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %arrayidx13, align 1
  %arrayidx.i1957 = getelementptr %struct.atp_unit, ptr %hostdata, i32 0, i32 1, i32 %conv.lcssa
  %11 = ptrtoint ptr %arrayidx.i1957 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i1957, align 4
  %add.i1958 = add i32 %12, 16
  %and.i1959 = and i32 %add.i1958, 1048575
  %add1.i1960 = or i32 %and.i1959, -18874368
  %13 = inttoptr i32 %add1.i1960 to ptr
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %13) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %working = getelementptr inbounds %struct.Scsi_Host, ptr %dev_id, i32 1, i32 3, i32 0, i32 0, i32 3
  %arrayidx16 = getelementptr [2 x i32], ptr %working, i32 0, i32 %conv.lcssa
  %15 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp17.not = icmp eq i32 %16, 0
  br i1 %cmp17.not, label %if.end10.cleanup.sink.split_crit_edge, label %if.then19

if.end10.cleanup.sink.split_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.then19:                                        ; preds = %if.end10
  %pdev.i = getelementptr inbounds %struct.Scsi_Host, ptr %dev_id, i32 1, i32 49, i32 26
  %17 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev.i, align 4
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32630, i16 %20)
  %cmp.i = icmp eq i16 %20, -32630
  br i1 %cmp.i, label %if.then21, label %if.then19.if.end32_crit_edge

if.then19.if.end32_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then21:                                        ; preds = %if.then19
  %21 = ptrtoint ptr %arrayidx.i1957 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i1957, align 4
  %add.i1963 = add i32 %22, 22
  %and.i1964 = and i32 %add.i1963, 1048575
  %add1.i1965 = or i32 %and.i1964, -18874368
  %23 = inttoptr i32 %add1.i1965 to ptr
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %23) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %24)
  %cmp25 = icmp sgt i8 %24, -1
  br i1 %cmp25, label %if.then27, label %if.then21.if.end32_crit_edge

if.then21.if.end32_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then27:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %arrayidx.i1957 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i1957, align 4
  %add.i1968 = add i32 %26, 22
  %and.i1969 = and i32 %add.i1968, 1048575
  %add1.i1970 = or i32 %and.i1969, -18874368
  %27 = inttoptr i32 %add1.i1970 to ptr
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %27) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %29 = or i8 %28, -128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %30 = ptrtoint ptr %arrayidx.i1957 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i1957, align 4
  %add.i1973 = add i32 %31, 22
  %and.i1974 = and i32 %add.i1973, 1048575
  %add1.i1975 = or i32 %and.i1974, -18874368
  %32 = inttoptr i32 %add1.i1975 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 %29) #9, !srcloc !165
  br label %if.end32

if.end32:                                         ; preds = %if.then27, %if.then21.if.end32_crit_edge, %if.then19.if.end32_crit_edge
  %arrayidx.i1977 = getelementptr %struct.atp_unit, ptr %hostdata, i32 0, i32 2, i32 %conv.lcssa
  %33 = ptrtoint ptr %arrayidx.i1977 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i1977, align 4
  %and.i1978 = and i32 %34, 1048575
  %add1.i1979 = or i32 %and.i1978, -18874368
  %35 = inttoptr i32 %add1.i1979 to ptr
  %36 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %35) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %37 = and i8 %36, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp36.not = icmp eq i8 %37, 0
  br i1 %cmp36.not, label %if.end32.if.end60_crit_edge, label %if.end32.for.body42_crit_edge

if.end32.for.body42_crit_edge:                    ; preds = %if.end32
  br label %for.body42

if.end32.if.end60_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

for.body42:                                       ; preds = %for.inc57.for.body42_crit_edge, %if.end32.for.body42_crit_edge
  %k.sroa.33.0.insert.insert2449 = phi i32 [ %k.sroa.33.0.insert.insert, %for.inc57.for.body42_crit_edge ], [ 0, %if.end32.for.body42_crit_edge ]
  %38 = ptrtoint ptr %arrayidx.i1977 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i1977, align 4
  %add.i1982 = add i32 %39, 2
  %and.i1983 = and i32 %add.i1982, 1048575
  %add1.i1984 = or i32 %and.i1983, -18874368
  %40 = inttoptr i32 %add1.i1984 to ptr
  %41 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %40) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %42 = and i8 %41, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %cmp46 = icmp eq i8 %42, 0
  br i1 %cmp46, label %for.body42.if.end60_crit_edge, label %if.end49

for.body42.if.end60_crit_edge:                    ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

if.end49:                                         ; preds = %for.body42
  %43 = ptrtoint ptr %arrayidx.i1977 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i1977, align 4
  %add.i1987 = add i32 %44, 2
  %and.i1988 = and i32 %add.i1987, 1048575
  %add1.i1989 = or i32 %and.i1988, -18874368
  %45 = inttoptr i32 %add1.i1989 to ptr
  %46 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %45) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %47 = and i8 %46, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %cmp53 = icmp eq i8 %47, 0
  br i1 %cmp53, label %if.end49.if.end60_crit_edge, label %for.inc57

if.end49.if.end60_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

for.inc57:                                        ; preds = %if.end49
  %inc58 = add nuw nsw i32 %k.sroa.33.0.insert.insert2449, 1
  %k.sroa.33.0.insert.insert = and i32 %inc58, 65535
  %cmp40 = icmp ult i32 %k.sroa.33.0.insert.insert, 1000
  br i1 %cmp40, label %for.inc57.for.body42_crit_edge, label %for.inc57.if.end60_crit_edge

for.inc57.if.end60_crit_edge:                     ; preds = %for.inc57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

for.inc57.for.body42_crit_edge:                   ; preds = %for.inc57
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body42

if.end60:                                         ; preds = %for.inc57.if.end60_crit_edge, %if.end49.if.end60_crit_edge, %for.body42.if.end60_crit_edge, %if.end32.if.end60_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !169
  tail call void @arm_heavy_mb() #9
  %48 = ptrtoint ptr %arrayidx.i1977 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i1977, align 4
  %and.i1992 = and i32 %49, 1048575
  %add1.i1993 = or i32 %and.i1992, -18874368
  %50 = inttoptr i32 %add1.i1993 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %50, i8 0) #9, !srcloc !165
  %51 = ptrtoint ptr %arrayidx.i1957 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i1957, align 4
  %add.i1996 = add i32 %52, 23
  %and.i1997 = and i32 %add.i1996, 1048575
  %add1.i1998 = or i32 %and.i1997, -18874368
  %53 = inttoptr i32 %add1.i1998 to ptr
  %54 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %53) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %55 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pdev.i, align 4
  %device.i2000 = getelementptr inbounds %struct.pci_dev, ptr %56, i32 0, i32 8
  %57 = ptrtoint ptr %device.i2000 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %device.i2000, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32630, i16 %58)
  %cmp.i2001 = icmp eq i16 %58, -32630
  br i1 %cmp.i2001, label %if.then63, label %if.end60.if.end64_crit_edge

if.end60.if.end64_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

if.then63:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !169
  tail call void @arm_heavy_mb() #9
  %59 = ptrtoint ptr %arrayidx.i1977 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx.i1977, align 4
  %add.i2004 = add i32 %60, 2
  %and.i2005 = and i32 %add.i2004, 1048575
  %add1.i2006 = or i32 %and.i2005, -18874368
  %61 = inttoptr i32 %add1.i2006 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %61, i8 6) #9, !srcloc !165
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %if.end60.if.end64_crit_edge
  %62 = ptrtoint ptr %arrayidx.i1957 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx.i1957, align 4
  %add.i2009 = add i32 %63, 21
  %and.i2010 = and i32 %add.i2009, 1048575
  %add1.i2011 = or i32 %and.i2010, -18874368
  %64 = inttoptr i32 %add1.i2011 to ptr
  %65 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %64) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %and72 = and i8 %65, 7
  %66 = lshr i8 %65, 3
  %67 = and i8 %66, 8
  %68 = or i8 %67, %and72
  %and80 = and i32 %conv5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %cmp81.not = icmp eq i32 %and80, 0
  br i1 %cmp81.not, label %if.end64.if.end100_crit_edge, label %if.then83

if.end64.if.end100_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end100

if.then83:                                        ; preds = %if.end64
  %last_cmd = getelementptr inbounds %struct.Scsi_Host, ptr %dev_id, i32 1, i32 2, i32 1
  %arrayidx85 = getelementptr [2 x i8], ptr %last_cmd, i32 0, i32 %conv.lcssa
  %69 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx85, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %70)
  %cmp87 = icmp eq i8 %70, -1
  br i1 %cmp87, label %if.then89, label %if.then83.if.end93_crit_edge

if.then83.if.end93_crit_edge:                     ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end93

if.then89:                                        ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %68, ptr %arrayidx85, align 1
  br label %if.end93

if.end93:                                         ; preds = %if.then89, %if.then83.if.end93_crit_edge
  %72 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx85, align 1
  %74 = or i8 %73, 64
  store i8 %74, ptr %arrayidx85, align 1
  br label %if.end100

if.end100:                                        ; preds = %if.end93, %if.end64.if.end100_crit_edge
  %75 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pdev.i, align 4
  %device.i2013 = getelementptr inbounds %struct.pci_dev, ptr %76, i32 0, i32 8
  %77 = ptrtoint ptr %device.i2013 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %device.i2013, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32630, i16 %78)
  %cmp.i2014 = icmp eq i16 %78, -32630
  br i1 %cmp.i2014, label %if.then102, label %if.end100.if.end111_crit_edge

if.end100.if.end111_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end111

if.then102:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #11
  %r1f = getelementptr inbounds %struct.Scsi_Host, ptr %dev_id, i32 1, i32 5, i32 1, i32 4
  %idxprom106 = zext i8 %68 to i32
  %arrayidx107 = getelementptr [2 x [16 x i8]], ptr %r1f, i32 0, i32 %conv.lcssa, i32 %idxprom106
  %79 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx107, align 1
  %or1091950 = or i8 %80, %.lcssa
  store i8 %or1091950, ptr %arrayidx107, align 1
  br label %if.end111

if.end111:                                        ; preds = %if.then102, %if.end100.if.end111_crit_edge
  %81 = zext i8 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values)
  switch i8 %54, label %if.end268 [
    i8 -123, label %if.then115
    i8 64, label %if.then213
    i8 33, label %if.then227
  ]

if.then115:                                       ; preds = %if.end111
  %last_cmd116 = getelementptr inbounds %struct.Scsi_Host, ptr %dev_id, i32 1, i32 2, i32 1
  %arrayidx118 = getelementptr [2 x i8], ptr %last_cmd116, i32 0, i32 %conv.lcssa
  %82 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx118, align 1
  %84 = and i8 %83, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %84)
  %cmp121.not = icmp eq i8 %84, 64
  br i1 %cmp121.not, label %if.then115.if.end127_crit_edge, label %if.then123

if.then115.if.end127_crit_edge:                   ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end127

if.then123:                                       ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #11
  %85 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 -1, ptr %arrayidx118, align 1
  br label %if.end127

if.end127:                                        ; preds = %if.then123, %if.then115.if.end127_crit_edge
  %86 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pdev.i, align 4
  %device.i2016 = getelementptr inbounds %struct.pci_dev, ptr %87, i32 0, i32 8
  %88 = ptrtoint ptr %device.i2016 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %device.i2016, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32630, i16 %89)
  %cmp.i2017 = icmp eq i16 %89, -32630
  br i1 %cmp.i2017, label %if.then129, label %if.end127.if.end162_crit_edge

if.end127.if.end162_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end162

if.then129:                                       ; preds = %if.end127
  %90 = ptrtoint ptr %arrayidx.i1957 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx.i1957, align 4
  %add.i2020 = add i32 %91, 18
  %and.i2021 = and i32 %add.i2020, 1048575
  %add1.i2022 = or i32 %and.i2021, -18874368
  %92 = inttoptr i32 %add1.i2022 to ptr
  %93 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %92) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %94 = ptrtoint ptr %arrayidx.i1957 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx.i1957, align 4
  %add.i2025 = add i32 %95, 19
  %and.i2026 = and i32 %add.i2025, 1048575
  %add1.i2027 = or i32 %and.i2026, -18874368
  %96 = inttoptr i32 %add1.i2027 to ptr
  %97 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %96) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %98 = ptrtoint ptr %arrayidx.i1957 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx.i1957, align 4
  %add.i2030 = add i32 %99, 20
  %and.i2031 = and i32 %add.i2030, 1048575
  %add1.i2032 = or i32 %and.i2031, -18874368
  %100 = inttoptr i32 %add1.i2032 to ptr
  %101 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %100) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %id136 = getelementptr inbounds %struct.Scsi_Host, ptr %dev_id, i32 1, i32 13, i32 13, i32 2
  %idxprom139 = zext i8 %68 to i32
  %last_len = getelementptr [2 x [16 x %struct.atp_id]], ptr %id136, i32 0, i32 %conv.lcssa, i32 %idxprom139, i32 4
  %102 = ptrtoint ptr %last_len to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %last_len, align 4
  %adrcnt.sroa.28.0.insert.ext = zext i8 %93 to i32
  %adrcnt.sroa.28.0.insert.shift = shl nuw nsw i32 %adrcnt.sroa.28.0.insert.ext, 8
  %adrcnt.sroa.25.0.insert.ext = zext i8 %97 to i32
  %adrcnt.sroa.25.0.insert.shift = shl nuw nsw i32 %adrcnt.sroa.25.0.insert.ext, 16
  %adrcnt.sroa.25.0.insert.insert = or i32 %adrcnt.sroa.25.0.insert.shift, %adrcnt.sroa.28.0.insert.shift
  %adrcnt.sroa.0.0.insert.ext = zext i8 %101 to i32
  %adrcnt.sroa.0.0.insert.shift = shl nuw i32 %adrcnt.sroa.0.0.insert.ext, 24
  %adrcnt.sroa.0.0.insert.insert = or i32 %adrcnt.sroa.0.0.insert.shift, %adrcnt.sroa.25.0.insert.insert
  call void @__sanitizer_cov_trace_cmp4(i32 %103, i32 %adrcnt.sroa.0.0.insert.insert)
  %cmp141.not = icmp eq i32 %103, %adrcnt.sroa.0.0.insert.insert
  br i1 %cmp141.not, label %if.then129.if.end162_crit_edge, label %if.then143

if.then129.if.end162_crit_edge:                   ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end162

if.then143:                                       ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #11
  %sub = sub i32 %103, %adrcnt.sroa.0.0.insert.insert
  %tran_len = getelementptr [2 x [16 x %struct.atp_id]], ptr %id136, i32 0, i32 %conv.lcssa, i32 %idxprom139, i32 3
  %104 = ptrtoint ptr %tran_len to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %sub, ptr %tran_len, align 4
  %105 = ptrtoint ptr %last_len to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %adrcnt.sroa.0.0.insert.insert, ptr %last_len, align 4
  br label %if.end162

if.end162:                                        ; preds = %if.then143, %if.then129.if.end162_crit_edge, %if.end127.if.end162_crit_edge
  %wide_id = getelementptr inbounds %struct.Scsi_Host, ptr %dev_id, i32 1, i32 3, i32 0, i32 0, i32 4, i32 1
  %arrayidx164 = getelementptr [2 x i16], ptr %wide_id, i32 0, i32 %conv.lcssa
  %106 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %arrayidx164, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %107)
  %cmp166.not = icmp eq i16 %107, 0
  br i1 %cmp166.not, label %if.end162.do.body175_crit_edge, label %if.then168

if.end162.do.body175_crit_edge:                   ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body175

if.then168:                                       ; preds = %if.end162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %108 = ptrtoint ptr %arrayidx.i1957 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx.i1957, align 4
  %add.i2035 = add i32 %109, 27
  %and.i2036 = and i32 %add.i2035, 1048575
  %add1.i2037 = or i32 %and.i2036, -18874368
  %110 = inttoptr i32 %add1.i2037 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %110, i8 1) #9, !srcloc !165
  %111 = ptrtoint ptr %arrayidx.i1957 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx.i1957, align 4
  %add.i20402450 = add i32 %112, 27
  %and.i20412451 = and i32 %add.i20402450, 1048575
  %add1.i20422452 = or i32 %and.i20412451, -18874368
  %113 = inttoptr i32 %add1.i20422452 to ptr
  %114 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %113) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %115 = and i8 %114, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %cmp172.not.not2453 = icmp eq i8 %115, 0
  br i1 %cmp172.not.not2453, label %if.then168.while.body_crit_edge, label %if.then168.do.body175_crit_edge

if.then168.do.body175_crit_edge:                  ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body175

if.then168.while.body_crit_edge:                  ; preds = %if.then168
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then168.while.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %116 = ptrtoint ptr %arrayidx.i1957 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx.i1957, align 4
  %add.i2045 = add i32 %117, 27
  %and.i2046 = and i32 %add.i2045, 1048575
  %add1.i2047 = or i32 %and.i2046, -18874368
  %118 = inttoptr i32 %add1.i2047 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %118, i8 1) #9, !srcloc !165
  %119 = ptrtoint ptr %arrayidx.i1957 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %arrayidx.i1957, align 4
  %add.i2040 = add i32 %120, 27
  %and.i2041 = and i32 %add.i2040, 1048575
  %add1.i2042 = or i32 %and.i2041, -18874368
  %121 = inttoptr i32 %add1.i2042 to ptr
  %122 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %121) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %123 = and i8 %122, 1
  %cmp172.not.not = icmp eq i8 %123, 0
  br i1 %cmp172.not.not, label %while.body.while.body_crit_edge, label %while.body.do.body175_crit_edge

while.body.do.body175_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body175

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

do.body175:                                       ; preds = %while.body.do.body175_crit_edge, %if.then168.do.body175_crit_edge, %if.end162.do.body175_crit_edge
  %host178 = getelementptr inbounds %struct.Scsi_Host, ptr %dev_id, i32 1, i32 49, i32 25
  %124 = ptrtoint ptr %host178 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %host178, align 4
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %125, i32 0, i32 4
  %126 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %host_lock, align 4
  %call180 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %127) #9
  %arrayidx184 = getelementptr %struct.atp_unit, ptr %hostdata, i32 0, i32 6, i32 %conv.lcssa
  %128 = ptrtoint ptr %arrayidx184 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx184, align 1
  %quend = getelementptr inbounds %struct.Scsi_Host, ptr %dev_id, i32 1, i32 3, i32 0, i32 0, i32 1
  %arrayidx187 = getelementptr [2 x i8], ptr %quend, i32 0, i32 %conv.lcssa
  %130 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx187, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %129, i8 %131)
  %cmp189.not = icmp eq i8 %129, %131
  br i1 %cmp189.not, label %lor.lhs.false, label %do.body175.land.lhs.true_crit_edge

do.body175.land.lhs.true_crit_edge:               ; preds = %do.body175
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

lor.lhs.false:                                    ; preds = %do.body175
  %132 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %arrayidx118, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %133)
  %cmp195.not = icmp eq i8 %133, -1
  br i1 %cmp195.not, label %lor.lhs.false.if.end203_crit_edge, label %lor.lhs.false.land.lhs.true_crit_edge

lor.lhs.false.land.lhs.true_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

lor.lhs.false.if.end203_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end203

land.lhs.true:                                    ; preds = %lor.lhs.false.land.lhs.true_crit_edge, %do.body175.land.lhs.true_crit_edge
  %arrayidx198 = getelementptr %struct.atp_unit, ptr %hostdata, i32 0, i32 4, i32 %conv.lcssa
  %134 = ptrtoint ptr %arrayidx198 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx198, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %cmp200 = icmp eq i8 %135, 0
  br i1 %cmp200, label %if.then202, label %land.lhs.true.if.end203_crit_edge

land.lhs.true.if.end203_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end203

if.then202:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @send_s870(ptr noundef %hostdata, i8 noundef zeroext %c.0.lcssa)
  br label %if.end203

if.end203:                                        ; preds = %if.then202, %land.lhs.true.if.end203_crit_edge, %lor.lhs.false.if.end203_crit_edge
  %136 = ptrtoint ptr %host178 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %host178, align 4
  %host_lock205 = getelementptr inbounds %struct.Scsi_Host, ptr %137, i32 0, i32 4
  %138 = ptrtoint ptr %host_lock205 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %host_lock205, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %139, i32 noundef %call180) #9
  br label %cleanup.sink.split

if.then213:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #11
  %last_cmd214 = getelementptr inbounds %struct.Scsi_Host, ptr %dev_id, i32 1, i32 2, i32 1
  %arrayidx216 = getelementptr [2 x i8], ptr %last_cmd214, i32 0, i32 %conv.lcssa
  %140 = ptrtoint ptr %arrayidx216 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %arrayidx216, align 1
  %142 = or i8 %141, 64
  store i8 %142, ptr %arrayidx216, align 1
  br label %cleanup.sink.split

if.then227:                                       ; preds = %if.end111
  %last_cmd228 = getelementptr inbounds %struct.Scsi_Host, ptr %dev_id, i32 1, i32 2, i32 1
  %arrayidx230 = getelementptr [2 x i8], ptr %last_cmd228, i32 0, i32 %conv.lcssa
  %143 = ptrtoint ptr %arrayidx230 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %arrayidx230, align 1
  %145 = and i8 %144, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %145)
  %cmp233.not = icmp eq i8 %145, 64
  br i1 %cmp233.not, label %if.then227.if.end239_crit_edge, label %if.then235

if.then227.if.end239_crit_edge:                   ; preds = %if.then227
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end239

if.then235:                                       ; preds = %if.then227
  call void @__sanitizer_cov_trace_pc() #11
  %146 = ptrtoint ptr %arrayidx230 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 -1, ptr %arrayidx230, align 1
  br label %if.end239

if.end239:                                        ; preds = %if.then235, %if.then227.if.end239_crit_edge
  %147 = ptrtoint ptr %arrayidx.i1957 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %arrayidx.i1957, align 4
  %add.i2050 = add i32 %148, 18
  %and.i2051 = and i32 %add.i2050, 1048575
  %add1.i2052 = or i32 %and.i2051, -18874368
  %149 = inttoptr i32 %add1.i2052 to ptr
  %150 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %149) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %151 = ptrtoint ptr %arrayidx.i1957 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %arrayidx.i1957, align 4
  %add.i2055 = add i32 %152, 19
  %and.i2056 = and i32 %add.i2055, 1048575
  %add1.i2057 = or i32 %and.i2056, -18874368
  %153 = inttoptr i32 %add1.i2057 to ptr
  %154 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %153) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %155 = ptrtoint ptr %arrayidx.i1957 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %arrayidx.i1957, align 4
  %add.i2060 = add i32 %156, 20
  %and.i2061 = and i32 %add.i2060, 1048575
  %add1.i2062 = or i32 %and.i2061, -18874368
  %157 = inttoptr i32 %add1.i2062 to ptr
  %158 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %157) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %id246 = getelementptr inbounds %struct.Scsi_Host, ptr %dev_id, i32 1, i32 13, i32 13, i32 2
  %idxprom249 = zext i8 %68 to i32
  %last_len251 = getelementptr [2 x [16 x %struct.atp_id]], ptr %id246, i32 0, i32 %conv.lcssa, i32 %idxprom249, i32 4
  %159 = ptrtoint ptr %last_len251 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %last_len251, align 4
  %adrcnt.sroa.28.0.insert.ext1566 = zext i8 %150 to i32
  %adrcnt.sroa.28.0.insert.shift1567 = shl nuw nsw i32 %adrcnt.sroa.28.0.insert.ext1566, 8
  %adrcnt.sroa.25.0.insert.ext1504 = zext i8 %154 to i32
  %adrcnt.sroa.25.0.insert.shift1505 = shl nuw nsw i32 %adrcnt.sroa.25.0.insert.ext1504, 16
  %adrcnt.sroa.25.0.insert.insert1507 = or i32 %adrcnt.sroa.25.0.insert.shift1505, %adrcnt.sroa.28.0.insert.shift1567
  %adrcnt.sroa.0.0.insert.ext1442 = zext i8 %158 to i32
  %adrcnt.sroa.0.0.insert.shift1443 = shl nuw i32 %adrcnt.sroa.0.0.insert.ext1442, 24
  %adrcnt.sroa.0.0.insert.insert1445 = or i32 %adrcnt.sroa.0.0.insert.shift1443, %adrcnt.sroa.25.0.insert.insert1507
  %sub252 = sub i32 %160, %adrcnt.sroa.0.0.insert.insert1445
  %tran_len258 = getelementptr [2 x [16 x %struct.atp_id]], ptr %id246, i32 0, i32 %conv.lcssa, i32 %idxprom249, i32 3
  %161 = ptrtoint ptr %tran_len258 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %sub252, ptr %tran_len258, align 4
  store i32 %adrcnt.sroa.0.0.insert.insert1445, ptr %last_len251, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %162 = ptrtoint ptr %arrayidx.i1957 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %arrayidx.i1957, align 4
  %add.i2065 = add i32 %163, 16
  %and.i2066 = and i32 %add.i2065, 1048575
  %add1.i2067 = or i32 %and.i2066, -18874368
  %164 = inttoptr i32 %add1.i2067 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %164, i8 65) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %165 = ptrtoint ptr %arrayidx.i1957 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %arrayidx.i1957, align 4
  %add.i2070 = add i32 %166, 24
  %and.i2071 = and i32 %add.i2070, 1048575
  %add1.i2072 = or i32 %and.i2071, -18874368
  %167 = inttoptr i32 %add1.i2072 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %167, i8 8) #9, !srcloc !165
  br label %cleanup.sink.split

if.end268:                                        ; preds = %if.end111
  %168 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %pdev.i, align 4
  %device.i2074 = getelementptr inbounds %struct.pci_dev, ptr %169, i32 0, i32 8
  %170 = ptrtoint ptr %device.i2074 to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %device.i2074, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32630, i16 %171)
  %cmp.i2075 = icmp eq i16 %171, -32630
  br i1 %cmp.i2075, label %if.then270, label %if.end298

if.then270:                                       ; preds = %if.end268
  %172 = zext i8 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %172, ptr @__sancov_gen_cov_switch_values.73)
  switch i8 %54, label %if.then270.if.end681_crit_edge [
    i8 -116, label %if.then270.if.end298.fold.split_crit_edge
    i8 76, label %if.then270.if.end298.fold.split_crit_edge2472
    i8 77, label %if.then270.if.end681.thread_crit_edge
    i8 -115, label %if.then270.if.end681.thread_crit_edge2473
    i8 -113, label %if.then270.if.then306_crit_edge
    i8 -128, label %if.then270.if.then306_crit_edge2474
  ]

if.then270.if.then306_crit_edge2474:              ; preds = %if.then270
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then306

if.then270.if.then306_crit_edge:                  ; preds = %if.then270
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then306

if.then270.if.end681.thread_crit_edge2473:        ; preds = %if.then270
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end681.thread

if.then270.if.end681.thread_crit_edge:            ; preds = %if.then270
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end681.thread

if.then270.if.end298.fold.split_crit_edge2472:    ; preds = %if.then270
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end298.fold.split

if.then270.if.end298.fold.split_crit_edge:        ; preds = %if.then270
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end298.fold.split

if.then270.if.end681_crit_edge:                   ; preds = %if.then270
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end681

if.end298.fold.split:                             ; preds = %if.then270.if.end298.fold.split_crit_edge, %if.then270.if.end298.fold.split_crit_edge2472
  br label %if.end681.thread

if.end298:                                        ; preds = %if.end268
  %173 = zext i8 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %173, ptr @__sancov_gen_cov_switch_values.74)
  switch i8 %54, label %if.end298.if.end681_crit_edge [
    i8 -113, label %if.end298.if.then306_crit_edge
    i8 -128, label %if.end298.if.then306_crit_edge2475
  ]

if.end298.if.then306_crit_edge2475:               ; preds = %if.end298
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then306

if.end298.if.then306_crit_edge:                   ; preds = %if.end298
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then306

if.end298.if.end681_crit_edge:                    ; preds = %if.end298
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end681

if.then306:                                       ; preds = %if.end298.if.then306_crit_edge, %if.end298.if.then306_crit_edge2475, %if.then270.if.then306_crit_edge, %if.then270.if.then306_crit_edge2474
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %54)
  %cmp300 = icmp eq i8 %54, -128
  call void @__sanitizer_cov_trace_const_cmp1(i8 68, i8 %14)
  %cmp308 = icmp eq i8 %14, 68
  %brmerge = select i1 %cmp308, i1 true, i1 %cmp300
  br i1 %brmerge, label %if.then314, label %if.else319

if.then314:                                       ; preds = %if.then306
  %174 = ptrtoint ptr %arrayidx.i1957 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %arrayidx.i1957, align 4
  %add.i2078 = add i32 %175, 29
  %and.i2079 = and i32 %add.i2078, 1048575
  %add1.i2080 = or i32 %and.i2079, -18874368
  %176 = inttoptr i32 %add1.i2080 to ptr
  %177 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %176) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %178 = and i8 %177, 7
  %last_cmd374 = getelementptr inbounds %struct.Scsi_Host, ptr %dev_id, i32 1, i32 2, i32 1
  %arrayidx376 = getelementptr [2 x i8], ptr %last_cmd374, i32 0, i32 %conv.lcssa
  %179 = ptrtoint ptr %arrayidx376 to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %arrayidx376, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %180)
  %cmp378.not = icmp eq i8 %180, -1
  br i1 %cmp378.not, label %if.then314.if.end387_crit_edge, label %if.then380

if.then314.if.end387_crit_edge:                   ; preds = %if.then314
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end387

if.else319:                                       ; preds = %if.then306
  %last_cmd320 = getelementptr inbounds %struct.Scsi_Host, ptr %dev_id, i32 1, i32 2, i32 1
  %arrayidx322 = getelementptr [2 x i8], ptr %last_cmd320, i32 0, i32 %conv.lcssa
  %181 = ptrtoint ptr %arrayidx322 to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %arrayidx322, align 1
  %183 = and i8 %182, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %183)
  %cmp325.not = icmp eq i8 %183, 64
  br i1 %cmp325.not, label %if.else319.if.end331_crit_edge, label %if.then327

if.else319.if.end331_crit_edge:                   ; preds = %if.else319
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end331

if.then327:                                       ; preds = %if.else319
  call void @__sanitizer_cov_trace_pc() #11
  %184 = ptrtoint ptr %arrayidx322 to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 -1, ptr %arrayidx322, align 1
  br label %if.end331

if.end331:                                        ; preds = %if.then327, %if.else319.if.end331_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %14)
  %cmp333 = icmp eq i8 %14, 65
  br i1 %cmp333, label %if.then335, label %if.else364

if.then335:                                       ; preds = %if.end331
  call void @__sanitizer_cov_trace_pc() #11
  %185 = ptrtoint ptr %arrayidx.i1957 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %arrayidx.i1957, align 4
  %add.i2083 = add i32 %186, 18
  %and.i2084 = and i32 %add.i2083, 1048575
  %add1.i2085 = or i32 %and.i2084, -18874368
  %187 = inttoptr i32 %add1.i2085 to ptr
  %188 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %187) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %189 = ptrtoint ptr %arrayidx.i1957 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %arrayidx.i1957, align 4
  %add.i2088 = add i32 %190, 19
  %and.i2089 = and i32 %add.i2088, 1048575
  %add1.i2090 = or i32 %and.i2089, -18874368
  %191 = inttoptr i32 %add1.i2090 to ptr
  %192 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %191) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %193 = ptrtoint ptr %arrayidx.i1957 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %arrayidx.i1957, align 4
  %add.i2093 = add i32 %194, 20
  %and.i2094 = and i32 %add.i2093, 1048575
  %add1.i2095 = or i32 %and.i2094, -18874368
  %195 = inttoptr i32 %add1.i2095 to ptr
  %196 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %195) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %id342 = getelementptr inbounds %struct.Scsi_Host, ptr %dev_id, i32 1, i32 13, i32 13, i32 2
  %idxprom345 = zext i8 %68 to i32
  %last_len347 = getelementptr [2 x [16 x %struct.atp_id]], ptr %id342, i32 0, i32 %conv.lcssa, i32 %idxprom345, i32 4
  %197 = ptrtoint ptr %last_len347 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %last_len347, align 4
  %adrcnt.sroa.28.0.insert.ext1576 = zext i8 %188 to i32
  %adrcnt.sroa.28.0.insert.shift1577 = shl nuw nsw i32 %adrcnt.sroa.28.0.insert.ext1576, 8
  %adrcnt.sroa.25.0.insert.ext1514 = zext i8 %192 to i32
  %adrcnt.sroa.25.0.insert.shift1515 = shl nuw nsw i32 %adrcnt.sroa.25.0.insert.ext1514, 16
  %adrcnt.sroa.25.0.insert.insert1517 = or i32 %adrcnt.sroa.25.0.insert.shift1515, %adrcnt.sroa.28.0.insert.shift1577
  %adrcnt.sroa.0.0.insert.ext1452 = zext i8 %196 to i32
  %adrcnt.sroa.0.0.insert.shift1453 = shl nuw i32 %adrcnt.sroa.0.0.insert.ext1452, 24
  %adrcnt.sroa.0.0.insert.insert1455 = or i32 %adrcnt.sroa.0.0.insert.shift1453, %adrcnt.sroa.25.0.insert.insert1517
  %sub348 = sub i32 %198, %adrcnt.sroa.0.0.insert.insert1455
  %tran_len354 = getelementptr [2 x [16 x %struct.atp_id]], ptr %id342, i32 0, i32 %conv.lcssa, i32 %idxprom345, i32 3
  %199 = ptrtoint ptr %tran_len354 to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %sub348, ptr %tran_len354, align 4
  store i32 %adrcnt.sroa.0.0.insert.insert1455, ptr %last_len347, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %200 = ptrtoint ptr %arrayidx.i1957 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %arrayidx.i1957, align 4
  %add.i2098 = add i32 %201, 24
  %and.i2099 = and i32 %add.i2098, 1048575
  %add1.i2100 = or i32 %and.i2099, -18874368
  %202 = inttoptr i32 %add1.i2100 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %202, i8 8) #9, !srcloc !165
  br label %cleanup.sink.split

if.else364:                                       ; preds = %if.end331
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %203 = ptrtoint ptr %arrayidx.i1957 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %arrayidx.i1957, align 4
  %add.i2103 = add i32 %204, 16
  %and.i2104 = and i32 %add.i2103, 1048575
  %add1.i2105 = or i32 %and.i2104, -18874368
  %205 = inttoptr i32 %add1.i2105 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %205, i8 70) #9, !srcloc !165
  %id365 = getelementptr inbounds %struct.Scsi_Host, ptr %dev_id, i32 1, i32 13, i32 13, i32 2
  %idxprom368 = zext i8 %68 to i32
  %arrayidx369 = getelementptr [2 x [16 x %struct.atp_id]], ptr %id365, i32 0, i32 %conv.lcssa, i32 %idxprom368
  %206 = ptrtoint ptr %arrayidx369 to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 0, ptr %arrayidx369, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %207 = ptrtoint ptr %arrayidx.i1957 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %arrayidx.i1957, align 4
  %add.i2108 = add i32 %208, 18
  %and.i2109 = and i32 %add.i2108, 1048575
  %add1.i2110 = or i32 %and.i2109, -18874368
  %209 = inttoptr i32 %add1.i2110 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %209, i8 0) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %210 = ptrtoint ptr %arrayidx.i1957 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %arrayidx.i1957, align 4
  %add.i2113 = add i32 %211, 19
  %and.i2114 = and i32 %add.i2113, 1048575
  %add1.i2115 = or i32 %and.i2114, -18874368
  %212 = inttoptr i32 %add1.i2115 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %212, i8 0) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %213 = ptrtoint ptr %arrayidx.i1957 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %arrayidx.i1957, align 4
  %add.i2118 = add i32 %214, 20
  %and.i2119 = and i32 %add.i2118, 1048575
  %add1.i2120 = or i32 %and.i2119, -18874368
  %215 = inttoptr i32 %add1.i2120 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %215, i8 0) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %216 = ptrtoint ptr %arrayidx.i1957 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %arrayidx.i1957, align 4
  %add.i2123 = add i32 %217, 24
  %and.i2124 = and i32 %add.i2123, 1048575
  %add1.i2125 = or i32 %and.i2124, -18874368
  %218 = inttoptr i32 %add1.i2125 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %218, i8 8) #9, !srcloc !165
  br label %cleanup.sink.split

if.then380:                                       ; preds = %if.then314
  call void @__sanitizer_cov_trace_pc() #11
  %219 = or i8 %180, 64
  %220 = ptrtoint ptr %arrayidx376 to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 %219, ptr %arrayidx376, align 1
  br label %if.end387

if.end387:                                        ; preds = %if.then380, %if.then314.if.end387_crit_edge
  %221 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %pdev.i, align 4
  %device.i2127 = getelementptr inbounds %struct.pci_dev, ptr %222, i32 0, i32 8
  %223 = ptrtoint ptr %device.i2127 to i32
  call void @__asan_load2_noabort(i32 %223)
  %224 = load i16, ptr %device.i2127, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32630, i16 %224)
  %cmp.i2128 = icmp eq i16 %224, -32630
  br i1 %cmp.i2128, label %if.then389, label %if.else394

if.then389:                                       ; preds = %if.end387
  call void @__sanitizer_cov_trace_pc() #11
  %225 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %hostdata, align 4
  %add.i2129 = add i32 %226, 41
  %and.i2130 = and i32 %add.i2129, 1048575
  %add1.i2131 = or i32 %and.i2130, -18874368
  %227 = inttoptr i32 %add1.i2131 to ptr
  %228 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %227) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !159
  %229 = and i8 %228, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !164
  tail call void @arm_heavy_mb() #9
  %230 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %hostdata, align 4
  %add.i2132 = add i32 %231, 41
  %and.i2133 = and i32 %add.i2132, 1048575
  %add1.i2134 = or i32 %and.i2133, -18874368
  %232 = inttoptr i32 %add1.i2134 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %232, i8 %229) #9, !srcloc !165
  br label %if.end395

if.else394:                                       ; preds = %if.end387
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %233 = ptrtoint ptr %arrayidx.i1957 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %arrayidx.i1957, align 4
  %add.i2137 = add i32 %234, 16
  %and.i2138 = and i32 %add.i2137, 1048575
  %add1.i2139 = or i32 %and.i2138, -18874368
  %235 = inttoptr i32 %add1.i2139 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %235, i8 69) #9, !srcloc !165
  br label %if.end395

if.end395:                                        ; preds = %if.else394, %if.then389
  %236 = ptrtoint ptr %arrayidx.i1957 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %arrayidx.i1957, align 4
  %add.i2142 = add i32 %237, 22
  %and.i2143 = and i32 %add.i2142, 1048575
  %add1.i2144 = or i32 %and.i2143, -18874368
  %238 = inttoptr i32 %add1.i2144 to ptr
  %239 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %238) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %and403 = and i8 %239, 7
  %240 = lshr i8 %239, 1
  %241 = and i8 %240, 8
  %242 = or i8 %241, %and403
  %243 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %pdev.i, align 4
  %device.i2146 = getelementptr inbounds %struct.pci_dev, ptr %244, i32 0, i32 8
  %245 = ptrtoint ptr %device.i2146 to i32
  call void @__asan_load2_noabort(i32 %245)
  %246 = load i16, ptr %device.i2146, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32630, i16 %246)
  %cmp.i2147 = icmp eq i16 %246, -32630
  br i1 %cmp.i2147, label %if.then412, label %if.end395.if.end413_crit_edge

if.end395.if.end413_crit_edge:                    ; preds = %if.end395
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end413

if.then412:                                       ; preds = %if.end395
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %247 = ptrtoint ptr %arrayidx.i1957 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %arrayidx.i1957, align 4
  %add.i2150 = add i32 %248, 16
  %and.i2151 = and i32 %add.i2150, 1048575
  %add1.i2152 = or i32 %and.i2151, -18874368
  %249 = inttoptr i32 %add1.i2152 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %249, i8 69) #9, !srcloc !165
  br label %if.end413

if.end413:                                        ; preds = %if.then412, %if.end395.if.end413_crit_edge
  %id414 = getelementptr inbounds %struct.Scsi_Host, ptr %dev_id, i32 1, i32 13, i32 13, i32 2
  %idxprom417 = zext i8 %242 to i32
  %arrayidx418 = getelementptr [2 x [16 x %struct.atp_id]], ptr %id414, i32 0, i32 %conv.lcssa, i32 %idxprom417
  %curr_req = getelementptr [2 x [16 x %struct.atp_id]], ptr %id414, i32 0, i32 %conv.lcssa, i32 %idxprom417, i32 9
  %250 = ptrtoint ptr %curr_req to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %curr_req, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %252 = ptrtoint ptr %arrayidx.i1957 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %arrayidx.i1957, align 4
  %add.i2155 = add i32 %253, 15
  %and.i2156 = and i32 %add.i2155, 1048575
  %add1.i2157 = or i32 %and.i2156, -18874368
  %254 = inttoptr i32 %add1.i2157 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %254, i8 %178) #9, !srcloc !165
  %devsp = getelementptr [2 x [16 x %struct.atp_id]], ptr %id414, i32 0, i32 %conv.lcssa, i32 %idxprom417, i32 1
  %255 = ptrtoint ptr %devsp to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %devsp, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %257 = ptrtoint ptr %arrayidx.i1957 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %arrayidx.i1957, align 4
  %add.i2160 = add i32 %258, 17
  %and.i2161 = and i32 %add.i2160, 1048575
  %add1.i2162 = or i32 %and.i2161, -18874368
  %259 = inttoptr i32 %add1.i2162 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %259, i8 %256) #9, !srcloc !165
  %tran_len429 = getelementptr [2 x [16 x %struct.atp_id]], ptr %id414, i32 0, i32 %conv.lcssa, i32 %idxprom417, i32 3
  %260 = ptrtoint ptr %tran_len429 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %tran_len429, align 4
  %last_len435 = getelementptr [2 x [16 x %struct.atp_id]], ptr %id414, i32 0, i32 %conv.lcssa, i32 %idxprom417, i32 4
  %262 = ptrtoint ptr %last_len435 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %last_len435, align 4
  %k.sroa.0.0.extract.shift1204 = lshr i32 %263, 24
  %k.sroa.0.0.extract.trunc1205 = trunc i32 %k.sroa.0.0.extract.shift1204 to i8
  %k.sroa.30.0.extract.shift1274 = lshr i32 %263, 16
  %k.sroa.30.0.extract.trunc1275 = trunc i32 %k.sroa.30.0.extract.shift1274 to i8
  %k.sroa.33.0.extract.shift1346 = lshr i32 %263, 8
  %k.sroa.33.0.extract.trunc1347 = trunc i32 %k.sroa.33.0.extract.shift1346 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %264 = ptrtoint ptr %arrayidx.i1957 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %arrayidx.i1957, align 4
  %add.i2165 = add i32 %265, 18
  %and.i2166 = and i32 %add.i2165, 1048575
  %add1.i2167 = or i32 %and.i2166, -18874368
  %266 = inttoptr i32 %add1.i2167 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %266, i8 %k.sroa.33.0.extract.trunc1347) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %267 = ptrtoint ptr %arrayidx.i1957 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %arrayidx.i1957, align 4
  %add.i2170 = add i32 %268, 19
  %and.i2171 = and i32 %add.i2170, 1048575
  %add1.i2172 = or i32 %and.i2171, -18874368
  %269 = inttoptr i32 %add1.i2172 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %269, i8 %k.sroa.30.0.extract.trunc1275) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %270 = ptrtoint ptr %arrayidx.i1957 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %arrayidx.i1957, align 4
  %add.i2175 = add i32 %271, 20
  %and.i2176 = and i32 %add.i2175, 1048575
  %add1.i2177 = or i32 %and.i2176, -18874368
  %272 = inttoptr i32 %add1.i2177 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %272, i8 %k.sroa.0.0.extract.trunc1205) #9, !srcloc !165
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %242)
  %cmp440 = icmp ugt i8 %242, 7
  %or445 = or i8 %and403, 64
  %j.2 = select i1 %cmp440, i8 %or445, i8 %242
  %273 = ptrtoint ptr %arrayidx418 to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %arrayidx418, align 4
  %or4561949 = or i8 %274, %j.2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %275 = ptrtoint ptr %arrayidx.i1957 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %arrayidx.i1957, align 4
  %add.i2180 = add i32 %276, 21
  %and.i2181 = and i32 %add.i2180, 1048575
  %add1.i2182 = or i32 %and.i2181, -18874368
  %277 = inttoptr i32 %add1.i2182 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %277, i8 %or4561949) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %278 = ptrtoint ptr %arrayidx.i1957 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %arrayidx.i1957, align 4
  %add.i2185 = add i32 %279, 22
  %and.i2186 = and i32 %add.i2185, 1048575
  %add1.i2187 = or i32 %and.i2186, -18874368
  %280 = inttoptr i32 %add1.i2187 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %280, i8 -128) #9, !srcloc !165
  %281 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %pdev.i, align 4
  %device.i2189 = getelementptr inbounds %struct.pci_dev, ptr %282, i32 0, i32 8
  %283 = ptrtoint ptr %device.i2189 to i32
  call void @__asan_load2_noabort(i32 %283)
  %284 = load i16, ptr %device.i2189, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32630, i16 %284)
  %cmp.i2190 = icmp eq i16 %284, -32630
  br i1 %cmp.i2190, label %if.then459, label %if.else491

if.then459:                                       ; preds = %if.end413
  %285 = ptrtoint ptr %arrayidx.i1977 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %arrayidx.i1977, align 4
  %add.i2193 = add i32 %286, 1
  %and.i2194 = and i32 %add.i2193, 1048575
  %add1.i2195 = or i32 %and.i2194, -18874368
  %287 = inttoptr i32 %add1.i2195 to ptr
  %288 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %287) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %289 = and i8 %288, -13
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %251, i32 0, i32 16
  %290 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %cmnd, align 4
  %292 = ptrtoint ptr %291 to i32
  call void @__asan_load1_noabort(i32 %292)
  %293 = load i8, ptr %291, align 1
  %294 = zext i8 %293 to i64
  call void @__sanitizer_cov_trace_switch(i64 %294, ptr @__sancov_gen_cov_switch_values.75)
  switch i8 %293, label %if.then459.if.end490_crit_edge [
    i8 8, label %if.then459.if.then486_crit_edge
    i8 40, label %if.then459.if.then486_crit_edge2476
    i8 10, label %if.then459.if.then486_crit_edge2477
    i8 42, label %if.then459.if.then486_crit_edge2478
  ]

if.then459.if.then486_crit_edge2478:              ; preds = %if.then459
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then486

if.then459.if.then486_crit_edge2477:              ; preds = %if.then459
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then486

if.then459.if.then486_crit_edge2476:              ; preds = %if.then459
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then486

if.then459.if.then486_crit_edge:                  ; preds = %if.then459
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then486

if.then459.if.end490_crit_edge:                   ; preds = %if.then459
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end490

if.then486:                                       ; preds = %if.then459.if.then486_crit_edge, %if.then459.if.then486_crit_edge2476, %if.then459.if.then486_crit_edge2477, %if.then459.if.then486_crit_edge2478
  %295 = or i8 %288, 12
  br label %if.end490

if.end490:                                        ; preds = %if.then486, %if.then459.if.end490_crit_edge
  %i.1 = phi i8 [ %295, %if.then486 ], [ %289, %if.then459.if.end490_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !169
  tail call void @arm_heavy_mb() #9
  %296 = ptrtoint ptr %arrayidx.i1977 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %arrayidx.i1977, align 4
  %add.i2198 = add i32 %297, 1
  %and.i2199 = and i32 %add.i2198, 1048575
  %add1.i2200 = or i32 %and.i2199, -18874368
  %298 = inttoptr i32 %add1.i2200 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %298, i8 %i.1) #9, !srcloc !165
  br label %if.end566

if.else491:                                       ; preds = %if.end413
  %299 = and i16 %284, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32640, i16 %299)
  %300 = icmp eq i16 %299, -32640
  %cmnd494 = getelementptr inbounds %struct.scsi_cmnd, ptr %251, i32 0, i32 16
  %301 = ptrtoint ptr %cmnd494 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %cmnd494, align 4
  %303 = ptrtoint ptr %302 to i32
  call void @__asan_load1_noabort(i32 %303)
  %304 = load i8, ptr %302, align 1
  br i1 %300, label %if.then493, label %if.else529

if.then493:                                       ; preds = %if.else491
  %305 = zext i8 %304 to i64
  call void @__sanitizer_cov_trace_switch(i64 %305, ptr @__sancov_gen_cov_switch_values.76)
  switch i8 %304, label %if.else523 [
    i8 8, label %if.then493.if.then517_crit_edge
    i8 40, label %if.then493.if.then517_crit_edge2479
    i8 10, label %if.then493.if.then517_crit_edge2480
    i8 42, label %if.then493.if.then517_crit_edge2481
  ]

if.then493.if.then517_crit_edge2481:              ; preds = %if.then493
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then517

if.then493.if.then517_crit_edge2480:              ; preds = %if.then493
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then517

if.then493.if.then517_crit_edge2479:              ; preds = %if.then493
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then517

if.then493.if.then517_crit_edge:                  ; preds = %if.then493
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then517

if.then517:                                       ; preds = %if.then493.if.then517_crit_edge, %if.then493.if.then517_crit_edge2479, %if.then493.if.then517_crit_edge2480, %if.then493.if.then517_crit_edge2481
  %306 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %hostdata, align 4
  %add.i2203 = add i32 %307, 59
  %and.i2204 = and i32 %add.i2203, 1048575
  %add1.i2205 = or i32 %and.i2204, -18874368
  %308 = inttoptr i32 %add1.i2205 to ptr
  %309 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %308) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !159
  %310 = or i8 %309, -64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !164
  tail call void @arm_heavy_mb() #9
  %311 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %hostdata, align 4
  %add.i2206 = add i32 %312, 59
  %and.i2207 = and i32 %add.i2206, 1048575
  %add1.i2208 = or i32 %and.i2207, -18874368
  %313 = inttoptr i32 %add1.i2208 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %313, i8 %310) #9, !srcloc !165
  br label %if.end566

if.else523:                                       ; preds = %if.then493
  call void @__sanitizer_cov_trace_pc() #11
  %314 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %hostdata, align 4
  %add.i2209 = add i32 %315, 59
  %and.i2210 = and i32 %add.i2209, 1048575
  %add1.i2211 = or i32 %and.i2210, -18874368
  %316 = inttoptr i32 %add1.i2211 to ptr
  %317 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %316) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !159
  %318 = and i8 %317, 63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !164
  tail call void @arm_heavy_mb() #9
  %319 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %hostdata, align 4
  %add.i2212 = add i32 %320, 59
  %and.i2213 = and i32 %add.i2212, 1048575
  %add1.i2214 = or i32 %and.i2213, -18874368
  %321 = inttoptr i32 %add1.i2214 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %321, i8 %318) #9, !srcloc !165
  br label %if.end566

if.else529:                                       ; preds = %if.else491
  %322 = zext i8 %304 to i64
  call void @__sanitizer_cov_trace_switch(i64 %322, ptr @__sancov_gen_cov_switch_values.77)
  switch i8 %304, label %if.else559 [
    i8 8, label %if.else529.if.then553_crit_edge
    i8 40, label %if.else529.if.then553_crit_edge2482
    i8 10, label %if.else529.if.then553_crit_edge2483
    i8 42, label %if.else529.if.then553_crit_edge2484
  ]

if.else529.if.then553_crit_edge2484:              ; preds = %if.else529
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then553

if.else529.if.then553_crit_edge2483:              ; preds = %if.else529
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then553

if.else529.if.then553_crit_edge2482:              ; preds = %if.else529
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then553

if.else529.if.then553_crit_edge:                  ; preds = %if.else529
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then553

if.then553:                                       ; preds = %if.else529.if.then553_crit_edge, %if.else529.if.then553_crit_edge2482, %if.else529.if.then553_crit_edge2483, %if.else529.if.then553_crit_edge2484
  %323 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %hostdata, align 4
  %add.i2215 = add i32 %324, 58
  %and.i2216 = and i32 %add.i2215, 1048575
  %add1.i2217 = or i32 %and.i2216, -18874368
  %325 = inttoptr i32 %add1.i2217 to ptr
  %326 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %325) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !159
  %327 = and i8 %326, -13
  %328 = or i8 %327, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !164
  tail call void @arm_heavy_mb() #9
  %329 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %hostdata, align 4
  %add.i2218 = add i32 %330, 58
  %and.i2219 = and i32 %add.i2218, 1048575
  %add1.i2220 = or i32 %and.i2219, -18874368
  %331 = inttoptr i32 %add1.i2220 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %331, i8 %328) #9, !srcloc !165
  br label %if.end566

if.else559:                                       ; preds = %if.else529
  call void @__sanitizer_cov_trace_pc() #11
  %332 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %hostdata, align 4
  %add.i2221 = add i32 %333, 58
  %and.i2222 = and i32 %add.i2221, 1048575
  %add1.i2223 = or i32 %and.i2222, -18874368
  %334 = inttoptr i32 %add1.i2223 to ptr
  %335 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %334) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !159
  %336 = and i8 %335, -13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !164
  tail call void @arm_heavy_mb() #9
  %337 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %hostdata, align 4
  %add.i2224 = add i32 %338, 58
  %and.i2225 = and i32 %add.i2224, 1048575
  %add1.i2226 = or i32 %and.i2225, -18874368
  %339 = inttoptr i32 %add1.i2226 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %339, i8 %336) #9, !srcloc !165
  br label %if.end566

if.end566:                                        ; preds = %if.else559, %if.then553, %if.else523, %if.then517, %if.end490
  %shl = shl nuw i32 1, %idxprom417
  %wide_id571 = getelementptr inbounds %struct.Scsi_Host, ptr %dev_id, i32 1, i32 3, i32 0, i32 0, i32 4, i32 1
  %arrayidx573 = getelementptr [2 x i16], ptr %wide_id571, i32 0, i32 %conv.lcssa
  %340 = ptrtoint ptr %arrayidx573 to i32
  call void @__asan_load2_noabort(i32 %340)
  %341 = load i16, ptr %arrayidx573, align 2
  %conv574 = zext i16 %341 to i32
  %and575 = and i32 %shl, %conv574
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and575)
  %cmp576.not = icmp ne i32 %and575, 0
  %spec.select = zext i1 %cmp576.not to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %342 = ptrtoint ptr %arrayidx.i1957 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %arrayidx.i1957, align 4
  %add.i2229 = add i32 %343, 27
  %and.i2230 = and i32 %add.i2229, 1048575
  %add1.i2231 = or i32 %and.i2230, -18874368
  %344 = inttoptr i32 %add1.i2231 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %344, i8 %spec.select) #9, !srcloc !165
  %345 = ptrtoint ptr %arrayidx.i1957 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %arrayidx.i1957, align 4
  %add.i22342454 = add i32 %346, 27
  %and.i22352455 = and i32 %add.i22342454, 1048575
  %add1.i22362456 = or i32 %and.i22352455, -18874368
  %347 = inttoptr i32 %add1.i22362456 to ptr
  %348 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %347) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %349 = and i8 %348, 1
  call void @__sanitizer_cov_trace_cmp1(i8 %349, i8 %spec.select)
  %cmp588.not2457 = icmp eq i8 %349, %spec.select
  br i1 %cmp588.not2457, label %if.end566.while.end591_crit_edge, label %if.end566.while.body590_crit_edge

if.end566.while.body590_crit_edge:                ; preds = %if.end566
  br label %while.body590

if.end566.while.end591_crit_edge:                 ; preds = %if.end566
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end591

while.body590:                                    ; preds = %while.body590.while.body590_crit_edge, %if.end566.while.body590_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %350 = ptrtoint ptr %arrayidx.i1957 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %arrayidx.i1957, align 4
  %add.i2239 = add i32 %351, 27
  %and.i2240 = and i32 %add.i2239, 1048575
  %add1.i2241 = or i32 %and.i2240, -18874368
  %352 = inttoptr i32 %add1.i2241 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %352, i8 %spec.select) #9, !srcloc !165
  %353 = ptrtoint ptr %arrayidx.i1957 to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %arrayidx.i1957, align 4
  %add.i2234 = add i32 %354, 27
  %and.i2235 = and i32 %add.i2234, 1048575
  %add1.i2236 = or i32 %and.i2235, -18874368
  %355 = inttoptr i32 %add1.i2236 to ptr
  %356 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %355) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %357 = and i8 %356, 1
  %cmp588.not = icmp eq i8 %357, %spec.select
  br i1 %cmp588.not, label %while.body590.while.end591_crit_edge, label %while.body590.while.body590_crit_edge

while.body590.while.body590_crit_edge:            ; preds = %while.body590
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body590

while.body590.while.end591_crit_edge:             ; preds = %while.body590
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end591

while.end591:                                     ; preds = %while.body590.while.end591_crit_edge, %if.end566.while.end591_crit_edge
  %358 = ptrtoint ptr %last_len435 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %last_len435, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %359)
  %cmp598 = icmp eq i32 %359, 0
  br i1 %cmp598, label %if.then600, label %if.end604

if.then600:                                       ; preds = %while.end591
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %360 = ptrtoint ptr %arrayidx.i1957 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %arrayidx.i1957, align 4
  %add.i2244 = add i32 %361, 24
  %and.i2245 = and i32 %add.i2244, 1048575
  %add1.i2246 = or i32 %and.i2245, -18874368
  %362 = inttoptr i32 %add1.i2246 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %362, i8 8) #9, !srcloc !165
  br label %cleanup.sink.split

if.end604:                                        ; preds = %while.end591
  %prd_pos = getelementptr [2 x [16 x %struct.atp_id]], ptr %id414, i32 0, i32 %conv.lcssa, i32 %idxprom417, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %261)
  %cmp611.not2464 = icmp eq i32 %261, 0
  br i1 %cmp611.not2464, label %if.end604.while.end654_crit_edge, label %while.body613.lr.ph

if.end604.while.end654_crit_edge:                 ; preds = %if.end604
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end654

while.body613.lr.ph:                              ; preds = %if.end604
  %adrcnt.sroa.28.0.insert.insert15892460 = and i32 %261, 65535
  %363 = ptrtoint ptr %prd_pos to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %prd_pos, align 4
  %prdaddr = getelementptr [2 x [16 x %struct.atp_id]], ptr %id414, i32 0, i32 %conv.lcssa, i32 %idxprom417, i32 8
  br label %while.body613

while.body613:                                    ; preds = %if.end653.while.body613_crit_edge, %while.body613.lr.ph
  %adrcnt.sroa.0.0.insert.insert14652467 = phi i32 [ %261, %while.body613.lr.ph ], [ %adrcnt.sroa.0.0.insert.insert1465, %if.end653.while.body613_crit_edge ]
  %adrcnt.sroa.28.0.insert.insert15892466 = phi i32 [ %adrcnt.sroa.28.0.insert.insert15892460, %while.body613.lr.ph ], [ %adrcnt.sroa.28.0.insert.insert1589, %if.end653.while.body613_crit_edge ]
  %prd.02465 = phi ptr [ %364, %while.body613.lr.ph ], [ %prd.1, %if.end653.while.body613_crit_edge ]
  %arrayidx614 = getelementptr i16, ptr %prd.02465, i32 2
  %365 = ptrtoint ptr %arrayidx614 to i32
  call void @__asan_load2_noabort(i32 %365)
  %366 = load i16, ptr %arrayidx614, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %366)
  %cmp616 = icmp eq i16 %366, 0
  %k.sroa.30.1 = select i1 %cmp616, i32 65536, i32 0
  %k.sroa.33.0.insert.insert1354 = zext i16 %366 to i32
  %k.sroa.30.0.insert.insert1282 = or i32 %k.sroa.30.1, %k.sroa.33.0.insert.insert1354
  call void @__sanitizer_cov_trace_cmp4(i32 %adrcnt.sroa.0.0.insert.insert14652467, i32 %k.sroa.30.0.insert.insert1282)
  %cmp622 = icmp ult i32 %adrcnt.sroa.0.0.insert.insert14652467, %k.sroa.30.0.insert.insert1282
  br i1 %cmp622, label %if.then624, label %if.else635

if.then624:                                       ; preds = %while.body613
  call void @__sanitizer_cov_trace_pc() #11
  %367 = trunc i32 %adrcnt.sroa.28.0.insert.insert15892466 to i16
  %conv626 = sub i16 %366, %367
  %368 = ptrtoint ptr %arrayidx614 to i32
  call void @__asan_store2_noabort(i32 %368)
  store i16 %conv626, ptr %arrayidx614, align 2
  %369 = ptrtoint ptr %prd.02465 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %prd.02465, align 4
  %add = add i32 %370, %adrcnt.sroa.0.0.insert.insert14652467
  store i32 %add, ptr %prd.02465, align 4
  br label %if.end653.sink.split

if.else635:                                       ; preds = %while.body613
  %sub636 = sub i32 %adrcnt.sroa.0.0.insert.insert14652467, %k.sroa.30.0.insert.insert1282
  %adrcnt.sroa.0.0.extract.shift1486 = and i32 %sub636, -16777216
  %adrcnt.sroa.25.0.extract.shift1548 = and i32 %sub636, -65536
  %adrcnt.sroa.28.0.extract.shift1610 = and i32 %sub636, -256
  %371 = ptrtoint ptr %prdaddr to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %prdaddr, align 4
  %add642 = add i32 %372, 8
  store i32 %add642, ptr %prdaddr, align 4
  %add.ptr = getelementptr i8, ptr %prd.02465, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub636)
  %cmp643 = icmp eq i32 %sub636, 0
  br i1 %cmp643, label %if.else635.if.end653.sink.split_crit_edge, label %if.else635.if.end653_crit_edge

if.else635.if.end653_crit_edge:                   ; preds = %if.else635
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end653

if.else635.if.end653.sink.split_crit_edge:        ; preds = %if.else635
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end653.sink.split

if.end653.sink.split:                             ; preds = %if.else635.if.end653.sink.split_crit_edge, %if.then624
  %add.ptr.sink = phi ptr [ %prd.02465, %if.then624 ], [ %add.ptr, %if.else635.if.end653.sink.split_crit_edge ]
  %373 = ptrtoint ptr %prd_pos to i32
  call void @__asan_store4_noabort(i32 %373)
  store ptr %add.ptr.sink, ptr %prd_pos, align 4
  br label %if.end653

if.end653:                                        ; preds = %if.end653.sink.split, %if.else635.if.end653_crit_edge
  %prd.1 = phi ptr [ %add.ptr, %if.else635.if.end653_crit_edge ], [ %add.ptr.sink, %if.end653.sink.split ]
  %adrcnt.sroa.31.sroa.0.1 = phi i32 [ %sub636, %if.else635.if.end653_crit_edge ], [ 0, %if.end653.sink.split ]
  %adrcnt.sroa.28.1 = phi i32 [ %adrcnt.sroa.28.0.extract.shift1610, %if.else635.if.end653_crit_edge ], [ 0, %if.end653.sink.split ]
  %adrcnt.sroa.25.1 = phi i32 [ %adrcnt.sroa.25.0.extract.shift1548, %if.else635.if.end653_crit_edge ], [ 0, %if.end653.sink.split ]
  %adrcnt.sroa.0.1 = phi i32 [ %adrcnt.sroa.0.0.extract.shift1486, %if.else635.if.end653_crit_edge ], [ 0, %if.end653.sink.split ]
  %adrcnt.sroa.31.0.insert.ext1642 = and i32 %adrcnt.sroa.31.sroa.0.1, 255
  %adrcnt.sroa.28.0.insert.shift1587 = and i32 %adrcnt.sroa.28.1, 65280
  %adrcnt.sroa.28.0.insert.insert1589 = or i32 %adrcnt.sroa.28.0.insert.shift1587, %adrcnt.sroa.31.0.insert.ext1642
  %adrcnt.sroa.25.0.insert.shift1525 = and i32 %adrcnt.sroa.25.1, 16711680
  %adrcnt.sroa.25.0.insert.insert1527 = or i32 %adrcnt.sroa.28.0.insert.insert1589, %adrcnt.sroa.25.0.insert.shift1525
  %adrcnt.sroa.0.0.insert.insert1465 = or i32 %adrcnt.sroa.25.0.insert.insert1527, %adrcnt.sroa.0.1
  %cmp611.not = icmp eq i32 %adrcnt.sroa.0.0.insert.insert1465, 0
  br i1 %cmp611.not, label %if.end653.while.end654_crit_edge, label %if.end653.while.body613_crit_edge

if.end653.while.body613_crit_edge:                ; preds = %if.end653
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body613

if.end653.while.end654_crit_edge:                 ; preds = %if.end653
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end654

while.end654:                                     ; preds = %if.end653.while.end654_crit_edge, %if.end604.while.end654_crit_edge
  %prdaddr660 = getelementptr [2 x [16 x %struct.atp_id]], ptr %id414, i32 0, i32 %conv.lcssa, i32 %idxprom417, i32 8
  %374 = ptrtoint ptr %prdaddr660 to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %prdaddr660, align 4
  tail call fastcc void @atp_writel_pci(ptr noundef %hostdata, i8 noundef zeroext %c.0.lcssa, i32 noundef %375)
  %376 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %pdev.i, align 4
  %device.i2248 = getelementptr inbounds %struct.pci_dev, ptr %377, i32 0, i32 8
  %378 = ptrtoint ptr %device.i2248 to i32
  call void @__asan_load2_noabort(i32 %378)
  %379 = load i16, ptr %device.i2248, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32630, i16 %379)
  %cmp.i2249 = icmp eq i16 %379, -32630
  br i1 %cmp.i2249, label %while.end654.if.end663_crit_edge, label %if.then662

while.end654.if.end663_crit_edge:                 ; preds = %while.end654
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end663

if.then662:                                       ; preds = %while.end654
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !169
  tail call void @arm_heavy_mb() #9
  %380 = ptrtoint ptr %arrayidx.i1977 to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %arrayidx.i1977, align 4
  %add.i2252 = add i32 %381, 2
  %and.i2253 = and i32 %add.i2252, 1048575
  %add1.i2254 = or i32 %and.i2253, -18874368
  %382 = inttoptr i32 %add1.i2254 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %382, i8 6) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !169
  tail call void @arm_heavy_mb() #9
  %383 = ptrtoint ptr %arrayidx.i1977 to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load i32, ptr %arrayidx.i1977, align 4
  %add.i2257 = add i32 %384, 2
  %and.i2258 = and i32 %add.i2257, 1048575
  %add1.i2259 = or i32 %and.i2258, -18874368
  %385 = inttoptr i32 %add1.i2259 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %385, i8 0) #9, !srcloc !165
  br label %if.end663

if.end663:                                        ; preds = %if.then662, %while.end654.if.end663_crit_edge
  %386 = ptrtoint ptr %arrayidx418 to i32
  call void @__asan_load1_noabort(i32 %386)
  %387 = load i8, ptr %arrayidx418, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %387)
  %cmp671.not = icmp eq i8 %387, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  %388 = ptrtoint ptr %arrayidx.i1957 to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load i32, ptr %arrayidx.i1957, align 4
  %add.i2271 = add i32 %389, 24
  %and.i2272 = and i32 %add.i2271, 1048575
  %add1.i2273 = or i32 %and.i2272, -18874368
  %390 = inttoptr i32 %add1.i2273 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %390, i8 8) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  %391 = ptrtoint ptr %arrayidx.i1977 to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load i32, ptr %arrayidx.i1977, align 4
  %and.i2276 = and i32 %392, 1048575
  %add1.i2277 = or i32 %and.i2276, -18874368
  %393 = inttoptr i32 %add1.i2277 to ptr
  br i1 %cmp671.not, label %if.end677, label %if.then673

if.then673:                                       ; preds = %if.end663
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %393, i8 1) #9, !srcloc !165
  br label %cleanup.sink.split

if.end677:                                        ; preds = %if.end663
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %393, i8 9) #9, !srcloc !165
  br label %cleanup.sink.split

if.end681.thread:                                 ; preds = %if.end298.fold.split, %if.then270.if.end681.thread_crit_edge, %if.then270.if.end681.thread_crit_edge2473
  %i.02436.ph = phi i8 [ 73, %if.then270.if.end681.thread_crit_edge ], [ 73, %if.then270.if.end681.thread_crit_edge2473 ], [ 72, %if.end298.fold.split ]
  %id6822438 = getelementptr inbounds %struct.Scsi_Host, ptr %dev_id, i32 1, i32 13, i32 13, i32 2
  %idxprom6852439 = zext i8 %68 to i32
  %arrayidx6862440 = getelementptr [2 x [16 x %struct.atp_id]], ptr %id6822438, i32 0, i32 %conv.lcssa, i32 %idxprom6852439
  br label %if.end832

if.end681:                                        ; preds = %if.end298.if.end681_crit_edge, %if.then270.if.end681_crit_edge
  %id682 = getelementptr inbounds %struct.Scsi_Host, ptr %dev_id, i32 1, i32 13, i32 13, i32 2
  %idxprom685 = zext i8 %68 to i32
  %arrayidx686 = getelementptr [2 x [16 x %struct.atp_id]], ptr %id682, i32 0, i32 %conv.lcssa, i32 %idxprom685
  %curr_req687 = getelementptr [2 x [16 x %struct.atp_id]], ptr %id682, i32 0, i32 %conv.lcssa, i32 %idxprom685, i32 9
  %394 = ptrtoint ptr %curr_req687 to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %curr_req687, align 4
  %396 = zext i8 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %396, ptr @__sancov_gen_cov_switch_values.78)
  switch i8 %54, label %if.end681.if.end832_crit_edge [
    i8 66, label %if.end681.if.then695_crit_edge
    i8 22, label %if.end681.if.then695_crit_edge2485
  ]

if.end681.if.then695_crit_edge2485:               ; preds = %if.end681
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then695

if.end681.if.then695_crit_edge:                   ; preds = %if.end681
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then695

if.end681.if.end832_crit_edge:                    ; preds = %if.end681
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end832

if.then695:                                       ; preds = %if.end681.if.then695_crit_edge, %if.end681.if.then695_crit_edge2485
  %last_cmd696 = getelementptr inbounds %struct.Scsi_Host, ptr %dev_id, i32 1, i32 2, i32 1
  %arrayidx698 = getelementptr [2 x i8], ptr %last_cmd696, i32 0, i32 %conv.lcssa
  %397 = ptrtoint ptr %arrayidx698 to i32
  call void @__asan_load1_noabort(i32 %397)
  %398 = load i8, ptr %arrayidx698, align 1
  %399 = and i8 %398, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %399)
  %cmp701.not = icmp eq i8 %399, 64
  br i1 %cmp701.not, label %if.then695.if.end707_crit_edge, label %if.then703

if.then695.if.end707_crit_edge:                   ; preds = %if.then695
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end707

if.then703:                                       ; preds = %if.then695
  call void @__sanitizer_cov_trace_pc() #11
  %400 = ptrtoint ptr %arrayidx698 to i32
  call void @__asan_store1_noabort(i32 %400)
  store i8 -1, ptr %arrayidx698, align 1
  br label %if.end707

if.end707:                                        ; preds = %if.then703, %if.then695.if.end707_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 22, i8 %54)
  %cmp709 = icmp eq i8 %54, 22
  br i1 %cmp709, label %if.then711, label %if.else734

if.then711:                                       ; preds = %if.end707
  %401 = ptrtoint ptr %arrayidx.i1957 to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load i32, ptr %arrayidx.i1957, align 4
  %add.i2280 = add i32 %402, 15
  %and.i2281 = and i32 %add.i2280, 1048575
  %add1.i2282 = or i32 %and.i2281, -18874368
  %403 = inttoptr i32 %add1.i2282 to ptr
  %404 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %403) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %conv713 = zext i8 %404 to i32
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %395, i32 0, i32 24
  %405 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %405)
  store i32 %conv713, ptr %result, align 4
  %r1f714 = getelementptr inbounds %struct.Scsi_Host, ptr %dev_id, i32 1, i32 5, i32 1, i32 4
  %arrayidx718 = getelementptr [2 x [16 x i8]], ptr %r1f714, i32 0, i32 %conv.lcssa, i32 %idxprom685
  %406 = ptrtoint ptr %arrayidx718 to i32
  call void @__asan_load1_noabort(i32 %406)
  %407 = load i8, ptr %arrayidx718, align 1
  %408 = and i8 %407, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %408)
  %cmp721.not = icmp eq i8 %408, 0
  br i1 %cmp721.not, label %if.then711.if.end736_crit_edge, label %land.lhs.true723

if.then711.if.end736_crit_edge:                   ; preds = %if.then711
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end736

land.lhs.true723:                                 ; preds = %if.then711
  %409 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %pdev.i, align 4
  %device.i2284 = getelementptr inbounds %struct.pci_dev, ptr %410, i32 0, i32 8
  %411 = ptrtoint ptr %device.i2284 to i32
  call void @__asan_load2_noabort(i32 %411)
  %412 = load i16, ptr %device.i2284, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32630, i16 %412)
  %cmp.i2285 = icmp eq i16 %412, -32630
  br i1 %cmp.i2285, label %do.end729, label %land.lhs.true723.if.end736_crit_edge

land.lhs.true723.if.end736_crit_edge:             ; preds = %land.lhs.true723
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end736

do.end729:                                        ; preds = %land.lhs.true723
  call void @__sanitizer_cov_trace_pc() #11
  %call731 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71) #12
  br label %if.end736.sink.split

if.else734:                                       ; preds = %if.end707
  call void @__sanitizer_cov_trace_pc() #11
  %result735 = getelementptr inbounds %struct.scsi_cmnd, ptr %395, i32 0, i32 24
  br label %if.end736.sink.split

if.end736.sink.split:                             ; preds = %if.else734, %do.end729
  %result.sink = phi ptr [ %result, %do.end729 ], [ %result735, %if.else734 ]
  %413 = ptrtoint ptr %result.sink to i32
  call void @__asan_store4_noabort(i32 %413)
  store i32 2, ptr %result.sink, align 4
  br label %if.end736

if.end736:                                        ; preds = %if.end736.sink.split, %land.lhs.true723.if.end736_crit_edge, %if.then711.if.end736_crit_edge
  %414 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %pdev.i, align 4
  %device.i2287 = getelementptr inbounds %struct.pci_dev, ptr %415, i32 0, i32 8
  %416 = ptrtoint ptr %device.i2287 to i32
  call void @__asan_load2_noabort(i32 %416)
  %417 = load i16, ptr %device.i2287, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32630, i16 %417)
  %cmp.i2288 = icmp eq i16 %417, -32630
  br i1 %cmp.i2288, label %if.then738, label %if.end736.if.end743_crit_edge

if.end736.if.end743_crit_edge:                    ; preds = %if.end736
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end743

if.then738:                                       ; preds = %if.end736
  call void @__sanitizer_cov_trace_pc() #11
  %418 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load i32, ptr %hostdata, align 4
  %add.i2289 = add i32 %419, 41
  %and.i2290 = and i32 %add.i2289, 1048575
  %add1.i2291 = or i32 %and.i2290, -18874368
  %420 = inttoptr i32 %add1.i2291 to ptr
  %421 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %420) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !159
  %422 = or i8 %421, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !164
  tail call void @arm_heavy_mb() #9
  %423 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load i32, ptr %hostdata, align 4
  %add.i2292 = add i32 %424, 41
  %and.i2293 = and i32 %add.i2292, 1048575
  %add1.i2294 = or i32 %and.i2293, -18874368
  %425 = inttoptr i32 %add1.i2294 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %425, i8 %422) #9, !srcloc !165
  br label %if.end743

if.end743:                                        ; preds = %if.then738, %if.end736.if.end743_crit_edge
  tail call void @scsi_dma_unmap(ptr noundef %395) #9
  %host751 = getelementptr inbounds %struct.Scsi_Host, ptr %dev_id, i32 1, i32 49, i32 25
  %426 = ptrtoint ptr %host751 to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %host751, align 4
  %host_lock752 = getelementptr inbounds %struct.Scsi_Host, ptr %427, i32 0, i32 4
  %428 = ptrtoint ptr %host_lock752 to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %host_lock752, align 4
  %call754 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %429) #9
  tail call void @scsi_done(ptr noundef %395) #9
  %430 = ptrtoint ptr %curr_req687 to i32
  call void @__asan_store4_noabort(i32 %430)
  store ptr null, ptr %curr_req687, align 4
  %431 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load i32, ptr %arrayidx16, align 4
  %dec = add i32 %432, -1
  store i32 %dec, ptr %arrayidx16, align 4
  %433 = ptrtoint ptr %host751 to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %host751, align 4
  %host_lock769 = getelementptr inbounds %struct.Scsi_Host, ptr %434, i32 0, i32 4
  %435 = ptrtoint ptr %host_lock769 to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %host_lock769, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %436, i32 noundef %call754) #9
  %wide_id770 = getelementptr inbounds %struct.Scsi_Host, ptr %dev_id, i32 1, i32 3, i32 0, i32 0, i32 4, i32 1
  %arrayidx772 = getelementptr [2 x i16], ptr %wide_id770, i32 0, i32 %conv.lcssa
  %437 = ptrtoint ptr %arrayidx772 to i32
  call void @__asan_load2_noabort(i32 %437)
  %438 = load i16, ptr %arrayidx772, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %438)
  %cmp774.not = icmp eq i16 %438, 0
  br i1 %cmp774.not, label %if.end743.do.body787_crit_edge, label %if.then776

if.end743.do.body787_crit_edge:                   ; preds = %if.end743
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body787

if.then776:                                       ; preds = %if.end743
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %439 = ptrtoint ptr %arrayidx.i1957 to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load i32, ptr %arrayidx.i1957, align 4
  %add.i2297 = add i32 %440, 27
  %and.i2298 = and i32 %add.i2297, 1048575
  %add1.i2299 = or i32 %and.i2298, -18874368
  %441 = inttoptr i32 %add1.i2299 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %441, i8 1) #9, !srcloc !165
  %442 = ptrtoint ptr %arrayidx.i1957 to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load i32, ptr %arrayidx.i1957, align 4
  %add.i23022468 = add i32 %443, 27
  %and.i23032469 = and i32 %add.i23022468, 1048575
  %add1.i23042470 = or i32 %and.i23032469, -18874368
  %444 = inttoptr i32 %add1.i23042470 to ptr
  %445 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %444) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %446 = and i8 %445, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %446)
  %cmp781.not.not2471 = icmp eq i8 %446, 0
  br i1 %cmp781.not.not2471, label %if.then776.while.body783_crit_edge, label %if.then776.do.body787_crit_edge

if.then776.do.body787_crit_edge:                  ; preds = %if.then776
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body787

if.then776.while.body783_crit_edge:               ; preds = %if.then776
  br label %while.body783

while.body783:                                    ; preds = %while.body783.while.body783_crit_edge, %if.then776.while.body783_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %447 = ptrtoint ptr %arrayidx.i1957 to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load i32, ptr %arrayidx.i1957, align 4
  %add.i2307 = add i32 %448, 27
  %and.i2308 = and i32 %add.i2307, 1048575
  %add1.i2309 = or i32 %and.i2308, -18874368
  %449 = inttoptr i32 %add1.i2309 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %449, i8 1) #9, !srcloc !165
  %450 = ptrtoint ptr %arrayidx.i1957 to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load i32, ptr %arrayidx.i1957, align 4
  %add.i2302 = add i32 %451, 27
  %and.i2303 = and i32 %add.i2302, 1048575
  %add1.i2304 = or i32 %and.i2303, -18874368
  %452 = inttoptr i32 %add1.i2304 to ptr
  %453 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %452) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %454 = and i8 %453, 1
  %cmp781.not.not = icmp eq i8 %454, 0
  br i1 %cmp781.not.not, label %while.body783.while.body783_crit_edge, label %while.body783.do.body787_crit_edge

while.body783.do.body787_crit_edge:               ; preds = %while.body783
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body787

while.body783.while.body783_crit_edge:            ; preds = %while.body783
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body783

do.body787:                                       ; preds = %while.body783.do.body787_crit_edge, %if.then776.do.body787_crit_edge, %if.end743.do.body787_crit_edge
  %455 = ptrtoint ptr %host751 to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load ptr, ptr %host751, align 4
  %host_lock794 = getelementptr inbounds %struct.Scsi_Host, ptr %456, i32 0, i32 4
  %457 = ptrtoint ptr %host_lock794 to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load ptr, ptr %host_lock794, align 4
  %call796 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %458) #9
  %459 = ptrtoint ptr %arrayidx698 to i32
  call void @__asan_load1_noabort(i32 %459)
  %460 = load i8, ptr %arrayidx698, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %460)
  %cmp805.not = icmp eq i8 %460, -1
  br i1 %cmp805.not, label %lor.lhs.false807, label %do.body787.land.lhs.true818_crit_edge

do.body787.land.lhs.true818_crit_edge:            ; preds = %do.body787
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true818

lor.lhs.false807:                                 ; preds = %do.body787
  %arrayidx810 = getelementptr %struct.atp_unit, ptr %hostdata, i32 0, i32 6, i32 %conv.lcssa
  %461 = ptrtoint ptr %arrayidx810 to i32
  call void @__asan_load1_noabort(i32 %461)
  %462 = load i8, ptr %arrayidx810, align 1
  %quend812 = getelementptr inbounds %struct.Scsi_Host, ptr %dev_id, i32 1, i32 3, i32 0, i32 0, i32 1
  %arrayidx814 = getelementptr [2 x i8], ptr %quend812, i32 0, i32 %conv.lcssa
  %463 = ptrtoint ptr %arrayidx814 to i32
  call void @__asan_load1_noabort(i32 %463)
  %464 = load i8, ptr %arrayidx814, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %462, i8 %464)
  %cmp816.not = icmp eq i8 %462, %464
  br i1 %cmp816.not, label %lor.lhs.false807.if.end826_crit_edge, label %lor.lhs.false807.land.lhs.true818_crit_edge

lor.lhs.false807.land.lhs.true818_crit_edge:      ; preds = %lor.lhs.false807
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true818

lor.lhs.false807.if.end826_crit_edge:             ; preds = %lor.lhs.false807
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end826

land.lhs.true818:                                 ; preds = %lor.lhs.false807.land.lhs.true818_crit_edge, %do.body787.land.lhs.true818_crit_edge
  %arrayidx821 = getelementptr %struct.atp_unit, ptr %hostdata, i32 0, i32 4, i32 %conv.lcssa
  %465 = ptrtoint ptr %arrayidx821 to i32
  call void @__asan_load1_noabort(i32 %465)
  %466 = load i8, ptr %arrayidx821, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %466)
  %cmp823 = icmp eq i8 %466, 0
  br i1 %cmp823, label %if.then825, label %land.lhs.true818.if.end826_crit_edge

land.lhs.true818.if.end826_crit_edge:             ; preds = %land.lhs.true818
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end826

if.then825:                                       ; preds = %land.lhs.true818
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @send_s870(ptr noundef %hostdata, i8 noundef zeroext %c.0.lcssa)
  br label %if.end826

if.end826:                                        ; preds = %if.then825, %land.lhs.true818.if.end826_crit_edge, %lor.lhs.false807.if.end826_crit_edge
  %467 = ptrtoint ptr %host751 to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %host751, align 4
  %host_lock828 = getelementptr inbounds %struct.Scsi_Host, ptr %468, i32 0, i32 4
  %469 = ptrtoint ptr %host_lock828 to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load ptr, ptr %host_lock828, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %470, i32 noundef %call796) #9
  br label %cleanup.sink.split

if.end832:                                        ; preds = %if.end681.if.end832_crit_edge, %if.end681.thread
  %arrayidx6862445 = phi ptr [ %arrayidx6862440, %if.end681.thread ], [ %arrayidx686, %if.end681.if.end832_crit_edge ]
  %idxprom6852444 = phi i32 [ %idxprom6852439, %if.end681.thread ], [ %idxprom685, %if.end681.if.end832_crit_edge ]
  %i.024362442 = phi i8 [ %i.02436.ph, %if.end681.thread ], [ %54, %if.end681.if.end832_crit_edge ]
  %last_cmd833 = getelementptr inbounds %struct.Scsi_Host, ptr %dev_id, i32 1, i32 2, i32 1
  %arrayidx835 = getelementptr [2 x i8], ptr %last_cmd833, i32 0, i32 %conv.lcssa
  %471 = ptrtoint ptr %arrayidx835 to i32
  call void @__asan_load1_noabort(i32 %471)
  %472 = load i8, ptr %arrayidx835, align 1
  %473 = and i8 %472, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %473)
  %cmp838.not = icmp eq i8 %473, 64
  br i1 %cmp838.not, label %if.end832.if.end844_crit_edge, label %if.then840

if.end832.if.end844_crit_edge:                    ; preds = %if.end832
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end844

if.then840:                                       ; preds = %if.end832
  call void @__sanitizer_cov_trace_pc() #11
  %474 = ptrtoint ptr %arrayidx835 to i32
  call void @__asan_store1_noabort(i32 %474)
  store i8 -1, ptr %arrayidx835, align 1
  br label %if.end844

if.end844:                                        ; preds = %if.then840, %if.end832.if.end844_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 79, i8 %i.024362442)
  %cmp846 = icmp eq i8 %i.024362442, 79
  %475 = trunc i8 %i.024362442 to i4
  %trunc = select i1 %cmp846, i4 -7, i4 %475
  %476 = zext i4 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %476, ptr @__sancov_gen_cov_switch_values.79)
  switch i4 %trunc, label %if.else932 [
    i4 -7, label %if.then856
    i4 -8, label %if.then895
    i4 -6, label %if.then931
  ]

if.then856:                                       ; preds = %if.end844
  %477 = getelementptr inbounds %struct.Scsi_Host, ptr %dev_id, i32 1, i32 13, i32 13, i32 2
  %prdaddr862 = getelementptr [2 x [16 x %struct.atp_id]], ptr %477, i32 0, i32 %conv.lcssa, i32 %idxprom6852444, i32 8
  %478 = ptrtoint ptr %prdaddr862 to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load i32, ptr %prdaddr862, align 4
  tail call fastcc void @atp_writel_pci(ptr noundef %hostdata, i8 noundef zeroext %c.0.lcssa, i32 noundef %479)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !169
  tail call void @arm_heavy_mb() #9
  %480 = ptrtoint ptr %arrayidx.i1977 to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load i32, ptr %arrayidx.i1977, align 4
  %add.i2312 = add i32 %481, 2
  %and.i2313 = and i32 %add.i2312, 1048575
  %add1.i2314 = or i32 %and.i2313, -18874368
  %482 = inttoptr i32 %add1.i2314 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %482, i8 6) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !169
  tail call void @arm_heavy_mb() #9
  %483 = ptrtoint ptr %arrayidx.i1977 to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load i32, ptr %arrayidx.i1977, align 4
  %add.i2317 = add i32 %484, 2
  %and.i2318 = and i32 %add.i2317, 1048575
  %add1.i2319 = or i32 %and.i2318, -18874368
  %485 = inttoptr i32 %add1.i2319 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %485, i8 0) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %486 = ptrtoint ptr %arrayidx.i1957 to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load i32, ptr %arrayidx.i1957, align 4
  %add.i2322 = add i32 %487, 16
  %and.i2323 = and i32 %add.i2322, 1048575
  %add1.i2324 = or i32 %and.i2323, -18874368
  %488 = inttoptr i32 %add1.i2324 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %488, i8 65) #9, !srcloc !165
  %489 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load ptr, ptr %pdev.i, align 4
  %device.i2326 = getelementptr inbounds %struct.pci_dev, ptr %490, i32 0, i32 8
  %491 = ptrtoint ptr %device.i2326 to i32
  call void @__asan_load2_noabort(i32 %491)
  %492 = load i16, ptr %device.i2326, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32630, i16 %492)
  %cmp.i2327 = icmp eq i16 %492, -32630
  br i1 %cmp.i2327, label %if.then864, label %if.then856.if.end887_crit_edge

if.then856.if.end887_crit_edge:                   ; preds = %if.then856
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end887

if.then864:                                       ; preds = %if.then856
  call void @__sanitizer_cov_trace_pc() #11
  %last_len870 = getelementptr [2 x [16 x %struct.atp_id]], ptr %477, i32 0, i32 %conv.lcssa, i32 %idxprom6852444, i32 4
  %493 = ptrtoint ptr %last_len870 to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load i32, ptr %last_len870, align 4
  %k.sroa.0.0.extract.shift1223 = lshr i32 %494, 24
  %k.sroa.0.0.extract.trunc1224 = trunc i32 %k.sroa.0.0.extract.shift1223 to i8
  %k.sroa.30.0.extract.shift1293 = lshr i32 %494, 16
  %k.sroa.30.0.extract.trunc1294 = trunc i32 %k.sroa.30.0.extract.shift1293 to i8
  %k.sroa.33.0.extract.shift1365 = lshr i32 %494, 8
  %k.sroa.33.0.extract.trunc1366 = trunc i32 %k.sroa.33.0.extract.shift1365 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %495 = ptrtoint ptr %arrayidx.i1957 to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load i32, ptr %arrayidx.i1957, align 4
  %add.i2330 = add i32 %496, 18
  %and.i2331 = and i32 %add.i2330, 1048575
  %add1.i2332 = or i32 %and.i2331, -18874368
  %497 = inttoptr i32 %add1.i2332 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %497, i8 %k.sroa.33.0.extract.trunc1366) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %498 = ptrtoint ptr %arrayidx.i1957 to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load i32, ptr %arrayidx.i1957, align 4
  %add.i2335 = add i32 %499, 19
  %and.i2336 = and i32 %add.i2335, 1048575
  %add1.i2337 = or i32 %and.i2336, -18874368
  %500 = inttoptr i32 %add1.i2337 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %500, i8 %k.sroa.30.0.extract.trunc1294) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %501 = ptrtoint ptr %arrayidx.i1957 to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load i32, ptr %arrayidx.i1957, align 4
  %add.i2340 = add i32 %502, 20
  %and.i2341 = and i32 %add.i2340, 1048575
  %add1.i2342 = or i32 %and.i2341, -18874368
  %503 = inttoptr i32 %add1.i2342 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %503, i8 %k.sroa.0.0.extract.trunc1224) #9, !srcloc !165
  br label %if.end887

if.end887:                                        ; preds = %if.then864, %if.then856.if.end887_crit_edge
  %504 = ptrtoint ptr %arrayidx6862445 to i32
  call void @__asan_store1_noabort(i32 %504)
  store i8 0, ptr %arrayidx6862445, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %505 = ptrtoint ptr %arrayidx.i1957 to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load i32, ptr %arrayidx.i1957, align 4
  %add.i2345 = add i32 %506, 24
  %and.i2346 = and i32 %add.i2345, 1048575
  %add1.i2347 = or i32 %and.i2346, -18874368
  %507 = inttoptr i32 %add1.i2347 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %507, i8 8) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !169
  tail call void @arm_heavy_mb() #9
  %508 = ptrtoint ptr %arrayidx.i1977 to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load i32, ptr %arrayidx.i1977, align 4
  %and.i2350 = and i32 %509, 1048575
  %add1.i2351 = or i32 %and.i2350, -18874368
  %510 = inttoptr i32 %add1.i2351 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %510, i8 9) #9, !srcloc !165
  br label %cleanup.sink.split

if.then895:                                       ; preds = %if.end844
  %511 = getelementptr inbounds %struct.Scsi_Host, ptr %dev_id, i32 1, i32 13, i32 13, i32 2
  %prdaddr901 = getelementptr [2 x [16 x %struct.atp_id]], ptr %511, i32 0, i32 %conv.lcssa, i32 %idxprom6852444, i32 8
  %512 = ptrtoint ptr %prdaddr901 to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load i32, ptr %prdaddr901, align 4
  tail call fastcc void @atp_writel_pci(ptr noundef %hostdata, i8 noundef zeroext %c.0.lcssa, i32 noundef %513)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !169
  tail call void @arm_heavy_mb() #9
  %514 = ptrtoint ptr %arrayidx.i1977 to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load i32, ptr %arrayidx.i1977, align 4
  %add.i2354 = add i32 %515, 2
  %and.i2355 = and i32 %add.i2354, 1048575
  %add1.i2356 = or i32 %and.i2355, -18874368
  %516 = inttoptr i32 %add1.i2356 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %516, i8 6) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !169
  tail call void @arm_heavy_mb() #9
  %517 = ptrtoint ptr %arrayidx.i1977 to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load i32, ptr %arrayidx.i1977, align 4
  %add.i2359 = add i32 %518, 2
  %and.i2360 = and i32 %add.i2359, 1048575
  %add1.i2361 = or i32 %and.i2360, -18874368
  %519 = inttoptr i32 %add1.i2361 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %519, i8 0) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %520 = ptrtoint ptr %arrayidx.i1957 to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load i32, ptr %arrayidx.i1957, align 4
  %add.i2364 = add i32 %521, 16
  %and.i2365 = and i32 %add.i2364, 1048575
  %add1.i2366 = or i32 %and.i2365, -18874368
  %522 = inttoptr i32 %add1.i2366 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %522, i8 65) #9, !srcloc !165
  %523 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load ptr, ptr %pdev.i, align 4
  %device.i2368 = getelementptr inbounds %struct.pci_dev, ptr %524, i32 0, i32 8
  %525 = ptrtoint ptr %device.i2368 to i32
  call void @__asan_load2_noabort(i32 %525)
  %526 = load i16, ptr %device.i2368, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32630, i16 %526)
  %cmp.i2369 = icmp eq i16 %526, -32630
  br i1 %cmp.i2369, label %if.then903, label %if.then895.if.end913_crit_edge

if.then895.if.end913_crit_edge:                   ; preds = %if.then895
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end913

if.then903:                                       ; preds = %if.then895
  call void @__sanitizer_cov_trace_pc() #11
  %last_len909 = getelementptr [2 x [16 x %struct.atp_id]], ptr %511, i32 0, i32 %conv.lcssa, i32 %idxprom6852444, i32 4
  %527 = ptrtoint ptr %last_len909 to i32
  call void @__asan_load4_noabort(i32 %527)
  %528 = load i32, ptr %last_len909, align 4
  %k.sroa.0.0.extract.shift1225 = lshr i32 %528, 24
  %k.sroa.0.0.extract.trunc1226 = trunc i32 %k.sroa.0.0.extract.shift1225 to i8
  %k.sroa.30.0.extract.shift1295 = lshr i32 %528, 16
  %k.sroa.30.0.extract.trunc1296 = trunc i32 %k.sroa.30.0.extract.shift1295 to i8
  %k.sroa.33.0.extract.shift1367 = lshr i32 %528, 8
  %k.sroa.33.0.extract.trunc1368 = trunc i32 %k.sroa.33.0.extract.shift1367 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %529 = ptrtoint ptr %arrayidx.i1957 to i32
  call void @__asan_load4_noabort(i32 %529)
  %530 = load i32, ptr %arrayidx.i1957, align 4
  %add.i2372 = add i32 %530, 18
  %and.i2373 = and i32 %add.i2372, 1048575
  %add1.i2374 = or i32 %and.i2373, -18874368
  %531 = inttoptr i32 %add1.i2374 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %531, i8 %k.sroa.33.0.extract.trunc1368) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %532 = ptrtoint ptr %arrayidx.i1957 to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load i32, ptr %arrayidx.i1957, align 4
  %add.i2377 = add i32 %533, 19
  %and.i2378 = and i32 %add.i2377, 1048575
  %add1.i2379 = or i32 %and.i2378, -18874368
  %534 = inttoptr i32 %add1.i2379 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %534, i8 %k.sroa.30.0.extract.trunc1296) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %535 = ptrtoint ptr %arrayidx.i1957 to i32
  call void @__asan_load4_noabort(i32 %535)
  %536 = load i32, ptr %arrayidx.i1957, align 4
  %add.i2382 = add i32 %536, 20
  %and.i2383 = and i32 %add.i2382, 1048575
  %add1.i2384 = or i32 %and.i2383, -18874368
  %537 = inttoptr i32 %add1.i2384 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %537, i8 %k.sroa.0.0.extract.trunc1226) #9, !srcloc !165
  br label %if.end913

if.end913:                                        ; preds = %if.then903, %if.then895.if.end913_crit_edge
  %538 = ptrtoint ptr %arrayidx.i1957 to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load i32, ptr %arrayidx.i1957, align 4
  %add.i2387 = add i32 %539, 21
  %and.i2388 = and i32 %add.i2387, 1048575
  %add1.i2389 = or i32 %and.i2388, -18874368
  %540 = inttoptr i32 %add1.i2389 to ptr
  %541 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %540) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %542 = or i8 %541, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %543 = ptrtoint ptr %arrayidx.i1957 to i32
  call void @__asan_load4_noabort(i32 %543)
  %544 = load i32, ptr %arrayidx.i1957, align 4
  %add.i2392 = add i32 %544, 21
  %and.i2393 = and i32 %add.i2392, 1048575
  %add1.i2394 = or i32 %and.i2393, -18874368
  %545 = inttoptr i32 %add1.i2394 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %545, i8 %542) #9, !srcloc !165
  %546 = ptrtoint ptr %arrayidx6862445 to i32
  call void @__asan_store1_noabort(i32 %546)
  store i8 32, ptr %arrayidx6862445, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %547 = ptrtoint ptr %arrayidx.i1957 to i32
  call void @__asan_load4_noabort(i32 %547)
  %548 = load i32, ptr %arrayidx.i1957, align 4
  %add.i2397 = add i32 %548, 24
  %and.i2398 = and i32 %add.i2397, 1048575
  %add1.i2399 = or i32 %and.i2398, -18874368
  %549 = inttoptr i32 %add1.i2399 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %549, i8 8) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !169
  tail call void @arm_heavy_mb() #9
  %550 = ptrtoint ptr %arrayidx.i1977 to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load i32, ptr %arrayidx.i1977, align 4
  %and.i2402 = and i32 %551, 1048575
  %add1.i2403 = or i32 %and.i2402, -18874368
  %552 = inttoptr i32 %add1.i2403 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %552, i8 1) #9, !srcloc !165
  br label %cleanup.sink.split

if.then931:                                       ; preds = %if.end844
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %553 = ptrtoint ptr %arrayidx.i1957 to i32
  call void @__asan_load4_noabort(i32 %553)
  %554 = load i32, ptr %arrayidx.i1957, align 4
  %add.i2406 = add i32 %554, 16
  %and.i2407 = and i32 %add.i2406, 1048575
  %add1.i2408 = or i32 %and.i2407, -18874368
  %555 = inttoptr i32 %add1.i2408 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %555, i8 48) #9, !srcloc !165
  br label %if.end933

if.else932:                                       ; preds = %if.end844
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %556 = ptrtoint ptr %arrayidx.i1957 to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load i32, ptr %arrayidx.i1957, align 4
  %add.i2411 = add i32 %557, 16
  %and.i2412 = and i32 %add.i2411, 1048575
  %add1.i2413 = or i32 %and.i2412, -18874368
  %558 = inttoptr i32 %add1.i2413 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %558, i8 70) #9, !srcloc !165
  br label %if.end933

if.end933:                                        ; preds = %if.else932, %if.then931
  %559 = ptrtoint ptr %arrayidx6862445 to i32
  call void @__asan_store1_noabort(i32 %559)
  store i8 0, ptr %arrayidx6862445, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %560 = ptrtoint ptr %arrayidx.i1957 to i32
  call void @__asan_load4_noabort(i32 %560)
  %561 = load i32, ptr %arrayidx.i1957, align 4
  %add.i2416 = add i32 %561, 18
  %and.i2417 = and i32 %add.i2416, 1048575
  %add1.i2418 = or i32 %and.i2417, -18874368
  %562 = inttoptr i32 %add1.i2418 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %562, i8 0) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %563 = ptrtoint ptr %arrayidx.i1957 to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load i32, ptr %arrayidx.i1957, align 4
  %add.i2421 = add i32 %564, 19
  %and.i2422 = and i32 %add.i2421, 1048575
  %add1.i2423 = or i32 %and.i2422, -18874368
  %565 = inttoptr i32 %add1.i2423 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %565, i8 0) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %566 = ptrtoint ptr %arrayidx.i1957 to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load i32, ptr %arrayidx.i1957, align 4
  %add.i2426 = add i32 %567, 20
  %and.i2427 = and i32 %add.i2426, 1048575
  %add1.i2428 = or i32 %and.i2427, -18874368
  %568 = inttoptr i32 %add1.i2428 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %568, i8 0) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %569 = ptrtoint ptr %arrayidx.i1957 to i32
  call void @__asan_load4_noabort(i32 %569)
  %570 = load i32, ptr %arrayidx.i1957, align 4
  %add.i2431 = add i32 %570, 24
  %and.i2432 = and i32 %add.i2431, 1048575
  %add1.i2433 = or i32 %and.i2432, -18874368
  %571 = inttoptr i32 %add1.i2433 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %571, i8 8) #9, !srcloc !165
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end933, %if.end913, %if.end887, %if.end826, %if.end677, %if.then673, %if.then600, %if.else364, %if.then335, %if.end239, %if.then213, %if.end203, %if.end10.cleanup.sink.split_crit_edge
  %572 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %572)
  store i8 0, ptr %arrayidx13, align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end.cleanup_crit_edge ], [ 1, %cleanup.sink.split ]
  ret i32 %retval.0
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

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atp870u_queuecommand(ptr nocapture noundef readonly %shost, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 4
  %0 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_lock, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #9
  %device.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %2 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device.i, align 4
  %channel.i.i = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel.i.i, align 4
  %conv.i = trunc i32 %5 to i8
  %sense_buffer.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 21
  %6 = ptrtoint ptr %sense_buffer.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sense_buffer.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %7, align 1
  %resid_len.i.i = getelementptr inbounds %struct.scsi_request, ptr %cmd, i32 0, i32 5
  %9 = ptrtoint ptr %resid_len.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %resid_len.i.i, align 4
  %10 = load ptr, ptr %device.i, align 4
  %channel.i1.i = getelementptr inbounds %struct.scsi_device, ptr %10, i32 0, i32 17
  %11 = ptrtoint ptr %channel.i1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %channel.i1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp.i = icmp ugt i32 %12, 1
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %result.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 24
  %13 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 262144, ptr %result.i, align 4
  tail call void @scsi_done(ptr noundef %cmd) #9
  br label %atp870u_queuecommand_lck.exit

if.end.i:                                         ; preds = %entry
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %10, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %15, i32 0, i32 53
  %id.i.i = getelementptr inbounds %struct.scsi_device, ptr %10, i32 0, i32 16
  %16 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id.i.i, align 8
  %shl.i = shl nuw i32 1, %17
  %active_id.i = getelementptr inbounds %struct.Scsi_Host, ptr %15, i32 1, i32 3, i32 0, i32 0, i32 4, i32 1, i32 1
  %idxprom.i = and i32 %5, 255
  %arrayidx8.i = getelementptr [2 x i16], ptr %active_id.i, i32 0, i32 %idxprom.i
  %18 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx8.i, align 2
  %conv9.i = zext i16 %19 to i32
  %and.i = and i32 %shl.i, %conv9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp10.i = icmp eq i32 %and.i, 0
  br i1 %cmp10.i, label %if.then12.i, label %if.end14.i

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %result13.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 24
  %20 = ptrtoint ptr %result13.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 262144, ptr %result13.i, align 4
  tail call void @scsi_done(ptr noundef %cmd) #9
  br label %atp870u_queuecommand_lck.exit

if.end14.i:                                       ; preds = %if.end.i
  %quend.i = getelementptr inbounds %struct.Scsi_Host, ptr %15, i32 1, i32 3, i32 0, i32 0, i32 1
  %arrayidx16.i = getelementptr [2 x i8], ptr %quend.i, i32 0, i32 %idxprom.i
  %21 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx16.i, align 1
  %inc.i = add i8 %22, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %inc.i)
  %cmp21.i = icmp ugt i8 %inc.i, 31
  %spec.select.i = select i1 %cmp21.i, i8 0, i8 %inc.i
  %23 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %spec.select.i, ptr %arrayidx16.i, align 1
  %arrayidx29.i = getelementptr %struct.atp_unit, ptr %hostdata.i, i32 0, i32 6, i32 %idxprom.i
  %24 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx29.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %spec.select.i)
  %cmp35.i = icmp eq i8 %25, %spec.select.i
  br i1 %cmp35.i, label %if.then37.i, label %if.end53.i

if.then37.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %spec.select.i)
  %cmp42.i = icmp eq i8 %spec.select.i, 0
  br i1 %cmp42.i, label %if.then44.i, label %if.then37.i.if.end48.i_crit_edge

if.then37.i.if.end48.i_crit_edge:                 ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48.i

if.then44.i:                                      ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 32, ptr %arrayidx16.i, align 1
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then44.i, %if.then37.i.if.end48.i_crit_edge
  %27 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx16.i, align 1
  %dec.i = add i8 %28, -1
  store i8 %dec.i, ptr %arrayidx16.i, align 1
  %result52.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 24
  %29 = ptrtoint ptr %result52.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 131072, ptr %result52.i, align 4
  tail call void @scsi_done(ptr noundef %cmd) #9
  br label %atp870u_queuecommand_lck.exit

if.end53.i:                                       ; preds = %if.end14.i
  %conv34.i = zext i8 %spec.select.i to i32
  %quereq.i = getelementptr inbounds %struct.Scsi_Host, ptr %15, i32 1, i32 5, i32 3
  %arrayidx60.i = getelementptr [2 x [32 x ptr]], ptr %quereq.i, i32 0, i32 %idxprom.i, i32 %conv34.i
  %30 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %cmd, ptr %arrayidx60.i, align 4
  %arrayidx.i.i = getelementptr %struct.atp_unit, ptr %hostdata.i, i32 0, i32 1, i32 %idxprom.i
  %31 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %32, 28
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %33 = inttoptr i32 %add1.i.i to ptr
  %34 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %33) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp63.i = icmp eq i8 %34, 0
  br i1 %cmp63.i, label %land.lhs.true.i, label %if.end53.i.atp870u_queuecommand_lck.exit_crit_edge

if.end53.i.atp870u_queuecommand_lck.exit_crit_edge: ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %atp870u_queuecommand_lck.exit

land.lhs.true.i:                                  ; preds = %if.end53.i
  %in_int.i = getelementptr inbounds %struct.Scsi_Host, ptr %15, i32 1, i32 3
  %arrayidx66.i = getelementptr [2 x i8], ptr %in_int.i, i32 0, i32 %idxprom.i
  %35 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx66.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp68.i = icmp eq i8 %36, 0
  br i1 %cmp68.i, label %land.lhs.true70.i, label %land.lhs.true.i.atp870u_queuecommand_lck.exit_crit_edge

land.lhs.true.i.atp870u_queuecommand_lck.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %atp870u_queuecommand_lck.exit

land.lhs.true70.i:                                ; preds = %land.lhs.true.i
  %arrayidx72.i = getelementptr %struct.atp_unit, ptr %hostdata.i, i32 0, i32 4, i32 %idxprom.i
  %37 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx72.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp74.i = icmp eq i8 %38, 0
  br i1 %cmp74.i, label %if.then76.i, label %land.lhs.true70.i.atp870u_queuecommand_lck.exit_crit_edge

land.lhs.true70.i.atp870u_queuecommand_lck.exit_crit_edge: ; preds = %land.lhs.true70.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %atp870u_queuecommand_lck.exit

if.then76.i:                                      ; preds = %land.lhs.true70.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @send_s870(ptr noundef %hostdata.i, i8 noundef zeroext %conv.i) #9
  br label %atp870u_queuecommand_lck.exit

atp870u_queuecommand_lck.exit:                    ; preds = %if.then76.i, %land.lhs.true70.i.atp870u_queuecommand_lck.exit_crit_edge, %land.lhs.true.i.atp870u_queuecommand_lck.exit_crit_edge, %if.end53.i.atp870u_queuecommand_lck.exit_crit_edge, %if.end48.i, %if.then12.i, %if.then.i
  %39 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %40, i32 noundef %call2) #9
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @atp870u_info(ptr nocapture noundef readnone %notused) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr @atp870u_info.buffer, ptr @.str.15, i32 73)
  ret ptr @atp870u_info.buffer
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atp870u_abort(ptr nocapture noundef readonly %SCpnt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 1
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
  %conv3 = and i32 %5, 255
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %conv3) #12
  %working = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 3, i32 0, i32 0, i32 3
  %arrayidx = getelementptr [2 x i32], ptr %working, i32 0, i32 %conv3
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %last_cmd = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 2, i32 1
  %arrayidx10 = getelementptr [2 x i8], ptr %last_cmd, i32 0, i32 %conv3
  %8 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %9 to i32
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %7, i32 noundef %conv11) #12
  %arrayidx18 = getelementptr %struct.atp_unit, ptr %hostdata, i32 0, i32 6, i32 %conv3
  %10 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %11 to i32
  %quend = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 3, i32 0, i32 0, i32 1
  %arrayidx21 = getelementptr [2 x i8], ptr %quend, i32 0, i32 %conv3
  %12 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx21, align 1
  %conv22 = zext i8 %13 to i32
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %conv19, i32 noundef %conv22) #12
  %arrayidx.i = getelementptr %struct.atp_unit, ptr %hostdata, i32 0, i32 1, i32 %conv3
  br label %do.end28

do.end28:                                         ; preds = %do.end28.do.end28_crit_edge, %entry
  %indvars.iv = phi i32 [ 0, %entry ], [ %indvars.iv.next, %do.end28.do.end28_crit_edge ]
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %15, %indvars.iv
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %16 = inttoptr i32 %add1.i to ptr
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %conv32 = zext i8 %17 to i32
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %indvars.iv, i32 noundef %conv32) #12
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 24
  br i1 %exitcond.not, label %do.end36, label %do.end28.do.end28_crit_edge

do.end28.do.end28_crit_edge:                      ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end28

do.end36:                                         ; preds = %do.end28
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i, align 4
  %add.i156 = add i32 %19, 28
  %and.i157 = and i32 %add.i156, 1048575
  %add1.i158 = or i32 %and.i157, -18874368
  %20 = inttoptr i32 %add1.i158 to ptr
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %20) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %conv39 = zext i8 %21 to i32
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %conv39) #12
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i, align 4
  %add.i161 = add i32 %23, 31
  %and.i162 = and i32 %add.i161, 1048575
  %add1.i163 = or i32 %and.i162, -18874368
  %24 = inttoptr i32 %add1.i163 to ptr
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %24) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %conv46 = zext i8 %25 to i32
  %arrayidx48 = getelementptr %struct.atp_unit, ptr %hostdata, i32 0, i32 4, i32 %conv3
  %26 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx48, align 1
  %conv49 = zext i8 %27 to i32
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %conv46, i32 noundef %conv49) #12
  %arrayidx.i165 = getelementptr %struct.atp_unit, ptr %hostdata, i32 0, i32 2, i32 %conv3
  %28 = ptrtoint ptr %arrayidx.i165 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i165, align 4
  %and.i166 = and i32 %29, 1048575
  %add1.i167 = or i32 %and.i166, -18874368
  %30 = inttoptr i32 %add1.i167 to ptr
  %31 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %30) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv56 = zext i8 %31 to i32
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %conv56) #12
  %32 = ptrtoint ptr %arrayidx.i165 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i165, align 4
  %add.i170 = add i32 %33, 2
  %and.i171 = and i32 %add.i170, 1048575
  %add1.i172 = or i32 %and.i171, -18874368
  %34 = inttoptr i32 %add1.i172 to ptr
  %35 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %34) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %conv63 = zext i8 %35 to i32
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %conv63) #12
  %id = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 13, i32 13, i32 2
  br label %for.body69

for.body69:                                       ; preds = %for.inc114.for.body69_crit_edge, %do.end36
  %indvars.iv177 = phi i32 [ 0, %do.end36 ], [ %indvars.iv.next178, %for.inc114.for.body69_crit_edge ]
  %curr_req = getelementptr [2 x [16 x %struct.atp_id]], ptr %id, i32 0, i32 %conv3, i32 %indvars.iv177, i32 9
  %36 = ptrtoint ptr %curr_req to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %curr_req, align 4
  %cmp74.not = icmp eq ptr %37, null
  br i1 %cmp74.not, label %for.body69.for.inc114_crit_edge, label %if.then

for.body69.for.inc114_crit_edge:                  ; preds = %for.body69
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc114

if.then:                                          ; preds = %for.body69
  %call86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #12
  %cmd_len = getelementptr inbounds %struct.scsi_cmnd, ptr %37, i32 0, i32 14
  %38 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %cmd_len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %cmp90174.not = icmp eq i16 %39, 0
  br i1 %cmp90174.not, label %if.then.do.end106_crit_edge, label %do.end95.lr.ph

if.then.do.end106_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end106

do.end95.lr.ph:                                   ; preds = %if.then
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %37, i32 0, i32 16
  br label %do.end95

do.end95:                                         ; preds = %do.end95.do.end95_crit_edge, %do.end95.lr.ph
  %k.0175 = phi i8 [ 0, %do.end95.lr.ph ], [ %inc102, %do.end95.do.end95_crit_edge ]
  %conv88 = zext i8 %k.0175 to i32
  %40 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cmnd, align 4
  %arrayidx98 = getelementptr i8, ptr %41, i32 %conv88
  %42 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx98, align 1
  %conv99 = zext i8 %43 to i32
  %call100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %conv99) #12
  %inc102 = add i8 %k.0175, 1
  %44 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %cmd_len, align 4
  %46 = zext i8 %inc102 to i16
  %cmp90 = icmp ugt i16 %45, %46
  br i1 %cmp90, label %do.end95.do.end95_crit_edge, label %do.end95.do.end106_crit_edge

do.end95.do.end106_crit_edge:                     ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end106

do.end95.do.end95_crit_edge:                      ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end95

do.end106:                                        ; preds = %do.end95.do.end106_crit_edge, %if.then.do.end106_crit_edge
  %last_len = getelementptr [2 x [16 x %struct.atp_id]], ptr %id, i32 0, i32 %conv3, i32 %indvars.iv177, i32 4
  %47 = ptrtoint ptr %last_len to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %last_len, align 4
  %call113 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, i32 noundef %48) #12
  br label %for.inc114

for.inc114:                                       ; preds = %do.end106, %for.body69.for.inc114_crit_edge
  %indvars.iv.next178 = add nuw nsw i32 %indvars.iv177, 1
  %exitcond179.not = icmp eq i32 %indvars.iv.next178, 16
  br i1 %exitcond179.not, label %for.end116, label %for.inc114.for.body69_crit_edge

for.inc114.for.body69_crit_edge:                  ; preds = %for.inc114
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body69

for.end116:                                       ; preds = %for.inc114
  call void @__sanitizer_cov_trace_pc() #11
  ret i32 8194
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @atp870u_biosparam(ptr nocapture noundef readnone %disk, ptr nocapture noundef readnone %dev, i64 noundef %capacity, ptr nocapture noundef writeonly %ip) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %capacity to i32
  %div15 = lshr i32 %conv, 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2099199, i32 %conv)
  %cmp = icmp ugt i32 %conv, 2099199
  %div4 = udiv i32 %conv, 16065
  %heads.0 = select i1 %cmp, i32 255, i32 64
  %sectors.0 = select i1 %cmp, i32 63, i32 32
  %cylinders.0 = select i1 %cmp, i32 %div4, i32 %div15
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %heads.0, ptr %ip, align 4
  %arrayidx5 = getelementptr i32, ptr %ip, i32 1
  %1 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %sectors.0, ptr %arrayidx5, align 4
  %arrayidx6 = getelementptr i32, ptr %ip, i32 2
  %2 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %cylinders.0, ptr %arrayidx6, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atp870u_show_info(ptr noundef %m, ptr nocapture noundef readonly %HBAptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.48) #9
  %io_port = getelementptr inbounds %struct.Scsi_Host, ptr %HBAptr, i32 0, i32 44
  %0 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %io_port, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.49, i32 noundef %1) #9
  %irq = getelementptr inbounds %struct.Scsi_Host, ptr %HBAptr, i32 0, i32 47
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.50, i32 noundef %3) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @send_s870(ptr noundef %dev, i8 noundef zeroext %c) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %c to i32
  %arrayidx = getelementptr %struct.atp_unit, ptr %dev, i32 0, i32 4, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.not = icmp eq i8 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %arrayidx, align 1
  %arrayidx6 = getelementptr %struct.atp_unit, ptr %dev, i32 0, i32 3, i32 %idxprom
  %3 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %4)
  %cmp8.not = icmp eq i8 %4, -1
  %5 = and i8 %4, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp14.not = icmp eq i8 %5, 0
  %or.cond = or i1 %cmp8.not, %cmp14.not
  br i1 %or.cond, label %if.end.if.then50_crit_edge, label %if.then16

if.end.if.then50_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then50

if.then16:                                        ; preds = %if.end
  %and21 = and i8 %4, 15
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %and21, ptr %arrayidx6, align 1
  %idxprom28 = zext i8 %and21 to i32
  %curr_req = getelementptr %struct.atp_unit, ptr %dev, i32 0, i32 18, i32 %idxprom, i32 %idxprom28, i32 9
  %7 = ptrtoint ptr %curr_req to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %curr_req, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.then30, label %if.then16.if.end126_crit_edge

if.then16.if.end126_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end126

if.then30:                                        ; preds = %if.then16
  %9 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %arrayidx6, align 1
  %arrayidx35 = getelementptr %struct.atp_unit, ptr %dev, i32 0, i32 6, i32 %idxprom
  %10 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx35, align 1
  %arrayidx38 = getelementptr %struct.atp_unit, ptr %dev, i32 0, i32 7, i32 %idxprom
  %12 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx38, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %13)
  %cmp40 = icmp eq i8 %11, %13
  br i1 %cmp40, label %if.then30.cleanup.sink.split_crit_edge, label %if.then50thread-pre-split

if.then30.cleanup.sink.split_crit_edge:           ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.then50thread-pre-split:                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %14)
  %.pr = load i8, ptr %arrayidx6, align 1
  br label %if.then50

if.then50:                                        ; preds = %if.then50thread-pre-split, %if.end.if.then50_crit_edge
  %15 = phi i8 [ %.pr, %if.then50thread-pre-split ], [ %4, %if.end.if.then50_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %15)
  %cmp55.not = icmp eq i8 %15, -1
  br i1 %cmp55.not, label %if.then50.if.end66_crit_edge, label %land.lhs.true57

if.then50.if.end66_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

land.lhs.true57:                                  ; preds = %if.then50
  %arrayidx59 = getelementptr %struct.atp_unit, ptr %dev, i32 0, i32 10, i32 %idxprom
  %16 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp60.not = icmp eq i32 %17, 0
  br i1 %cmp60.not, label %land.lhs.true57.if.end66_crit_edge, label %land.lhs.true57.cleanup.sink.split_crit_edge

land.lhs.true57.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

land.lhs.true57.if.end66_crit_edge:               ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.end66:                                         ; preds = %land.lhs.true57.if.end66_crit_edge, %if.then50.if.end66_crit_edge
  %arrayidx69 = getelementptr %struct.atp_unit, ptr %dev, i32 0, i32 10, i32 %idxprom
  %18 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx69, align 4
  %inc = add i32 %19, 1
  store i32 %inc, ptr %arrayidx69, align 4
  %arrayidx72 = getelementptr %struct.atp_unit, ptr %dev, i32 0, i32 6, i32 %idxprom
  %20 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx72, align 1
  %inc76 = add i8 %21, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %inc76)
  %cmp81 = icmp ugt i8 %inc76, 31
  %spec.select = select i1 %cmp81, i8 0, i8 %inc76
  %22 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %spec.select, ptr %arrayidx72, align 1
  %idxprom93 = zext i8 %spec.select to i32
  %arrayidx94 = getelementptr %struct.atp_unit, ptr %dev, i32 0, i32 17, i32 %idxprom, i32 %idxprom93
  %23 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx94, align 4
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device, align 4
  %id.i = getelementptr inbounds %struct.scsi_device, ptr %26, i32 0, i32 16
  %27 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %id.i, align 8
  %curr_req99 = getelementptr %struct.atp_unit, ptr %dev, i32 0, i32 18, i32 %idxprom, i32 %28, i32 9
  %29 = ptrtoint ptr %curr_req99 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %curr_req99, align 4
  %cmp100.not = icmp eq ptr %30, null
  br i1 %cmp100.not, label %if.end112, label %if.then102

if.then102:                                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %21, ptr %arrayidx72, align 1
  %32 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %19, ptr %arrayidx69, align 4
  br label %cleanup.sink.split

if.end112:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %curr_req99 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %24, ptr %curr_req99, align 4
  %34 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %device, align 4
  %id.i896 = getelementptr inbounds %struct.scsi_device, ptr %35, i32 0, i32 16
  %36 = ptrtoint ptr %id.i896 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %id.i896, align 8
  %conv122 = trunc i32 %37 to i8
  %38 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv122, ptr %arrayidx6, align 1
  br label %if.end126

if.end126:                                        ; preds = %if.end112, %if.then16.if.end126_crit_edge
  %workreq.1 = phi ptr [ %24, %if.end112 ], [ %8, %if.then16.if.end126_crit_edge ]
  %arrayidx.i = getelementptr %struct.atp_unit, ptr %dev, i32 0, i32 1, i32 %idxprom
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %40, 31
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %41 = inttoptr i32 %add1.i to ptr
  %42 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %41) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %43 = and i8 %42, -80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %cmp130.not = icmp eq i8 %43, 0
  br i1 %cmp130.not, label %lor.lhs.false, label %if.end126.if.then136_crit_edge

if.end126.if.then136_crit_edge:                   ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then136

lor.lhs.false:                                    ; preds = %if.end126
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.i, align 4
  %add.i899 = add i32 %45, 28
  %and.i900 = and i32 %add.i899, 1048575
  %add1.i901 = or i32 %and.i900, -18874368
  %46 = inttoptr i32 %add1.i901 to ptr
  %47 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %46) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %cmp134.not = icmp eq i8 %47, 0
  br i1 %cmp134.not, label %if.end145, label %lor.lhs.false.if.then136_crit_edge

lor.lhs.false.if.then136_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then136

if.then136:                                       ; preds = %lor.lhs.false.if.then136_crit_edge, %if.end126.if.then136_crit_edge
  %48 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx6, align 1
  %50 = or i8 %49, 64
  store i8 %50, ptr %arrayidx6, align 1
  br label %cleanup.sink.split

if.end145:                                        ; preds = %lor.lhs.false
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %workreq.1, i32 0, i32 17, i32 1
  %51 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %length.i, align 4
  %l.sroa.0.0.extract.shift = lshr i32 %52, 24
  %l.sroa.0.0.extract.trunc = trunc i32 %l.sroa.0.0.extract.shift to i8
  %l.sroa.16.0.extract.shift = lshr i32 %52, 16
  %l.sroa.16.0.extract.trunc = trunc i32 %l.sroa.16.0.extract.shift to i8
  %l.sroa.17.0.extract.shift = lshr i32 %52, 8
  %l.sroa.17.0.extract.trunc = trunc i32 %l.sroa.17.0.extract.shift to i8
  %pdev.i = getelementptr inbounds %struct.atp_unit, ptr %dev, i32 0, i32 20
  %53 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pdev.i, align 4
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %54, i32 0, i32 8
  %55 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32630, i16 %56)
  %cmp.i = icmp eq i16 %56, -32630
  br i1 %cmp.i, label %if.then148, label %if.end145.if.end158_crit_edge

if.end145.if.end158_crit_edge:                    ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end158

if.then148:                                       ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %dev, align 4
  %add.i902 = add i32 %58, 41
  %and.i903 = and i32 %add.i902, 1048575
  %add1.i904 = or i32 %and.i903, -18874368
  %59 = inttoptr i32 %add1.i904 to ptr
  %60 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %59) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !159
  %61 = and i8 %60, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !164
  tail call void @arm_heavy_mb() #9
  %62 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %dev, align 4
  %add.i905 = add i32 %63, 41
  %and.i906 = and i32 %add.i905, 1048575
  %add1.i907 = or i32 %and.i906, -18874368
  %64 = inttoptr i32 %add1.i907 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %64, i8 %61) #9, !srcloc !165
  %device155 = getelementptr inbounds %struct.scsi_cmnd, ptr %workreq.1, i32 0, i32 1
  %65 = ptrtoint ptr %device155 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %device155, align 4
  %id.i908 = getelementptr inbounds %struct.scsi_device, ptr %66, i32 0, i32 16
  %67 = ptrtoint ptr %id.i908 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %id.i908, align 8
  %arrayidx157 = getelementptr %struct.atp_unit, ptr %dev, i32 0, i32 16, i32 %idxprom, i32 %68
  %69 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %arrayidx157, align 1
  br label %if.end158

if.end158:                                        ; preds = %if.then148, %if.end145.if.end158_crit_edge
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %workreq.1, i32 0, i32 16
  %70 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %cmnd, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %71, align 1
  %74 = zext i8 %73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.80)
  switch i8 %73, label %if.end158.if.end175_crit_edge [
    i8 37, label %if.end168.thread
    i8 0, label %if.then174
  ]

if.end158.if.end175_crit_edge:                    ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end175

if.end168.thread:                                 ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #11
  %75 = tail call i32 @llvm.umin.i32(i32 %52, i32 8)
  br label %if.end175

if.then174:                                       ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end175

if.end175:                                        ; preds = %if.then174, %if.end168.thread, %if.end158.if.end175_crit_edge
  %l.sroa.18.sroa.0.1 = phi i32 [ 0, %if.then174 ], [ %75, %if.end168.thread ], [ %52, %if.end158.if.end175_crit_edge ]
  %l.sroa.17.1 = phi i8 [ 0, %if.then174 ], [ 0, %if.end168.thread ], [ %l.sroa.17.0.extract.trunc, %if.end158.if.end175_crit_edge ]
  %l.sroa.16.1 = phi i8 [ 0, %if.then174 ], [ 0, %if.end168.thread ], [ %l.sroa.16.0.extract.trunc, %if.end158.if.end175_crit_edge ]
  %l.sroa.0.1 = phi i8 [ 0, %if.then174 ], [ 0, %if.end168.thread ], [ %l.sroa.0.0.extract.trunc, %if.end158.if.end175_crit_edge ]
  %device176 = getelementptr inbounds %struct.scsi_cmnd, ptr %workreq.1, i32 0, i32 1
  %76 = ptrtoint ptr %device176 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %device176, align 4
  %id.i909 = getelementptr inbounds %struct.scsi_device, ptr %77, i32 0, i32 16
  %78 = ptrtoint ptr %id.i909 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %id.i909, align 8
  %conv180 = and i32 %79, 255
  %shl = shl nuw i32 1, %conv180
  %arrayidx184 = getelementptr %struct.atp_unit, ptr %dev, i32 0, i32 11, i32 %idxprom
  %80 = ptrtoint ptr %arrayidx184 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %arrayidx184, align 2
  %conv185 = zext i16 %81 to i32
  %and186 = and i32 %shl, %conv185
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and186)
  %cmp187.not = icmp ne i32 %and186, 0
  %spec.select894 = zext i1 %cmp187.not to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %82 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx.i, align 4
  %add.i912 = add i32 %83, 27
  %and.i913 = and i32 %add.i912, 1048575
  %add1.i914 = or i32 %and.i913, -18874368
  %84 = inttoptr i32 %add1.i914 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %84, i8 %spec.select894) #9, !srcloc !165
  %85 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx.i, align 4
  %add.i9171101 = add i32 %86, 27
  %and.i9181102 = and i32 %add.i9171101, 1048575
  %add1.i9191103 = or i32 %and.i9181102, -18874368
  %87 = inttoptr i32 %add1.i9191103 to ptr
  %88 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %87) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %89 = and i8 %88, 1
  call void @__sanitizer_cov_trace_cmp1(i8 %89, i8 %spec.select894)
  %cmp198.not1104 = icmp eq i8 %89, %spec.select894
  br i1 %cmp198.not1104, label %if.end175.while.end_crit_edge, label %while.body.lr.ph

if.end175.while.end_crit_edge:                    ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end175
  %arrayidx.i921 = getelementptr %struct.atp_unit, ptr %dev, i32 0, i32 2, i32 %idxprom
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !169
  tail call void @arm_heavy_mb() #9
  %90 = ptrtoint ptr %arrayidx.i921 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx.i921, align 4
  %add.i922 = add i32 %91, 27
  %and.i923 = and i32 %add.i922, 1048575
  %add1.i924 = or i32 %and.i923, -18874368
  %92 = inttoptr i32 %add1.i924 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %92, i8 %spec.select894) #9, !srcloc !165
  %93 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx.i, align 4
  %add.i917 = add i32 %94, 27
  %and.i918 = and i32 %add.i917, 1048575
  %add1.i919 = or i32 %and.i918, -18874368
  %95 = inttoptr i32 %add1.i919 to ptr
  %96 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %95) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %97 = and i8 %96, 1
  %cmp198.not = icmp eq i8 %97, %spec.select894
  br i1 %cmp198.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end175.while.end_crit_edge
  %cmd_len = getelementptr inbounds %struct.scsi_cmnd, ptr %workreq.1, i32 0, i32 14
  %98 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %cmd_len, align 4
  %conv200 = trunc i16 %99 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %100 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx.i, align 4
  %and.i927 = and i32 %101, 1048575
  %add1.i928 = or i32 %and.i927, -18874368
  %102 = inttoptr i32 %add1.i928 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %102, i8 %conv200) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %103 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx.i, align 4
  %add.i931 = add i32 %104, 1
  %and.i932 = and i32 %add.i931, 1048575
  %add1.i933 = or i32 %and.i932, -18874368
  %105 = inttoptr i32 %add1.i933 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %105, i8 44) #9, !srcloc !165
  %106 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %pdev.i, align 4
  %device.i935 = getelementptr inbounds %struct.pci_dev, ptr %107, i32 0, i32 8
  %108 = ptrtoint ptr %device.i935 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %device.i935, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32630, i16 %109)
  %cmp.i936 = icmp eq i16 %109, -32630
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  %110 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx.i, align 4
  %add.i939 = add i32 %111, 2
  %and.i940 = and i32 %add.i939, 1048575
  %add1.i941 = or i32 %and.i940, -18874368
  %112 = inttoptr i32 %add1.i941 to ptr
  br i1 %cmp.i936, label %if.then202, label %if.else

if.then202:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %112, i8 127) #9, !srcloc !165
  br label %if.end203

if.else:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %112, i8 -49) #9, !srcloc !165
  br label %if.end203

if.end203:                                        ; preds = %if.else, %if.then202
  %113 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %cmd_len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %114)
  %cmp2061106.not = icmp eq i16 %114, 0
  br i1 %cmp2061106.not, label %if.end203.for.end_crit_edge, label %if.end203.for.body_crit_edge

if.end203.for.body_crit_edge:                     ; preds = %if.end203
  br label %for.body

if.end203.for.end_crit_edge:                      ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end203.for.body_crit_edge
  %i.01107 = phi i32 [ %inc211, %for.body.for.body_crit_edge ], [ 0, %if.end203.for.body_crit_edge ]
  %conv208 = add nuw nsw i32 %i.01107, 3
  %115 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %cmnd, align 4
  %arrayidx210 = getelementptr i8, ptr %116, i32 %i.01107
  %117 = ptrtoint ptr %arrayidx210 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx210, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %119 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %arrayidx.i, align 4
  %conv.i = and i32 %conv208, 255
  %add.i949 = add i32 %120, %conv.i
  %and.i950 = and i32 %add.i949, 1048575
  %add1.i951 = or i32 %and.i950, -18874368
  %121 = inttoptr i32 %add1.i951 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %121, i8 %118) #9, !srcloc !165
  %inc211 = add nuw nsw i32 %i.01107, 1
  %122 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %cmd_len, align 4
  %conv205 = zext i16 %123 to i32
  %cmp206 = icmp ult i32 %inc211, %conv205
  br i1 %cmp206, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end203.for.end_crit_edge
  %124 = ptrtoint ptr %device176 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %device176, align 4
  %lun = getelementptr inbounds %struct.scsi_device, ptr %125, i32 0, i32 18
  %126 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %lun, align 8
  %conv213 = trunc i64 %127 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %128 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx.i, align 4
  %add.i954 = add i32 %129, 15
  %and.i955 = and i32 %add.i954, 1048575
  %add1.i956 = or i32 %and.i955, -18874368
  %130 = inttoptr i32 %add1.i956 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %130, i8 %conv213) #9, !srcloc !165
  %arrayidx218 = getelementptr %struct.atp_unit, ptr %dev, i32 0, i32 18, i32 %idxprom, i32 %conv180
  %devsp = getelementptr %struct.atp_unit, ptr %dev, i32 0, i32 18, i32 %idxprom, i32 %conv180, i32 1
  %131 = ptrtoint ptr %devsp to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %devsp, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %133 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %arrayidx.i, align 4
  %add.i959 = add i32 %134, 17
  %and.i960 = and i32 %add.i959, 1048575
  %add1.i961 = or i32 %and.i960, -18874368
  %135 = inttoptr i32 %add1.i961 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %135, i8 %132) #9, !srcloc !165
  %call219 = tail call i32 @scsi_dma_map(ptr noundef %workreq.1) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %136 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %arrayidx.i, align 4
  %add.i964 = add i32 %137, 18
  %and.i965 = and i32 %add.i964, 1048575
  %add1.i966 = or i32 %and.i965, -18874368
  %138 = inttoptr i32 %add1.i966 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %138, i8 %l.sroa.17.1) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %139 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %arrayidx.i, align 4
  %add.i969 = add i32 %140, 19
  %and.i970 = and i32 %add.i969, 1048575
  %add1.i971 = or i32 %and.i970, -18874368
  %141 = inttoptr i32 %add1.i971 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %141, i8 %l.sroa.16.1) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %142 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %arrayidx.i, align 4
  %add.i974 = add i32 %143, 20
  %and.i975 = and i32 %add.i974, 1048575
  %add1.i976 = or i32 %and.i975, -18874368
  %144 = inttoptr i32 %add1.i976 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %144, i8 %l.sroa.0.1) #9, !srcloc !165
  %l.sroa.18.0.insert.ext617 = and i32 %l.sroa.18.sroa.0.1, 255
  %l.sroa.17.0.insert.ext582 = zext i8 %l.sroa.17.1 to i32
  %l.sroa.17.0.insert.shift583 = shl nuw nsw i32 %l.sroa.17.0.insert.ext582, 8
  %l.sroa.17.0.insert.insert585 = or i32 %l.sroa.17.0.insert.shift583, %l.sroa.18.0.insert.ext617
  %l.sroa.16.0.insert.ext546 = zext i8 %l.sroa.16.1 to i32
  %l.sroa.16.0.insert.shift547 = shl nuw nsw i32 %l.sroa.16.0.insert.ext546, 16
  %l.sroa.16.0.insert.insert549 = or i32 %l.sroa.17.0.insert.insert585, %l.sroa.16.0.insert.shift547
  %l.sroa.0.0.insert.ext510 = zext i8 %l.sroa.0.1 to i32
  %l.sroa.0.0.insert.shift511 = shl nuw i32 %l.sroa.0.0.insert.ext510, 24
  %l.sroa.0.0.insert.insert513 = or i32 %l.sroa.16.0.insert.insert549, %l.sroa.0.0.insert.shift511
  %last_len = getelementptr %struct.atp_unit, ptr %dev, i32 0, i32 18, i32 %idxprom, i32 %conv180, i32 4
  %145 = ptrtoint ptr %last_len to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %l.sroa.0.0.insert.insert513, ptr %last_len, align 4
  %tran_len = getelementptr %struct.atp_unit, ptr %dev, i32 0, i32 18, i32 %idxprom, i32 %conv180, i32 3
  %146 = ptrtoint ptr %tran_len to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 0, ptr %tran_len, align 4
  %and234 = and i32 %79, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and234)
  %cmp235.not = icmp eq i32 %and234, 0
  %and239 = and i32 %79, 7
  %or240 = or i32 %and239, 64
  %j.1.in = select i1 %cmp235.not, i32 %79, i32 %or240
  %sc_data_direction = getelementptr inbounds %struct.scsi_cmnd, ptr %workreq.1, i32 0, i32 15
  %147 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %sc_data_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %148)
  %cmp243 = icmp eq i32 %148, 1
  %149 = trunc i32 %j.1.in to i8
  br i1 %cmp243, label %if.then245, label %if.else249

if.then245:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv248 = or i8 %149, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %150 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arrayidx.i, align 4
  %add.i979 = add i32 %151, 21
  %and.i980 = and i32 %add.i979, 1048575
  %add1.i981 = or i32 %and.i980, -18874368
  %152 = inttoptr i32 %add1.i981 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %152, i8 %conv248) #9, !srcloc !165
  br label %if.end250

if.else249:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %153 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %arrayidx.i, align 4
  %add.i984 = add i32 %154, 21
  %and.i985 = and i32 %add.i984, 1048575
  %add1.i986 = or i32 %and.i985, -18874368
  %155 = inttoptr i32 %add1.i986 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %155, i8 %149) #9, !srcloc !165
  br label %if.end250

if.end250:                                        ; preds = %if.else249, %if.then245
  %156 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx.i, align 4
  %add.i989 = add i32 %157, 22
  %and.i990 = and i32 %add.i989, 1048575
  %add1.i991 = or i32 %and.i990, -18874368
  %158 = inttoptr i32 %add1.i991 to ptr
  %159 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %158) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %160 = or i8 %159, -128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %161 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %arrayidx.i, align 4
  %add.i994 = add i32 %162, 22
  %and.i995 = and i32 %add.i994, 1048575
  %add1.i996 = or i32 %and.i995, -18874368
  %163 = inttoptr i32 %add1.i996 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %163, i8 %160) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %164 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %arrayidx.i, align 4
  %add.i999 = add i32 %165, 22
  %and.i1000 = and i32 %add.i999, 1048575
  %add1.i1001 = or i32 %and.i1000, -18874368
  %166 = inttoptr i32 %add1.i1001 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %166, i8 -128) #9, !srcloc !165
  %167 = ptrtoint ptr %arrayidx218 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 0, ptr %arrayidx218, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %l.sroa.0.0.insert.insert513)
  %cmp260 = icmp eq i32 %l.sroa.0.0.insert.insert513, 0
  br i1 %cmp260, label %if.then262, label %if.end279

if.then262:                                       ; preds = %if.end250
  %168 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %arrayidx.i, align 4
  %add.i1004 = add i32 %169, 28
  %and.i1005 = and i32 %add.i1004, 1048575
  %add1.i1006 = or i32 %and.i1005, -18874368
  %170 = inttoptr i32 %add1.i1006 to ptr
  %171 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %170) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %171)
  %cmp265 = icmp eq i8 %171, 0
  br i1 %cmp265, label %if.then267, label %if.else268

if.then267:                                       ; preds = %if.then262
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %172 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %arrayidx.i, align 4
  %add.i1009 = add i32 %173, 24
  %and.i1010 = and i32 %add.i1009, 1048575
  %add1.i1011 = or i32 %and.i1010, -18874368
  %174 = inttoptr i32 %add1.i1011 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %174, i8 8) #9, !srcloc !165
  br label %cleanup.sink.split

if.else268:                                       ; preds = %if.then262
  call void @__sanitizer_cov_trace_pc() #11
  %175 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %arrayidx6, align 1
  %177 = or i8 %176, 64
  store i8 %177, ptr %arrayidx6, align 1
  br label %cleanup.sink.split

if.end279:                                        ; preds = %if.end250
  %prd_table = getelementptr %struct.atp_unit, ptr %dev, i32 0, i32 18, i32 %idxprom, i32 %conv180, i32 6
  %178 = ptrtoint ptr %prd_table to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %prd_table, align 4
  %prd_pos = getelementptr %struct.atp_unit, ptr %dev, i32 0, i32 18, i32 %idxprom, i32 %conv180, i32 5
  %180 = ptrtoint ptr %prd_pos to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr %179, ptr %prd_pos, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call219)
  %cmp2951114.not = icmp eq i32 %call219, 0
  br i1 %cmp2951114.not, label %if.end279.for.end321_crit_edge, label %for.body297.preheader

if.end279.for.end321_crit_edge:                   ; preds = %if.end279
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end321

for.body297.preheader:                            ; preds = %if.end279
  %sdb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %workreq.1, i32 0, i32 17
  %181 = ptrtoint ptr %sdb.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %sdb.i, align 4
  br label %for.body297

for.body297:                                      ; preds = %while.end309.for.body297_crit_edge, %for.body297.preheader
  %sgpnt.01117 = phi ptr [ %call320, %while.end309.for.body297_crit_edge ], [ %182, %for.body297.preheader ]
  %j.21116 = phi i8 [ %inc319, %while.end309.for.body297_crit_edge ], [ 0, %for.body297.preheader ]
  %i.11115 = phi i32 [ %add317, %while.end309.for.body297_crit_edge ], [ 0, %for.body297.preheader ]
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sgpnt.01117, i32 0, i32 3
  %183 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %dma_address, align 4
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sgpnt.01117, i32 0, i32 4
  %185 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %dma_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %186)
  %cmp2991108 = icmp ugt i32 %186, 65536
  br i1 %cmp2991108, label %for.body297.while.body301_crit_edge, label %for.body297.while.end309_crit_edge

for.body297.while.end309_crit_edge:               ; preds = %for.body297
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end309

for.body297.while.body301_crit_edge:              ; preds = %for.body297
  br label %while.body301

while.body301:                                    ; preds = %while.body301.while.body301_crit_edge, %for.body297.while.body301_crit_edge
  %bttl.01111 = phi i32 [ %add307, %while.body301.while.body301_crit_edge ], [ %184, %for.body297.while.body301_crit_edge ]
  %l.sroa.18.sroa.0.2.in1110 = phi i32 [ %sub, %while.body301.while.body301_crit_edge ], [ %186, %for.body297.while.body301_crit_edge ]
  %i.21109 = phi i32 [ %add308, %while.body301.while.body301_crit_edge ], [ %i.11115, %for.body297.while.body301_crit_edge ]
  %add302 = add i32 %i.21109, 3
  %arrayidx303 = getelementptr i16, ptr %179, i32 %add302
  %187 = ptrtoint ptr %arrayidx303 to i32
  call void @__asan_store2_noabort(i32 %187)
  store i16 0, ptr %arrayidx303, align 2
  %add304 = add i32 %i.21109, 2
  %arrayidx305 = getelementptr i16, ptr %179, i32 %add304
  %188 = ptrtoint ptr %arrayidx305 to i32
  call void @__asan_store2_noabort(i32 %188)
  store i16 0, ptr %arrayidx305, align 2
  %189 = tail call i32 @llvm.bswap.i32(i32 %bttl.01111)
  %shr = lshr i32 %i.21109, 1
  %arrayidx306 = getelementptr i32, ptr %179, i32 %shr
  %190 = ptrtoint ptr %arrayidx306 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %189, ptr %arrayidx306, align 4
  %sub = add i32 %l.sroa.18.sroa.0.2.in1110, -65536
  %add307 = add i32 %bttl.01111, 65536
  %add308 = add i32 %i.21109, 4
  %cmp299 = icmp ugt i32 %sub, 65536
  br i1 %cmp299, label %while.body301.while.body301_crit_edge, label %while.body301.while.end309_crit_edge

while.body301.while.end309_crit_edge:             ; preds = %while.body301
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end309

while.body301.while.body301_crit_edge:            ; preds = %while.body301
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body301

while.end309:                                     ; preds = %while.body301.while.end309_crit_edge, %for.body297.while.end309_crit_edge
  %i.2.lcssa = phi i32 [ %i.11115, %for.body297.while.end309_crit_edge ], [ %add308, %while.body301.while.end309_crit_edge ]
  %l.sroa.18.sroa.0.2.in.lcssa = phi i32 [ %186, %for.body297.while.end309_crit_edge ], [ %sub, %while.body301.while.end309_crit_edge ]
  %bttl.0.lcssa = phi i32 [ %184, %for.body297.while.end309_crit_edge ], [ %add307, %while.body301.while.end309_crit_edge ]
  %191 = tail call i32 @llvm.bswap.i32(i32 %bttl.0.lcssa)
  %shr310 = lshr i32 %i.2.lcssa, 1
  %arrayidx311 = getelementptr i32, ptr %179, i32 %shr310
  %192 = ptrtoint ptr %arrayidx311 to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %191, ptr %arrayidx311, align 4
  %conv312 = trunc i32 %l.sroa.18.sroa.0.2.in.lcssa to i16
  %193 = tail call i16 @llvm.bswap.i16(i16 %conv312)
  %add313 = add i32 %i.2.lcssa, 2
  %arrayidx314 = getelementptr i16, ptr %179, i32 %add313
  %194 = ptrtoint ptr %arrayidx314 to i32
  call void @__asan_store2_noabort(i32 %194)
  store i16 %193, ptr %arrayidx314, align 2
  %add315 = add i32 %i.2.lcssa, 3
  %arrayidx316 = getelementptr i16, ptr %179, i32 %add315
  %195 = ptrtoint ptr %arrayidx316 to i32
  call void @__asan_store2_noabort(i32 %195)
  store i16 0, ptr %arrayidx316, align 2
  %add317 = add i32 %i.2.lcssa, 4
  %inc319 = add i8 %j.21116, 1
  %call320 = tail call ptr @sg_next(ptr noundef %sgpnt.01117) #9
  %conv294 = zext i8 %inc319 to i32
  %cmp295 = icmp ugt i32 %call219, %conv294
  br i1 %cmp295, label %while.end309.for.body297_crit_edge, label %for.end321.loopexit

while.end309.for.body297_crit_edge:               ; preds = %while.end309
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body297

for.end321.loopexit:                              ; preds = %while.end309
  call void @__sanitizer_cov_trace_pc() #11
  %phi.bo = add i32 %i.2.lcssa, 3
  br label %for.end321

for.end321:                                       ; preds = %for.end321.loopexit, %if.end279.for.end321_crit_edge
  %i.1.lcssa = phi i32 [ -1, %if.end279.for.end321_crit_edge ], [ %phi.bo, %for.end321.loopexit ]
  %arrayidx323 = getelementptr i16, ptr %179, i32 %i.1.lcssa
  %196 = ptrtoint ptr %arrayidx323 to i32
  call void @__asan_store2_noabort(i32 %196)
  store i16 128, ptr %arrayidx323, align 2
  %prd_bus = getelementptr %struct.atp_unit, ptr %dev, i32 0, i32 18, i32 %idxprom, i32 %conv180, i32 7
  %197 = ptrtoint ptr %prd_bus to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %prd_bus, align 4
  %prdaddr = getelementptr %struct.atp_unit, ptr %dev, i32 0, i32 18, i32 %idxprom, i32 %conv180, i32 8
  %199 = ptrtoint ptr %prdaddr to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %198, ptr %prdaddr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !173
  tail call void @arm_heavy_mb() #9
  %200 = tail call i32 @llvm.bswap.i32(i32 %198) #9
  %arrayidx.i1013 = getelementptr %struct.atp_unit, ptr %dev, i32 0, i32 2, i32 %idxprom
  %201 = ptrtoint ptr %arrayidx.i1013 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %arrayidx.i1013, align 4
  %add.i1014 = add i32 %202, 4
  %and.i1015 = and i32 %add.i1014, 1048575
  %add1.i1016 = or i32 %and.i1015, -18874368
  %203 = inttoptr i32 %add1.i1016 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %203, i32 %200) #9, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !169
  tail call void @arm_heavy_mb() #9
  %204 = ptrtoint ptr %arrayidx.i1013 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %arrayidx.i1013, align 4
  %add.i1019 = add i32 %205, 2
  %and.i1020 = and i32 %add.i1019, 1048575
  %add1.i1021 = or i32 %and.i1020, -18874368
  %206 = inttoptr i32 %add1.i1021 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %206, i8 6) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !169
  tail call void @arm_heavy_mb() #9
  %207 = ptrtoint ptr %arrayidx.i1013 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %arrayidx.i1013, align 4
  %add.i1024 = add i32 %208, 2
  %and.i1025 = and i32 %add.i1024, 1048575
  %add1.i1026 = or i32 %and.i1025, -18874368
  %209 = inttoptr i32 %add1.i1026 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %209, i8 0) #9, !srcloc !165
  %210 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %pdev.i, align 4
  %device.i1028 = getelementptr inbounds %struct.pci_dev, ptr %211, i32 0, i32 8
  %212 = ptrtoint ptr %device.i1028 to i32
  call void @__asan_load2_noabort(i32 %212)
  %213 = load i16, ptr %device.i1028, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32630, i16 %213)
  %cmp.i1029 = icmp eq i16 %213, -32630
  br i1 %cmp.i1029, label %if.then342, label %if.else375

if.then342:                                       ; preds = %for.end321
  %214 = ptrtoint ptr %arrayidx.i1013 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %arrayidx.i1013, align 4
  %add.i1032 = add i32 %215, 1
  %and.i1033 = and i32 %add.i1032, 1048575
  %add1.i1034 = or i32 %and.i1033, -18874368
  %216 = inttoptr i32 %add1.i1034 to ptr
  %217 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %216) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %218 = and i8 %217, -13
  %219 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %cmnd, align 4
  %221 = ptrtoint ptr %220 to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %220, align 1
  %223 = zext i8 %222 to i64
  call void @__sanitizer_cov_trace_switch(i64 %223, ptr @__sancov_gen_cov_switch_values.81)
  switch i8 %222, label %if.then342.if.end374_crit_edge [
    i8 8, label %if.then342.if.then370_crit_edge
    i8 40, label %if.then342.if.then370_crit_edge1119
    i8 10, label %if.then342.if.then370_crit_edge1120
    i8 42, label %if.then342.if.then370_crit_edge1121
  ]

if.then342.if.then370_crit_edge1121:              ; preds = %if.then342
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then370

if.then342.if.then370_crit_edge1120:              ; preds = %if.then342
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then370

if.then342.if.then370_crit_edge1119:              ; preds = %if.then342
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then370

if.then342.if.then370_crit_edge:                  ; preds = %if.then342
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then370

if.then342.if.end374_crit_edge:                   ; preds = %if.then342
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end374

if.then370:                                       ; preds = %if.then342.if.then370_crit_edge, %if.then342.if.then370_crit_edge1119, %if.then342.if.then370_crit_edge1120, %if.then342.if.then370_crit_edge1121
  %224 = or i8 %217, 12
  br label %if.end374

if.end374:                                        ; preds = %if.then370, %if.then342.if.end374_crit_edge
  %j.3 = phi i8 [ %224, %if.then370 ], [ %218, %if.then342.if.end374_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !169
  tail call void @arm_heavy_mb() #9
  %225 = ptrtoint ptr %arrayidx.i1013 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %arrayidx.i1013, align 4
  %add.i1037 = add i32 %226, 1
  %and.i1038 = and i32 %add.i1037, 1048575
  %add1.i1039 = or i32 %and.i1038, -18874368
  %227 = inttoptr i32 %add1.i1039 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %227, i8 %j.3) #9, !srcloc !165
  br label %if.end450

if.else375:                                       ; preds = %for.end321
  %228 = and i16 %213, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32640, i16 %228)
  %229 = icmp eq i16 %228, -32640
  %230 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %cmnd, align 4
  %232 = ptrtoint ptr %231 to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %231, align 1
  br i1 %229, label %if.then377, label %if.else413

if.then377:                                       ; preds = %if.else375
  %234 = zext i8 %233 to i64
  call void @__sanitizer_cov_trace_switch(i64 %234, ptr @__sancov_gen_cov_switch_values.82)
  switch i8 %233, label %if.else407 [
    i8 8, label %if.then377.if.then401_crit_edge
    i8 40, label %if.then377.if.then401_crit_edge1122
    i8 10, label %if.then377.if.then401_crit_edge1123
    i8 42, label %if.then377.if.then401_crit_edge1124
  ]

if.then377.if.then401_crit_edge1124:              ; preds = %if.then377
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then401

if.then377.if.then401_crit_edge1123:              ; preds = %if.then377
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then401

if.then377.if.then401_crit_edge1122:              ; preds = %if.then377
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then401

if.then377.if.then401_crit_edge:                  ; preds = %if.then377
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then401

if.then401:                                       ; preds = %if.then377.if.then401_crit_edge, %if.then377.if.then401_crit_edge1122, %if.then377.if.then401_crit_edge1123, %if.then377.if.then401_crit_edge1124
  %235 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %dev, align 4
  %add.i1042 = add i32 %236, 59
  %and.i1043 = and i32 %add.i1042, 1048575
  %add1.i1044 = or i32 %and.i1043, -18874368
  %237 = inttoptr i32 %add1.i1044 to ptr
  %238 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %237) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !159
  %239 = or i8 %238, -64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !164
  tail call void @arm_heavy_mb() #9
  %240 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %dev, align 4
  %add.i1045 = add i32 %241, 59
  %and.i1046 = and i32 %add.i1045, 1048575
  %add1.i1047 = or i32 %and.i1046, -18874368
  %242 = inttoptr i32 %add1.i1047 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %242, i8 %239) #9, !srcloc !165
  br label %if.end450

if.else407:                                       ; preds = %if.then377
  call void @__sanitizer_cov_trace_pc() #11
  %243 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %dev, align 4
  %add.i1048 = add i32 %244, 59
  %and.i1049 = and i32 %add.i1048, 1048575
  %add1.i1050 = or i32 %and.i1049, -18874368
  %245 = inttoptr i32 %add1.i1050 to ptr
  %246 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %245) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !159
  %247 = and i8 %246, 63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !164
  tail call void @arm_heavy_mb() #9
  %248 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %dev, align 4
  %add.i1051 = add i32 %249, 59
  %and.i1052 = and i32 %add.i1051, 1048575
  %add1.i1053 = or i32 %and.i1052, -18874368
  %250 = inttoptr i32 %add1.i1053 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %250, i8 %247) #9, !srcloc !165
  br label %if.end450

if.else413:                                       ; preds = %if.else375
  %251 = zext i8 %233 to i64
  call void @__sanitizer_cov_trace_switch(i64 %251, ptr @__sancov_gen_cov_switch_values.83)
  switch i8 %233, label %if.else443 [
    i8 8, label %if.else413.if.then437_crit_edge
    i8 40, label %if.else413.if.then437_crit_edge1125
    i8 10, label %if.else413.if.then437_crit_edge1126
    i8 42, label %if.else413.if.then437_crit_edge1127
  ]

if.else413.if.then437_crit_edge1127:              ; preds = %if.else413
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then437

if.else413.if.then437_crit_edge1126:              ; preds = %if.else413
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then437

if.else413.if.then437_crit_edge1125:              ; preds = %if.else413
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then437

if.else413.if.then437_crit_edge:                  ; preds = %if.else413
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then437

if.then437:                                       ; preds = %if.else413.if.then437_crit_edge, %if.else413.if.then437_crit_edge1125, %if.else413.if.then437_crit_edge1126, %if.else413.if.then437_crit_edge1127
  %252 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %dev, align 4
  %add.i1054 = add i32 %253, 58
  %and.i1055 = and i32 %add.i1054, 1048575
  %add1.i1056 = or i32 %and.i1055, -18874368
  %254 = inttoptr i32 %add1.i1056 to ptr
  %255 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %254) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !159
  %256 = and i8 %255, -13
  %257 = or i8 %256, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !164
  tail call void @arm_heavy_mb() #9
  %258 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %dev, align 4
  %add.i1057 = add i32 %259, 58
  %and.i1058 = and i32 %add.i1057, 1048575
  %add1.i1059 = or i32 %and.i1058, -18874368
  %260 = inttoptr i32 %add1.i1059 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %260, i8 %257) #9, !srcloc !165
  br label %if.end450

if.else443:                                       ; preds = %if.else413
  call void @__sanitizer_cov_trace_pc() #11
  %261 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %dev, align 4
  %add.i1060 = add i32 %262, 58
  %and.i1061 = and i32 %add.i1060, 1048575
  %add1.i1062 = or i32 %and.i1061, -18874368
  %263 = inttoptr i32 %add1.i1062 to ptr
  %264 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %263) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !159
  %265 = and i8 %264, -13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !164
  tail call void @arm_heavy_mb() #9
  %266 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %dev, align 4
  %add.i1063 = add i32 %267, 58
  %and.i1064 = and i32 %add.i1063, 1048575
  %add1.i1065 = or i32 %and.i1064, -18874368
  %268 = inttoptr i32 %add1.i1065 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %268, i8 %265) #9, !srcloc !165
  br label %if.end450

if.end450:                                        ; preds = %if.else443, %if.then437, %if.else407, %if.then401, %if.end374
  %269 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %sc_data_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %270)
  %cmp452 = icmp eq i32 %270, 1
  br i1 %cmp452, label %if.then454, label %if.end477

if.then454:                                       ; preds = %if.end450
  %271 = ptrtoint ptr %arrayidx218 to i32
  call void @__asan_store1_noabort(i32 %271)
  store i8 32, ptr %arrayidx218, align 4
  %272 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %arrayidx.i, align 4
  %add.i1068 = add i32 %273, 28
  %and.i1069 = and i32 %add.i1068, 1048575
  %add1.i1070 = or i32 %and.i1069, -18874368
  %274 = inttoptr i32 %add1.i1070 to ptr
  %275 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %274) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %275)
  %cmp463 = icmp eq i8 %275, 0
  br i1 %cmp463, label %if.then465, label %if.else466

if.then465:                                       ; preds = %if.then454
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %276 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %arrayidx.i, align 4
  %add.i1073 = add i32 %277, 24
  %and.i1074 = and i32 %add.i1073, 1048575
  %add1.i1075 = or i32 %and.i1074, -18874368
  %278 = inttoptr i32 %add1.i1075 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %278, i8 8) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !169
  tail call void @arm_heavy_mb() #9
  %279 = ptrtoint ptr %arrayidx.i1013 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %arrayidx.i1013, align 4
  %and.i1078 = and i32 %280, 1048575
  %add1.i1079 = or i32 %and.i1078, -18874368
  %281 = inttoptr i32 %add1.i1079 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %281, i8 1) #9, !srcloc !165
  br label %cleanup.sink.split

if.else466:                                       ; preds = %if.then454
  call void @__sanitizer_cov_trace_pc() #11
  %282 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %arrayidx6, align 1
  %284 = or i8 %283, 64
  store i8 %284, ptr %arrayidx6, align 1
  br label %cleanup.sink.split

if.end477:                                        ; preds = %if.end450
  %285 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %arrayidx.i, align 4
  %add.i1082 = add i32 %286, 28
  %and.i1083 = and i32 %add.i1082, 1048575
  %add1.i1084 = or i32 %and.i1083, -18874368
  %287 = inttoptr i32 %add1.i1084 to ptr
  %288 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %287) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %288)
  %cmp480 = icmp eq i8 %288, 0
  br i1 %cmp480, label %if.then482, label %if.else483

if.then482:                                       ; preds = %if.end477
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %289 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %arrayidx.i, align 4
  %add.i1087 = add i32 %290, 24
  %and.i1088 = and i32 %add.i1087, 1048575
  %add1.i1089 = or i32 %and.i1088, -18874368
  %291 = inttoptr i32 %add1.i1089 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %291, i8 8) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !169
  tail call void @arm_heavy_mb() #9
  %292 = ptrtoint ptr %arrayidx.i1013 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %arrayidx.i1013, align 4
  %and.i1092 = and i32 %293, 1048575
  %add1.i1093 = or i32 %and.i1092, -18874368
  %294 = inttoptr i32 %add1.i1093 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %294, i8 9) #9, !srcloc !165
  br label %cleanup.sink.split

if.else483:                                       ; preds = %if.end477
  call void @__sanitizer_cov_trace_pc() #11
  %295 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %295)
  %296 = load i8, ptr %arrayidx6, align 1
  %297 = or i8 %296, 64
  store i8 %297, ptr %arrayidx6, align 1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else483, %if.then482, %if.else466, %if.then465, %if.else268, %if.then267, %if.then136, %if.then102, %land.lhs.true57.cleanup.sink.split_crit_edge, %if.then30.cleanup.sink.split_crit_edge
  %298 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %298)
  store i8 0, ptr %arrayidx, align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_dma_map(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atp_writel_pci(ptr nocapture noundef readonly %atp, i8 noundef zeroext %channel, i32 noundef %val) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !173
  tail call void @arm_heavy_mb() #9
  %0 = tail call i32 @llvm.bswap.i32(i32 %val)
  %idxprom = zext i8 %channel to i32
  %arrayidx = getelementptr %struct.atp_unit, ptr %atp, i32 0, i32 2, i32 %idxprom
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %add = add i32 %2, 4
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %3 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %3, i32 %0) #9, !srcloc !174
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atp_set_host_id(ptr nocapture noundef readonly %atp, i8 noundef zeroext %c, i8 noundef zeroext %host_id) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = or i8 %host_id, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %idxprom.i = zext i8 %c to i32
  %arrayidx.i = getelementptr %struct.atp_unit, ptr %atp, i32 0, i32 1, i32 %idxprom.i
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %2, 1048575
  %add1.i = or i32 %and.i, -18874368
  %3 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 %0) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %5, 24
  %and.i19 = and i32 %add.i, 1048575
  %add1.i20 = or i32 %and.i19, -18874368
  %6 = inttoptr i32 %add1.i20 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 0) #9, !srcloc !165
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %add.i2346 = add i32 %8, 31
  %and.i2447 = and i32 %add.i2346, 1048575
  %add1.i2548 = or i32 %and.i2447, -18874368
  %9 = inttoptr i32 %add1.i2548 to ptr
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %9) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %10)
  %cmp49 = icmp sgt i8 %10, -1
  br i1 %cmp49, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #9
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %add.i23 = add i32 %13, 31
  %and.i24 = and i32 %add.i23, 1048575
  %add1.i25 = or i32 %and.i24, -18874368
  %14 = inttoptr i32 %add1.i25 to ptr
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %cmp = icmp sgt i8 %15, -1
  br i1 %cmp, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  %add.i28 = add i32 %17, 23
  %and.i29 = and i32 %add.i28, 1048575
  %add1.i30 = or i32 %and.i29, -18874368
  %18 = inttoptr i32 %add1.i30 to ptr
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %18) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i, align 4
  %add.i33 = add i32 %21, 1
  %and.i34 = and i32 %add.i33, 1048575
  %add1.i35 = or i32 %and.i34, -18874368
  %22 = inttoptr i32 %add1.i35 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 8) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i, align 4
  %add.i38 = add i32 %24, 2
  %and.i39 = and i32 %add.i38, 1048575
  %add1.i40 = or i32 %and.i39, -18874368
  %25 = inttoptr i32 %add1.i40 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 127) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i, align 4
  %add.i43 = add i32 %27, 17
  %and.i44 = and i32 %add.i43, 1048575
  %add1.i45 = or i32 %and.i44, -18874368
  %28 = inttoptr i32 %add1.i45 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 32) #9, !srcloc !165
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tscam(ptr noundef readonly %host, i1 noundef zeroext %wide_chip, i8 noundef zeroext %scam_on) unnamed_addr #2 align 64 {
entry:
  %val = alloca i16, align 2
  %mbuf = alloca [33 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #9
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %mbuf) #9
  %0 = call ptr @memset(ptr %mbuf, i32 255, i32 33)
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 0, i32 53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %arrayidx.i = getelementptr %struct.Scsi_Host, ptr %host, i32 1, i32 0, i32 1
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %2, 1
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %3 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 8) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %add.i452 = add i32 %5, 2
  %and.i453 = and i32 %add.i452, 1048575
  %add1.i454 = or i32 %and.i453, -18874368
  %6 = inttoptr i32 %add1.i454 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 127) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %add.i456 = add i32 %8, 17
  %and.i457 = and i32 %add.i456, 1048575
  %add1.i458 = or i32 %and.i457, -18874368
  %9 = inttoptr i32 %add1.i458 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 32) #9, !srcloc !165
  %10 = and i8 %scam_on, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp = icmp eq i8 %10, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %host_id = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 1, i32 3, i32 0, i32 0, i32 2
  %11 = ptrtoint ptr %host_id to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %host_id, align 4
  %conv2 = zext i8 %12 to i32
  %shl = shl nuw i32 1, %conv2
  %conv4 = trunc i32 %shl to i16
  %conv7 = or i16 %conv4, -256
  %j.0 = select i1 %wide_chip, i32 16, i32 8
  %m.0 = select i1 %wide_chip, i16 %conv4, i16 %conv7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %add.i460 = add i32 %14, 2
  %and.i461 = and i32 %add.i460, 1048575
  %add1.i462 = or i32 %and.i461, -18874368
  %15 = inttoptr i32 %add1.i462 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 2) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  %add.i464 = add i32 %17, 3
  %and.i465 = and i32 %add.i464, 1048575
  %add1.i466 = or i32 %and.i465, -18874368
  %18 = inttoptr i32 %add1.i466 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 0) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i, align 4
  %add.i468 = add i32 %20, 4
  %and.i469 = and i32 %add.i468, 1048575
  %add1.i470 = or i32 %and.i469, -18874368
  %21 = inttoptr i32 %add1.i470 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 0) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i, align 4
  %add.i472 = add i32 %23, 5
  %and.i473 = and i32 %add.i472, 1048575
  %add1.i474 = or i32 %and.i473, -18874368
  %24 = inttoptr i32 %add1.i474 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 0) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i, align 4
  %add.i476 = add i32 %26, 6
  %and.i477 = and i32 %add.i476, 1048575
  %add1.i478 = or i32 %and.i477, -18874368
  %27 = inttoptr i32 %add1.i478 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 0) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i, align 4
  %add.i480 = add i32 %29, 7
  %and.i481 = and i32 %add.i480, 1048575
  %add1.i482 = or i32 %and.i481, -18874368
  %30 = inttoptr i32 %add1.i482 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 0) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i, align 4
  %add.i484 = add i32 %32, 8
  %and.i485 = and i32 %add.i484, 1048575
  %add1.i486 = or i32 %and.i485, -18874368
  %33 = inttoptr i32 %add1.i486 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %33, i8 0) #9, !srcloc !165
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %indvars.iv = phi i32 [ 0, %if.end ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %assignid_map.0617 = phi i16 [ %m.0, %if.end ], [ %assignid_map.1, %for.inc.for.body_crit_edge ]
  %shl15 = shl nuw i32 1, %indvars.iv
  %conv16 = trunc i32 %shl15 to i16
  %conv18 = zext i16 %assignid_map.0617 to i32
  %and19 = and i32 %shl15, %conv18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %cmp20.not = icmp eq i32 %and19, 0
  br i1 %cmp20.not, label %if.end23, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end23:                                         ; preds = %for.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i, align 4
  %add.i488 = add i32 %35, 15
  %and.i489 = and i32 %add.i488, 1048575
  %add1.i490 = or i32 %and.i489, -18874368
  %36 = inttoptr i32 %add1.i490 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %36, i8 0) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i, align 4
  %add.i492 = add i32 %38, 18
  %and.i493 = and i32 %add.i492, 1048575
  %add1.i494 = or i32 %and.i493, -18874368
  %39 = inttoptr i32 %add1.i494 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %39, i8 0) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.i, align 4
  %add.i496 = add i32 %41, 19
  %and.i497 = and i32 %add.i496, 1048575
  %add1.i498 = or i32 %and.i497, -18874368
  %42 = inttoptr i32 %add1.i498 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 0) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i, align 4
  %add.i500 = add i32 %44, 20
  %and.i501 = and i32 %add.i500, 1048575
  %add1.i502 = or i32 %and.i501, -18874368
  %45 = inttoptr i32 %add1.i502 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %45, i8 0) #9, !srcloc !165
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %indvars.iv)
  %cmp25 = icmp ugt i32 %indvars.iv, 7
  %46 = trunc i32 %indvars.iv to i8
  %and29 = and i8 %46, 7
  %or30 = or i8 %and29, 64
  %k.0 = select i1 %cmp25, i8 %or30, i8 %46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.i, align 4
  %add.i504 = add i32 %48, 21
  %and.i505 = and i32 %add.i504, 1048575
  %add1.i506 = or i32 %and.i505, -18874368
  %49 = inttoptr i32 %add1.i506 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %49, i8 %k.0) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.i, align 4
  %add.i508 = add i32 %51, 27
  %and.i509 = and i32 %add.i508, 1048575
  %add1.i510 = or i32 %and.i509, -18874368
  %52 = inttoptr i32 %add1.i510 to ptr
  br i1 %wide_chip, label %if.then34, label %if.else35

if.then34:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %52, i8 1) #9, !srcloc !165
  br label %do.body.preheader

if.else35:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %52, i8 0) #9, !srcloc !165
  br label %do.body.preheader

do.body.preheader:                                ; preds = %if.else35, %if.then34
  br label %do.body

do.body:                                          ; preds = %if.then60, %do.body.preheader
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %53 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.i, align 4
  %add.i516 = add i32 %54, 24
  %and.i517 = and i32 %add.i516, 1048575
  %add1.i518 = or i32 %and.i517, -18874368
  %55 = inttoptr i32 %add1.i518 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %55, i8 9) #9, !srcloc !165
  %56 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.i, align 4
  %add.i520611 = add i32 %57, 31
  %and.i521612 = and i32 %add.i520611, 1048575
  %add1.i522613 = or i32 %and.i521612, -18874368
  %58 = inttoptr i32 %add1.i522613 to ptr
  %59 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %58) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %59)
  %cmp39614 = icmp sgt i8 %59, -1
  br i1 %cmp39614, label %do.body.do.end_crit_edge, label %do.body.while.end_crit_edge

do.body.while.end_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

do.body.do.end_crit_edge:                         ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %do.body.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !175
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !176
  %60 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx.i, align 4
  %add.i520 = add i32 %61, 31
  %and.i521 = and i32 %add.i520, 1048575
  %add1.i522 = or i32 %and.i521, -18874368
  %62 = inttoptr i32 %add1.i522 to ptr
  %63 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %62) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %cmp39 = icmp sgt i8 %63, -1
  br i1 %cmp39, label %do.end.do.end_crit_edge, label %do.end.while.end_crit_edge

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %do.body.while.end_crit_edge
  %64 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx.i, align 4
  %add.i524 = add i32 %65, 23
  %and.i525 = and i32 %add.i524, 1048575
  %add1.i526 = or i32 %and.i525, -18874368
  %66 = inttoptr i32 %add1.i526 to ptr
  %67 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %66) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %68 = zext i8 %67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.84)
  switch i8 %67, label %if.then60 [
    i8 -123, label %while.end.for.inc_crit_edge
    i8 66, label %while.end.for.inc_crit_edge637
    i8 22, label %if.end75
  ]

while.end.for.inc_crit_edge637:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

while.end.for.inc_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then60:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %69 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx.i, align 4
  %add.i528 = add i32 %70, 16
  %and.i529 = and i32 %add.i528, 1048575
  %add1.i530 = or i32 %and.i529, -18874368
  %71 = inttoptr i32 %add1.i530 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %71, i8 65) #9, !srcloc !165
  br label %do.body

if.end75:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv79 = or i16 %assignid_map.0617, %conv16
  br label %for.inc

for.inc:                                          ; preds = %if.end75, %while.end.for.inc_crit_edge, %while.end.for.inc_crit_edge637, %for.body.for.inc_crit_edge
  %assignid_map.1 = phi i16 [ %assignid_map.0617, %for.body.for.inc_crit_edge ], [ %conv79, %if.end75 ], [ %assignid_map.0617, %while.end.for.inc_crit_edge ], [ %assignid_map.0617, %while.end.for.inc_crit_edge637 ]
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %j.0
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  %conv16.le = trunc i32 %shl15 to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %72 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx.i, align 4
  %add.i532 = add i32 %73, 2
  %and.i533 = and i32 %add.i532, 1048575
  %add1.i534 = or i32 %and.i533, -18874368
  %74 = inttoptr i32 %add1.i534 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %74, i8 127) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %75 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx.i, align 4
  %add.i536 = add i32 %76, 27
  %and.i537 = and i32 %add.i536, 1048575
  %add1.i538 = or i32 %and.i537, -18874368
  %77 = inttoptr i32 %add1.i538 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %77, i8 2) #9, !srcloc !165
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %78 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %78(i32 noundef 429496) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !177
  tail call void @arm_heavy_mb() #9
  %79 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx.i, align 4
  %add.i539 = add i32 %80, 28
  %and.i540 = and i32 %add.i539, 1048575
  %add1.i541 = or i32 %and.i540, -18874368
  %81 = inttoptr i32 %add1.i541 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %81, i16 -32768) #9, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !177
  tail call void @arm_heavy_mb() #9
  %82 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx.i, align 4
  %add.i543 = add i32 %83, 28
  %and.i544 = and i32 %add.i543, 1048575
  %add1.i545 = or i32 %and.i544, -18874368
  %84 = inttoptr i32 %add1.i545 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %84, i16 -16384) #9, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !177
  tail call void @arm_heavy_mb() #9
  %85 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx.i, align 4
  %add.i547 = add i32 %86, 28
  %and.i548 = and i32 %add.i547, 1048575
  %add1.i549 = or i32 %and.i548, -18874368
  %87 = inttoptr i32 %add1.i549 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %87, i16 -15360) #9, !srcloc !163
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %88 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %88(i32 noundef 429496) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !177
  tail call void @arm_heavy_mb() #9
  %89 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx.i, align 4
  %add.i551 = add i32 %90, 28
  %and.i552 = and i32 %add.i551, 1048575
  %add1.i553 = or i32 %and.i552, -18874368
  %91 = inttoptr i32 %add1.i553 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %91, i16 17408) #9, !srcloc !163
  tail call void @msleep(i32 noundef 128) #9
  %92 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 64, ptr %val, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !177
  tail call void @arm_heavy_mb() #9
  %93 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx.i, align 4
  %add.i555 = add i32 %94, 28
  %and.i556 = and i32 %add.i555, 1048575
  %add1.i557 = or i32 %and.i556, -18874368
  %95 = inttoptr i32 %add1.i557 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %95, i16 16384) #9, !srcloc !163
  br label %while.cond92

while.cond92:                                     ; preds = %while.cond92.while.cond92_crit_edge, %for.end
  %96 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx.i, align 4
  %add.i559 = add i32 %97, 28
  %and.i560 = and i32 %add.i559, 1048575
  %add1.i561 = or i32 %and.i560, -18874368
  %98 = inttoptr i32 %add1.i561 to ptr
  %99 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %98) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %100 = and i8 %99, 4
  %cmp96.not = icmp eq i8 %100, 0
  br i1 %cmp96.not, label %while.end99, label %while.cond92.while.cond92_crit_edge

while.cond92.while.cond92_crit_edge:              ; preds = %while.cond92
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond92

while.end99:                                      ; preds = %while.cond92
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %101 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %101(i32 noundef 429496) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %102 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %102(i32 noundef 21474800) #9
  br label %for.body103

for.cond100:                                      ; preds = %for.body103
  %inc112 = add nuw nsw i32 %n.0619, 1
  %exitcond632.not = icmp eq i32 %inc112, 196608
  br i1 %exitcond632.not, label %for.cond100.if.end137_crit_edge, label %for.cond100.for.body103_crit_edge

for.cond100.for.body103_crit_edge:                ; preds = %for.cond100
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body103

for.cond100.if.end137_crit_edge:                  ; preds = %for.cond100
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end137

for.body103:                                      ; preds = %for.cond100.for.body103_crit_edge, %while.end99
  %n.0619 = phi i32 [ 0, %while.end99 ], [ %inc112, %for.cond100.for.body103_crit_edge ]
  %103 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx.i, align 4
  %add.i563 = add i32 %104, 28
  %and.i564 = and i32 %add.i563, 1048575
  %add1.i565 = or i32 %and.i564, -18874368
  %105 = inttoptr i32 %add1.i565 to ptr
  %106 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %105) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %106)
  %cmp107.not = icmp sgt i8 %106, -1
  br i1 %cmp107.not, label %for.cond100, label %for.body103.for.body120_crit_edge

for.body103.for.body120_crit_edge:                ; preds = %for.body103
  br label %for.body120

for.cond117:                                      ; preds = %for.body120
  %inc135 = add nuw nsw i32 %n.1620, 1
  %exitcond633.not = icmp eq i32 %inc135, 196608
  br i1 %exitcond633.not, label %for.cond117.if.end137_crit_edge, label %for.cond117.for.body120_crit_edge

for.cond117.for.body120_crit_edge:                ; preds = %for.cond117
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body120

for.cond117.if.end137_crit_edge:                  ; preds = %for.cond117
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end137

for.body120:                                      ; preds = %for.cond117.for.body120_crit_edge, %for.body103.for.body120_crit_edge
  %n.1620 = phi i32 [ %inc135, %for.cond117.for.body120_crit_edge ], [ 0, %for.body103.for.body120_crit_edge ]
  %107 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx.i, align 4
  %add.i567 = add i32 %108, 28
  %and.i568 = and i32 %add.i567, 1048575
  %add1.i569 = or i32 %and.i568, -18874368
  %109 = inttoptr i32 %add1.i569 to ptr
  %110 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %109) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %111 = and i8 %110, -127
  call void @__sanitizer_cov_trace_const_cmp1(i8 -127, i8 %111)
  %cmp124 = icmp eq i8 %111, -127
  br i1 %cmp124, label %if.then126, label %for.cond117

if.then126:                                       ; preds = %for.body120
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %112 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %112(i32 noundef 429496) #9
  %113 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %val, align 2
  %115 = or i16 %114, -32765
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !177
  tail call void @arm_heavy_mb() #9
  %116 = tail call i16 @llvm.bswap.i16(i16 %115) #9
  %117 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx.i, align 4
  %add.i571 = add i32 %118, 28
  %and.i572 = and i32 %add.i571, 1048575
  %add1.i573 = or i32 %and.i572, -18874368
  %119 = inttoptr i32 %add1.i573 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %119, i16 %116) #9, !srcloc !163
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %120 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %120(i32 noundef 429496) #9
  %121 = and i16 %115, 191
  %122 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 %121, ptr %val, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !177
  tail call void @arm_heavy_mb() #9
  %123 = shl nuw i16 %121, 8
  %124 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx.i, align 4
  %add.i575 = add i32 %125, 28
  %and.i576 = and i32 %add.i575, 1048575
  %add1.i577 = or i32 %and.i576, -18874368
  %126 = inttoptr i32 %add1.i577 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %126, i16 %123) #9, !srcloc !163
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %127 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %127(i32 noundef 429496) #9
  br label %if.end137

if.end137:                                        ; preds = %if.then126, %for.cond117.if.end137_crit_edge, %for.cond100.if.end137_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %128 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %128(i32 noundef 429496000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %129 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %129(i32 noundef 10307904) #9
  %130 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %arrayidx.i, align 4
  %add.i579621 = add i32 %131, 28
  %and.i580622 = and i32 %add.i579621, 1048575
  %add1.i581623 = or i32 %and.i580622, -18874368
  %132 = inttoptr i32 %add1.i581623 to ptr
  %133 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %132) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %133)
  %cmp143624 = icmp sgt i8 %133, -1
  br i1 %cmp143624, label %if.end137.if.then145_crit_edge, label %if.end164.lr.ph

if.end137.if.then145_crit_edge:                   ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then145

if.end164.lr.ph:                                  ; preds = %if.end137
  %arrayidx240 = getelementptr inbounds [33 x i8], ptr %mbuf, i32 0, i32 1
  br label %if.end164

if.then145:                                       ; preds = %if.end290.if.then145_crit_edge, %if.end137.if.then145_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !177
  tail call void @arm_heavy_mb() #9
  %134 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx.i, align 4
  %add.i583 = add i32 %135, 28
  %and.i584 = and i32 %add.i583, 1048575
  %add1.i585 = or i32 %and.i584, -18874368
  %136 = inttoptr i32 %add1.i585 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %136, i16 0) #9, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %137 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %arrayidx.i, align 4
  %add.i587 = add i32 %138, 27
  %and.i588 = and i32 %add.i587, 1048575
  %add1.i589 = or i32 %and.i588, -18874368
  %139 = inttoptr i32 %add1.i589 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %139, i8 0) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %140 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx.i, align 4
  %add.i591 = add i32 %141, 21
  %and.i592 = and i32 %add.i591, 1048575
  %add1.i593 = or i32 %and.i592, -18874368
  %142 = inttoptr i32 %add1.i593 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %142, i8 0) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %143 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %arrayidx.i, align 4
  %add.i595 = add i32 %144, 24
  %and.i596 = and i32 %add.i595, 1048575
  %add1.i597 = or i32 %and.i596, -18874368
  %145 = inttoptr i32 %add1.i597 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %145, i8 9) #9, !srcloc !165
  %146 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx.i, align 4
  %add.i599627 = add i32 %147, 31
  %and.i600628 = and i32 %add.i599627, 1048575
  %add1.i601629 = or i32 %and.i600628, -18874368
  %148 = inttoptr i32 %add1.i601629 to ptr
  %149 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %148) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %149)
  %cmp150630 = icmp sgt i8 %149, -1
  br i1 %cmp150630, label %if.then145.do.end157_crit_edge, label %if.then145.while.end162_crit_edge

if.then145.while.end162_crit_edge:                ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end162

if.then145.do.end157_crit_edge:                   ; preds = %if.then145
  br label %do.end157

do.end157:                                        ; preds = %do.end157.do.end157_crit_edge, %if.then145.do.end157_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !178
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !179
  %150 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arrayidx.i, align 4
  %add.i599 = add i32 %151, 31
  %and.i600 = and i32 %add.i599, 1048575
  %add1.i601 = or i32 %and.i600, -18874368
  %152 = inttoptr i32 %add1.i601 to ptr
  %153 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %152) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %cmp150 = icmp sgt i8 %153, -1
  br i1 %cmp150, label %do.end157.do.end157_crit_edge, label %do.end157.while.end162_crit_edge

do.end157.while.end162_crit_edge:                 ; preds = %do.end157
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end162

do.end157.do.end157_crit_edge:                    ; preds = %do.end157
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end157

while.end162:                                     ; preds = %do.end157.while.end162_crit_edge, %if.then145.while.end162_crit_edge
  %154 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %arrayidx.i, align 4
  %add.i603 = add i32 %155, 23
  %and.i604 = and i32 %add.i603, 1048575
  %add1.i605 = or i32 %and.i604, -18874368
  %156 = inttoptr i32 %add1.i605 to ptr
  %157 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %156) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  br label %cleanup

if.end164:                                        ; preds = %if.end290.if.end164_crit_edge, %if.end164.lr.ph
  %assignid_map.2626 = phi i16 [ %assignid_map.1, %if.end164.lr.ph ], [ %or293443, %if.end290.if.end164_crit_edge ]
  %m.2625 = phi i16 [ %conv16.le, %if.end164.lr.ph ], [ %shl326, %if.end290.if.end164_crit_edge ]
  %158 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %val, align 2
  %160 = and i16 %159, 255
  %161 = or i16 %160, 16128
  store i16 %161, ptr %val, align 2
  %call171 = call fastcc zeroext i8 @fun_scam(ptr noundef %hostdata, ptr noundef nonnull %val)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %162 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %162(i32 noundef 429496) #9
  %163 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %val, align 2
  %165 = and i16 %164, 255
  %166 = or i16 %165, 8192
  store i16 %166, ptr %val, align 2
  %call178 = call fastcc zeroext i8 @fun_scam(ptr noundef %hostdata, ptr noundef nonnull %val)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %167 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %167(i32 noundef 429496) #9
  br label %while.cond179.outer

while.cond179.outer:                              ; preds = %if.end200, %if.end164
  %i.1.ph = phi i8 [ %spec.select449, %if.end200 ], [ 8, %if.end164 ]
  %j.1.ph = phi i8 [ %spec.select450, %if.end200 ], [ 0, %if.end164 ]
  br label %while.cond179

while.cond179:                                    ; preds = %while.cond179.while.cond179_crit_edge, %while.cond179.outer
  %168 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %arrayidx.i, align 4
  %add.i607 = add i32 %169, 28
  %and.i608 = and i32 %add.i607, 1048575
  %add1.i609 = or i32 %and.i608, -18874368
  %170 = inttoptr i32 %add1.i609 to ptr
  %171 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %170) #9, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !180
  %172 = and i16 %171, 32
  %cmp184 = icmp eq i16 %172, 0
  br i1 %cmp184, label %while.cond179.while.cond179_crit_edge, label %if.end187

while.cond179.while.cond179_crit_edge:            ; preds = %while.cond179
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond179

if.end187:                                        ; preds = %while.cond179
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %173 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %173(i32 noundef 429496) #9
  %174 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %val, align 2
  %176 = and i16 %175, 255
  %177 = or i16 %176, 8192
  store i16 %177, ptr %val, align 2
  %call194 = call fastcc zeroext i8 @fun_scam(ptr noundef %hostdata, ptr noundef nonnull %val)
  %178 = and i8 %call194, 3
  %cmp197 = icmp eq i8 %178, 0
  br i1 %cmp197, label %while.end227, label %if.end200

if.end200:                                        ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #11
  %idxprom = zext i8 %j.1.ph to i32
  %arrayidx201 = getelementptr [33 x i8], ptr %mbuf, i32 0, i32 %idxprom
  %179 = ptrtoint ptr %arrayidx201 to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %arrayidx201, align 1
  %shl203 = shl i8 %180, 1
  %and211 = lshr i8 %call194, 1
  %181 = and i8 %and211, 1
  %182 = or i8 %shl203, %181
  store i8 %182, ptr %arrayidx201, align 1
  %dec = add i8 %i.1.ph, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec)
  %cmp222.not = icmp eq i8 %dec, 0
  %spec.select449 = select i1 %cmp222.not, i8 8, i8 %dec
  %inc226 = zext i1 %cmp222.not to i8
  %spec.select450 = add i8 %j.1.ph, %inc226
  br label %while.cond179.outer

while.end227:                                     ; preds = %if.end187
  %183 = ptrtoint ptr %mbuf to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %mbuf, align 1
  %conv229 = zext i8 %184 to i32
  %and230 = and i32 %conv229, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and230)
  %cmp231.not = icmp eq i32 %and230, 0
  %spec.select446 = select i1 %cmp231.not, i8 15, i8 7
  %and236 = and i32 %conv229, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and236)
  %cmp237.not = icmp eq i32 %and236, 0
  br i1 %cmp237.not, label %while.end227.if.end262_crit_edge, label %if.then239

while.end227.if.end262_crit_edge:                 ; preds = %while.end227
  call void @__sanitizer_cov_trace_pc() #11
  %.pre = zext i16 %assignid_map.2626 to i32
  br label %if.end262

if.then239:                                       ; preds = %while.end227
  %185 = ptrtoint ptr %arrayidx240 to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %arrayidx240, align 1
  %conv248 = zext i16 %assignid_map.2626 to i32
  br label %while.cond241

while.cond241:                                    ; preds = %while.cond241.while.cond241_crit_edge, %if.then239
  %k.1 = phi i8 [ %186, %if.then239 ], [ %dec258, %while.cond241.while.cond241_crit_edge ]
  %conv243 = zext i8 %k.1 to i32
  %shl245 = shl nuw i32 1, %conv243
  %and249 = and i32 %shl245, %conv248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and249)
  %cmp250 = icmp eq i32 %and249, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %k.1)
  %cmp255.not = icmp eq i8 %k.1, 0
  %or.cond447 = select i1 %cmp250, i1 true, i1 %cmp255.not
  %dec258 = add i8 %k.1, -1
  br i1 %or.cond447, label %if.end262.loopexit, label %while.cond241.while.cond241_crit_edge

while.cond241.while.cond241_crit_edge:            ; preds = %while.cond241
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond241

if.end262.loopexit:                               ; preds = %while.cond241
  call void @__sanitizer_cov_trace_pc() #11
  %conv246.le = trunc i32 %shl245 to i16
  br label %if.end262

if.end262:                                        ; preds = %if.end262.loopexit, %while.end227.if.end262_crit_edge
  %conv264.pre-phi = phi i32 [ %.pre, %while.end227.if.end262_crit_edge ], [ %conv248, %if.end262.loopexit ]
  %k.2 = phi i8 [ %call194, %while.end227.if.end262_crit_edge ], [ %k.1, %if.end262.loopexit ]
  %m.3 = phi i16 [ %m.2625, %while.end227.if.end262_crit_edge ], [ %conv246.le, %if.end262.loopexit ]
  %and265442 = and i16 %m.3, %assignid_map.2626
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and265442)
  %cmp266.not = icmp eq i16 %and265442, 0
  br i1 %cmp266.not, label %if.end262.if.end290_crit_edge, label %if.end262.while.cond269_crit_edge

if.end262.while.cond269_crit_edge:                ; preds = %if.end262
  br label %while.cond269

if.end262.if.end290_crit_edge:                    ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end290

while.cond269:                                    ; preds = %while.cond269.while.cond269_crit_edge, %if.end262.while.cond269_crit_edge
  %k.3 = phi i8 [ %dec286, %while.cond269.while.cond269_crit_edge ], [ %spec.select446, %if.end262.while.cond269_crit_edge ]
  %conv271 = zext i8 %k.3 to i32
  %shl273 = shl nuw i32 1, %conv271
  %and277 = and i32 %shl273, %conv264.pre-phi
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and277)
  %cmp278 = icmp eq i32 %and277, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %k.3)
  %cmp283.not = icmp eq i8 %k.3, 0
  %or.cond448 = select i1 %cmp278, i1 true, i1 %cmp283.not
  %dec286 = add nsw i8 %k.3, -1
  br i1 %or.cond448, label %if.end290.loopexit, label %while.cond269.while.cond269_crit_edge

while.cond269.while.cond269_crit_edge:            ; preds = %while.cond269
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond269

if.end290.loopexit:                               ; preds = %while.cond269
  call void @__sanitizer_cov_trace_pc() #11
  %conv274.le = trunc i32 %shl273 to i16
  br label %if.end290

if.end290:                                        ; preds = %if.end290.loopexit, %if.end262.if.end290_crit_edge
  %k.4 = phi i8 [ %k.2, %if.end262.if.end290_crit_edge ], [ %k.3, %if.end290.loopexit ]
  %m.4 = phi i16 [ %m.3, %if.end262.if.end290_crit_edge ], [ %conv274.le, %if.end290.loopexit ]
  %or293443 = or i16 %m.4, %assignid_map.2626
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %k.4)
  %cmp296 = icmp ult i8 %k.4, 8
  %. = select i1 %cmp296, i16 14336, i16 12544
  %187 = and i8 %k.4, 7
  %idxprom306 = zext i8 %187 to i32
  %arrayidx307 = getelementptr [8 x i8], ptr @tscam.g2q_tab, i32 0, i32 %idxprom306
  %188 = ptrtoint ptr %arrayidx307 to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %arrayidx307, align 1
  %190 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %190)
  %191 = load i16, ptr %val, align 2
  %192 = and i16 %191, 255
  %or318 = or i16 %192, %.
  store i16 %or318, ptr %val, align 2
  %call320 = call fastcc zeroext i8 @fun_scam(ptr noundef %hostdata, ptr noundef nonnull %val)
  %193 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %193)
  %194 = load i16, ptr %val, align 2
  %195 = and i16 %194, 255
  %conv325 = zext i8 %189 to i16
  %shl326 = shl nuw i16 %conv325, 8
  %or330444 = or i16 %195, %shl326
  store i16 %or330444, ptr %val, align 2
  %call332 = call fastcc zeroext i8 @fun_scam(ptr noundef %hostdata, ptr noundef nonnull %val)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %196 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %196(i32 noundef 429496000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %197 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %197(i32 noundef 10307904) #9
  %198 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %arrayidx.i, align 4
  %add.i579 = add i32 %199, 28
  %and.i580 = and i32 %add.i579, 1048575
  %add1.i581 = or i32 %and.i580, -18874368
  %200 = inttoptr i32 %add1.i581 to ptr
  %201 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %200) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %cmp143 = icmp sgt i8 %201, -1
  br i1 %cmp143, label %if.end290.if.then145_crit_edge, label %if.end290.if.end164_crit_edge

if.end290.if.end164_crit_edge:                    ; preds = %if.end290
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end164

if.end290.if.then145_crit_edge:                   ; preds = %if.end290
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then145

cleanup:                                          ; preds = %while.end162, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %mbuf) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atp_is(ptr noundef %dev, i8 noundef zeroext %c, i1 noundef zeroext %wide_chip, i8 noundef zeroext %lvdmode) unnamed_addr #2 align 64 {
entry:
  %synu = alloca [6 x i8], align 1
  %synuw = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %synu) #9
  %0 = call ptr @memcpy(ptr %synu, ptr @__const.atp_is.synuw, i32 6)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %synuw) #9
  %1 = call ptr @memcpy(ptr %synuw, ptr @__const.atp_is.synuw, i32 6)
  %wide_chip.not = xor i1 %wide_chip, true
  %idxprom = zext i8 %c to i32
  %arrayidx = getelementptr %struct.atp_unit, ptr %dev, i32 0, i32 12, i32 %idxprom
  %arrayidx16 = getelementptr %struct.atp_unit, ptr %dev, i32 0, i32 9, i32 %idxprom
  %conv28 = zext i1 %wide_chip to i8
  %arrayidx.i = getelementptr %struct.atp_unit, ptr %dev, i32 0, i32 1, i32 %idxprom
  %pdev.i = getelementptr inbounds %struct.atp_unit, ptr %dev, i32 0, i32 20
  %arrayidx248 = getelementptr %struct.atp_unit, ptr %dev, i32 0, i32 8, i32 %idxprom
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %lvdmode)
  %cmp267 = icmp eq i8 %lvdmode, 0
  %arrayidx516 = getelementptr %struct.atp_unit, ptr %dev, i32 0, i32 11, i32 %idxprom
  %arrayidx818 = getelementptr %struct.atp_unit, ptr %dev, i32 0, i32 14, i32 %idxprom
  %arrayidx852 = getelementptr inbounds [6 x i8], ptr %synu, i32 0, i32 4
  %arrayidx853 = getelementptr inbounds [6 x i8], ptr %synuw, i32 0, i32 4
  %arrayidx949 = getelementptr %struct.atp_unit, ptr %dev, i32 0, i32 13, i32 %idxprom
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %indvars.iv = phi i32 [ 0, %entry ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %indvars.iv)
  %cmp3 = icmp ugt i32 %indvars.iv, 7
  %or.cond = select i1 %wide_chip.not, i1 %cmp3, i1 false
  br i1 %or.cond, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end:                                           ; preds = %for.body
  %shl = shl nuw i32 1, %indvars.iv
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  %conv9 = zext i16 %3 to i32
  %and = and i32 %shl, %conv9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp10.not = icmp eq i32 %and, 0
  br i1 %cmp10.not, label %if.end13, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end13:                                         ; preds = %if.end
  %4 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx16, align 1
  %6 = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv, i32 %6)
  %cmp18 = icmp eq i32 %indvars.iv, %6
  br i1 %cmp18, label %do.end, label %if.end25

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %indvars.iv) #12
  br label %for.inc

if.end25:                                         ; preds = %if.end13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %8, 27
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %9 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 %conv28) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %add.i1784 = add i32 %11, 1
  %and.i1785 = and i32 %add.i1784, 1048575
  %add1.i1786 = or i32 %and.i1785, -18874368
  %12 = inttoptr i32 %add1.i1786 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 8) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %add.i1789 = add i32 %14, 2
  %and.i1790 = and i32 %add.i1789, 1048575
  %add1.i1791 = or i32 %and.i1790, -18874368
  %15 = inttoptr i32 %add1.i1791 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 127) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  %add.i1794 = add i32 %17, 3
  %and.i1795 = and i32 %add.i1794, 1048575
  %add1.i1796 = or i32 %and.i1795, -18874368
  %18 = inttoptr i32 %add1.i1796 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 0) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i, align 4
  %add.i1799 = add i32 %20, 4
  %and.i1800 = and i32 %add.i1799, 1048575
  %add1.i1801 = or i32 %and.i1800, -18874368
  %21 = inttoptr i32 %add1.i1801 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 0) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i, align 4
  %add.i1804 = add i32 %23, 5
  %and.i1805 = and i32 %add.i1804, 1048575
  %add1.i1806 = or i32 %and.i1805, -18874368
  %24 = inttoptr i32 %add1.i1806 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 0) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i, align 4
  %add.i1809 = add i32 %26, 6
  %and.i1810 = and i32 %add.i1809, 1048575
  %add1.i1811 = or i32 %and.i1810, -18874368
  %27 = inttoptr i32 %add1.i1811 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 0) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i, align 4
  %add.i1814 = add i32 %29, 7
  %and.i1815 = and i32 %add.i1814, 1048575
  %add1.i1816 = or i32 %and.i1815, -18874368
  %30 = inttoptr i32 %add1.i1816 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 0) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i, align 4
  %add.i1819 = add i32 %32, 8
  %and.i1820 = and i32 %add.i1819, 1048575
  %add1.i1821 = or i32 %and.i1820, -18874368
  %33 = inttoptr i32 %add1.i1821 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %33, i8 0) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i, align 4
  %add.i1824 = add i32 %35, 15
  %and.i1825 = and i32 %add.i1824, 1048575
  %add1.i1826 = or i32 %and.i1825, -18874368
  %36 = inttoptr i32 %add1.i1826 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %36, i8 0) #9, !srcloc !165
  %devsp = getelementptr %struct.atp_unit, ptr %dev, i32 0, i32 18, i32 %idxprom, i32 %indvars.iv, i32 1
  %37 = ptrtoint ptr %devsp to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %devsp, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i, align 4
  %add.i1829 = add i32 %40, 17
  %and.i1830 = and i32 %add.i1829, 1048575
  %add1.i1831 = or i32 %and.i1830, -18874368
  %41 = inttoptr i32 %add1.i1831 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %41, i8 %38) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.i, align 4
  %add.i1834 = add i32 %43, 18
  %and.i1835 = and i32 %add.i1834, 1048575
  %add1.i1836 = or i32 %and.i1835, -18874368
  %44 = inttoptr i32 %add1.i1836 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %44, i8 0) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %45 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i, align 4
  %add.i1839 = add i32 %46, 19
  %and.i1840 = and i32 %add.i1839, 1048575
  %add1.i1841 = or i32 %and.i1840, -18874368
  %47 = inttoptr i32 %add1.i1841 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %47, i8 0) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i, align 4
  %add.i1844 = add i32 %49, 20
  %and.i1845 = and i32 %add.i1844, 1048575
  %add1.i1846 = or i32 %and.i1845, -18874368
  %50 = inttoptr i32 %add1.i1846 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %50, i8 6) #9, !srcloc !165
  %and34 = and i32 %indvars.iv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %cmp35.not = icmp eq i32 %and34, 0
  %51 = trunc i32 %indvars.iv to i8
  %and39 = and i8 %51, 7
  %or = or i8 %and39, 64
  %j.0 = select i1 %cmp35.not, i8 %51, i8 %or
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %52 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.i, align 4
  %add.i1849 = add i32 %53, 21
  %and.i1850 = and i32 %add.i1849, 1048575
  %add1.i1851 = or i32 %and.i1850, -18874368
  %54 = inttoptr i32 %add1.i1851 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %54, i8 %j.0) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %55 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx.i, align 4
  %add.i1854 = add i32 %56, 24
  %and.i1855 = and i32 %add.i1854, 1048575
  %add1.i1856 = or i32 %and.i1855, -18874368
  %57 = inttoptr i32 %add1.i1856 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %57, i8 6) #9, !srcloc !165
  %58 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx.i, align 4
  %add.i18592737 = add i32 %59, 31
  %and.i18602738 = and i32 %add.i18592737, 1048575
  %add1.i18612739 = or i32 %and.i18602738, -18874368
  %60 = inttoptr i32 %add1.i18612739 to ptr
  %61 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %60) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %61)
  %cmp452740 = icmp sgt i8 %61, -1
  br i1 %cmp452740, label %if.end25.do.end51_crit_edge, label %if.end25.while.end_crit_edge

if.end25.while.end_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end25.do.end51_crit_edge:                      ; preds = %if.end25
  br label %do.end51

do.end51:                                         ; preds = %do.end51.do.end51_crit_edge, %if.end25.do.end51_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !181
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !182
  %62 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx.i, align 4
  %add.i1859 = add i32 %63, 31
  %and.i1860 = and i32 %add.i1859, 1048575
  %add1.i1861 = or i32 %and.i1860, -18874368
  %64 = inttoptr i32 %add1.i1861 to ptr
  %65 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %64) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %cmp45 = icmp sgt i8 %65, -1
  br i1 %cmp45, label %do.end51.do.end51_crit_edge, label %do.end51.while.end_crit_edge

do.end51.while.end_crit_edge:                     ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

do.end51.do.end51_crit_edge:                      ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51

while.end:                                        ; preds = %do.end51.while.end_crit_edge, %if.end25.while.end_crit_edge
  %66 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx.i, align 4
  %add.i1864 = add i32 %67, 23
  %and.i1865 = and i32 %add.i1864, 1048575
  %add1.i1866 = or i32 %and.i1865, -18874368
  %68 = inttoptr i32 %add1.i1866 to ptr
  %69 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %68) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %69)
  %cmp58.not = icmp eq i8 %69, 17
  br i1 %cmp58.not, label %while.end.if.end66_crit_edge, label %land.lhs.true60

while.end.if.end66_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

land.lhs.true60:                                  ; preds = %while.end
  %70 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx.i, align 4
  %add.i1869 = add i32 %71, 23
  %and.i1870 = and i32 %add.i1869, 1048575
  %add1.i1871 = or i32 %and.i1870, -18874368
  %72 = inttoptr i32 %add1.i1871 to ptr
  %73 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %72) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 -114, i8 %73)
  %cmp63.not = icmp eq i8 %73, -114
  br i1 %cmp63.not, label %land.lhs.true60.if.end66_crit_edge, label %land.lhs.true60.for.inc_crit_edge

land.lhs.true60.for.inc_crit_edge:                ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true60.if.end66_crit_edge:               ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.end66:                                         ; preds = %land.lhs.true60.if.end66_crit_edge, %while.end.if.end66_crit_edge
  %74 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx.i, align 4
  %add.i18742741 = add i32 %75, 23
  %and.i18752742 = and i32 %add.i18742741, 1048575
  %add1.i18762743 = or i32 %and.i18752742, -18874368
  %76 = inttoptr i32 %add1.i18762743 to ptr
  %77 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %76) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 -114, i8 %77)
  %cmp70.not2744 = icmp eq i8 %77, -114
  br i1 %cmp70.not2744, label %if.end66.while.end82_crit_edge, label %if.end66.do.end77_crit_edge

if.end66.do.end77_crit_edge:                      ; preds = %if.end66
  br label %do.end77

if.end66.while.end82_crit_edge:                   ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end82

do.end77:                                         ; preds = %do.end77.do.end77_crit_edge, %if.end66.do.end77_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !183
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !184
  %78 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx.i, align 4
  %add.i1874 = add i32 %79, 23
  %and.i1875 = and i32 %add.i1874, 1048575
  %add1.i1876 = or i32 %and.i1875, -18874368
  %80 = inttoptr i32 %add1.i1876 to ptr
  %81 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %80) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %cmp70.not = icmp eq i8 %81, -114
  br i1 %cmp70.not, label %do.end77.while.end82_crit_edge, label %do.end77.do.end77_crit_edge

do.end77.do.end77_crit_edge:                      ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end77

do.end77.while.end82_crit_edge:                   ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end82

while.end82:                                      ; preds = %do.end77.while.end82_crit_edge, %if.end66.while.end82_crit_edge
  %82 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %arrayidx, align 2
  %84 = trunc i32 %shl to i16
  %conv89 = or i16 %83, %84
  store i16 %conv89, ptr %arrayidx, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %85 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx.i, align 4
  %add.i1879 = add i32 %86, 16
  %and.i1880 = and i32 %add.i1879, 1048575
  %add1.i1881 = or i32 %and.i1880, -18874368
  %87 = inttoptr i32 %add1.i1881 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %87, i8 48) #9, !srcloc !165
  %88 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %pdev.i, align 4
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %89, i32 0, i32 8
  %90 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %device.i, align 2
  %92 = zext i16 %91 to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.85)
  switch i16 %91, label %if.else [
    i16 -32630, label %while.end82.if.then94_crit_edge
    i16 -32639, label %while.end82.if.then94_crit_edge2905
    i16 -32640, label %while.end82.if.then94_crit_edge2906
  ]

while.end82.if.then94_crit_edge2906:              ; preds = %while.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then94

while.end82.if.then94_crit_edge2905:              ; preds = %while.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then94

while.end82.if.then94_crit_edge:                  ; preds = %while.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then94

if.then94:                                        ; preds = %while.end82.if.then94_crit_edge, %while.end82.if.then94_crit_edge2905, %while.end82.if.then94_crit_edge2906
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %93 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx.i, align 4
  %add.i1886 = add i32 %94, 20
  %and.i1887 = and i32 %add.i1886, 1048575
  %add1.i1888 = or i32 %and.i1887, -18874368
  %95 = inttoptr i32 %add1.i1888 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %95, i8 0) #9, !srcloc !165
  br label %phase_cmd.preheader

if.else:                                          ; preds = %while.end82
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %96 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx.i, align 4
  %add.i1891 = add i32 %97, 4
  %and.i1892 = and i32 %add.i1891, 1048575
  %add1.i1893 = or i32 %and.i1892, -18874368
  %98 = inttoptr i32 %add1.i1893 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %98, i8 0) #9, !srcloc !165
  br label %phase_cmd.preheader

phase_cmd.preheader:                              ; preds = %if.else, %if.then94
  br label %phase_cmd

phase_cmd:                                        ; preds = %if.then117, %phase_cmd.preheader
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %99 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx.i, align 4
  %add.i1896 = add i32 %100, 24
  %and.i1897 = and i32 %add.i1896, 1048575
  %add1.i1898 = or i32 %and.i1897, -18874368
  %101 = inttoptr i32 %add1.i1898 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %101, i8 8) #9, !srcloc !165
  %102 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx.i, align 4
  %add.i19012745 = add i32 %103, 31
  %and.i19022746 = and i32 %add.i19012745, 1048575
  %add1.i19032747 = or i32 %and.i19022746, -18874368
  %104 = inttoptr i32 %add1.i19032747 to ptr
  %105 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %104) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %105)
  %cmp1002748 = icmp sgt i8 %105, -1
  br i1 %cmp1002748, label %phase_cmd.do.end107_crit_edge, label %phase_cmd.while.end112_crit_edge

phase_cmd.while.end112_crit_edge:                 ; preds = %phase_cmd
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end112

phase_cmd.do.end107_crit_edge:                    ; preds = %phase_cmd
  br label %do.end107

do.end107:                                        ; preds = %do.end107.do.end107_crit_edge, %phase_cmd.do.end107_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !185
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !186
  %106 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx.i, align 4
  %add.i1901 = add i32 %107, 31
  %and.i1902 = and i32 %add.i1901, 1048575
  %add1.i1903 = or i32 %and.i1902, -18874368
  %108 = inttoptr i32 %add1.i1903 to ptr
  %109 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %108) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %cmp100 = icmp sgt i8 %109, -1
  br i1 %cmp100, label %do.end107.do.end107_crit_edge, label %do.end107.while.end112_crit_edge

do.end107.while.end112_crit_edge:                 ; preds = %do.end107
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end112

do.end107.do.end107_crit_edge:                    ; preds = %do.end107
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end107

while.end112:                                     ; preds = %do.end107.while.end112_crit_edge, %phase_cmd.while.end112_crit_edge
  %110 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx.i, align 4
  %add.i1906 = add i32 %111, 23
  %and.i1907 = and i32 %add.i1906, 1048575
  %add1.i1908 = or i32 %and.i1907, -18874368
  %112 = inttoptr i32 %add1.i1908 to ptr
  %113 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %112) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %cmp115.not = icmp eq i8 %113, 22
  br i1 %cmp115.not, label %while.end112.sel_ok_crit_edge, label %if.then117

while.end112.sel_ok_crit_edge:                    ; preds = %while.end112
  br label %sel_ok

if.then117:                                       ; preds = %while.end112
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %114 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx.i, align 4
  %add.i1911 = add i32 %115, 16
  %and.i1912 = and i32 %add.i1911, 1048575
  %add1.i1913 = or i32 %and.i1912, -18874368
  %116 = inttoptr i32 %add1.i1913 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %116, i8 65) #9, !srcloc !165
  br label %phase_cmd

sel_ok:                                           ; preds = %while.end210.sel_ok_crit_edge, %while.end112.sel_ok_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %117 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx.i, align 4
  %add.i1916 = add i32 %118, 3
  %and.i1917 = and i32 %add.i1916, 1048575
  %add1.i1918 = or i32 %and.i1917, -18874368
  %119 = inttoptr i32 %add1.i1918 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %119, i8 18) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %120 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx.i, align 4
  %add.i1921 = add i32 %121, 4
  %and.i1922 = and i32 %add.i1921, 1048575
  %add1.i1923 = or i32 %and.i1922, -18874368
  %122 = inttoptr i32 %add1.i1923 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %122, i8 0) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %123 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx.i, align 4
  %add.i1926 = add i32 %124, 5
  %and.i1927 = and i32 %add.i1926, 1048575
  %add1.i1928 = or i32 %and.i1927, -18874368
  %125 = inttoptr i32 %add1.i1928 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %125, i8 0) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %126 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx.i, align 4
  %add.i1931 = add i32 %127, 6
  %and.i1932 = and i32 %add.i1931, 1048575
  %add1.i1933 = or i32 %and.i1932, -18874368
  %128 = inttoptr i32 %add1.i1933 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %128, i8 0) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %129 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %arrayidx.i, align 4
  %add.i1936 = add i32 %130, 7
  %and.i1937 = and i32 %add.i1936, 1048575
  %add1.i1938 = or i32 %and.i1937, -18874368
  %131 = inttoptr i32 %add1.i1938 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %131, i8 36) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %132 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx.i, align 4
  %add.i1941 = add i32 %133, 8
  %and.i1942 = and i32 %add.i1941, 1048575
  %add1.i1943 = or i32 %and.i1942, -18874368
  %134 = inttoptr i32 %add1.i1943 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %134, i8 0) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %135 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %arrayidx.i, align 4
  %add.i1946 = add i32 %136, 15
  %and.i1947 = and i32 %add.i1946, 1048575
  %add1.i1948 = or i32 %and.i1947, -18874368
  %137 = inttoptr i32 %add1.i1948 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %137, i8 0) #9, !srcloc !165
  %138 = ptrtoint ptr %devsp to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %devsp, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %140 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx.i, align 4
  %add.i1951 = add i32 %141, 17
  %and.i1952 = and i32 %add.i1951, 1048575
  %add1.i1953 = or i32 %and.i1952, -18874368
  %142 = inttoptr i32 %add1.i1953 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %142, i8 %139) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %143 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %arrayidx.i, align 4
  %add.i1956 = add i32 %144, 18
  %and.i1957 = and i32 %add.i1956, 1048575
  %add1.i1958 = or i32 %and.i1957, -18874368
  %145 = inttoptr i32 %add1.i1958 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %145, i8 0) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %146 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx.i, align 4
  %add.i1961 = add i32 %147, 19
  %and.i1962 = and i32 %add.i1961, 1048575
  %add1.i1963 = or i32 %and.i1962, -18874368
  %148 = inttoptr i32 %add1.i1963 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %148, i8 0) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %149 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %arrayidx.i, align 4
  %add.i1966 = add i32 %150, 20
  %and.i1967 = and i32 %add.i1966, 1048575
  %add1.i1968 = or i32 %and.i1967, -18874368
  %151 = inttoptr i32 %add1.i1968 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %151, i8 36) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %152 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx.i, align 4
  %add.i1971 = add i32 %153, 24
  %and.i1972 = and i32 %add.i1971, 1048575
  %add1.i1973 = or i32 %and.i1972, -18874368
  %154 = inttoptr i32 %add1.i1973 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %154, i8 6) #9, !srcloc !165
  %155 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %arrayidx.i, align 4
  %add.i19762749 = add i32 %156, 31
  %and.i19772750 = and i32 %add.i19762749, 1048575
  %add1.i19782751 = or i32 %and.i19772750, -18874368
  %157 = inttoptr i32 %add1.i19782751 to ptr
  %158 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %157) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %158)
  %cmp1292752 = icmp sgt i8 %158, -1
  br i1 %cmp1292752, label %sel_ok.do.end136_crit_edge, label %sel_ok.while.end141_crit_edge

sel_ok.while.end141_crit_edge:                    ; preds = %sel_ok
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end141

sel_ok.do.end136_crit_edge:                       ; preds = %sel_ok
  br label %do.end136

do.end136:                                        ; preds = %do.end136.do.end136_crit_edge, %sel_ok.do.end136_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !187
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !188
  %159 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %arrayidx.i, align 4
  %add.i1976 = add i32 %160, 31
  %and.i1977 = and i32 %add.i1976, 1048575
  %add1.i1978 = or i32 %and.i1977, -18874368
  %161 = inttoptr i32 %add1.i1978 to ptr
  %162 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %161) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %cmp129 = icmp sgt i8 %162, -1
  br i1 %cmp129, label %do.end136.do.end136_crit_edge, label %do.end136.while.end141_crit_edge

do.end136.while.end141_crit_edge:                 ; preds = %do.end136
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end141

do.end136.do.end136_crit_edge:                    ; preds = %do.end136
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end136

while.end141:                                     ; preds = %do.end136.while.end141_crit_edge, %sel_ok.while.end141_crit_edge
  %163 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %arrayidx.i, align 4
  %add.i1981 = add i32 %164, 23
  %and.i1982 = and i32 %add.i1981, 1048575
  %add1.i1983 = or i32 %and.i1982, -18874368
  %165 = inttoptr i32 %add1.i1983 to ptr
  %166 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %165) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %166)
  %cmp144.not = icmp eq i8 %166, 17
  br i1 %cmp144.not, label %while.end141.if.end152_crit_edge, label %land.lhs.true146

while.end141.if.end152_crit_edge:                 ; preds = %while.end141
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end152

land.lhs.true146:                                 ; preds = %while.end141
  %167 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %arrayidx.i, align 4
  %add.i1986 = add i32 %168, 23
  %and.i1987 = and i32 %add.i1986, 1048575
  %add1.i1988 = or i32 %and.i1987, -18874368
  %169 = inttoptr i32 %add1.i1988 to ptr
  %170 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %169) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 -114, i8 %170)
  %cmp149.not = icmp eq i8 %170, -114
  br i1 %cmp149.not, label %land.lhs.true146.if.end152_crit_edge, label %land.lhs.true146.for.inc_crit_edge

land.lhs.true146.for.inc_crit_edge:               ; preds = %land.lhs.true146
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true146.if.end152_crit_edge:             ; preds = %land.lhs.true146
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end152

if.end152:                                        ; preds = %land.lhs.true146.if.end152_crit_edge, %while.end141.if.end152_crit_edge
  %171 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %arrayidx.i, align 4
  %add.i19912753 = add i32 %172, 23
  %and.i19922754 = and i32 %add.i19912753, 1048575
  %add1.i19932755 = or i32 %and.i19922754, -18874368
  %173 = inttoptr i32 %add1.i19932755 to ptr
  %174 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %173) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 -114, i8 %174)
  %cmp156.not2756 = icmp eq i8 %174, -114
  br i1 %cmp156.not2756, label %if.end152.while.end168_crit_edge, label %if.end152.do.end163_crit_edge

if.end152.do.end163_crit_edge:                    ; preds = %if.end152
  br label %do.end163

if.end152.while.end168_crit_edge:                 ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end168

do.end163:                                        ; preds = %do.end163.do.end163_crit_edge, %if.end152.do.end163_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !189
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !190
  %175 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %arrayidx.i, align 4
  %add.i1991 = add i32 %176, 23
  %and.i1992 = and i32 %add.i1991, 1048575
  %add1.i1993 = or i32 %and.i1992, -18874368
  %177 = inttoptr i32 %add1.i1993 to ptr
  %178 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %177) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %cmp156.not = icmp eq i8 %178, -114
  br i1 %cmp156.not, label %do.end163.while.end168_crit_edge, label %do.end163.do.end163_crit_edge

do.end163.do.end163_crit_edge:                    ; preds = %do.end163
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end163

do.end163.while.end168_crit_edge:                 ; preds = %do.end163
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end168

while.end168:                                     ; preds = %do.end163.while.end168_crit_edge, %if.end152.while.end168_crit_edge
  br i1 %wide_chip, label %if.then170, label %while.end168.if.end171_crit_edge

while.end168.if.end171_crit_edge:                 ; preds = %while.end168
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end171

if.then170:                                       ; preds = %while.end168
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %179 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %arrayidx.i, align 4
  %add.i1996 = add i32 %180, 27
  %and.i1997 = and i32 %add.i1996, 1048575
  %add1.i1998 = or i32 %and.i1997, -18874368
  %181 = inttoptr i32 %add1.i1998 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %181, i8 0) #9, !srcloc !165
  br label %if.end171

if.end171:                                        ; preds = %if.then170, %while.end168.if.end171_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %182 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %arrayidx.i, align 4
  %add.i2001 = add i32 %183, 24
  %and.i2002 = and i32 %add.i2001, 1048575
  %add1.i2003 = or i32 %and.i2002, -18874368
  %184 = inttoptr i32 %add1.i2003 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %184, i8 8) #9, !srcloc !165
  br label %rd_inq_data.outer

rd_inq_data.outer:                                ; preds = %if.then177, %if.end171
  %j.1.ph = phi i8 [ %inc, %if.then177 ], [ 0, %if.end171 ]
  br label %rd_inq_data

rd_inq_data:                                      ; preds = %if.end181.rd_inq_data_crit_edge, %rd_inq_data.outer
  %185 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %arrayidx.i, align 4
  %add.i2006 = add i32 %186, 31
  %and.i2007 = and i32 %add.i2006, 1048575
  %add1.i2008 = or i32 %and.i2007, -18874368
  %187 = inttoptr i32 %add1.i2008 to ptr
  %188 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %187) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %conv173 = zext i8 %188 to i32
  %and174 = and i32 %conv173, 1
  %cmp175.not = icmp eq i32 %and174, 0
  br i1 %cmp175.not, label %if.end181, label %if.then177

if.then177:                                       ; preds = %rd_inq_data
  call void @__sanitizer_cov_trace_pc() #11
  %189 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %arrayidx.i, align 4
  %add.i2011 = add i32 %190, 25
  %and.i2012 = and i32 %add.i2011, 1048575
  %add1.i2013 = or i32 %and.i2012, -18874368
  %191 = inttoptr i32 %add1.i2013 to ptr
  %192 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %191) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %inc = add i8 %j.1.ph, 1
  %idxprom179 = zext i8 %j.1.ph to i32
  %arrayidx180 = getelementptr [512 x i8], ptr @atp_is.mbuf, i32 0, i32 %idxprom179
  %193 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 %192, ptr %arrayidx180, align 1
  br label %rd_inq_data.outer

if.end181:                                        ; preds = %rd_inq_data
  %and183 = and i32 %conv173, 128
  %cmp184 = icmp eq i32 %and183, 0
  br i1 %cmp184, label %if.end181.rd_inq_data_crit_edge, label %if.end187

if.end181.rd_inq_data_crit_edge:                  ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #11
  br label %rd_inq_data

if.end187:                                        ; preds = %if.end181
  %194 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %arrayidx.i, align 4
  %add.i2016 = add i32 %195, 23
  %and.i2017 = and i32 %add.i2016, 1048575
  %add1.i2018 = or i32 %and.i2017, -18874368
  %196 = inttoptr i32 %add1.i2018 to ptr
  %197 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %196) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 22, i8 %197)
  %cmp190 = icmp eq i8 %197, 22
  br i1 %cmp190, label %if.end187.inq_ok_crit_edge, label %if.end193

if.end187.inq_ok_crit_edge:                       ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #11
  br label %inq_ok

if.end193:                                        ; preds = %if.end187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %198 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %arrayidx.i, align 4
  %add.i2021 = add i32 %199, 16
  %and.i2022 = and i32 %add.i2021, 1048575
  %add1.i2023 = or i32 %and.i2022, -18874368
  %200 = inttoptr i32 %add1.i2023 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %200, i8 70) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %201 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %arrayidx.i, align 4
  %add.i2026 = add i32 %202, 18
  %and.i2027 = and i32 %add.i2026, 1048575
  %add1.i2028 = or i32 %and.i2027, -18874368
  %203 = inttoptr i32 %add1.i2028 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %203, i8 0) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %204 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %arrayidx.i, align 4
  %add.i2031 = add i32 %205, 19
  %and.i2032 = and i32 %add.i2031, 1048575
  %add1.i2033 = or i32 %and.i2032, -18874368
  %206 = inttoptr i32 %add1.i2033 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %206, i8 0) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %207 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %arrayidx.i, align 4
  %add.i2036 = add i32 %208, 20
  %and.i2037 = and i32 %add.i2036, 1048575
  %add1.i2038 = or i32 %and.i2037, -18874368
  %209 = inttoptr i32 %add1.i2038 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %209, i8 0) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %210 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %arrayidx.i, align 4
  %add.i2041 = add i32 %211, 24
  %and.i2042 = and i32 %add.i2041, 1048575
  %add1.i2043 = or i32 %and.i2042, -18874368
  %212 = inttoptr i32 %add1.i2043 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %212, i8 8) #9, !srcloc !165
  %213 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %arrayidx.i, align 4
  %add.i20462757 = add i32 %214, 31
  %and.i20472758 = and i32 %add.i20462757, 1048575
  %add1.i20482759 = or i32 %and.i20472758, -18874368
  %215 = inttoptr i32 %add1.i20482759 to ptr
  %216 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %215) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %216)
  %cmp1982760 = icmp sgt i8 %216, -1
  br i1 %cmp1982760, label %if.end193.do.end205_crit_edge, label %if.end193.while.end210_crit_edge

if.end193.while.end210_crit_edge:                 ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end210

if.end193.do.end205_crit_edge:                    ; preds = %if.end193
  br label %do.end205

do.end205:                                        ; preds = %do.end205.do.end205_crit_edge, %if.end193.do.end205_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !191
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !192
  %217 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %arrayidx.i, align 4
  %add.i2046 = add i32 %218, 31
  %and.i2047 = and i32 %add.i2046, 1048575
  %add1.i2048 = or i32 %and.i2047, -18874368
  %219 = inttoptr i32 %add1.i2048 to ptr
  %220 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %219) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %cmp198 = icmp sgt i8 %220, -1
  br i1 %cmp198, label %do.end205.do.end205_crit_edge, label %do.end205.while.end210_crit_edge

do.end205.while.end210_crit_edge:                 ; preds = %do.end205
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end210

do.end205.do.end205_crit_edge:                    ; preds = %do.end205
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end205

while.end210:                                     ; preds = %do.end205.while.end210_crit_edge, %if.end193.while.end210_crit_edge
  %221 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %arrayidx.i, align 4
  %add.i2051 = add i32 %222, 23
  %and.i2052 = and i32 %add.i2051, 1048575
  %add1.i2053 = or i32 %and.i2052, -18874368
  %223 = inttoptr i32 %add1.i2053 to ptr
  %224 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %223) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %cmp213.not = icmp eq i8 %224, 22
  br i1 %cmp213.not, label %while.end210.inq_ok_crit_edge, label %while.end210.sel_ok_crit_edge

while.end210.sel_ok_crit_edge:                    ; preds = %while.end210
  call void @__sanitizer_cov_trace_pc() #11
  br label %sel_ok

while.end210.inq_ok_crit_edge:                    ; preds = %while.end210
  call void @__sanitizer_cov_trace_pc() #11
  br label %inq_ok

inq_ok:                                           ; preds = %while.end210.inq_ok_crit_edge, %if.end187.inq_ok_crit_edge
  store i8 0, ptr getelementptr inbounds ([512 x i8], ptr @atp_is.mbuf, i32 0, i32 36), align 1
  %call222 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, i32 noundef %indvars.iv, ptr noundef getelementptr inbounds ([512 x i8], ptr @atp_is.mbuf, i32 0, i32 8)) #12
  %225 = load i8, ptr @atp_is.mbuf, align 1
  %devtype = getelementptr %struct.atp_unit, ptr %dev, i32 0, i32 18, i32 %idxprom, i32 %indvars.iv, i32 2
  %226 = ptrtoint ptr %devtype to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 %225, ptr %devtype, align 2
  %227 = load i8, ptr getelementptr inbounds ([512 x i8], ptr @atp_is.mbuf, i32 0, i32 1), align 1
  %228 = load i8, ptr getelementptr inbounds ([512 x i8], ptr @atp_is.mbuf, i32 0, i32 7), align 1
  %229 = and i8 %228, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %229)
  %cmp233 = icmp eq i8 %229, 0
  %or.cond1780 = select i1 %wide_chip.not, i1 true, i1 %cmp233
  br i1 %or.cond1780, label %inq_ok.not_wide_crit_edge, label %if.end236

inq_ok.not_wide_crit_edge:                        ; preds = %inq_ok
  call void @__sanitizer_cov_trace_pc() #11
  br label %not_wide

if.end236:                                        ; preds = %inq_ok
  %230 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %pdev.i, align 4
  %device.i2055 = getelementptr inbounds %struct.pci_dev, ptr %231, i32 0, i32 8
  %232 = ptrtoint ptr %device.i2055 to i32
  call void @__asan_load2_noabort(i32 %232)
  %233 = load i16, ptr %device.i2055, align 2
  %234 = zext i16 %233 to i64
  call void @__sanitizer_cov_trace_switch(i64 %234, ptr @__sancov_gen_cov_switch_values.86)
  switch i16 %233, label %if.else255 [
    i16 -32630, label %if.end236.if.then242_crit_edge
    i16 -32639, label %if.end236.if.then242_crit_edge2907
    i16 -32640, label %if.end236.if.then242_crit_edge2908
  ]

if.end236.if.then242_crit_edge2908:               ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then242

if.end236.if.then242_crit_edge2907:               ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then242

if.end236.if.then242_crit_edge:                   ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then242

if.then242:                                       ; preds = %if.end236.if.then242_crit_edge, %if.end236.if.then242_crit_edge2907, %if.end236.if.then242_crit_edge2908
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %indvars.iv)
  %cmp244 = icmp ult i32 %indvars.iv, 8
  br i1 %cmp244, label %land.lhs.true246, label %if.then242.if.end265_crit_edge

if.then242.if.end265_crit_edge:                   ; preds = %if.then242
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end265

land.lhs.true246:                                 ; preds = %if.then242
  %235 = ptrtoint ptr %arrayidx248 to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %arrayidx248, align 1
  %237 = and i8 %236, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %237)
  %cmp251 = icmp eq i8 %237, 0
  br i1 %cmp251, label %land.lhs.true246.not_wide_crit_edge, label %land.lhs.true246.if.end265_crit_edge

land.lhs.true246.if.end265_crit_edge:             ; preds = %land.lhs.true246
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end265

land.lhs.true246.not_wide_crit_edge:              ; preds = %land.lhs.true246
  call void @__sanitizer_cov_trace_pc() #11
  br label %not_wide

if.else255:                                       ; preds = %if.end236
  %238 = ptrtoint ptr %arrayidx248 to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %arrayidx248, align 1
  %240 = and i8 %239, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %240)
  %cmp261 = icmp eq i8 %240, 0
  br i1 %cmp261, label %if.else255.not_wide_crit_edge, label %if.else255.if.end265_crit_edge

if.else255.if.end265_crit_edge:                   ; preds = %if.else255
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end265

if.else255.not_wide_crit_edge:                    ; preds = %if.else255
  call void @__sanitizer_cov_trace_pc() #11
  br label %not_wide

if.end265:                                        ; preds = %if.else255.if.end265_crit_edge, %land.lhs.true246.if.end265_crit_edge, %if.then242.if.end265_crit_edge
  br i1 %cmp267, label %if.end265.chg_wide_crit_edge, label %if.end270

if.end265.chg_wide_crit_edge:                     ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #11
  br label %chg_wide

if.end270:                                        ; preds = %if.end265
  %arrayidx274 = getelementptr %struct.atp_unit, ptr %dev, i32 0, i32 15, i32 %idxprom, i32 %indvars.iv
  %241 = ptrtoint ptr %arrayidx274 to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %arrayidx274, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %242)
  %cmp276.not = icmp eq i8 %242, 4
  br i1 %cmp276.not, label %if.end279, label %if.end270.chg_wide_crit_edge

if.end270.chg_wide_crit_edge:                     ; preds = %if.end270
  call void @__sanitizer_cov_trace_pc() #11
  br label %chg_wide

if.end279:                                        ; preds = %if.end270
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %243 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %arrayidx.i, align 4
  %add.i2061 = add i32 %244, 27
  %and.i2062 = and i32 %add.i2061, 1048575
  %add1.i2063 = or i32 %and.i2062, -18874368
  %245 = inttoptr i32 %add1.i2063 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %245, i8 1) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %246 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %arrayidx.i, align 4
  %add.i2066 = add i32 %247, 3
  %and.i2067 = and i32 %add.i2066, 1048575
  %add1.i2068 = or i32 %and.i2067, -18874368
  %248 = inttoptr i32 %add1.i2068 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %248, i8 0) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %249 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %arrayidx.i, align 4
  %add.i2071 = add i32 %250, 4
  %and.i2072 = and i32 %add.i2071, 1048575
  %add1.i2073 = or i32 %and.i2072, -18874368
  %251 = inttoptr i32 %add1.i2073 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %251, i8 0) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %252 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %arrayidx.i, align 4
  %add.i2076 = add i32 %253, 5
  %and.i2077 = and i32 %add.i2076, 1048575
  %add1.i2078 = or i32 %and.i2077, -18874368
  %254 = inttoptr i32 %add1.i2078 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %254, i8 0) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %255 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %arrayidx.i, align 4
  %add.i2081 = add i32 %256, 6
  %and.i2082 = and i32 %add.i2081, 1048575
  %add1.i2083 = or i32 %and.i2082, -18874368
  %257 = inttoptr i32 %add1.i2083 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %257, i8 0) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %258 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %arrayidx.i, align 4
  %add.i2086 = add i32 %259, 7
  %and.i2087 = and i32 %add.i2086, 1048575
  %add1.i2088 = or i32 %and.i2087, -18874368
  %260 = inttoptr i32 %add1.i2088 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %260, i8 0) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %261 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %arrayidx.i, align 4
  %add.i2091 = add i32 %262, 8
  %and.i2092 = and i32 %add.i2091, 1048575
  %add1.i2093 = or i32 %and.i2092, -18874368
  %263 = inttoptr i32 %add1.i2093 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %263, i8 0) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %264 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %arrayidx.i, align 4
  %add.i2096 = add i32 %265, 15
  %and.i2097 = and i32 %add.i2096, 1048575
  %add1.i2098 = or i32 %and.i2097, -18874368
  %266 = inttoptr i32 %add1.i2098 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %266, i8 0) #9, !srcloc !165
  %267 = ptrtoint ptr %devsp to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %devsp, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %269 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %arrayidx.i, align 4
  %add.i2101 = add i32 %270, 17
  %and.i2102 = and i32 %add.i2101, 1048575
  %add1.i2103 = or i32 %and.i2102, -18874368
  %271 = inttoptr i32 %add1.i2103 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %271, i8 %268) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %272 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %arrayidx.i, align 4
  %add.i2106 = add i32 %273, 18
  %and.i2107 = and i32 %add.i2106, 1048575
  %add1.i2108 = or i32 %and.i2107, -18874368
  %274 = inttoptr i32 %add1.i2108 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %274, i8 0) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %275 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %arrayidx.i, align 4
  %add.i2111 = add i32 %276, 19
  %and.i2112 = and i32 %add.i2111, 1048575
  %add1.i2113 = or i32 %and.i2112, -18874368
  %277 = inttoptr i32 %add1.i2113 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %277, i8 0) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %278 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %arrayidx.i, align 4
  %add.i2116 = add i32 %279, 20
  %and.i2117 = and i32 %add.i2116, 1048575
  %add1.i2118 = or i32 %and.i2117, -18874368
  %280 = inttoptr i32 %add1.i2118 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %280, i8 6) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %281 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %arrayidx.i, align 4
  %add.i2121 = add i32 %282, 24
  %and.i2122 = and i32 %add.i2121, 1048575
  %add1.i2123 = or i32 %and.i2122, -18874368
  %283 = inttoptr i32 %add1.i2123 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %283, i8 6) #9, !srcloc !165
  %284 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %arrayidx.i, align 4
  %add.i21262761 = add i32 %285, 31
  %and.i21272762 = and i32 %add.i21262761, 1048575
  %add1.i21282763 = or i32 %and.i21272762, -18874368
  %286 = inttoptr i32 %add1.i21282763 to ptr
  %287 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %286) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %287)
  %cmp2902764 = icmp sgt i8 %287, -1
  br i1 %cmp2902764, label %if.end279.do.end297_crit_edge, label %if.end279.while.end302_crit_edge

if.end279.while.end302_crit_edge:                 ; preds = %if.end279
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end302

if.end279.do.end297_crit_edge:                    ; preds = %if.end279
  br label %do.end297

do.end297:                                        ; preds = %do.end297.do.end297_crit_edge, %if.end279.do.end297_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !193
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !194
  %288 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %arrayidx.i, align 4
  %add.i2126 = add i32 %289, 31
  %and.i2127 = and i32 %add.i2126, 1048575
  %add1.i2128 = or i32 %and.i2127, -18874368
  %290 = inttoptr i32 %add1.i2128 to ptr
  %291 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %290) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %cmp290 = icmp sgt i8 %291, -1
  br i1 %cmp290, label %do.end297.do.end297_crit_edge, label %do.end297.while.end302_crit_edge

do.end297.while.end302_crit_edge:                 ; preds = %do.end297
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end302

do.end297.do.end297_crit_edge:                    ; preds = %do.end297
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end297

while.end302:                                     ; preds = %do.end297.while.end302_crit_edge, %if.end279.while.end302_crit_edge
  %292 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %arrayidx.i, align 4
  %add.i2131 = add i32 %293, 23
  %and.i2132 = and i32 %add.i2131, 1048575
  %add1.i2133 = or i32 %and.i2132, -18874368
  %294 = inttoptr i32 %add1.i2133 to ptr
  %295 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %294) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %295)
  %cmp305.not = icmp eq i8 %295, 17
  br i1 %cmp305.not, label %while.end302.if.end313_crit_edge, label %land.lhs.true307

while.end302.if.end313_crit_edge:                 ; preds = %while.end302
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end313

land.lhs.true307:                                 ; preds = %while.end302
  %296 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %arrayidx.i, align 4
  %add.i2136 = add i32 %297, 23
  %and.i2137 = and i32 %add.i2136, 1048575
  %add1.i2138 = or i32 %and.i2137, -18874368
  %298 = inttoptr i32 %add1.i2138 to ptr
  %299 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %298) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 -114, i8 %299)
  %cmp310.not = icmp eq i8 %299, -114
  br i1 %cmp310.not, label %land.lhs.true307.if.end313_crit_edge, label %land.lhs.true307.for.inc_crit_edge

land.lhs.true307.for.inc_crit_edge:               ; preds = %land.lhs.true307
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true307.if.end313_crit_edge:             ; preds = %land.lhs.true307
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end313

if.end313:                                        ; preds = %land.lhs.true307.if.end313_crit_edge, %while.end302.if.end313_crit_edge
  %300 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %arrayidx.i, align 4
  %add.i21412765 = add i32 %301, 23
  %and.i21422766 = and i32 %add.i21412765, 1048575
  %add1.i21432767 = or i32 %and.i21422766, -18874368
  %302 = inttoptr i32 %add1.i21432767 to ptr
  %303 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %302) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 -114, i8 %303)
  %cmp317.not2768 = icmp eq i8 %303, -114
  br i1 %cmp317.not2768, label %if.end313.try_u3.preheader_crit_edge, label %if.end313.do.end324_crit_edge

if.end313.do.end324_crit_edge:                    ; preds = %if.end313
  br label %do.end324

if.end313.try_u3.preheader_crit_edge:             ; preds = %if.end313
  call void @__sanitizer_cov_trace_pc() #11
  br label %try_u3.preheader

do.end324:                                        ; preds = %do.end324.do.end324_crit_edge, %if.end313.do.end324_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !195
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !196
  %304 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %arrayidx.i, align 4
  %add.i2141 = add i32 %305, 23
  %and.i2142 = and i32 %add.i2141, 1048575
  %add1.i2143 = or i32 %and.i2142, -18874368
  %306 = inttoptr i32 %add1.i2143 to ptr
  %307 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %306) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %cmp317.not = icmp eq i8 %307, -114
  br i1 %cmp317.not, label %do.end324.try_u3.preheader_crit_edge, label %do.end324.do.end324_crit_edge

do.end324.do.end324_crit_edge:                    ; preds = %do.end324
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end324

do.end324.try_u3.preheader_crit_edge:             ; preds = %do.end324
  call void @__sanitizer_cov_trace_pc() #11
  br label %try_u3.preheader

try_u3.preheader:                                 ; preds = %do.end324.try_u3.preheader_crit_edge, %if.end313.try_u3.preheader_crit_edge
  br label %try_u3

try_u3:                                           ; preds = %while.end373.try_u3_crit_edge, %try_u3.preheader
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %308 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %arrayidx.i, align 4
  %add.i2146 = add i32 %309, 20
  %and.i2147 = and i32 %add.i2146, 1048575
  %add1.i2148 = or i32 %and.i2147, -18874368
  %310 = inttoptr i32 %add1.i2148 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %310, i8 9) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %311 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %arrayidx.i, align 4
  %add.i2151 = add i32 %312, 24
  %and.i2152 = and i32 %add.i2151, 1048575
  %add1.i2153 = or i32 %and.i2152, -18874368
  %313 = inttoptr i32 %add1.i2153 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %313, i8 32) #9, !srcloc !165
  %314 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %arrayidx.i, align 4
  %add.i21562769 = add i32 %315, 31
  %and.i21572770 = and i32 %add.i21562769, 1048575
  %add1.i21582771 = or i32 %and.i21572770, -18874368
  %316 = inttoptr i32 %add1.i21582771 to ptr
  %317 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %316) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %317)
  %cmp3342772 = icmp sgt i8 %317, -1
  br i1 %cmp3342772, label %try_u3.while.body336_crit_edge, label %try_u3.while.cond357.preheader_crit_edge

try_u3.while.cond357.preheader_crit_edge:         ; preds = %try_u3
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond357.preheader

try_u3.while.body336_crit_edge:                   ; preds = %try_u3
  br label %while.body336

while.cond357.preheader:                          ; preds = %do.end351.while.cond357.preheader_crit_edge, %try_u3.while.cond357.preheader_crit_edge
  %318 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %arrayidx.i, align 4
  %add.i21712774 = add i32 %319, 23
  %and.i21722775 = and i32 %add.i21712774, 1048575
  %add1.i21732776 = or i32 %and.i21722775, -18874368
  %320 = inttoptr i32 %add1.i21732776 to ptr
  %321 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %320) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %321)
  %cmp3612777 = icmp sgt i8 %321, -1
  br i1 %cmp3612777, label %while.cond357.preheader.do.end368_crit_edge, label %while.cond357.preheader.while.end373_crit_edge

while.cond357.preheader.while.end373_crit_edge:   ; preds = %while.cond357.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end373

while.cond357.preheader.do.end368_crit_edge:      ; preds = %while.cond357.preheader
  br label %do.end368

while.body336:                                    ; preds = %do.end351.while.body336_crit_edge, %try_u3.while.body336_crit_edge
  %j.22773 = phi i8 [ %j.3, %do.end351.while.body336_crit_edge ], [ 0, %try_u3.while.body336_crit_edge ]
  %322 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %arrayidx.i, align 4
  %add.i2161 = add i32 %323, 31
  %and.i2162 = and i32 %add.i2161, 1048575
  %add1.i2163 = or i32 %and.i2162, -18874368
  %324 = inttoptr i32 %add1.i2163 to ptr
  %325 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %324) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %326 = and i8 %325, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %326)
  %cmp340.not = icmp eq i8 %326, 0
  br i1 %cmp340.not, label %while.body336.do.end351_crit_edge, label %if.then342

while.body336.do.end351_crit_edge:                ; preds = %while.body336
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end351

if.then342:                                       ; preds = %while.body336
  call void @__sanitizer_cov_trace_pc() #11
  %inc343 = add i8 %j.22773, 1
  %idxprom344 = zext i8 %j.22773 to i32
  %arrayidx345 = getelementptr [9 x i8], ptr @atp_is.u3, i32 0, i32 %idxprom344
  %327 = ptrtoint ptr %arrayidx345 to i32
  call void @__asan_load1_noabort(i32 %327)
  %328 = load i8, ptr %arrayidx345, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %329 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %arrayidx.i, align 4
  %add.i2166 = add i32 %330, 25
  %and.i2167 = and i32 %add.i2166, 1048575
  %add1.i2168 = or i32 %and.i2167, -18874368
  %331 = inttoptr i32 %add1.i2168 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %331, i8 %328) #9, !srcloc !165
  br label %do.end351

do.end351:                                        ; preds = %if.then342, %while.body336.do.end351_crit_edge
  %j.3 = phi i8 [ %inc343, %if.then342 ], [ %j.22773, %while.body336.do.end351_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !197
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !198
  %332 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %arrayidx.i, align 4
  %add.i2156 = add i32 %333, 31
  %and.i2157 = and i32 %add.i2156, 1048575
  %add1.i2158 = or i32 %and.i2157, -18874368
  %334 = inttoptr i32 %add1.i2158 to ptr
  %335 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %334) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %cmp334 = icmp sgt i8 %335, -1
  br i1 %cmp334, label %do.end351.while.body336_crit_edge, label %do.end351.while.cond357.preheader_crit_edge

do.end351.while.cond357.preheader_crit_edge:      ; preds = %do.end351
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond357.preheader

do.end351.while.body336_crit_edge:                ; preds = %do.end351
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body336

do.end368:                                        ; preds = %do.end368.do.end368_crit_edge, %while.cond357.preheader.do.end368_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !199
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !200
  %336 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %arrayidx.i, align 4
  %add.i2171 = add i32 %337, 23
  %and.i2172 = and i32 %add.i2171, 1048575
  %add1.i2173 = or i32 %and.i2172, -18874368
  %338 = inttoptr i32 %add1.i2173 to ptr
  %339 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %338) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %cmp361 = icmp sgt i8 %339, -1
  br i1 %cmp361, label %do.end368.do.end368_crit_edge, label %do.end368.while.end373_crit_edge

do.end368.while.end373_crit_edge:                 ; preds = %do.end368
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end373

do.end368.do.end368_crit_edge:                    ; preds = %do.end368
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end368

while.end373:                                     ; preds = %do.end368.while.end373_crit_edge, %while.cond357.preheader.while.end373_crit_edge
  %340 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %arrayidx.i, align 4
  %add.i2176 = add i32 %341, 23
  %and.i2177 = and i32 %add.i2176, 1048575
  %add1.i2178 = or i32 %and.i2177, -18874368
  %342 = inttoptr i32 %add1.i2178 to ptr
  %343 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %342) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %trunc2718 = trunc i8 %343 to i4
  %344 = zext i4 %trunc2718 to i64
  call void @__sanitizer_cov_trace_switch(i64 %344, ptr @__sancov_gen_cov_switch_values.87)
  switch i4 %trunc2718, label %while.end373.for.inc_crit_edge [
    i4 -1, label %while.end373.u3p_in.preheader_crit_edge
    i4 -6, label %while.end373.u3p_cmd_crit_edge
    i4 -2, label %while.end373.try_u3_crit_edge
  ]

while.end373.try_u3_crit_edge:                    ; preds = %while.end373
  call void @__sanitizer_cov_trace_pc() #11
  br label %try_u3

while.end373.u3p_cmd_crit_edge:                   ; preds = %while.end373
  call void @__sanitizer_cov_trace_pc() #11
  br label %u3p_cmd

while.end373.u3p_in.preheader_crit_edge:          ; preds = %while.end373
  call void @__sanitizer_cov_trace_pc() #11
  br label %u3p_in.preheader

while.end373.for.inc_crit_edge:                   ; preds = %while.end373
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

u3p_out:                                          ; preds = %u3p_out.preheader, %while.end416.u3p_out_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %345 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %arrayidx.i, align 4
  %add.i2181 = add i32 %346, 24
  %and.i2182 = and i32 %add.i2181, 1048575
  %add1.i2183 = or i32 %and.i2182, -18874368
  %347 = inttoptr i32 %add1.i2183 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %347, i8 32) #9, !srcloc !165
  %348 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %arrayidx.i, align 4
  %add.i21862778 = add i32 %349, 31
  %and.i21872779 = and i32 %add.i21862778, 1048575
  %add1.i21882780 = or i32 %and.i21872779, -18874368
  %350 = inttoptr i32 %add1.i21882780 to ptr
  %351 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %350) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %351)
  %cmp3972781 = icmp sgt i8 %351, -1
  br i1 %cmp3972781, label %u3p_out.while.body399_crit_edge, label %u3p_out.while.end416_crit_edge

u3p_out.while.end416_crit_edge:                   ; preds = %u3p_out
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end416

u3p_out.while.body399_crit_edge:                  ; preds = %u3p_out
  br label %while.body399

while.body399:                                    ; preds = %do.end411.while.body399_crit_edge, %u3p_out.while.body399_crit_edge
  %352 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %arrayidx.i, align 4
  %add.i2191 = add i32 %353, 31
  %and.i2192 = and i32 %add.i2191, 1048575
  %add1.i2193 = or i32 %and.i2192, -18874368
  %354 = inttoptr i32 %add1.i2193 to ptr
  %355 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %354) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %356 = and i8 %355, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %356)
  %cmp403.not = icmp eq i8 %356, 0
  br i1 %cmp403.not, label %while.body399.do.end411_crit_edge, label %if.then405

while.body399.do.end411_crit_edge:                ; preds = %while.body399
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end411

if.then405:                                       ; preds = %while.body399
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %357 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %arrayidx.i, align 4
  %add.i2196 = add i32 %358, 25
  %and.i2197 = and i32 %add.i2196, 1048575
  %add1.i2198 = or i32 %and.i2197, -18874368
  %359 = inttoptr i32 %add1.i2198 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %359, i8 0) #9, !srcloc !165
  br label %do.end411

do.end411:                                        ; preds = %if.then405, %while.body399.do.end411_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !201
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !202
  %360 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %arrayidx.i, align 4
  %add.i2186 = add i32 %361, 31
  %and.i2187 = and i32 %add.i2186, 1048575
  %add1.i2188 = or i32 %and.i2187, -18874368
  %362 = inttoptr i32 %add1.i2188 to ptr
  %363 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %362) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %cmp397 = icmp sgt i8 %363, -1
  br i1 %cmp397, label %do.end411.while.body399_crit_edge, label %do.end411.while.end416_crit_edge

do.end411.while.end416_crit_edge:                 ; preds = %do.end411
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end416

do.end411.while.body399_crit_edge:                ; preds = %do.end411
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body399

while.end416:                                     ; preds = %do.end411.while.end416_crit_edge, %u3p_out.while.end416_crit_edge
  %364 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %arrayidx.i, align 4
  %add.i2201 = add i32 %365, 23
  %and.i2202 = and i32 %add.i2201, 1048575
  %add1.i2203 = or i32 %and.i2202, -18874368
  %366 = inttoptr i32 %add1.i2203 to ptr
  %367 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %366) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %trunc2719 = trunc i8 %367 to i4
  %368 = zext i4 %trunc2719 to i64
  call void @__sanitizer_cov_trace_switch(i64 %368, ptr @__sancov_gen_cov_switch_values.88)
  switch i4 %trunc2719, label %while.end416.for.inc_crit_edge [
    i4 -1, label %while.end416.u3p_in.preheader_crit_edge
    i4 -6, label %while.end416.u3p_cmd_crit_edge
    i4 -2, label %while.end416.u3p_out_crit_edge
  ]

while.end416.u3p_out_crit_edge:                   ; preds = %while.end416
  call void @__sanitizer_cov_trace_pc() #11
  br label %u3p_out

while.end416.u3p_cmd_crit_edge:                   ; preds = %while.end416
  call void @__sanitizer_cov_trace_pc() #11
  br label %u3p_cmd

while.end416.u3p_in.preheader_crit_edge:          ; preds = %while.end416
  call void @__sanitizer_cov_trace_pc() #11
  br label %u3p_in.preheader

while.end416.for.inc_crit_edge:                   ; preds = %while.end416
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

u3p_in.preheader:                                 ; preds = %while.end416.u3p_in.preheader_crit_edge, %while.end373.u3p_in.preheader_crit_edge
  br label %u3p_in

u3p_in:                                           ; preds = %if.end452.u3p_in_crit_edge, %u3p_in.preheader
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %369 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %arrayidx.i, align 4
  %add.i2206 = add i32 %370, 20
  %and.i2207 = and i32 %add.i2206, 1048575
  %add1.i2208 = or i32 %and.i2207, -18874368
  %371 = inttoptr i32 %add1.i2208 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %371, i8 9) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %372 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %arrayidx.i, align 4
  %add.i2211 = add i32 %373, 24
  %and.i2212 = and i32 %add.i2211, 1048575
  %add1.i2213 = or i32 %and.i2212, -18874368
  %374 = inttoptr i32 %add1.i2213 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %374, i8 32) #9, !srcloc !165
  br label %u3p_in1.outer

u3p_in1.outer:                                    ; preds = %if.then441, %u3p_in
  %k.0.ph = phi i8 [ %inc443, %if.then441 ], [ 0, %u3p_in ]
  br label %u3p_in1

u3p_in1:                                          ; preds = %if.end446.u3p_in1_crit_edge, %u3p_in1.outer
  %375 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %arrayidx.i, align 4
  %add.i2216 = add i32 %376, 31
  %and.i2217 = and i32 %add.i2216, 1048575
  %add1.i2218 = or i32 %and.i2217, -18874368
  %377 = inttoptr i32 %add1.i2218 to ptr
  %378 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %377) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %conv437 = zext i8 %378 to i32
  %and438 = and i32 %conv437, 1
  %cmp439.not = icmp eq i32 %and438, 0
  br i1 %cmp439.not, label %if.end446, label %if.then441

if.then441:                                       ; preds = %u3p_in1
  call void @__sanitizer_cov_trace_pc() #11
  %379 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %arrayidx.i, align 4
  %add.i2221 = add i32 %380, 25
  %and.i2222 = and i32 %add.i2221, 1048575
  %add1.i2223 = or i32 %and.i2222, -18874368
  %381 = inttoptr i32 %add1.i2223 to ptr
  %382 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %381) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %inc443 = add i8 %k.0.ph, 1
  %idxprom444 = zext i8 %k.0.ph to i32
  %arrayidx445 = getelementptr [512 x i8], ptr @atp_is.mbuf, i32 0, i32 %idxprom444
  %383 = ptrtoint ptr %arrayidx445 to i32
  call void @__asan_store1_noabort(i32 %383)
  store i8 %382, ptr %arrayidx445, align 1
  br label %u3p_in1.outer

if.end446:                                        ; preds = %u3p_in1
  %and448 = and i32 %conv437, 128
  %cmp449 = icmp eq i32 %and448, 0
  br i1 %cmp449, label %if.end446.u3p_in1_crit_edge, label %if.end452

if.end446.u3p_in1_crit_edge:                      ; preds = %if.end446
  call void @__sanitizer_cov_trace_pc() #11
  br label %u3p_in1

if.end452:                                        ; preds = %if.end446
  %384 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %arrayidx.i, align 4
  %add.i2226 = add i32 %385, 23
  %and.i2227 = and i32 %add.i2226, 1048575
  %add1.i2228 = or i32 %and.i2227, -18874368
  %386 = inttoptr i32 %add1.i2228 to ptr
  %387 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %386) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %trunc2720 = trunc i8 %387 to i4
  %388 = zext i4 %trunc2720 to i64
  call void @__sanitizer_cov_trace_switch(i64 %388, ptr @__sancov_gen_cov_switch_values.89)
  switch i4 %trunc2720, label %if.end452.for.inc_crit_edge [
    i4 -1, label %if.end452.u3p_in_crit_edge
    i4 -6, label %if.end452.u3p_cmd_crit_edge
    i4 -2, label %if.end452.u3p_out.preheader_crit_edge
  ]

if.end452.u3p_out.preheader_crit_edge:            ; preds = %if.end452
  call void @__sanitizer_cov_trace_pc() #11
  br label %u3p_out.preheader

if.end452.u3p_cmd_crit_edge:                      ; preds = %if.end452
  call void @__sanitizer_cov_trace_pc() #11
  br label %u3p_cmd

if.end452.u3p_in_crit_edge:                       ; preds = %if.end452
  call void @__sanitizer_cov_trace_pc() #11
  br label %u3p_in

if.end452.for.inc_crit_edge:                      ; preds = %if.end452
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

u3p_cmd:                                          ; preds = %if.end452.u3p_cmd_crit_edge, %while.end416.u3p_cmd_crit_edge, %while.end373.u3p_cmd_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %389 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load i32, ptr %arrayidx.i, align 4
  %add.i2231 = add i32 %390, 16
  %and.i2232 = and i32 %add.i2231, 1048575
  %add1.i2233 = or i32 %and.i2232, -18874368
  %391 = inttoptr i32 %add1.i2233 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %391, i8 48) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %392 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %arrayidx.i, align 4
  %add.i2236 = add i32 %393, 20
  %and.i2237 = and i32 %add.i2236, 1048575
  %add1.i2238 = or i32 %and.i2237, -18874368
  %394 = inttoptr i32 %add1.i2238 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %394, i8 0) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %395 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load i32, ptr %arrayidx.i, align 4
  %add.i2241 = add i32 %396, 24
  %and.i2242 = and i32 %add.i2241, 1048575
  %add1.i2243 = or i32 %and.i2242, -18874368
  %397 = inttoptr i32 %add1.i2243 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %397, i8 8) #9, !srcloc !165
  br label %while.cond472

while.cond472:                                    ; preds = %while.cond472.while.cond472_crit_edge, %u3p_cmd
  %398 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load i32, ptr %arrayidx.i, align 4
  %add.i2246 = add i32 %399, 31
  %and.i2247 = and i32 %add.i2246, 1048575
  %add1.i2248 = or i32 %and.i2247, -18874368
  %400 = inttoptr i32 %add1.i2248 to ptr
  %401 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %400) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %cmp476 = icmp sgt i8 %401, -1
  br i1 %cmp476, label %while.cond472.while.cond472_crit_edge, label %while.end479

while.cond472.while.cond472_crit_edge:            ; preds = %while.cond472
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond472

while.end479:                                     ; preds = %while.cond472
  %402 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load i32, ptr %arrayidx.i, align 4
  %add.i2251 = add i32 %403, 23
  %and.i2252 = and i32 %add.i2251, 1048575
  %add1.i2253 = or i32 %and.i2252, -18874368
  %404 = inttoptr i32 %add1.i2253 to ptr
  %405 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %404) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %406 = zext i8 %405 to i64
  call void @__sanitizer_cov_trace_switch(i64 %406, ptr @__sancov_gen_cov_switch_values.90)
  switch i8 %405, label %while.end479.for.inc_crit_edge [
    i8 22, label %if.end490
    i8 78, label %while.end479.u3p_out.preheader_crit_edge
  ]

while.end479.u3p_out.preheader_crit_edge:         ; preds = %while.end479
  call void @__sanitizer_cov_trace_pc() #11
  br label %u3p_out.preheader

while.end479.for.inc_crit_edge:                   ; preds = %while.end479
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

u3p_out.preheader:                                ; preds = %while.end479.u3p_out.preheader_crit_edge, %if.end452.u3p_out.preheader_crit_edge
  br label %u3p_out

if.end490:                                        ; preds = %while.end479
  %407 = load i8, ptr @atp_is.mbuf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %407)
  %cmp492.not = icmp eq i8 %407, 1
  br i1 %cmp492.not, label %if.end495, label %if.end490.chg_wide_crit_edge

if.end490.chg_wide_crit_edge:                     ; preds = %if.end490
  call void @__sanitizer_cov_trace_pc() #11
  br label %chg_wide

if.end495:                                        ; preds = %if.end490
  %408 = load i8, ptr getelementptr inbounds ([512 x i8], ptr @atp_is.mbuf, i32 0, i32 1), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %408)
  %cmp497.not = icmp eq i8 %408, 6
  br i1 %cmp497.not, label %if.end500, label %if.end495.chg_wide_crit_edge

if.end495.chg_wide_crit_edge:                     ; preds = %if.end495
  call void @__sanitizer_cov_trace_pc() #11
  br label %chg_wide

if.end500:                                        ; preds = %if.end495
  %409 = load i8, ptr getelementptr inbounds ([512 x i8], ptr @atp_is.mbuf, i32 0, i32 2), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %409)
  %cmp502.not = icmp eq i8 %409, 4
  br i1 %cmp502.not, label %if.end505, label %if.end500.chg_wide_crit_edge

if.end500.chg_wide_crit_edge:                     ; preds = %if.end500
  call void @__sanitizer_cov_trace_pc() #11
  br label %chg_wide

if.end505:                                        ; preds = %if.end500
  %410 = load i8, ptr getelementptr inbounds ([512 x i8], ptr @atp_is.mbuf, i32 0, i32 3), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %410)
  %cmp507 = icmp eq i8 %410, 9
  br i1 %cmp507, label %if.then509, label %if.end505.chg_wide_crit_edge

if.end505.chg_wide_crit_edge:                     ; preds = %if.end505
  call void @__sanitizer_cov_trace_pc() #11
  br label %chg_wide

if.then509:                                       ; preds = %if.end505
  call void @__sanitizer_cov_trace_pc() #11
  %411 = ptrtoint ptr %arrayidx516 to i32
  call void @__asan_load2_noabort(i32 %411)
  %412 = load i16, ptr %arrayidx516, align 2
  %conv519 = or i16 %412, %84
  store i16 %conv519, ptr %arrayidx516, align 2
  %413 = ptrtoint ptr %devsp to i32
  call void @__asan_store1_noabort(i32 %413)
  store i8 -50, ptr %devsp, align 1
  br label %for.inc

chg_wide:                                         ; preds = %if.end505.chg_wide_crit_edge, %if.end500.chg_wide_crit_edge, %if.end495.chg_wide_crit_edge, %if.end490.chg_wide_crit_edge, %if.end270.chg_wide_crit_edge, %if.end265.chg_wide_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %414 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load i32, ptr %arrayidx.i, align 4
  %add.i2256 = add i32 %415, 27
  %and.i2257 = and i32 %add.i2256, 1048575
  %add1.i2258 = or i32 %and.i2257, -18874368
  %416 = inttoptr i32 %add1.i2258 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %416, i8 1) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %417 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load i32, ptr %arrayidx.i, align 4
  %add.i2261 = add i32 %418, 3
  %and.i2262 = and i32 %add.i2261, 1048575
  %add1.i2263 = or i32 %and.i2262, -18874368
  %419 = inttoptr i32 %add1.i2263 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %419, i8 0) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %420 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load i32, ptr %arrayidx.i, align 4
  %add.i2266 = add i32 %421, 4
  %and.i2267 = and i32 %add.i2266, 1048575
  %add1.i2268 = or i32 %and.i2267, -18874368
  %422 = inttoptr i32 %add1.i2268 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %422, i8 0) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %423 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load i32, ptr %arrayidx.i, align 4
  %add.i2271 = add i32 %424, 5
  %and.i2272 = and i32 %add.i2271, 1048575
  %add1.i2273 = or i32 %and.i2272, -18874368
  %425 = inttoptr i32 %add1.i2273 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %425, i8 0) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %426 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load i32, ptr %arrayidx.i, align 4
  %add.i2276 = add i32 %427, 6
  %and.i2277 = and i32 %add.i2276, 1048575
  %add1.i2278 = or i32 %and.i2277, -18874368
  %428 = inttoptr i32 %add1.i2278 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %428, i8 0) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %429 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load i32, ptr %arrayidx.i, align 4
  %add.i2281 = add i32 %430, 7
  %and.i2282 = and i32 %add.i2281, 1048575
  %add1.i2283 = or i32 %and.i2282, -18874368
  %431 = inttoptr i32 %add1.i2283 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %431, i8 0) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %432 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load i32, ptr %arrayidx.i, align 4
  %add.i2286 = add i32 %433, 8
  %and.i2287 = and i32 %add.i2286, 1048575
  %add1.i2288 = or i32 %and.i2287, -18874368
  %434 = inttoptr i32 %add1.i2288 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %434, i8 0) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %435 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load i32, ptr %arrayidx.i, align 4
  %add.i2291 = add i32 %436, 15
  %and.i2292 = and i32 %add.i2291, 1048575
  %add1.i2293 = or i32 %and.i2292, -18874368
  %437 = inttoptr i32 %add1.i2293 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %437, i8 0) #9, !srcloc !165
  %438 = ptrtoint ptr %devsp to i32
  call void @__asan_load1_noabort(i32 %438)
  %439 = load i8, ptr %devsp, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %440 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load i32, ptr %arrayidx.i, align 4
  %add.i2296 = add i32 %441, 17
  %and.i2297 = and i32 %add.i2296, 1048575
  %add1.i2298 = or i32 %and.i2297, -18874368
  %442 = inttoptr i32 %add1.i2298 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %442, i8 %439) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %443 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load i32, ptr %arrayidx.i, align 4
  %add.i2301 = add i32 %444, 18
  %and.i2302 = and i32 %add.i2301, 1048575
  %add1.i2303 = or i32 %and.i2302, -18874368
  %445 = inttoptr i32 %add1.i2303 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %445, i8 0) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %446 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load i32, ptr %arrayidx.i, align 4
  %add.i2306 = add i32 %447, 19
  %and.i2307 = and i32 %add.i2306, 1048575
  %add1.i2308 = or i32 %and.i2307, -18874368
  %448 = inttoptr i32 %add1.i2308 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %448, i8 0) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %449 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load i32, ptr %arrayidx.i, align 4
  %add.i2311 = add i32 %450, 20
  %and.i2312 = and i32 %add.i2311, 1048575
  %add1.i2313 = or i32 %and.i2312, -18874368
  %451 = inttoptr i32 %add1.i2313 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %451, i8 6) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %452 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load i32, ptr %arrayidx.i, align 4
  %add.i2316 = add i32 %453, 24
  %and.i2317 = and i32 %add.i2316, 1048575
  %add1.i2318 = or i32 %and.i2317, -18874368
  %454 = inttoptr i32 %add1.i2318 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %454, i8 6) #9, !srcloc !165
  %455 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load i32, ptr %arrayidx.i, align 4
  %add.i23212782 = add i32 %456, 31
  %and.i23222783 = and i32 %add.i23212782, 1048575
  %add1.i23232784 = or i32 %and.i23222783, -18874368
  %457 = inttoptr i32 %add1.i23232784 to ptr
  %458 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %457) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %458)
  %cmp5372785 = icmp sgt i8 %458, -1
  br i1 %cmp5372785, label %chg_wide.do.end544_crit_edge, label %chg_wide.while.end549_crit_edge

chg_wide.while.end549_crit_edge:                  ; preds = %chg_wide
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end549

chg_wide.do.end544_crit_edge:                     ; preds = %chg_wide
  br label %do.end544

do.end544:                                        ; preds = %do.end544.do.end544_crit_edge, %chg_wide.do.end544_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !203
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !204
  %459 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load i32, ptr %arrayidx.i, align 4
  %add.i2321 = add i32 %460, 31
  %and.i2322 = and i32 %add.i2321, 1048575
  %add1.i2323 = or i32 %and.i2322, -18874368
  %461 = inttoptr i32 %add1.i2323 to ptr
  %462 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %461) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %cmp537 = icmp sgt i8 %462, -1
  br i1 %cmp537, label %do.end544.do.end544_crit_edge, label %do.end544.while.end549_crit_edge

do.end544.while.end549_crit_edge:                 ; preds = %do.end544
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end549

do.end544.do.end544_crit_edge:                    ; preds = %do.end544
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end544

while.end549:                                     ; preds = %do.end544.while.end549_crit_edge, %chg_wide.while.end549_crit_edge
  %463 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load i32, ptr %arrayidx.i, align 4
  %add.i2326 = add i32 %464, 23
  %and.i2327 = and i32 %add.i2326, 1048575
  %add1.i2328 = or i32 %and.i2327, -18874368
  %465 = inttoptr i32 %add1.i2328 to ptr
  %466 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %465) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %466)
  %cmp552.not = icmp eq i8 %466, 17
  br i1 %cmp552.not, label %while.end549.if.end560_crit_edge, label %land.lhs.true554

while.end549.if.end560_crit_edge:                 ; preds = %while.end549
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end560

land.lhs.true554:                                 ; preds = %while.end549
  %467 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load i32, ptr %arrayidx.i, align 4
  %add.i2331 = add i32 %468, 23
  %and.i2332 = and i32 %add.i2331, 1048575
  %add1.i2333 = or i32 %and.i2332, -18874368
  %469 = inttoptr i32 %add1.i2333 to ptr
  %470 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %469) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 -114, i8 %470)
  %cmp557.not = icmp eq i8 %470, -114
  br i1 %cmp557.not, label %land.lhs.true554.if.end560_crit_edge, label %land.lhs.true554.for.inc_crit_edge

land.lhs.true554.for.inc_crit_edge:               ; preds = %land.lhs.true554
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true554.if.end560_crit_edge:             ; preds = %land.lhs.true554
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end560

if.end560:                                        ; preds = %land.lhs.true554.if.end560_crit_edge, %while.end549.if.end560_crit_edge
  %471 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load i32, ptr %arrayidx.i, align 4
  %add.i23362786 = add i32 %472, 23
  %and.i23372787 = and i32 %add.i23362786, 1048575
  %add1.i23382788 = or i32 %and.i23372787, -18874368
  %473 = inttoptr i32 %add1.i23382788 to ptr
  %474 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %473) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 -114, i8 %474)
  %cmp564.not2789 = icmp eq i8 %474, -114
  br i1 %cmp564.not2789, label %if.end560.try_wide.preheader_crit_edge, label %if.end560.do.end571_crit_edge

if.end560.do.end571_crit_edge:                    ; preds = %if.end560
  br label %do.end571

if.end560.try_wide.preheader_crit_edge:           ; preds = %if.end560
  call void @__sanitizer_cov_trace_pc() #11
  br label %try_wide.preheader

do.end571:                                        ; preds = %do.end571.do.end571_crit_edge, %if.end560.do.end571_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !205
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !206
  %475 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load i32, ptr %arrayidx.i, align 4
  %add.i2336 = add i32 %476, 23
  %and.i2337 = and i32 %add.i2336, 1048575
  %add1.i2338 = or i32 %and.i2337, -18874368
  %477 = inttoptr i32 %add1.i2338 to ptr
  %478 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %477) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %cmp564.not = icmp eq i8 %478, -114
  br i1 %cmp564.not, label %do.end571.try_wide.preheader_crit_edge, label %do.end571.do.end571_crit_edge

do.end571.do.end571_crit_edge:                    ; preds = %do.end571
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end571

do.end571.try_wide.preheader_crit_edge:           ; preds = %do.end571
  call void @__sanitizer_cov_trace_pc() #11
  br label %try_wide.preheader

try_wide.preheader:                               ; preds = %do.end571.try_wide.preheader_crit_edge, %if.end560.try_wide.preheader_crit_edge
  br label %try_wide

try_wide:                                         ; preds = %while.end620.try_wide_crit_edge, %try_wide.preheader
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %479 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load i32, ptr %arrayidx.i, align 4
  %add.i2341 = add i32 %480, 20
  %and.i2342 = and i32 %add.i2341, 1048575
  %add1.i2343 = or i32 %and.i2342, -18874368
  %481 = inttoptr i32 %add1.i2343 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %481, i8 5) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %482 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load i32, ptr %arrayidx.i, align 4
  %add.i2346 = add i32 %483, 24
  %and.i2347 = and i32 %add.i2346, 1048575
  %add1.i2348 = or i32 %and.i2347, -18874368
  %484 = inttoptr i32 %add1.i2348 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %484, i8 32) #9, !srcloc !165
  %485 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load i32, ptr %arrayidx.i, align 4
  %add.i23512790 = add i32 %486, 31
  %and.i23522791 = and i32 %add.i23512790, 1048575
  %add1.i23532792 = or i32 %and.i23522791, -18874368
  %487 = inttoptr i32 %add1.i23532792 to ptr
  %488 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %487) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %488)
  %cmp5812793 = icmp sgt i8 %488, -1
  br i1 %cmp5812793, label %try_wide.while.body583_crit_edge, label %try_wide.while.cond604.preheader_crit_edge

try_wide.while.cond604.preheader_crit_edge:       ; preds = %try_wide
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond604.preheader

try_wide.while.body583_crit_edge:                 ; preds = %try_wide
  br label %while.body583

while.cond604.preheader:                          ; preds = %do.end598.while.cond604.preheader_crit_edge, %try_wide.while.cond604.preheader_crit_edge
  %489 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load i32, ptr %arrayidx.i, align 4
  %add.i23662795 = add i32 %490, 23
  %and.i23672796 = and i32 %add.i23662795, 1048575
  %add1.i23682797 = or i32 %and.i23672796, -18874368
  %491 = inttoptr i32 %add1.i23682797 to ptr
  %492 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %491) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %492)
  %cmp6082798 = icmp sgt i8 %492, -1
  br i1 %cmp6082798, label %while.cond604.preheader.do.end615_crit_edge, label %while.cond604.preheader.while.end620_crit_edge

while.cond604.preheader.while.end620_crit_edge:   ; preds = %while.cond604.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end620

while.cond604.preheader.do.end615_crit_edge:      ; preds = %while.cond604.preheader
  br label %do.end615

while.body583:                                    ; preds = %do.end598.while.body583_crit_edge, %try_wide.while.body583_crit_edge
  %j.42794 = phi i8 [ %j.5, %do.end598.while.body583_crit_edge ], [ 0, %try_wide.while.body583_crit_edge ]
  %493 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load i32, ptr %arrayidx.i, align 4
  %add.i2356 = add i32 %494, 31
  %and.i2357 = and i32 %add.i2356, 1048575
  %add1.i2358 = or i32 %and.i2357, -18874368
  %495 = inttoptr i32 %add1.i2358 to ptr
  %496 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %495) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %497 = and i8 %496, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %497)
  %cmp587.not = icmp eq i8 %497, 0
  br i1 %cmp587.not, label %while.body583.do.end598_crit_edge, label %if.then589

while.body583.do.end598_crit_edge:                ; preds = %while.body583
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end598

if.then589:                                       ; preds = %while.body583
  call void @__sanitizer_cov_trace_pc() #11
  %inc590 = add i8 %j.42794, 1
  %idxprom591 = zext i8 %j.42794 to i32
  %arrayidx592 = getelementptr [6 x i8], ptr @atp_is.wide, i32 0, i32 %idxprom591
  %498 = ptrtoint ptr %arrayidx592 to i32
  call void @__asan_load1_noabort(i32 %498)
  %499 = load i8, ptr %arrayidx592, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %500 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load i32, ptr %arrayidx.i, align 4
  %add.i2361 = add i32 %501, 25
  %and.i2362 = and i32 %add.i2361, 1048575
  %add1.i2363 = or i32 %and.i2362, -18874368
  %502 = inttoptr i32 %add1.i2363 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %502, i8 %499) #9, !srcloc !165
  br label %do.end598

do.end598:                                        ; preds = %if.then589, %while.body583.do.end598_crit_edge
  %j.5 = phi i8 [ %inc590, %if.then589 ], [ %j.42794, %while.body583.do.end598_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !207
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !208
  %503 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load i32, ptr %arrayidx.i, align 4
  %add.i2351 = add i32 %504, 31
  %and.i2352 = and i32 %add.i2351, 1048575
  %add1.i2353 = or i32 %and.i2352, -18874368
  %505 = inttoptr i32 %add1.i2353 to ptr
  %506 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %505) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %cmp581 = icmp sgt i8 %506, -1
  br i1 %cmp581, label %do.end598.while.body583_crit_edge, label %do.end598.while.cond604.preheader_crit_edge

do.end598.while.cond604.preheader_crit_edge:      ; preds = %do.end598
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond604.preheader

do.end598.while.body583_crit_edge:                ; preds = %do.end598
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body583

do.end615:                                        ; preds = %do.end615.do.end615_crit_edge, %while.cond604.preheader.do.end615_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !209
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !210
  %507 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load i32, ptr %arrayidx.i, align 4
  %add.i2366 = add i32 %508, 23
  %and.i2367 = and i32 %add.i2366, 1048575
  %add1.i2368 = or i32 %and.i2367, -18874368
  %509 = inttoptr i32 %add1.i2368 to ptr
  %510 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %509) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %cmp608 = icmp sgt i8 %510, -1
  br i1 %cmp608, label %do.end615.do.end615_crit_edge, label %do.end615.while.end620_crit_edge

do.end615.while.end620_crit_edge:                 ; preds = %do.end615
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end620

do.end615.do.end615_crit_edge:                    ; preds = %do.end615
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end615

while.end620:                                     ; preds = %do.end615.while.end620_crit_edge, %while.cond604.preheader.while.end620_crit_edge
  %511 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load i32, ptr %arrayidx.i, align 4
  %add.i2371 = add i32 %512, 23
  %and.i2372 = and i32 %add.i2371, 1048575
  %add1.i2373 = or i32 %and.i2372, -18874368
  %513 = inttoptr i32 %add1.i2373 to ptr
  %514 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %513) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %trunc = trunc i8 %514 to i4
  %515 = zext i4 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %515, ptr @__sancov_gen_cov_switch_values.91)
  switch i4 %trunc, label %while.end620.for.inc_crit_edge [
    i4 -1, label %while.end620.widep_in.preheader_crit_edge
    i4 -6, label %while.end620.widep_cmd_crit_edge
    i4 -2, label %while.end620.try_wide_crit_edge
  ]

while.end620.try_wide_crit_edge:                  ; preds = %while.end620
  call void @__sanitizer_cov_trace_pc() #11
  br label %try_wide

while.end620.widep_cmd_crit_edge:                 ; preds = %while.end620
  call void @__sanitizer_cov_trace_pc() #11
  br label %widep_cmd

while.end620.widep_in.preheader_crit_edge:        ; preds = %while.end620
  call void @__sanitizer_cov_trace_pc() #11
  br label %widep_in.preheader

while.end620.for.inc_crit_edge:                   ; preds = %while.end620
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

widep_out:                                        ; preds = %widep_out.preheader, %while.end663.widep_out_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %516 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load i32, ptr %arrayidx.i, align 4
  %add.i2376 = add i32 %517, 24
  %and.i2377 = and i32 %add.i2376, 1048575
  %add1.i2378 = or i32 %and.i2377, -18874368
  %518 = inttoptr i32 %add1.i2378 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %518, i8 32) #9, !srcloc !165
  %519 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load i32, ptr %arrayidx.i, align 4
  %add.i23812803 = add i32 %520, 31
  %and.i23822804 = and i32 %add.i23812803, 1048575
  %add1.i23832805 = or i32 %and.i23822804, -18874368
  %521 = inttoptr i32 %add1.i23832805 to ptr
  %522 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %521) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %522)
  %cmp6442806 = icmp sgt i8 %522, -1
  br i1 %cmp6442806, label %widep_out.while.body646_crit_edge, label %widep_out.while.end663_crit_edge

widep_out.while.end663_crit_edge:                 ; preds = %widep_out
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end663

widep_out.while.body646_crit_edge:                ; preds = %widep_out
  br label %while.body646

while.body646:                                    ; preds = %do.end658.while.body646_crit_edge, %widep_out.while.body646_crit_edge
  %523 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load i32, ptr %arrayidx.i, align 4
  %add.i2386 = add i32 %524, 31
  %and.i2387 = and i32 %add.i2386, 1048575
  %add1.i2388 = or i32 %and.i2387, -18874368
  %525 = inttoptr i32 %add1.i2388 to ptr
  %526 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %525) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %527 = and i8 %526, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %527)
  %cmp650.not = icmp eq i8 %527, 0
  br i1 %cmp650.not, label %while.body646.do.end658_crit_edge, label %if.then652

while.body646.do.end658_crit_edge:                ; preds = %while.body646
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end658

if.then652:                                       ; preds = %while.body646
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %528 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load i32, ptr %arrayidx.i, align 4
  %add.i2391 = add i32 %529, 25
  %and.i2392 = and i32 %add.i2391, 1048575
  %add1.i2393 = or i32 %and.i2392, -18874368
  %530 = inttoptr i32 %add1.i2393 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %530, i8 0) #9, !srcloc !165
  br label %do.end658

do.end658:                                        ; preds = %if.then652, %while.body646.do.end658_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !211
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !212
  %531 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %531)
  %532 = load i32, ptr %arrayidx.i, align 4
  %add.i2381 = add i32 %532, 31
  %and.i2382 = and i32 %add.i2381, 1048575
  %add1.i2383 = or i32 %and.i2382, -18874368
  %533 = inttoptr i32 %add1.i2383 to ptr
  %534 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %533) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %cmp644 = icmp sgt i8 %534, -1
  br i1 %cmp644, label %do.end658.while.body646_crit_edge, label %do.end658.while.end663_crit_edge

do.end658.while.end663_crit_edge:                 ; preds = %do.end658
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end663

do.end658.while.body646_crit_edge:                ; preds = %do.end658
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body646

while.end663:                                     ; preds = %do.end658.while.end663_crit_edge, %widep_out.while.end663_crit_edge
  %535 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %535)
  %536 = load i32, ptr %arrayidx.i, align 4
  %add.i2396 = add i32 %536, 23
  %and.i2397 = and i32 %add.i2396, 1048575
  %add1.i2398 = or i32 %and.i2397, -18874368
  %537 = inttoptr i32 %add1.i2398 to ptr
  %538 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %537) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %trunc2713 = trunc i8 %538 to i4
  %539 = zext i4 %trunc2713 to i64
  call void @__sanitizer_cov_trace_switch(i64 %539, ptr @__sancov_gen_cov_switch_values.92)
  switch i4 %trunc2713, label %while.end663.for.inc_crit_edge [
    i4 -1, label %while.end663.widep_in.preheader_crit_edge
    i4 -6, label %while.end663.widep_cmd_crit_edge
    i4 -2, label %while.end663.widep_out_crit_edge
  ]

while.end663.widep_out_crit_edge:                 ; preds = %while.end663
  call void @__sanitizer_cov_trace_pc() #11
  br label %widep_out

while.end663.widep_cmd_crit_edge:                 ; preds = %while.end663
  call void @__sanitizer_cov_trace_pc() #11
  br label %widep_cmd

while.end663.widep_in.preheader_crit_edge:        ; preds = %while.end663
  call void @__sanitizer_cov_trace_pc() #11
  br label %widep_in.preheader

while.end663.for.inc_crit_edge:                   ; preds = %while.end663
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

widep_in.preheader:                               ; preds = %while.end663.widep_in.preheader_crit_edge, %while.end620.widep_in.preheader_crit_edge
  br label %widep_in

widep_in:                                         ; preds = %if.end699.widep_in_crit_edge, %widep_in.preheader
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %540 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load i32, ptr %arrayidx.i, align 4
  %add.i2401 = add i32 %541, 20
  %and.i2402 = and i32 %add.i2401, 1048575
  %add1.i2403 = or i32 %and.i2402, -18874368
  %542 = inttoptr i32 %add1.i2403 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %542, i8 -1) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %543 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %543)
  %544 = load i32, ptr %arrayidx.i, align 4
  %add.i2406 = add i32 %544, 24
  %and.i2407 = and i32 %add.i2406, 1048575
  %add1.i2408 = or i32 %and.i2407, -18874368
  %545 = inttoptr i32 %add1.i2408 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %545, i8 32) #9, !srcloc !165
  br label %widep_in1.outer

widep_in1.outer:                                  ; preds = %if.then688, %widep_in
  %k.1.ph = phi i8 [ %inc690, %if.then688 ], [ 0, %widep_in ]
  br label %widep_in1

widep_in1:                                        ; preds = %if.end693.widep_in1_crit_edge, %widep_in1.outer
  %546 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load i32, ptr %arrayidx.i, align 4
  %add.i2411 = add i32 %547, 31
  %and.i2412 = and i32 %add.i2411, 1048575
  %add1.i2413 = or i32 %and.i2412, -18874368
  %548 = inttoptr i32 %add1.i2413 to ptr
  %549 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %548) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %conv684 = zext i8 %549 to i32
  %and685 = and i32 %conv684, 1
  %cmp686.not = icmp eq i32 %and685, 0
  br i1 %cmp686.not, label %if.end693, label %if.then688

if.then688:                                       ; preds = %widep_in1
  call void @__sanitizer_cov_trace_pc() #11
  %550 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load i32, ptr %arrayidx.i, align 4
  %add.i2416 = add i32 %551, 25
  %and.i2417 = and i32 %add.i2416, 1048575
  %add1.i2418 = or i32 %and.i2417, -18874368
  %552 = inttoptr i32 %add1.i2418 to ptr
  %553 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %552) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %inc690 = add i8 %k.1.ph, 1
  %idxprom691 = zext i8 %k.1.ph to i32
  %arrayidx692 = getelementptr [512 x i8], ptr @atp_is.mbuf, i32 0, i32 %idxprom691
  %554 = ptrtoint ptr %arrayidx692 to i32
  call void @__asan_store1_noabort(i32 %554)
  store i8 %553, ptr %arrayidx692, align 1
  br label %widep_in1.outer

if.end693:                                        ; preds = %widep_in1
  %and695 = and i32 %conv684, 128
  %cmp696 = icmp eq i32 %and695, 0
  br i1 %cmp696, label %if.end693.widep_in1_crit_edge, label %if.end699

if.end693.widep_in1_crit_edge:                    ; preds = %if.end693
  call void @__sanitizer_cov_trace_pc() #11
  br label %widep_in1

if.end699:                                        ; preds = %if.end693
  %555 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %555)
  %556 = load i32, ptr %arrayidx.i, align 4
  %add.i2421 = add i32 %556, 23
  %and.i2422 = and i32 %add.i2421, 1048575
  %add1.i2423 = or i32 %and.i2422, -18874368
  %557 = inttoptr i32 %add1.i2423 to ptr
  %558 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %557) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %trunc2714 = trunc i8 %558 to i4
  %559 = zext i4 %trunc2714 to i64
  call void @__sanitizer_cov_trace_switch(i64 %559, ptr @__sancov_gen_cov_switch_values.93)
  switch i4 %trunc2714, label %if.end699.for.inc_crit_edge [
    i4 -1, label %if.end699.widep_in_crit_edge
    i4 -6, label %if.end699.widep_cmd_crit_edge
    i4 -2, label %if.end699.widep_out.preheader_crit_edge
  ]

if.end699.widep_out.preheader_crit_edge:          ; preds = %if.end699
  call void @__sanitizer_cov_trace_pc() #11
  br label %widep_out.preheader

if.end699.widep_cmd_crit_edge:                    ; preds = %if.end699
  call void @__sanitizer_cov_trace_pc() #11
  br label %widep_cmd

if.end699.widep_in_crit_edge:                     ; preds = %if.end699
  call void @__sanitizer_cov_trace_pc() #11
  br label %widep_in

if.end699.for.inc_crit_edge:                      ; preds = %if.end699
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

widep_cmd:                                        ; preds = %if.end699.widep_cmd_crit_edge, %while.end663.widep_cmd_crit_edge, %while.end620.widep_cmd_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %560 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %560)
  %561 = load i32, ptr %arrayidx.i, align 4
  %add.i2426 = add i32 %561, 16
  %and.i2427 = and i32 %add.i2426, 1048575
  %add1.i2428 = or i32 %and.i2427, -18874368
  %562 = inttoptr i32 %add1.i2428 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %562, i8 48) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %563 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load i32, ptr %arrayidx.i, align 4
  %add.i2431 = add i32 %564, 20
  %and.i2432 = and i32 %add.i2431, 1048575
  %add1.i2433 = or i32 %and.i2432, -18874368
  %565 = inttoptr i32 %add1.i2433 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %565, i8 0) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %566 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load i32, ptr %arrayidx.i, align 4
  %add.i2436 = add i32 %567, 24
  %and.i2437 = and i32 %add.i2436, 1048575
  %add1.i2438 = or i32 %and.i2437, -18874368
  %568 = inttoptr i32 %add1.i2438 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %568, i8 8) #9, !srcloc !165
  %569 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %569)
  %570 = load i32, ptr %arrayidx.i, align 4
  %add.i24412799 = add i32 %570, 31
  %and.i24422800 = and i32 %add.i24412799, 1048575
  %add1.i24432801 = or i32 %and.i24422800, -18874368
  %571 = inttoptr i32 %add1.i24432801 to ptr
  %572 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %571) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %572)
  %cmp7232802 = icmp sgt i8 %572, -1
  br i1 %cmp7232802, label %widep_cmd.do.end730_crit_edge, label %widep_cmd.while.end735_crit_edge

widep_cmd.while.end735_crit_edge:                 ; preds = %widep_cmd
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end735

widep_cmd.do.end730_crit_edge:                    ; preds = %widep_cmd
  br label %do.end730

do.end730:                                        ; preds = %do.end730.do.end730_crit_edge, %widep_cmd.do.end730_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !213
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !214
  %573 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %573)
  %574 = load i32, ptr %arrayidx.i, align 4
  %add.i2441 = add i32 %574, 31
  %and.i2442 = and i32 %add.i2441, 1048575
  %add1.i2443 = or i32 %and.i2442, -18874368
  %575 = inttoptr i32 %add1.i2443 to ptr
  %576 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %575) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %cmp723 = icmp sgt i8 %576, -1
  br i1 %cmp723, label %do.end730.do.end730_crit_edge, label %do.end730.while.end735_crit_edge

do.end730.while.end735_crit_edge:                 ; preds = %do.end730
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end735

do.end730.do.end730_crit_edge:                    ; preds = %do.end730
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end730

while.end735:                                     ; preds = %do.end730.while.end735_crit_edge, %widep_cmd.while.end735_crit_edge
  %577 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %577)
  %578 = load i32, ptr %arrayidx.i, align 4
  %add.i2446 = add i32 %578, 23
  %and.i2447 = and i32 %add.i2446, 1048575
  %add1.i2448 = or i32 %and.i2447, -18874368
  %579 = inttoptr i32 %add1.i2448 to ptr
  %580 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %579) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %581 = zext i8 %580 to i64
  call void @__sanitizer_cov_trace_switch(i64 %581, ptr @__sancov_gen_cov_switch_values.94)
  switch i8 %580, label %while.end735.for.inc_crit_edge [
    i8 22, label %if.end746
    i8 78, label %while.end735.widep_out.preheader_crit_edge
  ]

while.end735.widep_out.preheader_crit_edge:       ; preds = %while.end735
  call void @__sanitizer_cov_trace_pc() #11
  br label %widep_out.preheader

while.end735.for.inc_crit_edge:                   ; preds = %while.end735
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

widep_out.preheader:                              ; preds = %while.end735.widep_out.preheader_crit_edge, %if.end699.widep_out.preheader_crit_edge
  br label %widep_out

if.end746:                                        ; preds = %while.end735
  %582 = load i8, ptr @atp_is.mbuf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %582)
  %cmp748.not = icmp eq i8 %582, 1
  br i1 %cmp748.not, label %if.end751, label %if.end746.not_wide_crit_edge

if.end746.not_wide_crit_edge:                     ; preds = %if.end746
  call void @__sanitizer_cov_trace_pc() #11
  br label %not_wide

if.end751:                                        ; preds = %if.end746
  %583 = load i8, ptr getelementptr inbounds ([512 x i8], ptr @atp_is.mbuf, i32 0, i32 1), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %583)
  %cmp753.not = icmp eq i8 %583, 2
  br i1 %cmp753.not, label %if.end756, label %if.end751.not_wide_crit_edge

if.end751.not_wide_crit_edge:                     ; preds = %if.end751
  call void @__sanitizer_cov_trace_pc() #11
  br label %not_wide

if.end756:                                        ; preds = %if.end751
  %584 = load i8, ptr getelementptr inbounds ([512 x i8], ptr @atp_is.mbuf, i32 0, i32 2), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %584)
  %cmp758.not = icmp eq i8 %584, 3
  br i1 %cmp758.not, label %if.end761, label %if.end756.not_wide_crit_edge

if.end756.not_wide_crit_edge:                     ; preds = %if.end756
  call void @__sanitizer_cov_trace_pc() #11
  br label %not_wide

if.end761:                                        ; preds = %if.end756
  %585 = load i8, ptr getelementptr inbounds ([512 x i8], ptr @atp_is.mbuf, i32 0, i32 3), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %585)
  %cmp763.not = icmp eq i8 %585, 1
  br i1 %cmp763.not, label %if.end766, label %if.end761.not_wide_crit_edge

if.end761.not_wide_crit_edge:                     ; preds = %if.end761
  call void @__sanitizer_cov_trace_pc() #11
  br label %not_wide

if.end766:                                        ; preds = %if.end761
  call void @__sanitizer_cov_trace_pc() #11
  %586 = ptrtoint ptr %arrayidx516 to i32
  call void @__asan_load2_noabort(i32 %586)
  %587 = load i16, ptr %arrayidx516, align 2
  %conv777 = or i16 %587, %84
  store i16 %conv777, ptr %arrayidx516, align 2
  br label %not_wide

not_wide:                                         ; preds = %if.end766, %if.end761.not_wide_crit_edge, %if.end756.not_wide_crit_edge, %if.end751.not_wide_crit_edge, %if.end746.not_wide_crit_edge, %if.else255.not_wide_crit_edge, %land.lhs.true246.not_wide_crit_edge, %inq_ok.not_wide_crit_edge
  %588 = ptrtoint ptr %devtype to i32
  call void @__asan_load1_noabort(i32 %588)
  %589 = load i8, ptr %devtype, align 2
  %590 = zext i8 %589 to i64
  call void @__sanitizer_cov_trace_switch(i64 %590, ptr @__sancov_gen_cov_switch_values.95)
  switch i8 %589, label %not_wide.for.inc_crit_edge [
    i8 0, label %not_wide.if.then812_crit_edge
    i8 7, label %not_wide.if.then812_crit_edge2909
    i8 5, label %land.lhs.true807
  ]

not_wide.if.then812_crit_edge2909:                ; preds = %not_wide
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then812

not_wide.if.then812_crit_edge:                    ; preds = %not_wide
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then812

not_wide.for.inc_crit_edge:                       ; preds = %not_wide
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true807:                                 ; preds = %not_wide
  %591 = and i8 %228, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %591)
  %cmp810.not = icmp eq i8 %591, 0
  br i1 %cmp810.not, label %land.lhs.true807.for.inc_crit_edge, label %land.lhs.true807.if.then812_crit_edge

land.lhs.true807.if.then812_crit_edge:            ; preds = %land.lhs.true807
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then812

land.lhs.true807.for.inc_crit_edge:               ; preds = %land.lhs.true807
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then812:                                       ; preds = %land.lhs.true807.if.then812_crit_edge, %not_wide.if.then812_crit_edge, %not_wide.if.then812_crit_edge2909
  %592 = ptrtoint ptr %arrayidx818 to i32
  call void @__asan_load2_noabort(i32 %592)
  %593 = load i16, ptr %arrayidx818, align 2
  %conv819 = zext i16 %593 to i32
  %and821 = and i32 %shl, %conv819
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and821)
  %cmp822.not = icmp eq i32 %and821, 0
  br i1 %cmp822.not, label %if.then812.for.inc_crit_edge, label %set_sync

if.then812.for.inc_crit_edge:                     ; preds = %if.then812
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

set_sync:                                         ; preds = %if.then812
  %594 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %594)
  %595 = load ptr, ptr %pdev.i, align 4
  %device.i2450 = getelementptr inbounds %struct.pci_dev, ptr %595, i32 0, i32 8
  %596 = ptrtoint ptr %device.i2450 to i32
  call void @__asan_load2_noabort(i32 %596)
  %597 = load i16, ptr %device.i2450, align 2
  %598 = zext i16 %597 to i64
  call void @__sanitizer_cov_trace_switch(i64 %598, ptr @__sancov_gen_cov_switch_values.96)
  switch i16 %597, label %set_sync.if.end855.sink.split_crit_edge [
    i16 -32630, label %set_sync.lor.lhs.false830_crit_edge
    i16 -32639, label %set_sync.lor.lhs.false830_crit_edge2910
    i16 -32640, label %set_sync.lor.lhs.false830_crit_edge2911
  ]

set_sync.lor.lhs.false830_crit_edge2911:          ; preds = %set_sync
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false830

set_sync.lor.lhs.false830_crit_edge2910:          ; preds = %set_sync
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false830

set_sync.lor.lhs.false830_crit_edge:              ; preds = %set_sync
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false830

set_sync.if.end855.sink.split_crit_edge:          ; preds = %set_sync
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end855.sink.split

lor.lhs.false830:                                 ; preds = %set_sync.lor.lhs.false830_crit_edge, %set_sync.lor.lhs.false830_crit_edge2910, %set_sync.lor.lhs.false830_crit_edge2911
  %arrayidx835 = getelementptr %struct.atp_unit, ptr %dev, i32 0, i32 15, i32 %idxprom, i32 %indvars.iv
  %599 = ptrtoint ptr %arrayidx835 to i32
  call void @__asan_load1_noabort(i32 %599)
  %600 = load i8, ptr %arrayidx835, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %600)
  %cmp837 = icmp eq i8 %600, 2
  br i1 %cmp837, label %lor.lhs.false830.if.end855.sink.split_crit_edge, label %if.else842

lor.lhs.false830.if.end855.sink.split_crit_edge:  ; preds = %lor.lhs.false830
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end855.sink.split

if.else842:                                       ; preds = %lor.lhs.false830
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %600)
  %cmp849 = icmp ugt i8 %600, 2
  br i1 %cmp849, label %if.else842.if.end855.sink.split_crit_edge, label %if.else842.if.end855_crit_edge

if.else842.if.end855_crit_edge:                   ; preds = %if.else842
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end855

if.else842.if.end855.sink.split_crit_edge:        ; preds = %if.else842
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end855.sink.split

if.end855.sink.split:                             ; preds = %if.else842.if.end855.sink.split_crit_edge, %lor.lhs.false830.if.end855.sink.split_crit_edge, %set_sync.if.end855.sink.split_crit_edge
  %.sink2869 = phi i8 [ 12, %set_sync.if.end855.sink.split_crit_edge ], [ 12, %lor.lhs.false830.if.end855.sink.split_crit_edge ], [ 10, %if.else842.if.end855.sink.split_crit_edge ]
  %601 = ptrtoint ptr %arrayidx852 to i32
  call void @__asan_store1_noabort(i32 %601)
  store i8 %.sink2869, ptr %arrayidx852, align 1
  %602 = ptrtoint ptr %arrayidx853 to i32
  call void @__asan_store1_noabort(i32 %602)
  store i8 %.sink2869, ptr %arrayidx853, align 1
  br label %if.end855

if.end855:                                        ; preds = %if.end855.sink.split, %if.else842.if.end855_crit_edge
  %603 = ptrtoint ptr %arrayidx516 to i32
  call void @__asan_load2_noabort(i32 %603)
  %604 = load i16, ptr %arrayidx516, align 2
  %conv860 = zext i16 %604 to i32
  %and861 = and i32 %shl, %conv860
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and861)
  %cmp862.not = icmp ne i32 %and861, 0
  %spec.select = zext i1 %cmp862.not to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %605 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %605)
  %606 = load i32, ptr %arrayidx.i, align 4
  %add.i2456 = add i32 %606, 27
  %and.i2457 = and i32 %add.i2456, 1048575
  %add1.i2458 = or i32 %and.i2457, -18874368
  %607 = inttoptr i32 %add1.i2458 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %607, i8 %spec.select) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %608 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %608)
  %609 = load i32, ptr %arrayidx.i, align 4
  %add.i2461 = add i32 %609, 3
  %and.i2462 = and i32 %add.i2461, 1048575
  %add1.i2463 = or i32 %and.i2462, -18874368
  %610 = inttoptr i32 %add1.i2463 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %610, i8 0) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %611 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %611)
  %612 = load i32, ptr %arrayidx.i, align 4
  %add.i2466 = add i32 %612, 4
  %and.i2467 = and i32 %add.i2466, 1048575
  %add1.i2468 = or i32 %and.i2467, -18874368
  %613 = inttoptr i32 %add1.i2468 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %613, i8 0) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %614 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %614)
  %615 = load i32, ptr %arrayidx.i, align 4
  %add.i2471 = add i32 %615, 5
  %and.i2472 = and i32 %add.i2471, 1048575
  %add1.i2473 = or i32 %and.i2472, -18874368
  %616 = inttoptr i32 %add1.i2473 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %616, i8 0) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %617 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %617)
  %618 = load i32, ptr %arrayidx.i, align 4
  %add.i2476 = add i32 %618, 6
  %and.i2477 = and i32 %add.i2476, 1048575
  %add1.i2478 = or i32 %and.i2477, -18874368
  %619 = inttoptr i32 %add1.i2478 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %619, i8 0) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %620 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %620)
  %621 = load i32, ptr %arrayidx.i, align 4
  %add.i2481 = add i32 %621, 7
  %and.i2482 = and i32 %add.i2481, 1048575
  %add1.i2483 = or i32 %and.i2482, -18874368
  %622 = inttoptr i32 %add1.i2483 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %622, i8 0) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %623 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %623)
  %624 = load i32, ptr %arrayidx.i, align 4
  %add.i2486 = add i32 %624, 8
  %and.i2487 = and i32 %add.i2486, 1048575
  %add1.i2488 = or i32 %and.i2487, -18874368
  %625 = inttoptr i32 %add1.i2488 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %625, i8 0) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %626 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %626)
  %627 = load i32, ptr %arrayidx.i, align 4
  %add.i2491 = add i32 %627, 15
  %and.i2492 = and i32 %add.i2491, 1048575
  %add1.i2493 = or i32 %and.i2492, -18874368
  %628 = inttoptr i32 %add1.i2493 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %628, i8 0) #9, !srcloc !165
  %629 = ptrtoint ptr %devsp to i32
  call void @__asan_load1_noabort(i32 %629)
  %630 = load i8, ptr %devsp, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %631 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %631)
  %632 = load i32, ptr %arrayidx.i, align 4
  %add.i2496 = add i32 %632, 17
  %and.i2497 = and i32 %add.i2496, 1048575
  %add1.i2498 = or i32 %and.i2497, -18874368
  %633 = inttoptr i32 %add1.i2498 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %633, i8 %630) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %634 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %634)
  %635 = load i32, ptr %arrayidx.i, align 4
  %add.i2501 = add i32 %635, 18
  %and.i2502 = and i32 %add.i2501, 1048575
  %add1.i2503 = or i32 %and.i2502, -18874368
  %636 = inttoptr i32 %add1.i2503 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %636, i8 0) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %637 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %637)
  %638 = load i32, ptr %arrayidx.i, align 4
  %add.i2506 = add i32 %638, 19
  %and.i2507 = and i32 %add.i2506, 1048575
  %add1.i2508 = or i32 %and.i2507, -18874368
  %639 = inttoptr i32 %add1.i2508 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %639, i8 0) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %640 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %640)
  %641 = load i32, ptr %arrayidx.i, align 4
  %add.i2511 = add i32 %641, 20
  %and.i2512 = and i32 %add.i2511, 1048575
  %add1.i2513 = or i32 %and.i2512, -18874368
  %642 = inttoptr i32 %add1.i2513 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %642, i8 6) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %643 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %643)
  %644 = load i32, ptr %arrayidx.i, align 4
  %add.i2516 = add i32 %644, 24
  %and.i2517 = and i32 %add.i2516, 1048575
  %add1.i2518 = or i32 %and.i2517, -18874368
  %645 = inttoptr i32 %add1.i2518 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %645, i8 6) #9, !srcloc !165
  %646 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %646)
  %647 = load i32, ptr %arrayidx.i, align 4
  %add.i25212807 = add i32 %647, 31
  %and.i25222808 = and i32 %add.i25212807, 1048575
  %add1.i25232809 = or i32 %and.i25222808, -18874368
  %648 = inttoptr i32 %add1.i25232809 to ptr
  %649 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %648) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %649)
  %cmp8792810 = icmp sgt i8 %649, -1
  br i1 %cmp8792810, label %if.end855.do.end886_crit_edge, label %if.end855.while.end891_crit_edge

if.end855.while.end891_crit_edge:                 ; preds = %if.end855
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end891

if.end855.do.end886_crit_edge:                    ; preds = %if.end855
  br label %do.end886

do.end886:                                        ; preds = %do.end886.do.end886_crit_edge, %if.end855.do.end886_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !215
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !216
  %650 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %650)
  %651 = load i32, ptr %arrayidx.i, align 4
  %add.i2521 = add i32 %651, 31
  %and.i2522 = and i32 %add.i2521, 1048575
  %add1.i2523 = or i32 %and.i2522, -18874368
  %652 = inttoptr i32 %add1.i2523 to ptr
  %653 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %652) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %cmp879 = icmp sgt i8 %653, -1
  br i1 %cmp879, label %do.end886.do.end886_crit_edge, label %do.end886.while.end891_crit_edge

do.end886.while.end891_crit_edge:                 ; preds = %do.end886
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end891

do.end886.do.end886_crit_edge:                    ; preds = %do.end886
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end886

while.end891:                                     ; preds = %do.end886.while.end891_crit_edge, %if.end855.while.end891_crit_edge
  %654 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %654)
  %655 = load i32, ptr %arrayidx.i, align 4
  %add.i2526 = add i32 %655, 23
  %and.i2527 = and i32 %add.i2526, 1048575
  %add1.i2528 = or i32 %and.i2527, -18874368
  %656 = inttoptr i32 %add1.i2528 to ptr
  %657 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %656) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %657)
  %cmp894.not = icmp eq i8 %657, 17
  br i1 %cmp894.not, label %while.end891.if.end902_crit_edge, label %land.lhs.true896

while.end891.if.end902_crit_edge:                 ; preds = %while.end891
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end902

land.lhs.true896:                                 ; preds = %while.end891
  %658 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %658)
  %659 = load i32, ptr %arrayidx.i, align 4
  %add.i2531 = add i32 %659, 23
  %and.i2532 = and i32 %add.i2531, 1048575
  %add1.i2533 = or i32 %and.i2532, -18874368
  %660 = inttoptr i32 %add1.i2533 to ptr
  %661 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %660) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 -114, i8 %661)
  %cmp899.not = icmp eq i8 %661, -114
  br i1 %cmp899.not, label %land.lhs.true896.if.end902_crit_edge, label %land.lhs.true896.for.inc_crit_edge

land.lhs.true896.for.inc_crit_edge:               ; preds = %land.lhs.true896
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true896.if.end902_crit_edge:             ; preds = %land.lhs.true896
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end902

if.end902:                                        ; preds = %land.lhs.true896.if.end902_crit_edge, %while.end891.if.end902_crit_edge
  %662 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %662)
  %663 = load i32, ptr %arrayidx.i, align 4
  %add.i25362811 = add i32 %663, 23
  %and.i25372812 = and i32 %add.i25362811, 1048575
  %add1.i25382813 = or i32 %and.i25372812, -18874368
  %664 = inttoptr i32 %add1.i25382813 to ptr
  %665 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %664) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 -114, i8 %665)
  %cmp906.not2814 = icmp eq i8 %665, -114
  br i1 %cmp906.not2814, label %if.end902.try_sync.preheader_crit_edge, label %if.end902.do.end913_crit_edge

if.end902.do.end913_crit_edge:                    ; preds = %if.end902
  br label %do.end913

if.end902.try_sync.preheader_crit_edge:           ; preds = %if.end902
  call void @__sanitizer_cov_trace_pc() #11
  br label %try_sync.preheader

do.end913:                                        ; preds = %do.end913.do.end913_crit_edge, %if.end902.do.end913_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !217
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !218
  %666 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %666)
  %667 = load i32, ptr %arrayidx.i, align 4
  %add.i2536 = add i32 %667, 23
  %and.i2537 = and i32 %add.i2536, 1048575
  %add1.i2538 = or i32 %and.i2537, -18874368
  %668 = inttoptr i32 %add1.i2538 to ptr
  %669 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %668) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %cmp906.not = icmp eq i8 %669, -114
  br i1 %cmp906.not, label %do.end913.try_sync.preheader_crit_edge, label %do.end913.do.end913_crit_edge

do.end913.do.end913_crit_edge:                    ; preds = %do.end913
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end913

do.end913.try_sync.preheader_crit_edge:           ; preds = %do.end913
  call void @__sanitizer_cov_trace_pc() #11
  br label %try_sync.preheader

try_sync.preheader:                               ; preds = %do.end913.try_sync.preheader_crit_edge, %if.end902.try_sync.preheader_crit_edge
  br label %try_sync

try_sync:                                         ; preds = %while.end1005.try_sync_crit_edge, %try_sync.preheader
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %670 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %670)
  %671 = load i32, ptr %arrayidx.i, align 4
  %add.i2541 = add i32 %671, 20
  %and.i2542 = and i32 %add.i2541, 1048575
  %add1.i2543 = or i32 %and.i2542, -18874368
  %672 = inttoptr i32 %add1.i2543 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %672, i8 6) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %673 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %673)
  %674 = load i32, ptr %arrayidx.i, align 4
  %add.i2546 = add i32 %674, 24
  %and.i2547 = and i32 %add.i2546, 1048575
  %add1.i2548 = or i32 %and.i2547, -18874368
  %675 = inttoptr i32 %add1.i2548 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %675, i8 32) #9, !srcloc !165
  %676 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %676)
  %677 = load i32, ptr %arrayidx.i, align 4
  %add.i25512815 = add i32 %677, 31
  %and.i25522816 = and i32 %add.i25512815, 1048575
  %add1.i25532817 = or i32 %and.i25522816, -18874368
  %678 = inttoptr i32 %add1.i25532817 to ptr
  %679 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %678) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %679)
  %cmp9232818 = icmp sgt i8 %679, -1
  br i1 %cmp9232818, label %try_sync.while.body925_crit_edge, label %try_sync.while.cond989.preheader_crit_edge

try_sync.while.cond989.preheader_crit_edge:       ; preds = %try_sync
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond989.preheader

try_sync.while.body925_crit_edge:                 ; preds = %try_sync
  br label %while.body925

while.cond989.preheader:                          ; preds = %if.end987.while.cond989.preheader_crit_edge, %try_sync.while.cond989.preheader_crit_edge
  %680 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %680)
  %681 = load i32, ptr %arrayidx.i, align 4
  %add.i25912820 = add i32 %681, 23
  %and.i25922821 = and i32 %add.i25912820, 1048575
  %add1.i25932822 = or i32 %and.i25922821, -18874368
  %682 = inttoptr i32 %add1.i25932822 to ptr
  %683 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %682) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %683)
  %cmp9932823 = icmp sgt i8 %683, -1
  br i1 %cmp9932823, label %while.cond989.preheader.do.end1000_crit_edge, label %while.cond989.preheader.while.end1005_crit_edge

while.cond989.preheader.while.end1005_crit_edge:  ; preds = %while.cond989.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end1005

while.cond989.preheader.do.end1000_crit_edge:     ; preds = %while.cond989.preheader
  br label %do.end1000

while.body925:                                    ; preds = %if.end987.while.body925_crit_edge, %try_sync.while.body925_crit_edge
  %j.72819 = phi i8 [ %j.8, %if.end987.while.body925_crit_edge ], [ 0, %try_sync.while.body925_crit_edge ]
  %684 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %684)
  %685 = load i32, ptr %arrayidx.i, align 4
  %add.i2556 = add i32 %685, 31
  %and.i2557 = and i32 %add.i2556, 1048575
  %add1.i2558 = or i32 %and.i2557, -18874368
  %686 = inttoptr i32 %add1.i2558 to ptr
  %687 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %686) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %688 = and i8 %687, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %688)
  %cmp929.not = icmp eq i8 %688, 0
  br i1 %cmp929.not, label %while.body925.if.end987_crit_edge, label %if.then931

while.body925.if.end987_crit_edge:                ; preds = %while.body925
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end987

if.then931:                                       ; preds = %while.body925
  %689 = ptrtoint ptr %arrayidx516 to i32
  call void @__asan_load2_noabort(i32 %689)
  %690 = load i16, ptr %arrayidx516, align 2
  %conv936 = zext i16 %690 to i32
  %and937 = and i32 %shl, %conv936
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and937)
  %cmp938.not = icmp eq i32 %and937, 0
  br i1 %cmp938.not, label %if.else968, label %if.then940

if.then940:                                       ; preds = %if.then931
  %691 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %691)
  %692 = load ptr, ptr %pdev.i, align 4
  %device.i2560 = getelementptr inbounds %struct.pci_dev, ptr %692, i32 0, i32 8
  %693 = ptrtoint ptr %device.i2560 to i32
  call void @__asan_load2_noabort(i32 %693)
  %694 = load i16, ptr %device.i2560, align 2
  %695 = zext i16 %694 to i64
  call void @__sanitizer_cov_trace_switch(i64 %695, ptr @__sancov_gen_cov_switch_values.97)
  switch i16 %694, label %if.else963 [
    i16 -32630, label %if.then940.if.then946_crit_edge
    i16 -32639, label %if.then940.if.then946_crit_edge2912
    i16 -32640, label %if.then940.if.then946_crit_edge2913
  ]

if.then940.if.then946_crit_edge2913:              ; preds = %if.then940
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then946

if.then940.if.then946_crit_edge2912:              ; preds = %if.then940
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then946

if.then940.if.then946_crit_edge:                  ; preds = %if.then940
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then946

if.then946:                                       ; preds = %if.then940.if.then946_crit_edge, %if.then940.if.then946_crit_edge2912, %if.then940.if.then946_crit_edge2913
  %696 = ptrtoint ptr %arrayidx949 to i32
  call void @__asan_load2_noabort(i32 %696)
  %697 = load i16, ptr %arrayidx949, align 2
  %conv950 = zext i16 %697 to i32
  %and951 = and i32 %shl, %conv950
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and951)
  %cmp952.not = icmp eq i32 %and951, 0
  %inc959 = add i8 %j.72819, 1
  %idxprom960 = zext i8 %j.72819 to i32
  br i1 %cmp952.not, label %if.else958, label %if.then954

if.then954:                                       ; preds = %if.then946
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx957 = getelementptr [6 x i8], ptr %synuw, i32 0, i32 %idxprom960
  %698 = ptrtoint ptr %arrayidx957 to i32
  call void @__asan_load1_noabort(i32 %698)
  %699 = load i8, ptr %arrayidx957, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %700 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %700)
  %701 = load i32, ptr %arrayidx.i, align 4
  %add.i2566 = add i32 %701, 25
  %and.i2567 = and i32 %add.i2566, 1048575
  %add1.i2568 = or i32 %and.i2567, -18874368
  %702 = inttoptr i32 %add1.i2568 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %702, i8 %699) #9, !srcloc !165
  br label %if.end987

if.else958:                                       ; preds = %if.then946
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx961 = getelementptr [6 x i8], ptr @atp_is.synw, i32 0, i32 %idxprom960
  %703 = ptrtoint ptr %arrayidx961 to i32
  call void @__asan_load1_noabort(i32 %703)
  %704 = load i8, ptr %arrayidx961, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %705 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %705)
  %706 = load i32, ptr %arrayidx.i, align 4
  %add.i2571 = add i32 %706, 25
  %and.i2572 = and i32 %add.i2571, 1048575
  %add1.i2573 = or i32 %and.i2572, -18874368
  %707 = inttoptr i32 %add1.i2573 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %707, i8 %704) #9, !srcloc !165
  br label %if.end987

if.else963:                                       ; preds = %if.then940
  call void @__sanitizer_cov_trace_pc() #11
  %inc964 = add i8 %j.72819, 1
  %idxprom965 = zext i8 %j.72819 to i32
  %arrayidx966 = getelementptr [6 x i8], ptr @atp_is.synw_870, i32 0, i32 %idxprom965
  %708 = ptrtoint ptr %arrayidx966 to i32
  call void @__asan_load1_noabort(i32 %708)
  %709 = load i8, ptr %arrayidx966, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %710 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %710)
  %711 = load i32, ptr %arrayidx.i, align 4
  %add.i2576 = add i32 %711, 25
  %and.i2577 = and i32 %add.i2576, 1048575
  %add1.i2578 = or i32 %and.i2577, -18874368
  %712 = inttoptr i32 %add1.i2578 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %712, i8 %709) #9, !srcloc !165
  br label %if.end987

if.else968:                                       ; preds = %if.then931
  %713 = ptrtoint ptr %arrayidx949 to i32
  call void @__asan_load2_noabort(i32 %713)
  %714 = load i16, ptr %arrayidx949, align 2
  %conv973 = zext i16 %714 to i32
  %and974 = and i32 %shl, %conv973
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and974)
  %cmp975.not = icmp eq i32 %and974, 0
  %inc982 = add i8 %j.72819, 1
  %idxprom983 = zext i8 %j.72819 to i32
  br i1 %cmp975.not, label %if.else981, label %if.then977

if.then977:                                       ; preds = %if.else968
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx980 = getelementptr [6 x i8], ptr %synu, i32 0, i32 %idxprom983
  %715 = ptrtoint ptr %arrayidx980 to i32
  call void @__asan_load1_noabort(i32 %715)
  %716 = load i8, ptr %arrayidx980, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %717 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %717)
  %718 = load i32, ptr %arrayidx.i, align 4
  %add.i2581 = add i32 %718, 25
  %and.i2582 = and i32 %add.i2581, 1048575
  %add1.i2583 = or i32 %and.i2582, -18874368
  %719 = inttoptr i32 %add1.i2583 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %719, i8 %716) #9, !srcloc !165
  br label %if.end987

if.else981:                                       ; preds = %if.else968
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx984 = getelementptr [6 x i8], ptr @atp_is.synn, i32 0, i32 %idxprom983
  %720 = ptrtoint ptr %arrayidx984 to i32
  call void @__asan_load1_noabort(i32 %720)
  %721 = load i8, ptr %arrayidx984, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %722 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %722)
  %723 = load i32, ptr %arrayidx.i, align 4
  %add.i2586 = add i32 %723, 25
  %and.i2587 = and i32 %add.i2586, 1048575
  %add1.i2588 = or i32 %and.i2587, -18874368
  %724 = inttoptr i32 %add1.i2588 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %724, i8 %721) #9, !srcloc !165
  br label %if.end987

if.end987:                                        ; preds = %if.else981, %if.then977, %if.else963, %if.else958, %if.then954, %while.body925.if.end987_crit_edge
  %j.8 = phi i8 [ %inc959, %if.then954 ], [ %inc959, %if.else958 ], [ %inc964, %if.else963 ], [ %inc982, %if.then977 ], [ %inc982, %if.else981 ], [ %j.72819, %while.body925.if.end987_crit_edge ]
  %725 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %725)
  %726 = load i32, ptr %arrayidx.i, align 4
  %add.i2551 = add i32 %726, 31
  %and.i2552 = and i32 %add.i2551, 1048575
  %add1.i2553 = or i32 %and.i2552, -18874368
  %727 = inttoptr i32 %add1.i2553 to ptr
  %728 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %727) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %cmp923 = icmp sgt i8 %728, -1
  br i1 %cmp923, label %if.end987.while.body925_crit_edge, label %if.end987.while.cond989.preheader_crit_edge

if.end987.while.cond989.preheader_crit_edge:      ; preds = %if.end987
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond989.preheader

if.end987.while.body925_crit_edge:                ; preds = %if.end987
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body925

do.end1000:                                       ; preds = %do.end1000.do.end1000_crit_edge, %while.cond989.preheader.do.end1000_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !219
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !220
  %729 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %729)
  %730 = load i32, ptr %arrayidx.i, align 4
  %add.i2591 = add i32 %730, 23
  %and.i2592 = and i32 %add.i2591, 1048575
  %add1.i2593 = or i32 %and.i2592, -18874368
  %731 = inttoptr i32 %add1.i2593 to ptr
  %732 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %731) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %cmp993 = icmp sgt i8 %732, -1
  br i1 %cmp993, label %do.end1000.do.end1000_crit_edge, label %do.end1000.while.end1005_crit_edge

do.end1000.while.end1005_crit_edge:               ; preds = %do.end1000
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end1005

do.end1000.do.end1000_crit_edge:                  ; preds = %do.end1000
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end1000

while.end1005:                                    ; preds = %do.end1000.while.end1005_crit_edge, %while.cond989.preheader.while.end1005_crit_edge
  %733 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %733)
  %734 = load i32, ptr %arrayidx.i, align 4
  %add.i2596 = add i32 %734, 23
  %and.i2597 = and i32 %add.i2596, 1048575
  %add1.i2598 = or i32 %and.i2597, -18874368
  %735 = inttoptr i32 %add1.i2598 to ptr
  %736 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %735) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %trunc2715 = trunc i8 %736 to i4
  %737 = zext i4 %trunc2715 to i64
  call void @__sanitizer_cov_trace_switch(i64 %737, ptr @__sancov_gen_cov_switch_values.98)
  switch i4 %trunc2715, label %while.end1005.for.inc_crit_edge [
    i4 -1, label %while.end1005.phase_ins_crit_edge
    i4 -6, label %while.end1005.phase_cmds_crit_edge
    i4 -2, label %while.end1005.try_sync_crit_edge
  ]

while.end1005.try_sync_crit_edge:                 ; preds = %while.end1005
  call void @__sanitizer_cov_trace_pc() #11
  br label %try_sync

while.end1005.phase_cmds_crit_edge:               ; preds = %while.end1005
  call void @__sanitizer_cov_trace_pc() #11
  br label %phase_cmds

while.end1005.phase_ins_crit_edge:                ; preds = %while.end1005
  br label %phase_ins

while.end1005.for.inc_crit_edge:                  ; preds = %while.end1005
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

phase_outs:                                       ; preds = %if.end1111.phase_outs_crit_edge, %if.end1054.phase_outs_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %738 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %738)
  %739 = load i32, ptr %arrayidx.i, align 4
  %add.i2601 = add i32 %739, 24
  %and.i2602 = and i32 %add.i2601, 1048575
  %add1.i2603 = or i32 %and.i2602, -18874368
  %740 = inttoptr i32 %add1.i2603 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %740, i8 32) #9, !srcloc !165
  %741 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %741)
  %742 = load i32, ptr %arrayidx.i, align 4
  %add.i26062824 = add i32 %742, 31
  %and.i26072825 = and i32 %add.i26062824, 1048575
  %add1.i26082826 = or i32 %and.i26072825, -18874368
  %743 = inttoptr i32 %add1.i26082826 to ptr
  %744 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %743) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %744)
  %cmp10292827 = icmp sgt i8 %744, -1
  br i1 %cmp10292827, label %phase_outs.while.body1031_crit_edge, label %phase_outs.while.end1048_crit_edge

phase_outs.while.end1048_crit_edge:               ; preds = %phase_outs
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end1048

phase_outs.while.body1031_crit_edge:              ; preds = %phase_outs
  br label %while.body1031

while.body1031:                                   ; preds = %do.end1043.while.body1031_crit_edge, %phase_outs.while.body1031_crit_edge
  %745 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %745)
  %746 = load i32, ptr %arrayidx.i, align 4
  %add.i2611 = add i32 %746, 31
  %and.i2612 = and i32 %add.i2611, 1048575
  %add1.i2613 = or i32 %and.i2612, -18874368
  %747 = inttoptr i32 %add1.i2613 to ptr
  %748 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %747) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %749 = and i8 %748, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %749)
  %cmp1035.not = icmp eq i8 %749, 0
  br i1 %cmp1035.not, label %while.body1031.do.end1043_crit_edge, label %if.then1037

while.body1031.do.end1043_crit_edge:              ; preds = %while.body1031
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end1043

if.then1037:                                      ; preds = %while.body1031
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %750 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %750)
  %751 = load i32, ptr %arrayidx.i, align 4
  %add.i2616 = add i32 %751, 25
  %and.i2617 = and i32 %add.i2616, 1048575
  %add1.i2618 = or i32 %and.i2617, -18874368
  %752 = inttoptr i32 %add1.i2618 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %752, i8 0) #9, !srcloc !165
  br label %do.end1043

do.end1043:                                       ; preds = %if.then1037, %while.body1031.do.end1043_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !221
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !222
  %753 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %753)
  %754 = load i32, ptr %arrayidx.i, align 4
  %add.i2606 = add i32 %754, 31
  %and.i2607 = and i32 %add.i2606, 1048575
  %add1.i2608 = or i32 %and.i2607, -18874368
  %755 = inttoptr i32 %add1.i2608 to ptr
  %756 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %755) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %cmp1029 = icmp sgt i8 %756, -1
  br i1 %cmp1029, label %do.end1043.while.body1031_crit_edge, label %do.end1043.while.end1048_crit_edge

do.end1043.while.end1048_crit_edge:               ; preds = %do.end1043
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end1048

do.end1043.while.body1031_crit_edge:              ; preds = %do.end1043
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body1031

while.end1048:                                    ; preds = %do.end1043.while.end1048_crit_edge, %phase_outs.while.end1048_crit_edge
  %757 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %757)
  %758 = load i32, ptr %arrayidx.i, align 4
  %add.i2621 = add i32 %758, 23
  %and.i2622 = and i32 %add.i2621, 1048575
  %add1.i2623 = or i32 %and.i2622, -18874368
  %759 = inttoptr i32 %add1.i2623 to ptr
  %760 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %759) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 -123, i8 %760)
  %cmp1051 = icmp eq i8 %760, -123
  br i1 %cmp1051, label %while.end1048.tar_dcons_crit_edge, label %if.end1054

while.end1048.tar_dcons_crit_edge:                ; preds = %while.end1048
  call void @__sanitizer_cov_trace_pc() #11
  br label %tar_dcons

if.end1054:                                       ; preds = %while.end1048
  %trunc2717 = trunc i8 %760 to i4
  %761 = zext i4 %trunc2717 to i64
  call void @__sanitizer_cov_trace_switch(i64 %761, ptr @__sancov_gen_cov_switch_values.99)
  switch i4 %trunc2717, label %if.end1054.for.inc_crit_edge [
    i4 -1, label %if.end1054.phase_ins.backedge_crit_edge
    i4 -6, label %if.end1054.phase_cmds_crit_edge
    i4 -2, label %if.end1054.phase_outs_crit_edge
  ]

if.end1054.phase_outs_crit_edge:                  ; preds = %if.end1054
  call void @__sanitizer_cov_trace_pc() #11
  br label %phase_outs

if.end1054.phase_cmds_crit_edge:                  ; preds = %if.end1054
  call void @__sanitizer_cov_trace_pc() #11
  br label %phase_cmds

if.end1054.phase_ins.backedge_crit_edge:          ; preds = %if.end1054
  call void @__sanitizer_cov_trace_pc() #11
  br label %phase_ins.backedge

if.end1054.for.inc_crit_edge:                     ; preds = %if.end1054
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

phase_ins:                                        ; preds = %phase_ins.backedge, %while.end1005.phase_ins_crit_edge
  %762 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %762)
  %763 = load ptr, ptr %pdev.i, align 4
  %device.i2625 = getelementptr inbounds %struct.pci_dev, ptr %763, i32 0, i32 8
  %764 = ptrtoint ptr %device.i2625 to i32
  call void @__asan_load2_noabort(i32 %764)
  %765 = load i16, ptr %device.i2625, align 2
  %766 = zext i16 %765 to i64
  call void @__sanitizer_cov_trace_switch(i64 %766, ptr @__sancov_gen_cov_switch_values.100)
  switch i16 %765, label %if.else1079 [
    i16 -32630, label %phase_ins.if.then1078_crit_edge
    i16 -32639, label %phase_ins.if.then1078_crit_edge2914
    i16 -32640, label %phase_ins.if.then1078_crit_edge2915
  ]

phase_ins.if.then1078_crit_edge2915:              ; preds = %phase_ins
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then1078

phase_ins.if.then1078_crit_edge2914:              ; preds = %phase_ins
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then1078

phase_ins.if.then1078_crit_edge:                  ; preds = %phase_ins
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then1078

if.then1078:                                      ; preds = %phase_ins.if.then1078_crit_edge, %phase_ins.if.then1078_crit_edge2914, %phase_ins.if.then1078_crit_edge2915
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %767 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %767)
  %768 = load i32, ptr %arrayidx.i, align 4
  %add.i2631 = add i32 %768, 20
  %and.i2632 = and i32 %add.i2631, 1048575
  %add1.i2633 = or i32 %and.i2632, -18874368
  %769 = inttoptr i32 %add1.i2633 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %769, i8 6) #9, !srcloc !165
  br label %if.end1080

if.else1079:                                      ; preds = %phase_ins
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %770 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %770)
  %771 = load i32, ptr %arrayidx.i, align 4
  %add.i2636 = add i32 %771, 20
  %and.i2637 = and i32 %add.i2636, 1048575
  %add1.i2638 = or i32 %and.i2637, -18874368
  %772 = inttoptr i32 %add1.i2638 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %772, i8 -1) #9, !srcloc !165
  br label %if.end1080

if.end1080:                                       ; preds = %if.else1079, %if.then1078
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %773 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %773)
  %774 = load i32, ptr %arrayidx.i, align 4
  %add.i2641 = add i32 %774, 24
  %and.i2642 = and i32 %add.i2641, 1048575
  %add1.i2643 = or i32 %and.i2642, -18874368
  %775 = inttoptr i32 %add1.i2643 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %775, i8 32) #9, !srcloc !165
  br label %phase_ins1.outer

phase_ins1.outer:                                 ; preds = %if.then1086, %if.end1080
  %k.2.ph = phi i8 [ %inc1088, %if.then1086 ], [ 0, %if.end1080 ]
  br label %phase_ins1

phase_ins1:                                       ; preds = %if.end1091.phase_ins1_crit_edge, %phase_ins1.outer
  %776 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %776)
  %777 = load i32, ptr %arrayidx.i, align 4
  %add.i2646 = add i32 %777, 31
  %and.i2647 = and i32 %add.i2646, 1048575
  %add1.i2648 = or i32 %and.i2647, -18874368
  %778 = inttoptr i32 %add1.i2648 to ptr
  %779 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %778) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %conv1082 = zext i8 %779 to i32
  %and1083 = and i32 %conv1082, 1
  %cmp1084.not = icmp eq i32 %and1083, 0
  br i1 %cmp1084.not, label %if.end1091, label %if.then1086

if.then1086:                                      ; preds = %phase_ins1
  call void @__sanitizer_cov_trace_pc() #11
  %780 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %780)
  %781 = load i32, ptr %arrayidx.i, align 4
  %add.i2651 = add i32 %781, 25
  %and.i2652 = and i32 %add.i2651, 1048575
  %add1.i2653 = or i32 %and.i2652, -18874368
  %782 = inttoptr i32 %add1.i2653 to ptr
  %783 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %782) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %inc1088 = add i8 %k.2.ph, 1
  %idxprom1089 = zext i8 %k.2.ph to i32
  %arrayidx1090 = getelementptr [512 x i8], ptr @atp_is.mbuf, i32 0, i32 %idxprom1089
  %784 = ptrtoint ptr %arrayidx1090 to i32
  call void @__asan_store1_noabort(i32 %784)
  store i8 %783, ptr %arrayidx1090, align 1
  br label %phase_ins1.outer

if.end1091:                                       ; preds = %phase_ins1
  %and1093 = and i32 %conv1082, 128
  %cmp1094 = icmp eq i32 %and1093, 0
  br i1 %cmp1094, label %if.end1091.phase_ins1_crit_edge, label %if.end1091.while.cond1098_crit_edge

if.end1091.while.cond1098_crit_edge:              ; preds = %if.end1091
  br label %while.cond1098

if.end1091.phase_ins1_crit_edge:                  ; preds = %if.end1091
  call void @__sanitizer_cov_trace_pc() #11
  br label %phase_ins1

while.cond1098:                                   ; preds = %while.cond1098.while.cond1098_crit_edge, %if.end1091.while.cond1098_crit_edge
  %785 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %785)
  %786 = load i32, ptr %arrayidx.i, align 4
  %add.i2656 = add i32 %786, 23
  %and.i2657 = and i32 %add.i2656, 1048575
  %add1.i2658 = or i32 %and.i2657, -18874368
  %787 = inttoptr i32 %add1.i2658 to ptr
  %788 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %787) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %cmp1102 = icmp sgt i8 %788, -1
  br i1 %cmp1102, label %while.cond1098.while.cond1098_crit_edge, label %while.end1105

while.cond1098.while.cond1098_crit_edge:          ; preds = %while.cond1098
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond1098

while.end1105:                                    ; preds = %while.cond1098
  %789 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %789)
  %790 = load i32, ptr %arrayidx.i, align 4
  %add.i2661 = add i32 %790, 23
  %and.i2662 = and i32 %add.i2661, 1048575
  %add1.i2663 = or i32 %and.i2662, -18874368
  %791 = inttoptr i32 %add1.i2663 to ptr
  %792 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %791) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 -123, i8 %792)
  %cmp1108 = icmp eq i8 %792, -123
  br i1 %cmp1108, label %while.end1105.tar_dcons_crit_edge, label %if.end1111

while.end1105.tar_dcons_crit_edge:                ; preds = %while.end1105
  call void @__sanitizer_cov_trace_pc() #11
  br label %tar_dcons

if.end1111:                                       ; preds = %while.end1105
  %trunc2716 = trunc i8 %792 to i4
  %793 = zext i4 %trunc2716 to i64
  call void @__sanitizer_cov_trace_switch(i64 %793, ptr @__sancov_gen_cov_switch_values.101)
  switch i4 %trunc2716, label %if.end1111.for.inc_crit_edge [
    i4 -1, label %if.end1111.phase_ins.backedge_crit_edge
    i4 -6, label %if.end1111.phase_cmds_crit_edge
    i4 -2, label %if.end1111.phase_outs_crit_edge
  ]

if.end1111.phase_outs_crit_edge:                  ; preds = %if.end1111
  br label %phase_outs

if.end1111.phase_cmds_crit_edge:                  ; preds = %if.end1111
  call void @__sanitizer_cov_trace_pc() #11
  br label %phase_cmds

if.end1111.phase_ins.backedge_crit_edge:          ; preds = %if.end1111
  call void @__sanitizer_cov_trace_pc() #11
  br label %phase_ins.backedge

if.end1111.for.inc_crit_edge:                     ; preds = %if.end1111
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

phase_ins.backedge:                               ; preds = %if.end1111.phase_ins.backedge_crit_edge, %if.end1054.phase_ins.backedge_crit_edge
  br label %phase_ins

phase_cmds:                                       ; preds = %if.end1111.phase_cmds_crit_edge, %if.end1054.phase_cmds_crit_edge, %while.end1005.phase_cmds_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %794 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %794)
  %795 = load i32, ptr %arrayidx.i, align 4
  %add.i2666 = add i32 %795, 16
  %and.i2667 = and i32 %add.i2666, 1048575
  %add1.i2668 = or i32 %and.i2667, -18874368
  %796 = inttoptr i32 %add1.i2668 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %796, i8 48) #9, !srcloc !165
  br label %tar_dcons

tar_dcons:                                        ; preds = %phase_cmds, %while.end1105.tar_dcons_crit_edge, %while.end1048.tar_dcons_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %797 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %797)
  %798 = load i32, ptr %arrayidx.i, align 4
  %add.i2671 = add i32 %798, 20
  %and.i2672 = and i32 %add.i2671, 1048575
  %add1.i2673 = or i32 %and.i2672, -18874368
  %799 = inttoptr i32 %add1.i2673 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %799, i8 0) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %800 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %800)
  %801 = load i32, ptr %arrayidx.i, align 4
  %add.i2676 = add i32 %801, 24
  %and.i2677 = and i32 %add.i2676, 1048575
  %add1.i2678 = or i32 %and.i2677, -18874368
  %802 = inttoptr i32 %add1.i2678 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %802, i8 8) #9, !srcloc !165
  %803 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %803)
  %804 = load i32, ptr %arrayidx.i, align 4
  %add.i26812828 = add i32 %804, 31
  %and.i26822829 = and i32 %add.i26812828, 1048575
  %add1.i26832830 = or i32 %and.i26822829, -18874368
  %805 = inttoptr i32 %add1.i26832830 to ptr
  %806 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %805) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %806)
  %cmp11342831 = icmp sgt i8 %806, -1
  br i1 %cmp11342831, label %tar_dcons.do.end1141_crit_edge, label %tar_dcons.while.end1146_crit_edge

tar_dcons.while.end1146_crit_edge:                ; preds = %tar_dcons
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end1146

tar_dcons.do.end1141_crit_edge:                   ; preds = %tar_dcons
  br label %do.end1141

do.end1141:                                       ; preds = %do.end1141.do.end1141_crit_edge, %tar_dcons.do.end1141_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !223
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !224
  %807 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %807)
  %808 = load i32, ptr %arrayidx.i, align 4
  %add.i2681 = add i32 %808, 31
  %and.i2682 = and i32 %add.i2681, 1048575
  %add1.i2683 = or i32 %and.i2682, -18874368
  %809 = inttoptr i32 %add1.i2683 to ptr
  %810 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %809) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %cmp1134 = icmp sgt i8 %810, -1
  br i1 %cmp1134, label %do.end1141.do.end1141_crit_edge, label %do.end1141.while.end1146_crit_edge

do.end1141.while.end1146_crit_edge:               ; preds = %do.end1141
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end1146

do.end1141.do.end1141_crit_edge:                  ; preds = %do.end1141
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end1141

while.end1146:                                    ; preds = %do.end1141.while.end1146_crit_edge, %tar_dcons.while.end1146_crit_edge
  %811 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %811)
  %812 = load i32, ptr %arrayidx.i, align 4
  %add.i2686 = add i32 %812, 23
  %and.i2687 = and i32 %add.i2686, 1048575
  %add1.i2688 = or i32 %and.i2687, -18874368
  %813 = inttoptr i32 %add1.i2688 to ptr
  %814 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %813) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 22, i8 %814)
  %cmp1149.not = icmp eq i8 %814, 22
  br i1 %cmp1149.not, label %if.end1152, label %while.end1146.for.inc_crit_edge

while.end1146.for.inc_crit_edge:                  ; preds = %while.end1146
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end1152:                                       ; preds = %while.end1146
  %815 = load i8, ptr @atp_is.mbuf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %815)
  %cmp1154.not = icmp eq i8 %815, 1
  br i1 %cmp1154.not, label %if.end1157, label %if.end1152.for.inc_crit_edge

if.end1152.for.inc_crit_edge:                     ; preds = %if.end1152
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end1157:                                       ; preds = %if.end1152
  %816 = load i8, ptr getelementptr inbounds ([512 x i8], ptr @atp_is.mbuf, i32 0, i32 1), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %816)
  %cmp1159.not = icmp eq i8 %816, 3
  br i1 %cmp1159.not, label %if.end1162, label %if.end1157.for.inc_crit_edge

if.end1157.for.inc_crit_edge:                     ; preds = %if.end1157
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end1162:                                       ; preds = %if.end1157
  %817 = load i8, ptr getelementptr inbounds ([512 x i8], ptr @atp_is.mbuf, i32 0, i32 4), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %817)
  %cmp1164 = icmp eq i8 %817, 0
  br i1 %cmp1164, label %if.end1162.for.inc_crit_edge, label %if.end1167

if.end1162.for.inc_crit_edge:                     ; preds = %if.end1162
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end1167:                                       ; preds = %if.end1162
  %818 = load i8, ptr getelementptr inbounds ([512 x i8], ptr @atp_is.mbuf, i32 0, i32 3), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 100, i8 %818)
  %cmp1169 = icmp ugt i8 %818, 100
  br i1 %cmp1169, label %if.end1167.for.inc_crit_edge, label %if.end1172

if.end1167.for.inc_crit_edge:                     ; preds = %if.end1167
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end1172:                                       ; preds = %if.end1167
  %819 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %819)
  %820 = load ptr, ptr %pdev.i, align 4
  %device.i2690 = getelementptr inbounds %struct.pci_dev, ptr %820, i32 0, i32 8
  %821 = ptrtoint ptr %device.i2690 to i32
  call void @__asan_load2_noabort(i32 %821)
  %822 = load i16, ptr %device.i2690, align 2
  %823 = zext i16 %822 to i64
  call void @__sanitizer_cov_trace_switch(i64 %823, ptr @__sancov_gen_cov_switch_values.102)
  switch i16 %822, label %if.else1184 [
    i16 -32630, label %if.end1172.if.then1178_crit_edge
    i16 -32639, label %if.end1172.if.then1178_crit_edge2916
    i16 -32640, label %if.end1172.if.then1178_crit_edge2917
  ]

if.end1172.if.then1178_crit_edge2917:             ; preds = %if.end1172
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then1178

if.end1172.if.then1178_crit_edge2916:             ; preds = %if.end1172
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then1178

if.end1172.if.then1178_crit_edge:                 ; preds = %if.end1172
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then1178

if.then1178:                                      ; preds = %if.end1172.if.then1178_crit_edge, %if.end1172.if.then1178_crit_edge2916, %if.end1172.if.then1178_crit_edge2917
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %817)
  %cmp1180 = icmp ugt i8 %817, 14
  br i1 %cmp1180, label %if.then1178.if.end1190.sink.split_crit_edge, label %if.then1178.if.end1190_crit_edge

if.then1178.if.end1190_crit_edge:                 ; preds = %if.then1178
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end1190

if.then1178.if.end1190.sink.split_crit_edge:      ; preds = %if.then1178
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end1190.sink.split

if.else1184:                                      ; preds = %if.end1172
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %817)
  %cmp1186 = icmp ugt i8 %817, 12
  br i1 %cmp1186, label %if.else1184.if.end1190.sink.split_crit_edge, label %if.else1184.if.end1190_crit_edge

if.else1184.if.end1190_crit_edge:                 ; preds = %if.else1184
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end1190

if.else1184.if.end1190.sink.split_crit_edge:      ; preds = %if.else1184
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end1190.sink.split

if.end1190.sink.split:                            ; preds = %if.else1184.if.end1190.sink.split_crit_edge, %if.then1178.if.end1190.sink.split_crit_edge
  %.sink2870 = phi i8 [ 14, %if.then1178.if.end1190.sink.split_crit_edge ], [ 12, %if.else1184.if.end1190.sink.split_crit_edge ]
  store i8 %.sink2870, ptr getelementptr inbounds ([512 x i8], ptr @atp_is.mbuf, i32 0, i32 4), align 1
  br label %if.end1190

if.end1190:                                       ; preds = %if.end1190.sink.split, %if.else1184.if.end1190_crit_edge, %if.then1178.if.end1190_crit_edge
  %824 = load i8, ptr getelementptr inbounds ([512 x i8], ptr @atp_is.mbuf, i32 0, i32 4), align 1
  %825 = ptrtoint ptr %devsp to i32
  call void @__asan_store1_noabort(i32 %825)
  store i8 %824, ptr %devsp, align 1
  %826 = ptrtoint ptr %device.i2690 to i32
  call void @__asan_load2_noabort(i32 %826)
  %827 = load i16, ptr %device.i2690, align 2
  %828 = zext i16 %827 to i64
  call void @__sanitizer_cov_trace_switch(i64 %828, ptr @__sancov_gen_cov_switch_values.103)
  switch i16 %827, label %if.end1208thread-pre-split [
    i16 -32630, label %if.end1190.if.then1202_crit_edge
    i16 -32639, label %if.end1190.if.then1202_crit_edge2918
    i16 -32640, label %if.end1190.if.then1202_crit_edge2919
  ]

if.end1190.if.then1202_crit_edge2919:             ; preds = %if.end1190
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then1202

if.end1190.if.then1202_crit_edge2918:             ; preds = %if.end1190
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then1202

if.end1190.if.then1202_crit_edge:                 ; preds = %if.end1190
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then1202

if.then1202:                                      ; preds = %if.end1190.if.then1202_crit_edge, %if.end1190.if.then1202_crit_edge2918, %if.end1190.if.then1202_crit_edge2919
  %829 = load i8, ptr getelementptr inbounds ([512 x i8], ptr @atp_is.mbuf, i32 0, i32 3), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %829)
  %cmp1204 = icmp ult i8 %829, 12
  br i1 %cmp1204, label %if.then1202.set_syn_ok_crit_edge, label %if.then1202.if.end1208_crit_edge

if.then1202.if.end1208_crit_edge:                 ; preds = %if.then1202
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end1208

if.then1202.set_syn_ok_crit_edge:                 ; preds = %if.then1202
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_syn_ok

if.end1208thread-pre-split:                       ; preds = %if.end1190
  call void @__sanitizer_cov_trace_pc() #11
  %.pr = load i8, ptr getelementptr inbounds ([512 x i8], ptr @atp_is.mbuf, i32 0, i32 3), align 1
  br label %if.end1208

if.end1208:                                       ; preds = %if.end1208thread-pre-split, %if.then1202.if.end1208_crit_edge
  %830 = phi i8 [ %.pr, %if.end1208thread-pre-split ], [ %829, %if.then1202.if.end1208_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %830)
  %cmp1210 = icmp ult i8 %830, 13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %227)
  %cmp1214 = icmp eq i8 %227, 0
  %or.cond1781 = select i1 %cmp1210, i1 %cmp1214, i1 false
  br i1 %or.cond1781, label %if.end1208.set_syn_ok_crit_edge, label %if.end1217

if.end1208.set_syn_ok_crit_edge:                  ; preds = %if.end1208
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_syn_ok

if.end1217:                                       ; preds = %if.end1208
  call void @__sanitizer_cov_trace_const_cmp1(i8 26, i8 %830)
  %cmp1219 = icmp ult i8 %830, 26
  br i1 %cmp1219, label %if.end1217.set_syn_ok_crit_edge, label %if.end1222

if.end1217.set_syn_ok_crit_edge:                  ; preds = %if.end1217
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_syn_ok

if.end1222:                                       ; preds = %if.end1217
  call void @__sanitizer_cov_trace_const_cmp1(i8 51, i8 %830)
  %cmp1224 = icmp ult i8 %830, 51
  br i1 %cmp1224, label %if.end1222.set_syn_ok_crit_edge, label %if.end1227

if.end1222.set_syn_ok_crit_edge:                  ; preds = %if.end1222
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_syn_ok

if.end1227:                                       ; preds = %if.end1222
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 76, i8 %830)
  %cmp1229 = icmp ult i8 %830, 76
  %. = select i1 %cmp1229, i8 80, i8 96
  br label %set_syn_ok

set_syn_ok:                                       ; preds = %if.end1227, %if.end1222.set_syn_ok_crit_edge, %if.end1217.set_syn_ok_crit_edge, %if.end1208.set_syn_ok_crit_edge, %if.then1202.set_syn_ok_crit_edge
  %j.9 = phi i8 [ -80, %if.then1202.set_syn_ok_crit_edge ], [ -96, %if.end1208.set_syn_ok_crit_edge ], [ 32, %if.end1217.set_syn_ok_crit_edge ], [ 64, %if.end1222.set_syn_ok_crit_edge ], [ %., %if.end1227 ]
  %831 = and i8 %824, 15
  %or1242 = or i8 %j.9, %831
  %832 = ptrtoint ptr %devsp to i32
  call void @__asan_store1_noabort(i32 %832)
  store i8 %or1242, ptr %devsp, align 1
  br label %for.inc

for.inc:                                          ; preds = %set_syn_ok, %if.end1167.for.inc_crit_edge, %if.end1162.for.inc_crit_edge, %if.end1157.for.inc_crit_edge, %if.end1152.for.inc_crit_edge, %while.end1146.for.inc_crit_edge, %if.end1111.for.inc_crit_edge, %if.end1054.for.inc_crit_edge, %while.end1005.for.inc_crit_edge, %land.lhs.true896.for.inc_crit_edge, %if.then812.for.inc_crit_edge, %land.lhs.true807.for.inc_crit_edge, %not_wide.for.inc_crit_edge, %while.end735.for.inc_crit_edge, %if.end699.for.inc_crit_edge, %while.end663.for.inc_crit_edge, %while.end620.for.inc_crit_edge, %land.lhs.true554.for.inc_crit_edge, %if.then509, %while.end479.for.inc_crit_edge, %if.end452.for.inc_crit_edge, %while.end416.for.inc_crit_edge, %while.end373.for.inc_crit_edge, %land.lhs.true307.for.inc_crit_edge, %land.lhs.true146.for.inc_crit_edge, %land.lhs.true60.for.inc_crit_edge, %do.end, %if.end.for.inc_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 16
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %synuw) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %synu) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @fun_scam(ptr nocapture noundef readonly %dev, ptr nocapture noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %val, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !177
  tail call void @arm_heavy_mb() #9
  %2 = tail call i16 @llvm.bswap.i16(i16 %1) #9
  %ioport.i = getelementptr inbounds %struct.atp_unit, ptr %dev, i32 0, i32 1
  %3 = ptrtoint ptr %ioport.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ioport.i, align 4
  %add.i = add i32 %4, 28
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %5 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %5, i16 %2) #9, !srcloc !163
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.0103 = phi i16 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %6 = ptrtoint ptr %ioport.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ioport.i, align 4
  %add.i76 = add i32 %7, 28
  %and.i77 = and i32 %add.i76, 1048575
  %add1.i78 = or i32 %and.i77, -18874368
  %8 = inttoptr i32 %add1.i78 to ptr
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %8) #9, !srcloc !160
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !180
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp5.not.inv = icmp slt i16 %10, 0
  %i.0.op = add nuw nsw i16 %i.0103, 1
  %inc = select i1 %cmp5.not.inv, i16 1, i16 %i.0.op
  %cmp = icmp ult i16 %inc, 10
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %val, align 2
  %13 = or i16 %12, 16384
  store i16 %13, ptr %val, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !177
  tail call void @arm_heavy_mb() #9
  %14 = tail call i16 @llvm.bswap.i16(i16 %13) #9
  %15 = ptrtoint ptr %ioport.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ioport.i, align 4
  %add.i80 = add i32 %16, 28
  %and.i81 = and i32 %add.i80, 1048575
  %add1.i82 = or i32 %and.i81, -18874368
  %17 = inttoptr i32 %add1.i82 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %17, i16 %14) #9, !srcloc !163
  %18 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %val, align 2
  %20 = and i16 %19, -8193
  store i16 %20, ptr %val, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !177
  tail call void @arm_heavy_mb() #9
  %21 = tail call i16 @llvm.bswap.i16(i16 %20) #9
  %22 = ptrtoint ptr %ioport.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ioport.i, align 4
  %add.i84 = add i32 %23, 28
  %and.i85 = and i32 %add.i84, 1048575
  %add1.i86 = or i32 %and.i85, -18874368
  %24 = inttoptr i32 %add1.i86 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %24, i16 %21) #9, !srcloc !163
  br label %for.body16

for.body16:                                       ; preds = %for.body16.for.body16_crit_edge, %for.end
  %i.2105 = phi i16 [ 0, %for.end ], [ %inc25, %for.body16.for.body16_crit_edge ]
  %25 = ptrtoint ptr %ioport.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ioport.i, align 4
  %add.i88 = add i32 %26, 28
  %and.i89 = and i32 %add.i88, 1048575
  %add1.i90 = or i32 %and.i89, -18874368
  %27 = inttoptr i32 %add1.i90 to ptr
  %28 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %27) #9, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !180
  %29 = and i16 %28, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %cmp20.not = icmp eq i16 %29, 0
  %i.2.op = add nuw nsw i16 %i.2105, 1
  %inc25 = select i1 %cmp20.not, i16 %i.2.op, i16 1
  %cmp14 = icmp ult i16 %inc25, 10
  br i1 %cmp14, label %for.body16.for.body16_crit_edge, label %for.end26

for.body16.for.body16_crit_edge:                  ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body16

for.end26:                                        ; preds = %for.body16
  %30 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %val, align 2
  %32 = and i16 %31, 24831
  %33 = or i16 %32, -32768
  store i16 %33, ptr %val, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !177
  tail call void @arm_heavy_mb() #9
  %34 = tail call i16 @llvm.bswap.i16(i16 %33) #9
  %35 = ptrtoint ptr %ioport.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ioport.i, align 4
  %add.i92 = add i32 %36, 28
  %and.i93 = and i32 %add.i92, 1048575
  %add1.i94 = or i32 %and.i93, -18874368
  %37 = inttoptr i32 %add1.i94 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %37, i16 %34) #9, !srcloc !163
  %38 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %val, align 2
  %40 = and i16 %39, -16385
  store i16 %40, ptr %val, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !177
  tail call void @arm_heavy_mb() #9
  %41 = tail call i16 @llvm.bswap.i16(i16 %40) #9
  %42 = ptrtoint ptr %ioport.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ioport.i, align 4
  %add.i96 = add i32 %43, 28
  %and.i97 = and i32 %add.i96, 1048575
  %add1.i98 = or i32 %and.i97, -18874368
  %44 = inttoptr i32 %add1.i98 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %44, i16 %41) #9, !srcloc !163
  br label %for.body40

for.body40:                                       ; preds = %for.body40.for.body40_crit_edge, %for.end26
  %i.4106 = phi i16 [ 0, %for.end26 ], [ %inc49, %for.body40.for.body40_crit_edge ]
  %45 = ptrtoint ptr %ioport.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ioport.i, align 4
  %add.i100 = add i32 %46, 28
  %and.i101 = and i32 %add.i100, 1048575
  %add1.i102 = or i32 %and.i101, -18874368
  %47 = inttoptr i32 %add1.i102 to ptr
  %48 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %47) #9, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !180
  %49 = and i16 %48, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %cmp44.not = icmp eq i16 %49, 0
  %i.4.op = add nuw nsw i16 %i.4106, 1
  %inc49 = select i1 %cmp44.not, i16 %i.4.op, i16 1
  %cmp38 = icmp ult i16 %inc49, 10
  br i1 %cmp38, label %for.body40.for.body40_crit_edge, label %for.end50

for.body40.for.body40_crit_edge:                  ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body40

for.end50:                                        ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #11
  %50 = lshr i16 %10, 8
  %conv3.le = trunc i16 %50 to i8
  ret i8 %conv3.le
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_dma_unmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_add_host_with_dma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !9, !11, !13, !14, !15, !16, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !35, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !86, !88, !90, !91, !92, !93, !95, !96, !97, !98, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !120, !121, !122, !124, !125, !126, !128, !129, !130, !131, !133, !134, !135, !137, !138, !139, !141, !142, !143, !144, !146, !147, !148}
!llvm.module.flags = !{!149, !150, !151, !152, !153, !154, !155, !156}
!llvm.ident = !{!157}

!0 = !{ptr @__UNIQUE_ID_file287, !1, !"__UNIQUE_ID_file287", i1 false, i1 false}
!1 = !{!"../drivers/scsi/atp870u.c", i32 1727, i32 1}
!2 = !{ptr @__UNIQUE_ID_license288, !1, !"__UNIQUE_ID_license288", i1 false, i1 false}
!3 = !{ptr @__initcall__kmod_atp870u__289_1767_atp870u_driver_init6, !4, !"__initcall__kmod_atp870u__289_1767_atp870u_driver_init6", i1 false, i1 false}
!4 = !{!"../drivers/scsi/atp870u.c", i32 1767, i32 1}
!5 = !{ptr @__exitcall_atp870u_driver_exit, !4, !"__exitcall_atp870u_driver_exit", i1 false, i1 false}
!6 = !{ptr @.str, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @atp870u_driver, !8, !"atp870u_driver", i1 false, i1 false}
!8 = !{!"../drivers/scsi/atp870u.c", i32 1760, i32 26}
!9 = !{ptr @atp870u_id_table, !10, !"atp870u_id_table", i1 false, i1 false}
!10 = !{!"../drivers/scsi/atp870u.c", i32 1744, i32 29}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/scsi/atp870u.c", i32 1562, i32 3}
!13 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @atp870u_probe._entry, !12, !"_entry", i1 false, i1 false}
!18 = !{ptr @atp870u_probe._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/scsi/atp870u.c", i32 1571, i32 3}
!21 = !{ptr @atp870u_probe._entry.6, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @atp870u_probe._entry_ptr.8, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/scsi/atp870u.c", i32 1601, i32 3}
!25 = !{ptr @atp870u_probe._entry.9, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @atp870u_probe._entry_ptr.11, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/scsi/atp870u.c", i32 1614, i32 3}
!29 = !{ptr @atp870u_probe._entry.12, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @atp870u_probe._entry_ptr.14, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @atp870u_template, !32, !"atp870u_template", i1 false, i1 false}
!32 = !{!"../drivers/scsi/atp870u.c", i32 1729, i32 34}
!33 = !{ptr @atp870u_info.buffer, !34, !"buffer", i1 false, i1 false}
!34 = !{!"../drivers/scsi/atp870u.c", i32 1678, i32 14}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/scsi/atp870u.c", i32 1680, i32 17}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/scsi/atp870u.c", i32 1653, i32 2}
!39 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @atp870u_abort._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @atp870u_abort._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/scsi/atp870u.c", i32 1654, i32 2}
!44 = !{ptr @atp870u_abort._entry.18, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @atp870u_abort._entry_ptr.20, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/scsi/atp870u.c", i32 1655, i32 2}
!48 = !{ptr @atp870u_abort._entry.21, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @atp870u_abort._entry_ptr.23, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/scsi/atp870u.c", i32 1657, i32 3}
!52 = !{ptr @atp870u_abort._entry.24, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @atp870u_abort._entry_ptr.26, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/scsi/atp870u.c", i32 1659, i32 2}
!56 = !{ptr @atp870u_abort._entry.27, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @atp870u_abort._entry_ptr.29, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/scsi/atp870u.c", i32 1660, i32 2}
!60 = !{ptr @atp870u_abort._entry.30, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @atp870u_abort._entry_ptr.32, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.34, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/scsi/atp870u.c", i32 1661, i32 2}
!64 = !{ptr @atp870u_abort._entry.33, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @atp870u_abort._entry_ptr.35, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.37, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/scsi/atp870u.c", i32 1662, i32 2}
!68 = !{ptr @atp870u_abort._entry.36, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @atp870u_abort._entry_ptr.38, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.40, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/scsi/atp870u.c", i32 1666, i32 3}
!72 = !{ptr @atp870u_abort._entry.39, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @atp870u_abort._entry_ptr.41, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.43, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/scsi/atp870u.c", i32 1668, i32 7}
!76 = !{ptr @atp870u_abort._entry.42, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @atp870u_abort._entry_ptr.44, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.46, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/scsi/atp870u.c", i32 1670, i32 3}
!80 = !{ptr @atp870u_abort._entry.45, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @atp870u_abort._entry_ptr.47, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.48, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/scsi/atp870u.c", i32 1687, i32 14}
!84 = !{ptr @.str.49, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/scsi/atp870u.c", i32 1689, i32 16}
!86 = !{ptr @.str.50, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/scsi/atp870u.c", i32 1690, i32 16}
!88 = !{ptr @.str.51, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/scsi/atp870u.c", i32 1263, i32 5}
!90 = !{ptr @.str.52, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @atp870u_init_tables._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @atp870u_init_tables._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.53, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/scsi/atp870u.c", i32 1371, i32 2}
!95 = !{ptr @.str.54, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.55, !94, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @atp880_init._entry, !94, !"_entry", i1 false, i1 false}
!98 = !{ptr @atp880_init._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @tscam.g2q_tab, !100, !"g2q_tab", i1 false, i1 false}
!100 = !{!"../drivers/scsi/atp870u.c", i32 1022, i32 23}
!101 = !{ptr @atp_is.mbuf, !102, !"mbuf", i1 false, i1 false}
!102 = !{!"../drivers/scsi/atp870u.c", i32 1774, i32 23}
!103 = distinct !{null, !104, !"satn", i1 false, i1 false}
!104 = !{!"../drivers/scsi/atp870u.c", i32 1775, i32 23}
!105 = distinct !{null, !106, !"inqd", i1 false, i1 false}
!106 = !{!"../drivers/scsi/atp870u.c", i32 1776, i32 23}
!107 = !{ptr @atp_is.synn, !108, !"synn", i1 false, i1 false}
!108 = !{!"../drivers/scsi/atp870u.c", i32 1777, i32 23}
!109 = !{ptr @atp_is.synw, !110, !"synw", i1 false, i1 false}
!110 = !{!"../drivers/scsi/atp870u.c", i32 1779, i32 23}
!111 = !{ptr @atp_is.synw_870, !112, !"synw_870", i1 false, i1 false}
!112 = !{!"../drivers/scsi/atp870u.c", i32 1780, i32 23}
!113 = !{ptr @atp_is.wide, !114, !"wide", i1 false, i1 false}
!114 = !{!"../drivers/scsi/atp870u.c", i32 1782, i32 23}
!115 = !{ptr @atp_is.u3, !116, !"u3", i1 false, i1 false}
!116 = !{!"../drivers/scsi/atp870u.c", i32 1783, i32 23}
!117 = !{ptr @.str.56, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/scsi/atp870u.c", i32 1794, i32 4}
!119 = !{ptr @.str.57, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @atp_is._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @atp_is._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.59, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/scsi/atp870u.c", i32 1901, i32 3}
!124 = !{ptr @atp_is._entry.58, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @atp_is._entry_ptr.60, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.61, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/scsi/atp870u.c", i32 1451, i32 2}
!128 = !{ptr @.str.62, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @atp885_init._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @atp885_init._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.64, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/scsi/atp870u.c", i32 1535, i32 2}
!133 = !{ptr @atp885_init._entry.63, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @atp885_init._entry_ptr.65, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.67, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/scsi/atp870u.c", i32 1538, i32 2}
!137 = !{ptr @atp885_init._entry.66, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @atp885_init._entry_ptr.68, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.69, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/scsi/atp870u.c", i32 1319, i32 2}
!141 = !{ptr @.str.70, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @atp870_init._entry, !140, !"_entry", i1 false, i1 false}
!143 = !{ptr @atp870_init._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.71, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/scsi/atp870u.c", i32 499, i32 6}
!146 = !{ptr @.str.72, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @atp870u_intr_handle._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @atp870u_intr_handle._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{i32 1, !"wchar_size", i32 2}
!150 = !{i32 1, !"min_enum_size", i32 4}
!151 = !{i32 8, !"branch-target-enforcement", i32 0}
!152 = !{i32 8, !"sign-return-address", i32 0}
!153 = !{i32 8, !"sign-return-address-all", i32 0}
!154 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!155 = !{i32 7, !"uwtable", i32 1}
!156 = !{i32 7, !"frame-pointer", i32 2}
!157 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!158 = !{i64 4674357}
!159 = !{i64 2155065479}
!160 = !{i64 4673739}
!161 = !{i64 2155066334}
!162 = !{i64 2155062398}
!163 = !{i64 4673539}
!164 = !{i64 2155061845}
!165 = !{i64 4673962}
!166 = !{i64 2155067671}
!167 = !{i64 4674577}
!168 = !{i64 2155067189}
!169 = !{i64 2155064211}
!170 = !{i64 2155063017}
!171 = !{!"auto-init"}
!172 = !{i64 2155069038}
!173 = !{i64 2155064780}
!174 = !{i64 4674159}
!175 = !{i64 2155073987}
!176 = !{i64 2155073829}
!177 = !{i64 2155063584}
!178 = !{i64 2155079856}
!179 = !{i64 2155079698}
!180 = !{i64 2155068554}
!181 = !{i64 2155123973}
!182 = !{i64 2155123815}
!183 = !{i64 2155124248}
!184 = !{i64 2155124090}
!185 = !{i64 2155124523}
!186 = !{i64 2155124365}
!187 = !{i64 2155124798}
!188 = !{i64 2155124640}
!189 = !{i64 2155125073}
!190 = !{i64 2155124915}
!191 = !{i64 2155125348}
!192 = !{i64 2155125190}
!193 = !{i64 2155127043}
!194 = !{i64 2155126885}
!195 = !{i64 2155127318}
!196 = !{i64 2155127160}
!197 = !{i64 2155127593}
!198 = !{i64 2155127435}
!199 = !{i64 2155127868}
!200 = !{i64 2155127710}
!201 = !{i64 2155128143}
!202 = !{i64 2155127985}
!203 = !{i64 2155128418}
!204 = !{i64 2155128260}
!205 = !{i64 2155128693}
!206 = !{i64 2155128535}
!207 = !{i64 2155128968}
!208 = !{i64 2155128810}
!209 = !{i64 2155129243}
!210 = !{i64 2155129085}
!211 = !{i64 2155129518}
!212 = !{i64 2155129360}
!213 = !{i64 2155129793}
!214 = !{i64 2155129635}
!215 = !{i64 2155130068}
!216 = !{i64 2155129910}
!217 = !{i64 2155130343}
!218 = !{i64 2155130185}
!219 = !{i64 2155130618}
!220 = !{i64 2155130460}
!221 = !{i64 2155130893}
!222 = !{i64 2155130735}
!223 = !{i64 2155131168}
!224 = !{i64 2155131010}
