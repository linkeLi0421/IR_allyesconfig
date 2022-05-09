; ModuleID = '/llk/IR_all_yes/drivers/scsi/pcmcia/sym53c500_cs.c_pt.bc'
source_filename = "../drivers/scsi/pcmcia/sym53c500_cs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pcmcia_device_id = type { i16, i16, i16, i8, i8, i8, [4 x i32], [4 x ptr], i32, ptr }
%struct.pcmcia_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pcmcia_dynids }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pcmcia_dynids = type { %struct.mutex, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], [20 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i8, i32, ptr, ptr, [112 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, ptr, i32, [48 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.pcmcia_device = type { ptr, ptr, i8, i8, ptr, %struct.list_head, i32, [6 x ptr], i32, i32, i32, i32, i32, i32, i32, i16, i8, i16, i16, [4 x ptr], i64, %struct.device, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.scsi_info_t = type { ptr, ptr, i16 }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }

@__UNIQUE_ID_author291 = internal constant [32 x i8] c"author=Bob Tracy <rct@frus.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [41 x i8] c"description=SYM53C500 PCMCIA SCSI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@sym53c500_ids = internal constant [4 x %struct.pcmcia_device_id] [%struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 600279709, i32 10086391, i32 0, i32 0], [4 x ptr] [ptr @.str, ptr @.str.1, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 140150027, i32 1162030776, i32 0, i32 0], [4 x ptr] [ptr @.str.2, ptr @.str.3, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 32, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 0, i32 560238404, i32 0, i32 0], [4 x ptr] [ptr null, ptr @.str.4, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id zeroinitializer], align 4
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"BASICS by New Media Corporation\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SCSI Sym53C500\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"New Media Corporation\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"SCSI Bus Toaster Sym53C500\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SCSI9000\00", [23 x i8] zeroinitializer }, align 32
@sym53c500_cs_driver = internal global { %struct.pcmcia_driver, [52 x i8] } { %struct.pcmcia_driver { ptr @.str.5, ptr @SYM53C500_probe, ptr @SYM53C500_detach, ptr null, ptr @sym53c500_resume, ptr @__this_module, ptr @sym53c500_ids, %struct.device_driver zeroinitializer, %struct.pcmcia_dynids zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sym53c500_cs\00", [19 x i8] zeroinitializer }, align 32
@__this_module = external dso_local global %struct.module, align 128
@SYM53C500_probe.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, i8 0, i8 -46, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SYM53C500_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/scsi/pcmcia/sym53c500_cs.c\00", [61 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SYM53C500_attach()\0A\00", [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sym53c500_driver_template = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @SYM53C500_queue, ptr null, ptr @__this_module, ptr @.str.12, ptr @SYM53C500_info, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @SYM53C500_host_reset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @SYM53C500_biosparm, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.12, ptr null, i32 1, i32 7, i16 32, i16 0, i32 0, i32 0, i32 0, i32 0, i16 0, i8 0, i32 0, i8 0, i32 0, ptr @SYM53C500_shost_groups, ptr null, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@SYM53C500_config.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.9, ptr @.str.7, ptr @.str.10, i8 0, i8 -82, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SYM53C500_config\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SYM53C500_config\0A\00", [46 x i8] zeroinitializer }, align 32
@SYM53C500_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.7, i32 748, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"SYM53C500: Unable to register host, giving up.\0A\00", [48 x i8] zeroinitializer }, align 32
@SYM53C500_config._entry_ptr = internal global ptr @SYM53C500_config._entry, section ".printk_index", align 4
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SYM53C500\00", [22 x i8] zeroinitializer }, align 32
@SYM53C500_config._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.7, i32 756, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"SYM53C500: unable to allocate IRQ %d\0A\00", [58 x i8] zeroinitializer }, align 32
@SYM53C500_config._entry_ptr.15 = internal global ptr @SYM53C500_config._entry.13, section ".printk_index", align 4
@ioport_resource = external dso_local global %struct.resource, align 4
@SYM53C500_config._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.9, ptr @.str.7, i32 795, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016sym53c500_cs: no SCSI devices found\0A\00", [57 x i8] zeroinitializer }, align 32
@SYM53C500_config._entry_ptr.18 = internal global ptr @SYM53C500_config._entry.16, section ".printk_index", align 4
@SYM53C500_shost_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @SYM53C500_shost_group, ptr null], [24 x i8] zeroinitializer }, align 32
@SYM53C500_info.info_msg = internal global { [256 x i8], [64 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"SYM53C500 at 0x%lx, IRQ %d, %s PIO mode.\00", [55 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fast\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"slow\00", [27 x i8] zeroinitializer }, align 32
@SYM53C500_shost_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @SYM53C500_shost_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@SYM53C500_shost_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @SYM53C500_pio_attr, ptr null], [24 x i8] zeroinitializer }, align 32
@SYM53C500_pio_attr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @SYM53C500_show_pio, ptr @SYM53C500_store_pio }, [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fast_pio\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@SYM53C500_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.7, i32 381, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"SYM53C500: Warning: PIO error!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SYM53C500_intr\00", [17 x i8] zeroinitializer }, align 32
@SYM53C500_intr._entry_ptr = internal global ptr @SYM53C500_intr._entry, section ".printk_index", align 4
@SYM53C500_intr._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.7, i32 387, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"SYM53C500: Warning: parity error!\0A\00", [61 x i8] zeroinitializer }, align 32
@SYM53C500_intr._entry_ptr.28 = internal global ptr @SYM53C500_intr._entry.26, section ".printk_index", align 4
@SYM53C500_intr._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.25, ptr @.str.7, i32 393, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"SYM53C500: Warning: gross error!\0A\00", [62 x i8] zeroinitializer }, align 32
@SYM53C500_intr._entry_ptr.31 = internal global ptr @SYM53C500_intr._entry.29, section ".printk_index", align 4
@SYM53C500_intr._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.25, ptr @.str.7, i32 450, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"SYM53C500: Warning: Unknown interrupt occurred in command phase!\0A\00", [62 x i8] zeroinitializer }, align 32
@SYM53C500_intr._entry_ptr.34 = internal global ptr @SYM53C500_intr._entry.32, section ".printk_index", align 4
@SYM53C500_intr._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.25, ptr @.str.7, i32 462, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"SYM53C500: WARNING: Reserved phase!!!\0A\00", [57 x i8] zeroinitializer }, align 32
@SYM53C500_intr._entry_ptr.37 = internal global ptr @SYM53C500_intr._entry.35, section ".printk_index", align 4
@SYM53C500_release.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.38, ptr @.str.7, ptr @.str.39, i8 0, i8 126, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SYM53C500_release\00", [46 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SYM53C500_release\0A\00", [45 x i8] zeroinitializer }, align 32
@SYM53C500_detach.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.40, ptr @.str.7, ptr @.str.41, i8 0, i8 -50, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SYM53C500_detach\00", [47 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SYM53C500_detach\0A\00", [46 x i8] zeroinitializer }, align 32
@switch.table.SYM53C500_intr = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 84, i32 128, i32 128, i32 128, i32 42, i32 128, i32 1, i32 128, i32 128], [60 x i8] zeroinitializer }, align 32
@switch.table.SYM53C500_intr.42 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1, i32 128, i32 128, i32 128, i32 42, i32 128, i32 84, i32 128], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 11, i64 152, i64 49163]
@__sancov_gen_cov_switch_values.43 = internal global [5 x i64] [i64 3, i64 16, i64 11, i64 152, i64 49163]
@__sancov_gen_cov_switch_values.44 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 858, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 859, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 860, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant [20 x i8] c"sym53c500_cs_driver\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 865, i32 29 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 867, i32 11 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 840, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant [26 x i8] c"sym53c500_driver_template\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 663, i32 34 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 699, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 748, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 755, i32 59 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 756, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 795, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant [23 x i8] c"SYM53C500_shost_groups\00", align 1
@___asan_gen_.108 = private unnamed_addr constant [9 x i8] c"info_msg\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 529, i32 14 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 535, i32 6 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 536, i32 53 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 536, i32 62 }
@___asan_gen_.120 = private unnamed_addr constant [22 x i8] c"SYM53C500_shost_group\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 658, i32 1 }
@___asan_gen_.123 = private unnamed_addr constant [22 x i8] c"SYM53C500_shost_attrs\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 653, i32 26 }
@___asan_gen_.126 = private unnamed_addr constant [19 x i8] c"SYM53C500_pio_attr\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 644, i32 32 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 646, i32 11 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 619, i32 26 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 381, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 387, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 393, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 450, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 462, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 505, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.178 = private constant [38 x i8] c"../drivers/scsi/pcmcia/sym53c500_cs.c\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 827, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant [28 x i8] c"switch.table.SYM53C500_intr\00", align 1
@___asan_gen_.181 = private unnamed_addr constant [31 x i8] c"switch.table.SYM53C500_intr.42\00", align 1
@llvm.compiler.used = appending global [58 x ptr] [ptr @SYM53C500_config._entry, ptr @SYM53C500_config._entry.13, ptr @SYM53C500_config._entry.16, ptr @SYM53C500_config._entry_ptr, ptr @SYM53C500_config._entry_ptr.15, ptr @SYM53C500_config._entry_ptr.18, ptr @SYM53C500_intr._entry, ptr @SYM53C500_intr._entry.26, ptr @SYM53C500_intr._entry.29, ptr @SYM53C500_intr._entry.32, ptr @SYM53C500_intr._entry.35, ptr @SYM53C500_intr._entry_ptr, ptr @SYM53C500_intr._entry_ptr.28, ptr @SYM53C500_intr._entry_ptr.31, ptr @SYM53C500_intr._entry_ptr.34, ptr @SYM53C500_intr._entry_ptr.37, ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_license293, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @sym53c500_cs_driver, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @sym53c500_driver_template, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @SYM53C500_shost_groups, ptr @SYM53C500_info.info_msg, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @SYM53C500_shost_group, ptr @SYM53C500_shost_attrs, ptr @SYM53C500_pio_attr, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @switch.table.SYM53C500_intr, ptr @switch.table.SYM53C500_intr.42], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym53c500_cs_driver to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym53c500_driver_template to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SYM53C500_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SYM53C500_config._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SYM53C500_config._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SYM53C500_shost_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SYM53C500_info.info_msg to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SYM53C500_shost_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SYM53C500_shost_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SYM53C500_pio_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SYM53C500_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SYM53C500_intr._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SYM53C500_intr._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SYM53C500_intr._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SYM53C500_intr._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.SYM53C500_intr to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.SYM53C500_intr.42 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@__mod_pcmcia__sym53c500_ids_device_table = dso_local alias [4 x %struct.pcmcia_device_id], ptr @sym53c500_ids

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pcmcia_register_driver(ptr noundef nonnull @sym53c500_cs_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pcmcia_unregister_driver(ptr noundef nonnull @sym53c500_cs_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @SYM53C500_probe(ptr noundef %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @SYM53C500_probe.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@SYM53C500_probe, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !102

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @SYM53C500_probe.__UNIQUE_ID_ddebug290, ptr noundef %dev, ptr noundef nonnull @.str.8) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #12
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %link, ptr %call7.i.i, align 8
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %priv, align 8
  %config_flags = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 10
  %3 = ptrtoint ptr %config_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %config_flags, align 4
  %or = or i32 %4, 2049
  store i32 %or, ptr %config_flags, align 4
  %call7 = tail call fastcc i32 @SYM53C500_config(ptr noundef %link)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end6 ], [ -12, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @SYM53C500_detach(ptr noundef %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @SYM53C500_detach.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@SYM53C500_detach, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !102

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @SYM53C500_detach.__UNIQUE_ID_ddebug289, ptr noundef %dev, ptr noundef nonnull @.str.41) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call fastcc void @SYM53C500_release(ptr noundef %link)
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void @kfree(ptr noundef %1) #9
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %priv, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sym53c500_resume(ptr nocapture noundef readonly %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %manf_id = getelementptr inbounds %struct.scsi_info_t, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %manf_id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %manf_id, align 4
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i16 %3, label %entry.if.end_crit_edge [
    i16 -16373, label %entry.do.body_crit_edge
    i16 11, label %entry.do.body_crit_edge41
    i16 152, label %entry.do.body_crit_edge42
  ]

entry.do.body_crit_edge42:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

entry.do.body_crit_edge41:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge41, %entry.do.body_crit_edge42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  tail call void @arm_heavy_mb() #9
  %resource = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 7
  %5 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %resource, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %add = add i32 %8, 13
  %and = and i32 %add, 1048575
  %add11 = or i32 %and, -18874368
  %9 = inttoptr i32 %add11 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 -128) #9, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !105
  tail call void @arm_heavy_mb() #9
  %10 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %resource, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %add18 = add i32 %13, 9
  %and19 = and i32 %add18, 1048575
  %add20 = or i32 %and19, -18874368
  %14 = inttoptr i32 %add20 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 36) #9, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !106
  tail call void @arm_heavy_mb() #9
  %15 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %resource, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %add28 = add i32 %18, 13
  %and29 = and i32 %add28, 1048575
  %add30 = or i32 %and29, -18874368
  %19 = inttoptr i32 %add30 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 4) #9, !srcloc !104
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %resource32 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 7
  %20 = ptrtoint ptr %resource32 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %resource32, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  %add.i = add i32 %23, 13
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %24 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 4) #9, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  tail call void @arm_heavy_mb() #9
  %add4.i = add i32 %23, 3
  %and5.i = and i32 %add4.i, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %25 = inttoptr i32 %add6.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 2) #9, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 0) #9, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !110
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 3) #9, !srcloc !104
  tail call fastcc void @chip_init(i32 noundef %23) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @SYM53C500_config(ptr noundef %link) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @SYM53C500_config.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@SYM53C500_config, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !102

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @SYM53C500_config.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.10) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %manf_id = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 17
  %2 = ptrtoint ptr %manf_id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %manf_id, align 4
  %manf_id3 = getelementptr inbounds %struct.scsi_info_t, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %manf_id3 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %manf_id3, align 4
  %call4 = tail call i32 @pcmcia_loop_config(ptr noundef %link, ptr noundef nonnull @SYM53C500_config_check, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %do.end.failed_crit_edge

do.end.failed_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed

if.end7:                                          ; preds = %do.end
  %irq = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 6
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool8.not = icmp eq i32 %6, 0
  br i1 %tobool8.not, label %if.end7.failed_crit_edge, label %if.end10

if.end7.failed_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed

if.end10:                                         ; preds = %if.end7
  %call11 = tail call i32 @pcmcia_enable_device(ptr noundef %link) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.failed_crit_edge

if.end10.failed_crit_edge:                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed

if.end14:                                         ; preds = %if.end10
  %7 = ptrtoint ptr %manf_id3 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %manf_id3, align 4
  %9 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.43)
  switch i16 %8, label %if.end14.if.end52_crit_edge [
    i16 -16373, label %if.end14.do.body27_crit_edge
    i16 11, label %if.end14.do.body27_crit_edge138
    i16 152, label %if.end14.do.body27_crit_edge139
  ]

if.end14.do.body27_crit_edge139:                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body27

if.end14.do.body27_crit_edge138:                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body27

if.end14.do.body27_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body27

if.end14.if.end52_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

do.body27:                                        ; preds = %if.end14.do.body27_crit_edge, %if.end14.do.body27_crit_edge138, %if.end14.do.body27_crit_edge139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !111
  tail call void @arm_heavy_mb() #9
  %resource = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 7
  %10 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %resource, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %add = add i32 %13, 13
  %and = and i32 %add, 1048575
  %add30 = or i32 %and, -18874368
  %14 = inttoptr i32 %add30 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 -76) #9, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %15 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %resource, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %add38 = add i32 %18, 9
  %and39 = and i32 %add38, 1048575
  %add40 = or i32 %and39, -18874368
  %19 = inttoptr i32 %add40 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 36) #9, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !113
  tail call void @arm_heavy_mb() #9
  %20 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %resource, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %add48 = add i32 %23, 13
  %and49 = and i32 %add48, 1048575
  %add50 = or i32 %and49, -18874368
  %24 = inttoptr i32 %add50 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 4) #9, !srcloc !104
  br label %if.end52

if.end52:                                         ; preds = %do.body27, %if.end14.if.end52_crit_edge
  %resource53 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 7
  %25 = ptrtoint ptr %resource53 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %resource53, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %29 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %irq, align 8
  tail call fastcc void @chip_init(i32 noundef %28)
  %call57 = tail call ptr @scsi_host_alloc(ptr noundef nonnull @sym53c500_driver_template, i32 noundef 8) #9
  %tobool58.not = icmp eq ptr %call57, null
  br i1 %tobool58.not, label %do.end62, label %if.end65

do.end62:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #13
  br label %err_release

if.end65:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp66 = icmp sgt i32 %30, 0
  br i1 %cmp66, label %if.then68, label %if.end65.err_free_scsi_crit_edge

if.end65.err_free_scsi_crit_edge:                 ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_scsi

if.then68:                                        ; preds = %if.end65
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %30, ptr noundef nonnull @SYM53C500_intr, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.12, ptr noundef nonnull %call57) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool70.not = icmp eq i32 %call.i, 0
  br i1 %tobool70.not, label %if.end82, label %do.end74

do.end74:                                         ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #11
  %call76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %30) #13
  br label %err_free_scsi

if.end82:                                         ; preds = %if.then68
  %unique_id = getelementptr inbounds %struct.Scsi_Host, ptr %call57, i32 0, i32 23
  %31 = ptrtoint ptr %unique_id to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %28, ptr %unique_id, align 8
  %irq83 = getelementptr inbounds %struct.Scsi_Host, ptr %call57, i32 0, i32 47
  %32 = ptrtoint ptr %irq83 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %30, ptr %irq83, align 8
  %io_port = getelementptr inbounds %struct.Scsi_Host, ptr %call57, i32 0, i32 44
  %33 = ptrtoint ptr %io_port to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %28, ptr %io_port, align 8
  %n_io_port = getelementptr inbounds %struct.Scsi_Host, ptr %call57, i32 0, i32 45
  %34 = ptrtoint ptr %n_io_port to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 16, ptr %n_io_port, align 4
  %dma_channel = getelementptr inbounds %struct.Scsi_Host, ptr %call57, i32 0, i32 46
  %35 = ptrtoint ptr %dma_channel to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -1, ptr %dma_channel, align 1
  %fast_pio = getelementptr inbounds %struct.Scsi_Host, ptr %call57, i32 1, i32 0, i32 1
  %36 = ptrtoint ptr %fast_pio to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %fast_pio, align 4
  %host84 = getelementptr inbounds %struct.scsi_info_t, ptr %1, i32 0, i32 1
  %37 = ptrtoint ptr %host84 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call57, ptr %host84, align 4
  %call.i136 = tail call i32 @scsi_add_host_with_dma(ptr noundef nonnull %call57, ptr noundef null, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i136)
  %tobool86.not = icmp eq i32 %call.i136, 0
  br i1 %tobool86.not, label %if.end88, label %err_free_irq

if.end88:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @scsi_scan_host(ptr noundef nonnull %call57) #9
  br label %cleanup

err_free_irq:                                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  %call89 = tail call ptr @free_irq(i32 noundef %30, ptr noundef nonnull %call57) #9
  br label %err_free_scsi

err_free_scsi:                                    ; preds = %err_free_irq, %do.end74, %if.end65.err_free_scsi_crit_edge
  tail call void @scsi_host_put(ptr noundef nonnull %call57) #9
  br label %err_release

err_release:                                      ; preds = %err_free_scsi, %do.end62
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %28, i32 noundef 16) #9
  %call94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #13
  br label %cleanup

failed:                                           ; preds = %if.end10.failed_crit_edge, %if.end7.failed_crit_edge, %do.end.failed_crit_edge
  tail call fastcc void @SYM53C500_release(ptr noundef %link)
  br label %cleanup

cleanup:                                          ; preds = %failed, %err_release, %if.end88
  %retval.0 = phi i32 [ -19, %failed ], [ -19, %err_release ], [ 0, %if.end88 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_loop_config(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @SYM53C500_config_check(ptr noundef %p_dev, ptr nocapture noundef readnone %priv_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %io_lines = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 14
  %0 = ptrtoint ptr %io_lines to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 10, ptr %io_lines, align 4
  %resource = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 7
  %1 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %resource, align 4
  %flags = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %and = and i32 %4, -25
  store i32 %and, ptr %flags, align 4
  %5 = load ptr, ptr %resource, align 4
  %flags3 = getelementptr inbounds %struct.resource, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags3, align 4
  %or = or i32 %7, 16
  store i32 %or, ptr %flags3, align 4
  %8 = load ptr, ptr %resource, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @pcmcia_request_io(ptr noundef %p_dev) #9
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @chip_init(i32 noundef %io_port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !114
  tail call void @arm_heavy_mb() #9
  %add = add i32 %io_port, 13
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %0 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 -128) #9, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  tail call void @arm_heavy_mb() #9
  %add4 = add i32 %io_port, 9
  %and5 = and i32 %add4, 1048575
  %add6 = or i32 %and5, -18874368
  %1 = inttoptr i32 %add6 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 -92) #9, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  tail call void @arm_heavy_mb() #9
  %add10 = add i32 %io_port, 8
  %and11 = and i32 %add10, 1048575
  %add12 = or i32 %and11, -18874368
  %2 = inttoptr i32 %add12 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 1) #9, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !117
  tail call void @arm_heavy_mb() #9
  %add16 = add i32 %io_port, 11
  %and17 = and i32 %add16, 1048575
  %add18 = or i32 %and17, -18874368
  %3 = inttoptr i32 %add18 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 0) #9, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !118
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 4) #9, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  tail call void @arm_heavy_mb() #9
  %add28 = add i32 %io_port, 12
  %and29 = and i32 %add28, 1048575
  %add30 = or i32 %and29, -18874368
  %4 = inttoptr i32 %add30 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 32) #9, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !120
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 72) #9, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !121
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 7) #9, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 5) #9, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !123
  tail call void @arm_heavy_mb() #9
  %add52 = add i32 %io_port, 5
  %and53 = and i32 %add52, 1048575
  %add54 = or i32 %and53, -18874368
  %5 = inttoptr i32 %add54 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 -100) #9, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !124
  tail call void @arm_heavy_mb() #9
  %add58 = add i32 %io_port, 6
  %and59 = and i32 %add58, 1048575
  %add60 = or i32 %and59, -18874368
  %6 = inttoptr i32 %add60 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 5) #9, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !125
  tail call void @arm_heavy_mb() #9
  %add64 = add i32 %io_port, 7
  %and65 = and i32 %add64, 1048575
  %add66 = or i32 %and65, -18874368
  %7 = inttoptr i32 %add66 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 0) #9, !srcloc !104
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_host_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @SYM53C500_intr(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %io_port = getelementptr inbounds %struct.Scsi_Host, ptr %dev_id, i32 0, i32 44
  %0 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %io_port, align 8
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %dev_id, i32 0, i32 53
  %2 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hostdata, align 4
  %fast_pio1 = getelementptr inbounds %struct.Scsi_Host, ptr %dev_id, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %fast_pio1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fast_pio1, align 4
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %dev_id, i32 0, i32 4
  %6 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host_lock, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !126
  tail call void @arm_heavy_mb() #9
  %add = add i32 %1, 13
  %and = and i32 %add, 1048575
  %add9 = or i32 %and, -18874368
  %8 = inttoptr i32 %add9 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 -128) #9, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !127
  tail call void @arm_heavy_mb() #9
  %add14 = add i32 %1, 9
  %and15 = and i32 %add14, 1048575
  %add16 = or i32 %and15, -18874368
  %9 = inttoptr i32 %add16 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 -92) #9, !srcloc !104
  %add18 = add i32 %1, 8
  %and19 = and i32 %add18, 1048575
  %add20 = or i32 %and19, -18874368
  %10 = inttoptr i32 %add20 to ptr
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %10) #9, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !130
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 4) #9, !srcloc !104
  %add32 = add i32 %1, 4
  %and33 = and i32 %add32, 1048575
  %add34 = or i32 %and33, -18874368
  %12 = inttoptr i32 %add34 to ptr
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #9, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !131
  %add39 = add i32 %1, 5
  %and40 = and i32 %add39, 1048575
  %add41 = or i32 %and40, -18874368
  %14 = inttoptr i32 %add41 to ptr
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #9, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !132
  %conv45 = zext i8 %15 to i32
  %and46 = and i32 %conv45, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool.not = icmp eq i32 %and46, 0
  br i1 %tobool.not, label %if.end, label %entry.idle_out_crit_edge

entry.idle_out_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %idle_out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %11)
  %tobool49.not = icmp sgt i8 %11, -1
  br i1 %tobool49.not, label %if.end57, label %do.end53

do.end53:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #13
  br label %idle_out

if.end57:                                         ; preds = %if.end
  %conv58 = zext i8 %13 to i32
  %and59 = and i32 %conv58, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %if.end68, label %do.end64

do.end64:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #13
  br label %idle_out

if.end68:                                         ; preds = %if.end57
  %and70 = and i32 %conv58, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %if.end79, label %do.end75

do.end75:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  %call77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #13
  br label %idle_out

if.end79:                                         ; preds = %if.end68
  %and81 = and i32 %conv45, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %if.end95, label %if.then83

if.then83:                                        ; preds = %if.end79
  %phase = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 22, i32 9
  %16 = ptrtoint ptr %phase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %phase, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %17)
  %cmp84.not = icmp eq i32 %17, 6
  br i1 %cmp84.not, label %if.else, label %if.then83.idle_out_crit_edge

if.then83.idle_out_crit_edge:                     ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #11
  br label %idle_out

if.else:                                          ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #11
  %Status = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 22, i32 5
  %18 = ptrtoint ptr %Status to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %Status, align 4
  %and89 = and i32 %19, 255
  %Message = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 22, i32 6
  %20 = ptrtoint ptr %Message to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %Message, align 4
  %and91 = shl i32 %21, 8
  %shl = and i32 %and91, 65280
  %or = or i32 %shl, %and89
  br label %idle_out

if.end95:                                         ; preds = %if.end79
  %and97 = and i32 %conv58, 7
  %22 = zext i32 %and97 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %and97, label %if.end95.unreachabledefault [
    i32 0, label %sw.bb
    i32 1, label %sw.bb164
    i32 2, label %sw.bb240
    i32 3, label %sw.bb248
    i32 4, label %if.end95.do.end268_crit_edge
    i32 5, label %if.end95.do.end268_crit_edge467
    i32 6, label %sw.bb271
    i32 7, label %sw.bb288
  ]

if.end95.do.end268_crit_edge467:                  ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end268

if.end95.do.end268_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end268

sw.bb:                                            ; preds = %if.end95
  %and99 = and i32 %conv45, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  br i1 %tobool100.not, label %sw.bb.out_crit_edge, label %if.then101

sw.bb.out_crit_edge:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then101:                                       ; preds = %sw.bb
  %phase103 = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 22, i32 9
  %23 = ptrtoint ptr %phase103 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 1, ptr %phase103, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !133
  tail call void @arm_heavy_mb() #9
  %add107 = add i32 %1, 3
  %and108 = and i32 %add107, 1048575
  %add109 = or i32 %and108, -18874368
  %24 = inttoptr i32 %add109 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 1) #9, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !134
  tail call void @arm_heavy_mb() #9
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 17, i32 1
  %25 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %length.i, align 4
  %conv116 = trunc i32 %26 to i8
  %and118 = and i32 %1, 1048575
  %add119 = or i32 %and118, -18874368
  %27 = inttoptr i32 %add119 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 %conv116) #9, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !135
  tail call void @arm_heavy_mb() #9
  %28 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %length.i, align 4
  %shr = lshr i32 %29, 8
  %conv126 = trunc i32 %shr to i8
  %add127 = add i32 %1, 1
  %and128 = and i32 %add127, 1048575
  %add129 = or i32 %and128, -18874368
  %30 = inttoptr i32 %add129 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 %conv126) #9, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !136
  tail call void @arm_heavy_mb() #9
  %31 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %length.i, align 4
  %shr135 = lshr i32 %32, 16
  %conv137 = trunc i32 %shr135 to i8
  %add138 = add i32 %1, 14
  %and139 = and i32 %add138, 1048575
  %add140 = or i32 %and139, -18874368
  %33 = inttoptr i32 %add140 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %33, i8 %conv137) #9, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !137
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 -112) #9, !srcloc !104
  %nents.i = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 17, i32 0, i32 1
  %34 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nents.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp151453.not = icmp eq i32 %35, 0
  br i1 %cmp151453.not, label %if.then101.do.body156_crit_edge, label %for.body.lr.ph

if.then101.do.body156_crit_edge:                  ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body156

for.body.lr.ph:                                   ; preds = %if.then101
  %sdb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 17
  %36 = ptrtoint ptr %sdb.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sdb.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool28.not.i = icmp ne i32 %5, 0
  br label %for.body

for.body:                                         ; preds = %SYM53C500_pio_write.exit.for.body_crit_edge, %for.body.lr.ph
  %i.0455 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %SYM53C500_pio_write.exit.for.body_crit_edge ]
  %sg.0454 = phi ptr [ %37, %for.body.lr.ph ], [ %call155, %SYM53C500_pio_write.exit.for.body_crit_edge ]
  %38 = ptrtoint ptr %sg.0454 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sg.0454, align 4
  %and.i.i.i = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_virt.exit, label %do.body2.i.i, !prof !138

do.body2.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #9, !srcloc !139
  unreachable

sg_virt.exit:                                     ; preds = %for.body
  %and.i.i = and i32 %39, -4
  %40 = inttoptr i32 %and.i.i to ptr
  %call1.i = tail call ptr @page_address(ptr noundef %40) #9
  %offset.i = getelementptr inbounds %struct.scatterlist, ptr %sg.0454, i32 0, i32 1
  %41 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %offset.i, align 4
  %length = getelementptr inbounds %struct.scatterlist, ptr %sg.0454, i32 0, i32 2
  %43 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %length, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !140
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 -128) #9, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !141
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 -92) #9, !srcloc !104
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not11.not.i = icmp eq i32 %44, 0
  br i1 %tobool.not11.not.i, label %sg_virt.exit.SYM53C500_pio_write.exit_crit_edge, label %while.body.lr.ph.i

sg_virt.exit.SYM53C500_pio_write.exit_crit_edge:  ; preds = %sg_virt.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %SYM53C500_pio_write.exit

while.body.lr.ph.i:                               ; preds = %sg_virt.exit
  %add.ptr.i = getelementptr i8, ptr %call1.i, i32 %42
  br label %while.body.i

while.body.i:                                     ; preds = %if.end50.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %request.addr.013.i = phi ptr [ %add.ptr.i, %while.body.lr.ph.i ], [ %request.addr.2.i, %if.end50.i.while.body.i_crit_edge ]
  %reqlen.addr.012.i = phi i32 [ %44, %while.body.lr.ph.i ], [ %reqlen.addr.2.i, %if.end50.i.while.body.i_crit_edge ]
  %45 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %10) #9, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !142
  %conv.i = zext i8 %45 to i32
  %and16.i = and i32 %conv.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %if.end.i, label %while.body.i.SYM53C500_pio_write.exit_crit_edge

while.body.i.SYM53C500_pio_write.exit_crit_edge:  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %SYM53C500_pio_write.exit

if.end.i:                                         ; preds = %while.body.i
  %and18.i = lshr i32 %conv.i, 1
  %46 = and i32 %and18.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %46)
  %47 = icmp ult i32 %46, 9
  br i1 %47, label %switch.hole_check, label %if.end.i.if.end50.i_crit_edge

if.end.i.if.end50.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50.i

switch.hole_check:                                ; preds = %if.end.i
  %switch.maskindex = trunc i32 %46 to i16
  %switch.shifted = lshr i16 337, %switch.maskindex
  %48 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %switch.lobit.not = icmp eq i16 %48, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.end50.i_crit_edge, label %switch.lookup

switch.hole_check.if.end50.i_crit_edge:           ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50.i

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.SYM53C500_intr, i32 0, i32 %46
  %49 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %49)
  %switch.load = load i32, ptr %switch.gep, align 4
  %50 = tail call i32 @llvm.umin.i32(i32 %switch.load, i32 %reqlen.addr.012.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %50)
  %cmp29.i = icmp ugt i32 %50, 3
  %or.cond1.i = select i1 %tobool28.not.i, i1 %cmp29.i, i1 false
  br i1 %or.cond1.i, label %if.then31.i, label %switch.lookup.do.body41.i_crit_edge

switch.lookup.do.body41.i_crit_edge:              ; preds = %switch.lookup
  br label %do.body41.i

if.then31.i:                                      ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  %shr5.i = lshr i32 %50, 2
  tail call void @__raw_writesl(ptr noundef nonnull %12, ptr noundef %request.addr.013.i, i32 noundef %shr5.i) #9
  %and36.i = and i32 %50, 252
  %add.ptr.i413 = getelementptr i8, ptr %request.addr.013.i, i32 %and36.i
  %sub.i = sub i32 %reqlen.addr.012.i, %and36.i
  br label %if.end50.i

do.body41.i:                                      ; preds = %do.body41.i.do.body41.i_crit_edge, %switch.lookup.do.body41.i_crit_edge
  %request.addr.19.i = phi ptr [ %incdec.ptr.i, %do.body41.i.do.body41.i_crit_edge ], [ %request.addr.013.i, %switch.lookup.do.body41.i_crit_edge ]
  %len.28.i = phi i32 [ %dec.i, %do.body41.i.do.body41.i_crit_edge ], [ %50, %switch.lookup.do.body41.i_crit_edge ]
  %dec.i = add nsw i32 %len.28.i, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !143
  tail call void @arm_heavy_mb() #9
  %incdec.ptr.i = getelementptr i8, ptr %request.addr.19.i, i32 1
  %51 = ptrtoint ptr %request.addr.19.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %request.addr.19.i, align 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 %52) #9, !srcloc !104
  %tobool39.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool39.not.i, label %if.end50.loopexit.i, label %do.body41.i.do.body41.i_crit_edge

do.body41.i.do.body41.i_crit_edge:                ; preds = %do.body41.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body41.i

if.end50.loopexit.i:                              ; preds = %do.body41.i
  call void @__sanitizer_cov_trace_pc() #11
  %53 = sub i32 %reqlen.addr.012.i, %50
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.end50.loopexit.i, %if.then31.i, %switch.hole_check.if.end50.i_crit_edge, %if.end.i.if.end50.i_crit_edge
  %reqlen.addr.2.i = phi i32 [ %sub.i, %if.then31.i ], [ %reqlen.addr.012.i, %if.end.i.if.end50.i_crit_edge ], [ %53, %if.end50.loopexit.i ], [ %reqlen.addr.012.i, %switch.hole_check.if.end50.i_crit_edge ]
  %request.addr.2.i = phi ptr [ %add.ptr.i413, %if.then31.i ], [ %request.addr.013.i, %if.end.i.if.end50.i_crit_edge ], [ %incdec.ptr.i, %if.end50.loopexit.i ], [ %request.addr.013.i, %switch.hole_check.if.end50.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reqlen.addr.2.i)
  %tobool.not.i = icmp ne i32 %reqlen.addr.2.i, 0
  %and9.i = and i32 %conv.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 %tobool10.not.i, i1 false
  br i1 %or.cond.i, label %if.end50.i.while.body.i_crit_edge, label %if.end50.i.SYM53C500_pio_write.exit_crit_edge

if.end50.i.SYM53C500_pio_write.exit_crit_edge:    ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %SYM53C500_pio_write.exit

if.end50.i.while.body.i_crit_edge:                ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

SYM53C500_pio_write.exit:                         ; preds = %if.end50.i.SYM53C500_pio_write.exit_crit_edge, %while.body.i.SYM53C500_pio_write.exit_crit_edge, %sg_virt.exit.SYM53C500_pio_write.exit_crit_edge
  %inc = add nuw i32 %i.0455, 1
  %call155 = tail call ptr @sg_next(ptr noundef %sg.0454) #9
  %54 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %nents.i, align 4
  %cmp151 = icmp ult i32 %inc, %55
  br i1 %cmp151, label %SYM53C500_pio_write.exit.for.body_crit_edge, label %SYM53C500_pio_write.exit.do.body156_crit_edge

SYM53C500_pio_write.exit.do.body156_crit_edge:    ; preds = %SYM53C500_pio_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body156

SYM53C500_pio_write.exit.for.body_crit_edge:      ; preds = %SYM53C500_pio_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.body156:                                       ; preds = %SYM53C500_pio_write.exit.do.body156_crit_edge, %if.then101.do.body156_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 4) #9, !srcloc !104
  br label %out

sw.bb164:                                         ; preds = %if.end95
  %and166 = and i32 %conv45, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and166)
  %tobool167.not = icmp eq i32 %and166, 0
  br i1 %tobool167.not, label %sw.bb164.out_crit_edge, label %if.then168

sw.bb164.out_crit_edge:                           ; preds = %sw.bb164
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then168:                                       ; preds = %sw.bb164
  %phase172 = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 22, i32 9
  %56 = ptrtoint ptr %phase172 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile i32 2, ptr %phase172, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !145
  tail call void @arm_heavy_mb() #9
  %add176 = add i32 %1, 3
  %and177 = and i32 %add176, 1048575
  %add178 = or i32 %and177, -18874368
  %57 = inttoptr i32 %add178 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %57, i8 1) #9, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !146
  tail call void @arm_heavy_mb() #9
  %length.i414 = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 17, i32 1
  %58 = ptrtoint ptr %length.i414 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %length.i414, align 4
  %conv185 = trunc i32 %59 to i8
  %and187 = and i32 %1, 1048575
  %add188 = or i32 %and187, -18874368
  %60 = inttoptr i32 %add188 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %60, i8 %conv185) #9, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !147
  tail call void @arm_heavy_mb() #9
  %61 = ptrtoint ptr %length.i414 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %length.i414, align 4
  %shr194 = lshr i32 %62, 8
  %conv196 = trunc i32 %shr194 to i8
  %add197 = add i32 %1, 1
  %and198 = and i32 %add197, 1048575
  %add199 = or i32 %and198, -18874368
  %63 = inttoptr i32 %add199 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %63, i8 %conv196) #9, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !148
  tail call void @arm_heavy_mb() #9
  %64 = ptrtoint ptr %length.i414 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %length.i414, align 4
  %shr205 = lshr i32 %65, 16
  %conv207 = trunc i32 %shr205 to i8
  %add208 = add i32 %1, 14
  %and209 = and i32 %add208, 1048575
  %add210 = or i32 %and209, -18874368
  %66 = inttoptr i32 %add210 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %66, i8 %conv207) #9, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !149
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %57, i8 -112) #9, !srcloc !104
  %nents.i418 = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 17, i32 0, i32 1
  %67 = ptrtoint ptr %nents.i418 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %nents.i418, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp222450.not = icmp eq i32 %68, 0
  br i1 %cmp222450.not, label %if.then168.do.body232_crit_edge, label %for.body224.lr.ph

if.then168.do.body232_crit_edge:                  ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body232

for.body224.lr.ph:                                ; preds = %if.then168
  %sdb.i417 = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 17
  %69 = ptrtoint ptr %sdb.i417 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %sdb.i417, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool32.not.i = icmp ne i32 %5, 0
  br label %for.body224

for.body224:                                      ; preds = %SYM53C500_pio_read.exit.for.body224_crit_edge, %for.body224.lr.ph
  %i170.0452 = phi i32 [ 0, %for.body224.lr.ph ], [ %inc229, %SYM53C500_pio_read.exit.for.body224_crit_edge ]
  %sg169.0451 = phi ptr [ %70, %for.body224.lr.ph ], [ %call230, %SYM53C500_pio_read.exit.for.body224_crit_edge ]
  %71 = ptrtoint ptr %sg169.0451 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %sg169.0451, align 4
  %and.i.i.i419 = and i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i419)
  %tobool.i.not.i.i420 = icmp eq i32 %and.i.i.i419, 0
  br i1 %tobool.i.not.i.i420, label %sg_virt.exit426, label %do.body2.i.i421, !prof !138

do.body2.i.i421:                                  ; preds = %for.body224
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #9, !srcloc !139
  unreachable

sg_virt.exit426:                                  ; preds = %for.body224
  %and.i.i422 = and i32 %72, -4
  %73 = inttoptr i32 %and.i.i422 to ptr
  %call1.i423 = tail call ptr @page_address(ptr noundef %73) #9
  %offset.i424 = getelementptr inbounds %struct.scatterlist, ptr %sg169.0451, i32 0, i32 1
  %74 = ptrtoint ptr %offset.i424 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %offset.i424, align 4
  %length226 = getelementptr inbounds %struct.scatterlist, ptr %sg169.0451, i32 0, i32 2
  %76 = ptrtoint ptr %length226 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %length226, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !150
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 -128) #9, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !151
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 -92) #9, !srcloc !104
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool.not17.i = icmp eq i32 %77, 0
  br i1 %tobool.not17.i, label %sg_virt.exit426.SYM53C500_pio_read.exit_crit_edge, label %while.body.lr.ph.i434

sg_virt.exit426.SYM53C500_pio_read.exit_crit_edge: ; preds = %sg_virt.exit426
  call void @__sanitizer_cov_trace_pc() #11
  br label %SYM53C500_pio_read.exit

while.body.lr.ph.i434:                            ; preds = %sg_virt.exit426
  %add.ptr.i425 = getelementptr i8, ptr %call1.i423, i32 %75
  br label %while.body.i436

while.body.i436:                                  ; preds = %if.end55.i.while.body.i436_crit_edge, %while.body.lr.ph.i434
  %request.addr.019.i = phi ptr [ %add.ptr.i425, %while.body.lr.ph.i434 ], [ %request.addr.2.i448, %if.end55.i.while.body.i436_crit_edge ]
  %reqlen.addr.018.i = phi i32 [ %77, %while.body.lr.ph.i434 ], [ %reqlen.addr.2.i447, %if.end55.i.while.body.i436_crit_edge ]
  %78 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %10) #9, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  %conv.i435 = zext i8 %78 to i32
  %and14.i = and i32 %conv.i435, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.end.i438, label %while.body.i436.SYM53C500_pio_read.exit_crit_edge

while.body.i436.SYM53C500_pio_read.exit_crit_edge: ; preds = %while.body.i436
  call void @__sanitizer_cov_trace_pc() #11
  br label %SYM53C500_pio_read.exit

if.end.i438:                                      ; preds = %while.body.i436
  %and16.i437 = lshr i32 %conv.i435, 1
  %79 = and i32 %and16.i437, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %79)
  %80 = icmp ult i32 %79, 8
  br i1 %80, label %switch.hole_check460, label %if.end.i438.sw.epilog.i_crit_edge

if.end.i438.sw.epilog.i_crit_edge:                ; preds = %if.end.i438
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.hole_check460.sw.epilog.i_crit_edge, %if.end.i438.sw.epilog.i_crit_edge
  %and21.i = and i32 %conv.i435, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %sw.epilog.i.if.end55.i_crit_edge, label %sw.epilog.i.SYM53C500_pio_read.exit_crit_edge

sw.epilog.i.SYM53C500_pio_read.exit_crit_edge:    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %SYM53C500_pio_read.exit

sw.epilog.i.if.end55.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55.i

switch.hole_check460:                             ; preds = %if.end.i438
  %switch.maskindex462 = trunc i32 %79 to i8
  %switch.shifted463 = lshr i8 -47, %switch.maskindex462
  %81 = and i8 %switch.shifted463, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %switch.lobit464.not = icmp eq i8 %81, 0
  br i1 %switch.lobit464.not, label %switch.hole_check460.sw.epilog.i_crit_edge, label %switch.lookup461

switch.hole_check460.sw.epilog.i_crit_edge:       ; preds = %switch.hole_check460
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

switch.lookup461:                                 ; preds = %switch.hole_check460
  %switch.gep465 = getelementptr inbounds [8 x i32], ptr @switch.table.SYM53C500_intr.42, i32 0, i32 %79
  %82 = ptrtoint ptr %switch.gep465 to i32
  call void @__asan_load4_noabort(i32 %82)
  %switch.load466 = load i32, ptr %switch.gep465, align 4
  %83 = tail call i32 @llvm.umin.i32(i32 %switch.load466, i32 %reqlen.addr.018.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %83)
  %cmp34.i = icmp ugt i32 %83, 3
  %or.cond.i442 = select i1 %tobool32.not.i, i1 %cmp34.i, i1 false
  br i1 %or.cond.i442, label %if.then36.i, label %switch.lookup461.while.body45.i_crit_edge

switch.lookup461.while.body45.i_crit_edge:        ; preds = %switch.lookup461
  br label %while.body45.i

if.then36.i:                                      ; preds = %switch.lookup461
  call void @__sanitizer_cov_trace_pc() #11
  %shr11.i = lshr i32 %83, 2
  tail call void @__raw_readsl(ptr noundef nonnull %12, ptr noundef %request.addr.019.i, i32 noundef %shr11.i) #9
  %and41.i = and i32 %83, 252
  %add.ptr.i443 = getelementptr i8, ptr %request.addr.019.i, i32 %and41.i
  %sub.i444 = sub i32 %reqlen.addr.018.i, %and41.i
  br label %if.end55.i

while.body45.i:                                   ; preds = %while.body45.i.while.body45.i_crit_edge, %switch.lookup461.while.body45.i_crit_edge
  %request.addr.115.i = phi ptr [ %incdec.ptr.i446, %while.body45.i.while.body45.i_crit_edge ], [ %request.addr.019.i, %switch.lookup461.while.body45.i_crit_edge ]
  %len.213.i = phi i32 [ %dec.i445, %while.body45.i.while.body45.i_crit_edge ], [ %83, %switch.lookup461.while.body45.i_crit_edge ]
  %dec.i445 = add nsw i32 %len.213.i, -1
  %84 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #9, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  %incdec.ptr.i446 = getelementptr i8, ptr %request.addr.115.i, i32 1
  %85 = ptrtoint ptr %request.addr.115.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %84, ptr %request.addr.115.i, align 1
  %tobool44.not.i = icmp eq i32 %dec.i445, 0
  br i1 %tobool44.not.i, label %if.end55.loopexit.i, label %while.body45.i.while.body45.i_crit_edge

while.body45.i.while.body45.i_crit_edge:          ; preds = %while.body45.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body45.i

if.end55.loopexit.i:                              ; preds = %while.body45.i
  call void @__sanitizer_cov_trace_pc() #11
  %86 = sub i32 %reqlen.addr.018.i, %83
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.end55.loopexit.i, %if.then36.i, %sw.epilog.i.if.end55.i_crit_edge
  %reqlen.addr.2.i447 = phi i32 [ %sub.i444, %if.then36.i ], [ %reqlen.addr.018.i, %sw.epilog.i.if.end55.i_crit_edge ], [ %86, %if.end55.loopexit.i ]
  %request.addr.2.i448 = phi ptr [ %add.ptr.i443, %if.then36.i ], [ %request.addr.019.i, %sw.epilog.i.if.end55.i_crit_edge ], [ %incdec.ptr.i446, %if.end55.loopexit.i ]
  %tobool.not.i449 = icmp eq i32 %reqlen.addr.2.i447, 0
  br i1 %tobool.not.i449, label %if.end55.i.SYM53C500_pio_read.exit_crit_edge, label %if.end55.i.while.body.i436_crit_edge

if.end55.i.while.body.i436_crit_edge:             ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i436

if.end55.i.SYM53C500_pio_read.exit_crit_edge:     ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %SYM53C500_pio_read.exit

SYM53C500_pio_read.exit:                          ; preds = %if.end55.i.SYM53C500_pio_read.exit_crit_edge, %sw.epilog.i.SYM53C500_pio_read.exit_crit_edge, %while.body.i436.SYM53C500_pio_read.exit_crit_edge, %sg_virt.exit426.SYM53C500_pio_read.exit_crit_edge
  %inc229 = add nuw i32 %i170.0452, 1
  %call230 = tail call ptr @sg_next(ptr noundef %sg169.0451) #9
  %87 = ptrtoint ptr %nents.i418 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %nents.i418, align 4
  %cmp222 = icmp ult i32 %inc229, %88
  br i1 %cmp222, label %SYM53C500_pio_read.exit.for.body224_crit_edge, label %SYM53C500_pio_read.exit.do.body232_crit_edge

SYM53C500_pio_read.exit.do.body232_crit_edge:     ; preds = %SYM53C500_pio_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body232

SYM53C500_pio_read.exit.for.body224_crit_edge:    ; preds = %SYM53C500_pio_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body224

do.body232:                                       ; preds = %SYM53C500_pio_read.exit.do.body232_crit_edge, %if.then168.do.body232_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 4) #9, !srcloc !104
  br label %out

sw.bb240:                                         ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  %phase242 = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 22, i32 9
  %89 = ptrtoint ptr %phase242 to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile i32 3, ptr %phase242, align 4
  %call247 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #13
  br label %out

sw.bb248:                                         ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  %phase250 = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 22, i32 9
  %90 = ptrtoint ptr %phase250 to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile i32 4, ptr %phase250, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !155
  tail call void @arm_heavy_mb() #9
  %add254 = add i32 %1, 3
  %and255 = and i32 %add254, 1048575
  %add256 = or i32 %and255, -18874368
  %91 = inttoptr i32 %add256 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %91, i8 1) #9, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !156
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %91, i8 17) #9, !srcloc !104
  br label %out

do.end268:                                        ; preds = %if.end95.do.end268_crit_edge, %if.end95.do.end268_crit_edge467
  %call270 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #13
  br label %out

sw.bb271:                                         ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  %phase273 = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 22, i32 9
  %92 = ptrtoint ptr %phase273 to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile i32 5, ptr %phase273, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  tail call void @arm_heavy_mb() #9
  %add277 = add i32 %1, 3
  %and278 = and i32 %add277, 1048575
  %add279 = or i32 %and278, -18874368
  %93 = inttoptr i32 %add279 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %93, i8 26) #9, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %93, i8 18) #9, !srcloc !104
  br label %out

sw.bb288:                                         ; preds = %if.end95
  %phase290 = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 22, i32 9
  %94 = ptrtoint ptr %phase290 to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile i32 6, ptr %phase290, align 4
  %add292 = add i32 %1, 2
  %and293 = and i32 %add292, 1048575
  %add294 = or i32 %and293, -18874368
  %95 = inttoptr i32 %add294 to ptr
  %96 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %95) #9, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !159
  %conv298 = zext i8 %96 to i32
  %Status300 = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 22, i32 5
  %97 = ptrtoint ptr %Status300 to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile i32 %conv298, ptr %Status300, align 4
  %98 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %95) #9, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !160
  %conv308 = zext i8 %98 to i32
  %Message310 = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 22, i32 6
  %99 = ptrtoint ptr %Message310 to i32
  call void @__asan_store4_noabort(i32 %99)
  store volatile i32 %conv308, ptr %Message310, align 4
  %100 = load volatile i32, ptr %Message310, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %100)
  %cmp313 = icmp eq i32 %100, 2
  br i1 %cmp313, label %sw.bb288.do.body320_crit_edge, label %lor.lhs.false

sw.bb288.do.body320_crit_edge:                    ; preds = %sw.bb288
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body320

lor.lhs.false:                                    ; preds = %sw.bb288
  %101 = ptrtoint ptr %Message310 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %Message310, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %102)
  %cmp317 = icmp eq i32 %102, 4
  br i1 %cmp317, label %lor.lhs.false.do.body320_crit_edge, label %lor.lhs.false.do.body328_crit_edge

lor.lhs.false.do.body320_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body320

lor.lhs.false.do.body328_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %.pre = add i32 %1, 3
  %.pre456 = and i32 %.pre, 1048575
  %.pre457 = or i32 %.pre456, -18874368
  %.pre458 = inttoptr i32 %.pre457 to ptr
  br label %do.body328

do.body320:                                       ; preds = %lor.lhs.false.do.body320_crit_edge, %sw.bb288.do.body320_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !161
  tail call void @arm_heavy_mb() #9
  %add323 = add i32 %1, 3
  %and324 = and i32 %add323, 1048575
  %add325 = or i32 %and324, -18874368
  %103 = inttoptr i32 %add325 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %103, i8 26) #9, !srcloc !104
  br label %do.body328

do.body328:                                       ; preds = %do.body320, %lor.lhs.false.do.body328_crit_edge
  %.pre-phi = phi ptr [ %.pre458, %lor.lhs.false.do.body328_crit_edge ], [ %103, %do.body320 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !162
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %.pre-phi, i8 18) #9, !srcloc !104
  br label %out

if.end95.unreachabledefault:                      ; preds = %if.end95
  unreachable

out:                                              ; preds = %idle_out, %do.body328, %sw.bb271, %do.end268, %sw.bb248, %sw.bb240, %do.body232, %sw.bb164.out_crit_edge, %do.body156, %sw.bb.out_crit_edge
  %104 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %105, i32 noundef %call3) #9
  ret i32 1

idle_out:                                         ; preds = %if.else, %if.then83.idle_out_crit_edge, %do.end75, %do.end64, %do.end53, %entry.idle_out_crit_edge
  %.sink = phi i32 [ %or, %if.else ], [ 458752, %do.end75 ], [ 393216, %do.end64 ], [ 458752, %do.end53 ], [ 524288, %entry.idle_out_crit_edge ], [ 65536, %if.then83.idle_out_crit_edge ]
  %result87 = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 24
  %106 = ptrtoint ptr %result87 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %.sink, ptr %result87, align 4
  %phase337 = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 22, i32 9
  %107 = ptrtoint ptr %phase337 to i32
  call void @__asan_store4_noabort(i32 %107)
  store volatile i32 0, ptr %phase337, align 4
  tail call void @scsi_done(ptr noundef %3) #9
  br label %out
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_scan_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_host_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @SYM53C500_release(ptr noundef %link) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %host = getelementptr inbounds %struct.scsi_info_t, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @SYM53C500_release.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@SYM53C500_release, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !102

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @SYM53C500_release.__UNIQUE_ID_ddebug287, ptr noundef %dev, ptr noundef nonnull @.str.39) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @scsi_remove_host(ptr noundef %3) #9
  %irq = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 47
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %do.end.if.end7_crit_edge, label %if.then4

do.end.if.end7_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call ptr @free_irq(i32 noundef %5, ptr noundef %3) #9
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %do.end.if.end7_crit_edge
  %io_port = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 44
  %6 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %io_port, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool8.not = icmp eq i32 %7, 0
  br i1 %tobool8.not, label %if.end7.if.end14_crit_edge, label %land.lhs.true

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end7
  %n_io_port = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 45
  %8 = ptrtoint ptr %n_io_port to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %n_io_port, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool9.not = icmp eq i8 %9, 0
  br i1 %tobool9.not, label %land.lhs.true.if.end14_crit_edge, label %if.then10

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %9 to i32
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %7, i32 noundef %conv) #9
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %land.lhs.true.if.end14_crit_edge, %if.end7.if.end14_crit_edge
  tail call void @pcmcia_disable_device(ptr noundef %link) #9
  tail call void @scsi_host_put(ptr noundef %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @SYM53C500_queue(ptr nocapture noundef readonly %shost, ptr noundef %cmd) #2 align 64 {
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
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %io_port.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 44
  %6 = ptrtoint ptr %io_port.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %io_port.i, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 53
  %8 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %cmd, ptr %hostdata.i, align 4
  %phase.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 22, i32 9
  %9 = ptrtoint ptr %phase.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 3, ptr %phase.i, align 4
  %10 = load ptr, ptr %hostdata.i, align 4
  %Status.i = getelementptr inbounds %struct.scsi_cmnd, ptr %10, i32 0, i32 22, i32 5
  %11 = ptrtoint ptr %Status.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 0, ptr %Status.i, align 4
  %12 = load ptr, ptr %hostdata.i, align 4
  %Message.i = getelementptr inbounds %struct.scsi_cmnd, ptr %12, i32 0, i32 22, i32 6
  %13 = ptrtoint ptr %Message.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 0, ptr %Message.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  tail call void @arm_heavy_mb() #9
  %add.i = add i32 %7, 13
  %and.i = and i32 %add.i, 1048575
  %add8.i = or i32 %and.i, -18874368
  %14 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 4) #9, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !164
  tail call void @arm_heavy_mb() #9
  %15 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %device.i, align 4
  %id.i.i = getelementptr inbounds %struct.scsi_device, ptr %16, i32 0, i32 16
  %17 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id.i.i, align 8
  %conv.i = trunc i32 %18 to i8
  %add14.i = add i32 %7, 4
  %and15.i = and i32 %add14.i, 1048575
  %add16.i = or i32 %and15.i, -18874368
  %19 = inttoptr i32 %add16.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 %conv.i) #9, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %add21.i = add i32 %7, 3
  %and22.i = and i32 %add21.i, 1048575
  %add23.i = or i32 %and22.i, -18874368
  %20 = inttoptr i32 %add23.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 1) #9, !srcloc !104
  %cmd_len.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 14
  %21 = ptrtoint ptr %cmd_len.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %cmd_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %cmp2.not.i = icmp eq i16 %22, 0
  br i1 %cmp2.not.i, label %entry.SYM53C500_queue_lck.exit_crit_edge, label %do.body27.lr.ph.i

entry.SYM53C500_queue_lck.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %SYM53C500_queue_lck.exit

do.body27.lr.ph.i:                                ; preds = %entry
  %cmnd.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 16
  %add30.i = add i32 %7, 2
  %and31.i = and i32 %add30.i, 1048575
  %add32.i = or i32 %and31.i, -18874368
  %23 = inttoptr i32 %add32.i to ptr
  br label %do.body27.i

do.body27.i:                                      ; preds = %do.body27.i.do.body27.i_crit_edge, %do.body27.lr.ph.i
  %i.03.i = phi i32 [ 0, %do.body27.lr.ph.i ], [ %inc.i, %do.body27.i.do.body27.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  tail call void @arm_heavy_mb() #9
  %24 = ptrtoint ptr %cmnd.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cmnd.i, align 4
  %arrayidx.i = getelementptr i8, ptr %25, i32 %i.03.i
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i, align 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 %27) #9, !srcloc !104
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %28 = ptrtoint ptr %cmd_len.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %cmd_len.i, align 4
  %conv25.i = zext i16 %29 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv25.i
  br i1 %cmp.i, label %do.body27.i.do.body27.i_crit_edge, label %do.body27.i.SYM53C500_queue_lck.exit_crit_edge

do.body27.i.SYM53C500_queue_lck.exit_crit_edge:   ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %SYM53C500_queue_lck.exit

do.body27.i.do.body27.i_crit_edge:                ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body27.i

SYM53C500_queue_lck.exit:                         ; preds = %do.body27.i.SYM53C500_queue_lck.exit_crit_edge, %entry.SYM53C500_queue_lck.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !167
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 65) #9, !srcloc !104
  %30 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %31, i32 noundef %call2) #9
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal nonnull ptr @SYM53C500_info(ptr nocapture noundef readonly %SChost) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %io_port = getelementptr inbounds %struct.Scsi_Host, ptr %SChost, i32 0, i32 44
  %0 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %io_port, align 8
  %irq = getelementptr inbounds %struct.Scsi_Host, ptr %SChost, i32 0, i32 47
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 8
  %fast_pio = getelementptr inbounds %struct.Scsi_Host, ptr %SChost, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %fast_pio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fast_pio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %cond = select i1 %tobool.not, ptr @.str.21, ptr @.str.20
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull @SYM53C500_info.info_msg, i32 noundef 256, ptr noundef nonnull @.str.19, i32 noundef %1, i32 noundef %3, ptr noundef nonnull %cond)
  ret ptr @SYM53C500_info.info_msg
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @SYM53C500_host_reset(ptr nocapture noundef readonly %SCpnt) #2 align 64 {
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
  %io_port = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io_port, align 8
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %7) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  %add.i = add i32 %5, 13
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %8 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 4) #9, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  tail call void @arm_heavy_mb() #9
  %add4.i = add i32 %5, 3
  %and5.i = and i32 %add4.i, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %9 = inttoptr i32 %add6.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 2) #9, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 0) #9, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !110
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 3) #9, !srcloc !104
  tail call fastcc void @chip_init(i32 noundef %5) #9
  %10 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %host_lock5 = getelementptr inbounds %struct.Scsi_Host, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %host_lock5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %host_lock5, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %15) #9
  ret i32 8194
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @SYM53C500_biosparm(ptr nocapture noundef readnone %disk, ptr nocapture noundef readnone %dev, i64 noundef %capacity, ptr nocapture noundef writeonly %info_array) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %capacity to i32
  %0 = ptrtoint ptr %info_array to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 64, ptr %info_array, align 4
  %arrayidx1 = getelementptr i32, ptr %info_array, i32 1
  %1 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 32, ptr %arrayidx1, align 4
  %shr = ashr i32 %conv, 11
  %arrayidx2 = getelementptr i32, ptr %info_array, i32 2
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %shr, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2099199, i32 %conv)
  %cmp = icmp sgt i32 %conv, 2099199
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %info_array to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 255, ptr %info_array, align 4
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 63, ptr %arrayidx1, align 4
  %div15 = udiv i32 %conv, 16065
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %div15, ptr %arrayidx2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @SYM53C500_show_pio(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fast_pio = getelementptr i8, ptr %dev, i32 940
  %0 = ptrtoint ptr %fast_pio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fast_pio, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4, ptr noundef nonnull @.str.23, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @SYM53C500_store_pio(ptr nocapture noundef writeonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_strtoul(ptr noundef %buf, ptr noundef null, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %switch = icmp ult i32 %call, 2
  br i1 %switch, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %fast_pio = getelementptr i8, ptr %dev, i32 940
  %0 = ptrtoint ptr %fast_pio to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call, ptr %fast_pio, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.then ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_request_io(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_add_host_with_dma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcmcia_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcmcia_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !14, !16, !18, !20, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !37, !38, !39, !41, !42, !43, !45, !47, !49, !51, !53, !55, !56, !58, !60, !62, !64, !66, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92}
!llvm.module.flags = !{!93, !94, !95, !96, !97, !98, !99, !100}
!llvm.ident = !{!101}

!0 = !{ptr @__UNIQUE_ID_author291, !1, !"__UNIQUE_ID_author291", i1 false, i1 false}
!1 = !{!"../drivers/scsi/pcmcia/sym53c500_cs.c", i32 853, i32 1}
!2 = !{ptr @__UNIQUE_ID_description292, !3, !"__UNIQUE_ID_description292", i1 false, i1 false}
!3 = !{!"../drivers/scsi/pcmcia/sym53c500_cs.c", i32 854, i32 1}
!4 = !{ptr @__UNIQUE_ID_license293, !5, !"__UNIQUE_ID_license293", i1 false, i1 false}
!5 = !{!"../drivers/scsi/pcmcia/sym53c500_cs.c", i32 855, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/pcmcia/sym53c500_cs.c", i32 858, i32 2}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/scsi/pcmcia/sym53c500_cs.c", i32 859, i32 2}
!11 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/scsi/pcmcia/sym53c500_cs.c", i32 860, i32 2}
!14 = !{ptr @sym53c500_ids, !15, !"sym53c500_ids", i1 false, i1 false}
!15 = !{!"../drivers/scsi/pcmcia/sym53c500_cs.c", i32 857, i32 38}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/scsi/pcmcia/sym53c500_cs.c", i32 867, i32 11}
!18 = !{ptr @sym53c500_cs_driver, !19, !"sym53c500_cs_driver", i1 false, i1 false}
!19 = !{!"../drivers/scsi/pcmcia/sym53c500_cs.c", i32 865, i32 29}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/scsi/pcmcia/sym53c500_cs.c", i32 840, i32 2}
!22 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @SYM53C500_probe.__UNIQUE_ID_ddebug290, !21, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/scsi/pcmcia/sym53c500_cs.c", i32 699, i32 2}
!27 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @SYM53C500_config.__UNIQUE_ID_ddebug288, !26, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/scsi/pcmcia/sym53c500_cs.c", i32 748, i32 3}
!31 = !{ptr @SYM53C500_config._entry, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @SYM53C500_config._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/scsi/pcmcia/sym53c500_cs.c", i32 755, i32 59}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/scsi/pcmcia/sym53c500_cs.c", i32 756, i32 4}
!37 = !{ptr @SYM53C500_config._entry.13, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @SYM53C500_config._entry_ptr.15, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/scsi/pcmcia/sym53c500_cs.c", i32 795, i32 2}
!41 = !{ptr @SYM53C500_config._entry.16, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @SYM53C500_config._entry_ptr.18, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @sym53c500_driver_template, !44, !"sym53c500_driver_template", i1 false, i1 false}
!44 = !{!"../drivers/scsi/pcmcia/sym53c500_cs.c", i32 663, i32 34}
!45 = !{ptr @SYM53C500_info.info_msg, !46, !"info_msg", i1 false, i1 false}
!46 = !{!"../drivers/scsi/pcmcia/sym53c500_cs.c", i32 529, i32 14}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/scsi/pcmcia/sym53c500_cs.c", i32 535, i32 6}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/scsi/pcmcia/sym53c500_cs.c", i32 536, i32 53}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/scsi/pcmcia/sym53c500_cs.c", i32 536, i32 62}
!53 = !{ptr @SYM53C500_shost_groups, !54, !"SYM53C500_shost_groups", i1 false, i1 false}
!54 = !{!"../drivers/scsi/pcmcia/sym53c500_cs.c", i32 658, i32 1}
!55 = !{ptr @SYM53C500_shost_group, !54, !"SYM53C500_shost_group", i1 false, i1 false}
!56 = !{ptr @SYM53C500_shost_attrs, !57, !"SYM53C500_shost_attrs", i1 false, i1 false}
!57 = !{!"../drivers/scsi/pcmcia/sym53c500_cs.c", i32 653, i32 26}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/scsi/pcmcia/sym53c500_cs.c", i32 646, i32 11}
!60 = !{ptr @SYM53C500_pio_attr, !61, !"SYM53C500_pio_attr", i1 false, i1 false}
!61 = !{!"../drivers/scsi/pcmcia/sym53c500_cs.c", i32 644, i32 32}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/scsi/pcmcia/sym53c500_cs.c", i32 619, i32 26}
!64 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/scsi/pcmcia/sym53c500_cs.c", i32 381, i32 3}
!66 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @SYM53C500_intr._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @SYM53C500_intr._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/scsi/pcmcia/sym53c500_cs.c", i32 387, i32 3}
!71 = !{ptr @SYM53C500_intr._entry.26, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @SYM53C500_intr._entry_ptr.28, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/scsi/pcmcia/sym53c500_cs.c", i32 393, i32 3}
!75 = !{ptr @SYM53C500_intr._entry.29, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @SYM53C500_intr._entry_ptr.31, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/scsi/pcmcia/sym53c500_cs.c", i32 450, i32 3}
!79 = !{ptr @SYM53C500_intr._entry.32, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @SYM53C500_intr._entry_ptr.34, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/scsi/pcmcia/sym53c500_cs.c", i32 462, i32 3}
!83 = !{ptr @SYM53C500_intr._entry.35, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @SYM53C500_intr._entry_ptr.37, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/scsi/pcmcia/sym53c500_cs.c", i32 505, i32 2}
!87 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @SYM53C500_release.__UNIQUE_ID_ddebug287, !86, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!89 = !{ptr @.str.40, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/scsi/pcmcia/sym53c500_cs.c", i32 827, i32 2}
!91 = !{ptr @.str.41, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @SYM53C500_detach.__UNIQUE_ID_ddebug289, !90, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!93 = !{i32 1, !"wchar_size", i32 2}
!94 = !{i32 1, !"min_enum_size", i32 4}
!95 = !{i32 8, !"branch-target-enforcement", i32 0}
!96 = !{i32 8, !"sign-return-address", i32 0}
!97 = !{i32 8, !"sign-return-address-all", i32 0}
!98 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!99 = !{i32 7, !"uwtable", i32 1}
!100 = !{i32 7, !"frame-pointer", i32 2}
!101 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!102 = !{i64 2148974018, i64 2148974023, i64 2148974036, i64 2148974080, i64 2148974114, i64 2148974135}
!103 = !{i64 2155095507}
!104 = !{i64 4636278}
!105 = !{i64 2155095878}
!106 = !{i64 2155096249}
!107 = !{i64 2155057215}
!108 = !{i64 2155057564}
!109 = !{i64 2155057913}
!110 = !{i64 2155058262}
!111 = !{i64 2155089874}
!112 = !{i64 2155090245}
!113 = !{i64 2155090616}
!114 = !{i64 2155053046}
!115 = !{i64 2155053403}
!116 = !{i64 2155053751}
!117 = !{i64 2155054095}
!118 = !{i64 2155054444}
!119 = !{i64 2155054793}
!120 = !{i64 2155055142}
!121 = !{i64 2155055491}
!122 = !{i64 2155055835}
!123 = !{i64 2155056179}
!124 = !{i64 2155056523}
!125 = !{i64 2155056866}
!126 = !{i64 2155062487}
!127 = !{i64 2155062848}
!128 = !{i64 4636673}
!129 = !{i64 2155063275}
!130 = !{i64 2155063547}
!131 = !{i64 2155063974}
!132 = !{i64 2155064272}
!133 = !{i64 2155068675}
!134 = !{i64 2155069265}
!135 = !{i64 2155069651}
!136 = !{i64 2155070038}
!137 = !{i64 2155070407}
!138 = !{!"branch_weights", i32 2000, i32 1}
!139 = !{i64 2154450649, i64 2154451141, i64 2154450686, i64 2154450742, i64 2154450776, i64 2154450800, i64 2154450841, i64 2154450862, i64 2154450890, i64 2154450924}
!140 = !{i64 2155060543}
!141 = !{i64 2155060894}
!142 = !{i64 2155061306}
!143 = !{i64 2155061698}
!144 = !{i64 2155071004}
!145 = !{i64 2155071361}
!146 = !{i64 2155071951}
!147 = !{i64 2155072337}
!148 = !{i64 2155072724}
!149 = !{i64 2155073093}
!150 = !{i64 2155058855}
!151 = !{i64 2155059206}
!152 = !{i64 2155059618}
!153 = !{i64 2155060073}
!154 = !{i64 2155073690}
!155 = !{i64 2155075632}
!156 = !{i64 2155075985}
!157 = !{i64 2155077761}
!158 = !{i64 2155078114}
!159 = !{i64 2155078537}
!160 = !{i64 2155078835}
!161 = !{i64 2155079063}
!162 = !{i64 2155079416}
!163 = !{i64 2155082115}
!164 = !{i64 2155082519}
!165 = !{i64 2155082872}
!166 = !{i64 2155083230}
!167 = !{i64 2155083583}
