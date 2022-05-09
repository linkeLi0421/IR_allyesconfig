; ModuleID = '/llk/IR_all_yes/drivers/ata/libata-transport.c_pt.bc'
source_filename = "../drivers/ata/libata-transport.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+ata_port_classify\22, \22a\22\09"
module asm "\09.weak\09__crc_ata_port_classify\09\09\09\09"
module asm "\09.long\09__crc_ata_port_classify\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_port_classify:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_port_classify\22\09\09\09\09\09"
module asm "__kstrtabns_ata_port_classify:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.84 = type { i32, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.transport_class = type { %struct.class, ptr, ptr, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.86 = type { i32, ptr }
%struct.ata_port = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.ata_ioports, i8, i8, ptr, %struct.delayed_work, ptr, i32, i32, i32, i32, i32, [33 x %struct.ata_queued_cmd], i32, i64, i32, i32, [96 x i8], %struct.ata_link, ptr, i32, ptr, ptr, %struct.ata_port_stats, ptr, ptr, %struct.device, %struct.mutex, %struct.delayed_work, %struct.work_struct, i32, %struct.list_head, %struct.wait_queue_head, i32, %struct.completion, %struct.pm_message, i32, %struct.timer_list, i32, i64, i32, ptr, [512 x i8] }
%struct.ata_ioports = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ata_queued_cmd = type { ptr, ptr, ptr, ptr, %struct.ata_taskfile, [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.scatterlist, ptr, ptr, i32, i32, %struct.ata_taskfile, ptr, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.ata_taskfile = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.ata_link = type { ptr, i32, %struct.device, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ata_eh_info, %struct.ata_eh_context, [116 x i8], [2 x %struct.ata_device], i32, [124 x i8] }
%struct.ata_eh_info = type { ptr, i32, i32, i32, [2 x i32], i32, i32, [80 x i8], i32 }
%struct.ata_eh_context = type { %struct.ata_eh_info, [2 x i32], [2 x [7 x i32]], [2 x i32], i32, i32, i32, [2 x i8], i32 }
%struct.ata_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.device, i64, i64, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, [10 x i8], %union.anon.79, [8 x i8], [20 x i8], [64 x i8], i32, i32, i32, i32, ptr, i32, %struct.ata_ering }
%union.anon.79 = type { [128 x i32] }
%struct.ata_ering = type { i32, [32 x %struct.ata_ering_entry] }
%struct.ata_ering_entry = type { i32, i32, i64 }
%struct.ata_port_stats = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.pm_message = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.scsi_transport_template = type { %struct.transport_container, %struct.transport_container, %struct.transport_container, ptr, i32, i32, i32, i32, i32, i8, ptr }
%struct.transport_container = type { %struct.attribute_container, ptr }
%struct.attribute_container = type { %struct.list_head, %struct.klist, ptr, ptr, ptr, ptr, i32 }
%struct.klist = type { %struct.spinlock, %struct.list_head, ptr, ptr }
%struct.ata_internal = type { %struct.scsi_transport_template, [3 x %struct.device_attribute], [3 x %struct.device_attribute], [9 x %struct.device_attribute], %struct.transport_container, %struct.transport_container, [4 x ptr], [4 x ptr], [10 x ptr] }
%struct.ata_show_ering_arg = type { ptr, i32 }

@ata_port_type = external dso_local constant %struct.device_type, align 4
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ata%d\00", [26 x i8] zeroinitializer }, align 32
@ata_class_names = internal constant { [11 x %struct.anon.84], [40 x i8] } { [11 x %struct.anon.84] [%struct.anon.84 { i32 0, ptr @.str.8 }, %struct.anon.84 { i32 1, ptr @.str.9 }, %struct.anon.84 { i32 2, ptr @.str.9 }, %struct.anon.84 { i32 3, ptr @.str.10 }, %struct.anon.84 { i32 4, ptr @.str.10 }, %struct.anon.84 { i32 5, ptr @.str.11 }, %struct.anon.84 { i32 6, ptr @.str.11 }, %struct.anon.84 { i32 7, ptr @.str.12 }, %struct.anon.84 { i32 8, ptr @.str.12 }, %struct.anon.84 { i32 9, ptr @.str.13 }, %struct.anon.84 { i32 11, ptr @.str.14 }], [40 x i8] zeroinitializer }, align 32
@ata_port_classify.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 86, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"libata\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ata_port_classify\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/ata/libata-transport.c\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ata%u: found %s device by sig\0A\00", [33 x i8] zeroinitializer }, align 32
@ata_port_classify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 350, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016ata%u: found unknown device (class %u)\0A\00", [54 x i8] zeroinitializer }, align 32
@ata_port_classify._entry_ptr = internal global ptr @ata_port_classify._entry, section ".printk_index", align 4
@__kstrtab_ata_port_classify = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_port_classify = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_port_classify = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_port_classify to i32), ptr @__kstrtab_ata_port_classify, ptr @__kstrtabns_ata_port_classify }, section "___ksymtab_gpl+ata_port_classify", align 4
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"link%d\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"link%d.%d\00", [22 x i8] zeroinitializer }, align 32
@ata_port_class = internal global { %struct.transport_class, [56 x i8] } { %struct.transport_class { %struct.class { ptr @.str.17, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ata_link_class = internal global { %struct.transport_class, [56 x i8] } { %struct.transport_class { %struct.class { ptr @.str.18, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ata_dev_class = internal global { %struct.transport_class, [56 x i8] } { %struct.transport_class { %struct.class { ptr @.str.19, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@dev_attr_nr_pmp_links = internal constant { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_ata_port_nr_pmp_links, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_idle_irq = internal constant { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_ata_port_idle_irq, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_port_no = internal constant { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_ata_port_port_no, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_hw_sata_spd_limit = internal constant { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_ata_link_hw_sata_spd_limit, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_sata_spd_limit = internal constant { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_ata_link_sata_spd_limit, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_sata_spd = internal constant { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_ata_link_sata_spd, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_class = internal constant { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_ata_dev_class, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_pio_mode = internal constant { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_ata_dev_pio_mode, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_dma_mode = internal constant { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.61, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_ata_dev_dma_mode, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_xfer_mode = internal constant { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.62, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_ata_dev_xfer_mode, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_spdn_cnt = internal constant { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.63, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_ata_dev_spdn_cnt, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ering = internal constant { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.64, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_ata_dev_ering, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_id = internal constant { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.77, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_ata_dev_id, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_gscr = internal constant { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.79, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_ata_dev_gscr, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_trim = internal constant { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.81, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_ata_dev_trim, ptr null }, [36 x i8] zeroinitializer }, align 32
@ata_scsi_transport_template = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ata\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"atapi\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pmp\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"semb\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"zac\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dev%d.%d\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dev%d.%d.0\00", [21 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ata_port\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ata_link\00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ata_device\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nr_pmp_links\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"idle_irq\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%ld\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"port_no\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hw_sata_spd_limit\00", [46 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sata_spd_limit\00", [17 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sata_spd\00", [23 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"class\00", [26 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pio_mode\00", [23 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@ata_xfer_names = internal constant { [24 x %struct.anon.86], [32 x i8] } { [24 x %struct.anon.86] [%struct.anon.86 { i32 71, ptr @.str.37 }, %struct.anon.86 { i32 70, ptr @.str.38 }, %struct.anon.86 { i32 69, ptr @.str.39 }, %struct.anon.86 { i32 68, ptr @.str.40 }, %struct.anon.86 { i32 67, ptr @.str.41 }, %struct.anon.86 { i32 66, ptr @.str.42 }, %struct.anon.86 { i32 65, ptr @.str.43 }, %struct.anon.86 { i32 64, ptr @.str.44 }, %struct.anon.86 { i32 36, ptr @.str.45 }, %struct.anon.86 { i32 35, ptr @.str.46 }, %struct.anon.86 { i32 34, ptr @.str.47 }, %struct.anon.86 { i32 33, ptr @.str.48 }, %struct.anon.86 { i32 32, ptr @.str.49 }, %struct.anon.86 { i32 18, ptr @.str.50 }, %struct.anon.86 { i32 17, ptr @.str.51 }, %struct.anon.86 { i32 16, ptr @.str.52 }, %struct.anon.86 { i32 14, ptr @.str.53 }, %struct.anon.86 { i32 13, ptr @.str.54 }, %struct.anon.86 { i32 12, ptr @.str.55 }, %struct.anon.86 { i32 11, ptr @.str.56 }, %struct.anon.86 { i32 10, ptr @.str.57 }, %struct.anon.86 { i32 9, ptr @.str.58 }, %struct.anon.86 { i32 8, ptr @.str.59 }, %struct.anon.86 { i32 0, ptr @.str.60 }], [32 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%s\00", [27 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c", \00", [29 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"XFER_UDMA_7\00", [20 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"XFER_UDMA_6\00", [20 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"XFER_UDMA_5\00", [20 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"XFER_UDMA_4\00", [20 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"XFER_UDMA_3\00", [20 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"XFER_UDMA_2\00", [20 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"XFER_UDMA_1\00", [20 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"XFER_UDMA_0\00", [20 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"XFER_MW_DMA_4\00", [18 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"XFER_MW_DMA_3\00", [18 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"XFER_MW_DMA_2\00", [18 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"XFER_MW_DMA_1\00", [18 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"XFER_MW_DMA_0\00", [18 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"XFER_SW_DMA_2\00", [18 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"XFER_SW_DMA_1\00", [18 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"XFER_SW_DMA_0\00", [18 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"XFER_PIO_6\00", [21 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"XFER_PIO_5\00", [21 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"XFER_PIO_4\00", [21 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"XFER_PIO_3\00", [21 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"XFER_PIO_2\00", [21 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"XFER_PIO_1\00", [21 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"XFER_PIO_0\00", [21 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"XFER_PIO_SLOW\00", [18 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dma_mode\00", [23 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"xfer_mode\00", [22 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spdn_cnt\00", [23 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ering\00", [26 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"[%5llu.%09lu]\00", [18 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DeviceError\00", [20 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HostStateMachineError\00", [42 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Timeout\00", [24 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MediaError\00", [21 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"BusError\00", [23 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HostBusError\00", [19 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SystemError\00", [20 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"InvalidArg\00", [21 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"NoDeviceHint\00", [19 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"NCQError\00", [23 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"id\00", [29 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%04x%c\00", [25 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gscr\00", [27 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%08x%c\00", [25 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"trim\00", [27 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"unsupported\00", [20 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"forced_unsupported\00", [45 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"forced_unqueued\00", [16 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"queued\00", [25 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"unqueued\00", [23 x i8] zeroinitializer }, align 32
@switch.table.ata_port_classify = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 1, i32 10], [52 x i8] zeroinitializer }, align 32
@switch.table.show_ata_dev_class = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 0, i32 10], [48 x i8] zeroinitializer }, align 32
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 291, i32 20 }
@___asan_gen_.90 = private unnamed_addr constant [16 x i8] c"ata_class_names\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 136, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 344, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 350, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 448, i32 21 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 450, i32 21 }
@___asan_gen_.117 = private unnamed_addr constant [15 x i8] c"ata_port_class\00", align 1
@___asan_gen_.120 = private unnamed_addr constant [15 x i8] c"ata_link_class\00", align 1
@___asan_gen_.123 = private unnamed_addr constant [14 x i8] c"ata_dev_class\00", align 1
@___asan_gen_.126 = private unnamed_addr constant [22 x i8] c"dev_attr_nr_pmp_links\00", align 1
@___asan_gen_.129 = private unnamed_addr constant [18 x i8] c"dev_attr_idle_irq\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [17 x i8] c"dev_attr_port_no\00", align 1
@___asan_gen_.135 = private unnamed_addr constant [27 x i8] c"dev_attr_hw_sata_spd_limit\00", align 1
@___asan_gen_.138 = private unnamed_addr constant [24 x i8] c"dev_attr_sata_spd_limit\00", align 1
@___asan_gen_.141 = private unnamed_addr constant [18 x i8] c"dev_attr_sata_spd\00", align 1
@___asan_gen_.144 = private unnamed_addr constant [15 x i8] c"dev_attr_class\00", align 1
@___asan_gen_.147 = private unnamed_addr constant [18 x i8] c"dev_attr_pio_mode\00", align 1
@___asan_gen_.150 = private unnamed_addr constant [18 x i8] c"dev_attr_dma_mode\00", align 1
@___asan_gen_.153 = private unnamed_addr constant [19 x i8] c"dev_attr_xfer_mode\00", align 1
@___asan_gen_.156 = private unnamed_addr constant [18 x i8] c"dev_attr_spdn_cnt\00", align 1
@___asan_gen_.159 = private unnamed_addr constant [15 x i8] c"dev_attr_ering\00", align 1
@___asan_gen_.162 = private unnamed_addr constant [12 x i8] c"dev_attr_id\00", align 1
@___asan_gen_.165 = private unnamed_addr constant [14 x i8] c"dev_attr_gscr\00", align 1
@___asan_gen_.168 = private unnamed_addr constant [14 x i8] c"dev_attr_trim\00", align 1
@___asan_gen_.171 = private unnamed_addr constant [28 x i8] c"ata_scsi_transport_template\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 45, i32 33 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 137, i32 22 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 138, i32 19 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 140, i32 20 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 142, i32 19 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 144, i32 20 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 146, i32 19 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 147, i32 20 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 699, i32 21 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 701, i32 21 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 222, i32 8 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 379, i32 8 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 619, i32 8 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 218, i32 1 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 219, i32 1 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 220, i32 1 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 374, i32 1 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 375, i32 1 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 376, i32 1 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 499, i32 1 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 500, i32 1 }
@___asan_gen_.249 = private unnamed_addr constant [15 x i8] c"ata_xfer_names\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 173, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 199, i32 1 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 174, i32 19 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 175, i32 19 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 176, i32 19 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 177, i32 19 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 178, i32 19 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 179, i32 19 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 180, i32 19 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 181, i32 19 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 182, i32 20 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 183, i32 20 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 184, i32 20 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 185, i32 20 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 186, i32 20 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 187, i32 20 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 188, i32 20 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 189, i32 20 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 190, i32 18 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 191, i32 18 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 192, i32 18 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 193, i32 18 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 194, i32 18 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 195, i32 18 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 196, i32 18 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 197, i32 20 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 501, i32 1 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 502, i32 1 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 520, i32 1 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 554, i32 8 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 535, i32 5 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 156, i32 18 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 157, i32 18 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 158, i32 21 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 159, i32 20 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 160, i32 21 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 161, i32 22 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 162, i32 20 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 163, i32 21 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 164, i32 20 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 165, i32 24 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 166, i32 18 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 573, i32 8 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 566, i32 41 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 594, i32 8 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 585, i32 41 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 617, i32 8 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 604, i32 10 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 606, i32 10 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 608, i32 11 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 610, i32 10 }
@___asan_gen_.405 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.406 = private constant [34 x i8] c"../drivers/ata/libata-transport.c\00", align 1
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 612, i32 10 }
@___asan_gen_.408 = private unnamed_addr constant [31 x i8] c"switch.table.ata_port_classify\00", align 1
@___asan_gen_.409 = private unnamed_addr constant [32 x i8] c"switch.table.show_ata_dev_class\00", align 1
@llvm.compiler.used = appending global [112 x ptr] [ptr @__ksymtab_ata_port_classify, ptr @ata_port_classify._entry, ptr @ata_port_classify._entry_ptr, ptr @libata_transport_exit, ptr @.str, ptr @ata_class_names, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @ata_port_class, ptr @ata_link_class, ptr @ata_dev_class, ptr @dev_attr_nr_pmp_links, ptr @dev_attr_idle_irq, ptr @dev_attr_port_no, ptr @dev_attr_hw_sata_spd_limit, ptr @dev_attr_sata_spd_limit, ptr @dev_attr_sata_spd, ptr @dev_attr_class, ptr @dev_attr_pio_mode, ptr @dev_attr_dma_mode, ptr @dev_attr_xfer_mode, ptr @dev_attr_spdn_cnt, ptr @dev_attr_ering, ptr @dev_attr_id, ptr @dev_attr_gscr, ptr @dev_attr_trim, ptr @ata_scsi_transport_template, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.33, ptr @.str.34, ptr @ata_xfer_names, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @switch.table.ata_port_classify, ptr @switch.table.show_ata_dev_class], section "llvm.metadata"
@0 = internal global [109 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ata_class_names to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ata_port_classify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ata_port_class to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ata_link_class to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ata_dev_class to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_nr_pmp_links to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_idle_irq to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_port_no to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_hw_sata_spd_limit to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_sata_spd_limit to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_sata_spd to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_class to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pio_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_dma_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_xfer_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_spdn_cnt to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ering to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_gscr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_trim to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ata_scsi_transport_template to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ata_xfer_names to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ata_port_classify to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.show_ata_dev_class to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ata_tport_delete(ptr noundef %ap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tdev = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 33
  %link = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25
  tail call void @ata_tlink_delete(ptr noundef %link)
  tail call void @transport_remove_device(ptr noundef %tdev) #13
  tail call void @device_del(ptr noundef %tdev) #13
  tail call void @transport_destroy_device(ptr noundef %tdev) #13
  tail call void @put_device(ptr noundef %tdev) #13
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ata_tlink_delete(ptr noundef %link) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ata_dev_next(ptr noundef null, ptr noundef %link, i32 noundef 2) #13
  %tobool.not9 = icmp eq ptr %call, null
  br i1 %tobool.not9, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %ata_dev.010 = phi ptr [ %call1, %for.body.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %tdev.i = getelementptr inbounds %struct.ata_device, ptr %ata_dev.010, i32 0, i32 6
  tail call void @transport_remove_device(ptr noundef %tdev.i) #13
  tail call void @device_del(ptr noundef %tdev.i) #13
  tail call void @transport_destroy_device(ptr noundef %tdev.i) #13
  tail call void @put_device(ptr noundef %tdev.i) #13
  %call1 = tail call ptr @ata_dev_next(ptr noundef nonnull %ata_dev.010, ptr noundef %link, i32 noundef 2) #13
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %tdev = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 2
  tail call void @transport_remove_device(ptr noundef %tdev) #13
  tail call void @device_del(ptr noundef %tdev) #13
  tail call void @transport_destroy_device(ptr noundef %tdev) #13
  tail call void @put_device(ptr noundef %tdev) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @transport_remove_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @transport_destroy_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ata_tport_add(ptr noundef %parent, ptr noundef %ap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tdev = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 33
  tail call void @device_initialize(ptr noundef %tdev) #13
  %type = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 33, i32 4
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @ata_port_type, ptr %type, align 4
  %parent1 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 33, i32 1
  %1 = ptrtoint ptr %parent1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %parent, ptr %parent1, align 8
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  tail call void @ata_host_get(ptr noundef %3) #13
  %release = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 33, i32 35
  %4 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @ata_tport_release, ptr %release, align 4
  %print_id = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %5 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %print_id, align 4
  %call = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %tdev, ptr noundef nonnull @.str, i32 noundef %6) #13
  tail call void @transport_setup_device(ptr noundef %tdev) #13
  %call2 = tail call i32 @device_add(ptr noundef %tdev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.tport_err_crit_edge

entry.tport_err_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %tport_err

if.end:                                           ; preds = %entry
  %is_prepared.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 33, i32 12, i32 1
  %7 = ptrtoint ptr %is_prepared.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load.i = load i16, ptr %is_prepared.i, align 4
  %8 = and i16 %bf.load.i, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %bf.cast.not.i = icmp eq i16 %8, 0
  br i1 %bf.cast.not.i, label %if.then.i, label %if.end.device_enable_async_suspend.exit_crit_edge

if.end.device_enable_async_suspend.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %device_enable_async_suspend.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %bf.set.i = or i16 %bf.load.i, 16384
  %9 = ptrtoint ptr %is_prepared.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %bf.set.i, ptr %is_prepared.i, align 4
  br label %device_enable_async_suspend.exit

device_enable_async_suspend.exit:                 ; preds = %if.then.i, %if.end.device_enable_async_suspend.exit_crit_edge
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %tdev, i32 noundef 0) #13
  tail call void @pm_runtime_enable(ptr noundef %tdev) #13
  tail call void @pm_runtime_forbid(ptr noundef %tdev) #13
  %call4 = tail call i32 @transport_add_device(ptr noundef %tdev) #13
  tail call void @transport_configure_device(ptr noundef %tdev) #13
  %link = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25
  %call5 = tail call i32 @ata_tlink_add(ptr noundef %link)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %device_enable_async_suspend.exit.cleanup_crit_edge, label %tport_link_err

device_enable_async_suspend.exit.cleanup_crit_edge: ; preds = %device_enable_async_suspend.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

tport_link_err:                                   ; preds = %device_enable_async_suspend.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @transport_remove_device(ptr noundef %tdev) #13
  tail call void @device_del(ptr noundef %tdev) #13
  br label %tport_err

tport_err:                                        ; preds = %tport_link_err, %entry.tport_err_crit_edge
  %error.0 = phi i32 [ %call2, %entry.tport_err_crit_edge ], [ %call5, %tport_link_err ]
  tail call void @transport_destroy_device(ptr noundef %tdev) #13
  tail call void @put_device(ptr noundef %tdev) #13
  %10 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %host, align 4
  tail call void @ata_host_put(ptr noundef %11) #13
  br label %cleanup

cleanup:                                          ; preds = %tport_err, %device_enable_async_suspend.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %tport_err ], [ 0, %device_enable_async_suspend.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_host_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ata_tport_release(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr i8, ptr %dev, i32 -12
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  tail call void @ata_host_put(ptr noundef %1) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @transport_setup_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_forbid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @transport_add_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @transport_configure_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ata_tlink_add(ptr noundef %link) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tdev = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 2
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
  tail call void @device_initialize(ptr noundef %tdev) #13
  %tdev2 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 33
  %parent = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %tdev2, ptr %parent, align 8
  %release = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 2, i32 35
  %3 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @ata_tlink_release, ptr %release, align 4
  %4 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %link, align 128
  %link1.i = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 25
  %cmp.i = icmp eq ptr %link1.i, %link
  br i1 %cmp.i, label %entry.if.then_crit_edge, label %ata_is_host_link.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

ata_is_host_link.exit:                            ; preds = %entry
  %slave_link.i = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 26
  %6 = ptrtoint ptr %slave_link.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %slave_link.i, align 128
  %cmp3.i = icmp eq ptr %7, %link
  br i1 %cmp3.i, label %ata_is_host_link.exit.if.then_crit_edge, label %if.else

ata_is_host_link.exit.if.then_crit_edge:          ; preds = %ata_is_host_link.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %ata_is_host_link.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %print_id = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %print_id, align 4
  %call3 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %tdev, ptr noundef nonnull @.str.6, i32 noundef %9) #13
  br label %if.end

if.else:                                          ; preds = %ata_is_host_link.exit
  call void @__sanitizer_cov_trace_pc() #15
  %print_id4 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %print_id4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %print_id4, align 4
  %pmp = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 1
  %12 = ptrtoint ptr %pmp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pmp, align 4
  %call5 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %tdev, ptr noundef nonnull @.str.7, i32 noundef %11, i32 noundef %13) #13
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @transport_setup_device(ptr noundef %tdev) #13
  %call6 = tail call i32 @device_add(ptr noundef %tdev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end8, label %if.end.tlink_err_crit_edge

if.end.tlink_err_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %tlink_err

if.end8:                                          ; preds = %if.end
  %call9 = tail call i32 @transport_add_device(ptr noundef %tdev) #13
  tail call void @transport_configure_device(ptr noundef %tdev) #13
  %call10 = tail call ptr @ata_dev_next(ptr noundef null, ptr noundef %link, i32 noundef 2) #13
  %tobool11.not48 = icmp eq ptr %call10, null
  br i1 %tobool11.not48, label %if.end8.cleanup_crit_edge, label %if.end8.for.body_crit_edge

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  br label %for.body

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end8.for.body_crit_edge
  %ata_dev.049 = phi ptr [ %call16, %for.inc.for.body_crit_edge ], [ %call10, %if.end8.for.body_crit_edge ]
  %tdev.i = getelementptr inbounds %struct.ata_device, ptr %ata_dev.049, i32 0, i32 6
  %14 = ptrtoint ptr %ata_dev.049 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ata_dev.049, align 128
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 128
  tail call void @device_initialize(ptr noundef %tdev.i) #13
  %tdev3.i = getelementptr inbounds %struct.ata_link, ptr %15, i32 0, i32 2
  %parent.i = getelementptr inbounds %struct.ata_device, ptr %ata_dev.049, i32 0, i32 6, i32 1
  %18 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %tdev3.i, ptr %parent.i, align 8
  %release.i = getelementptr inbounds %struct.ata_device, ptr %ata_dev.049, i32 0, i32 6, i32 35
  %19 = ptrtoint ptr %release.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @ata_tdev_release, ptr %release.i, align 4
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %15, align 128
  %link1.i.i = getelementptr inbounds %struct.ata_port, ptr %21, i32 0, i32 25
  %cmp.i.i = icmp eq ptr %link1.i.i, %15
  br i1 %cmp.i.i, label %for.body.if.then.i_crit_edge, label %ata_is_host_link.exit.i

for.body.if.then.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

ata_is_host_link.exit.i:                          ; preds = %for.body
  %slave_link.i.i = getelementptr inbounds %struct.ata_port, ptr %21, i32 0, i32 26
  %22 = ptrtoint ptr %slave_link.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %slave_link.i.i, align 128
  %cmp3.i.i = icmp eq ptr %23, %15
  br i1 %cmp3.i.i, label %ata_is_host_link.exit.i.if.then.i_crit_edge, label %if.else.i

ata_is_host_link.exit.i.if.then.i_crit_edge:      ; preds = %ata_is_host_link.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

if.then.i:                                        ; preds = %ata_is_host_link.exit.i.if.then.i_crit_edge, %for.body.if.then.i_crit_edge
  %print_id.i = getelementptr inbounds %struct.ata_port, ptr %17, i32 0, i32 5
  %24 = ptrtoint ptr %print_id.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %print_id.i, align 4
  %devno.i = getelementptr inbounds %struct.ata_device, ptr %ata_dev.049, i32 0, i32 1
  %26 = ptrtoint ptr %devno.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %devno.i, align 4
  %call4.i = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %tdev.i, ptr noundef nonnull @.str.15, i32 noundef %25, i32 noundef %27) #13
  br label %if.end.i

if.else.i:                                        ; preds = %ata_is_host_link.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %print_id5.i = getelementptr inbounds %struct.ata_port, ptr %17, i32 0, i32 5
  %28 = ptrtoint ptr %print_id5.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %print_id5.i, align 4
  %pmp.i = getelementptr inbounds %struct.ata_link, ptr %15, i32 0, i32 1
  %30 = ptrtoint ptr %pmp.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pmp.i, align 4
  %call6.i = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %tdev.i, ptr noundef nonnull @.str.16, i32 noundef %29, i32 noundef %31) #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  tail call void @transport_setup_device(ptr noundef %tdev.i) #13
  %call7.i = tail call i32 @device_add(ptr noundef %tdev.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool.not.i, label %for.inc, label %ata_tdev_add.exit

ata_tdev_add.exit:                                ; preds = %if.end.i
  tail call void @transport_destroy_device(ptr noundef %tdev.i) #13
  tail call void @put_device(ptr noundef %tdev.i) #13
  %device = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 14
  %incdec.ptr50 = getelementptr %struct.ata_device, ptr %ata_dev.049, i32 -1
  %cmp.not51 = icmp ult ptr %incdec.ptr50, %device
  br i1 %cmp.not51, label %ata_tdev_add.exit.while.end_crit_edge, label %ata_tdev_add.exit.while.body_crit_edge

ata_tdev_add.exit.while.body_crit_edge:           ; preds = %ata_tdev_add.exit
  br label %while.body

ata_tdev_add.exit.while.end_crit_edge:            ; preds = %ata_tdev_add.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

for.inc:                                          ; preds = %if.end.i
  %call10.i = tail call i32 @transport_add_device(ptr noundef %tdev.i) #13
  tail call void @transport_configure_device(ptr noundef %tdev.i) #13
  %call16 = tail call ptr @ata_dev_next(ptr noundef nonnull %ata_dev.049, ptr noundef %link, i32 noundef 2) #13
  %tobool11.not = icmp eq ptr %call16, null
  br i1 %tobool11.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %ata_tdev_add.exit.while.body_crit_edge
  %incdec.ptr53 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %incdec.ptr50, %ata_tdev_add.exit.while.body_crit_edge ]
  %ata_dev.152 = phi ptr [ %incdec.ptr53, %while.body.while.body_crit_edge ], [ %ata_dev.049, %ata_tdev_add.exit.while.body_crit_edge ]
  %tdev.i46 = getelementptr %struct.ata_device, ptr %ata_dev.152, i32 -1, i32 6
  tail call void @transport_remove_device(ptr noundef %tdev.i46) #13
  tail call void @device_del(ptr noundef %tdev.i46) #13
  tail call void @transport_destroy_device(ptr noundef %tdev.i46) #13
  tail call void @put_device(ptr noundef %tdev.i46) #13
  %incdec.ptr = getelementptr %struct.ata_device, ptr %incdec.ptr53, i32 -1
  %cmp.not = icmp ult ptr %incdec.ptr, %device
  br i1 %cmp.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %ata_tdev_add.exit.while.end_crit_edge
  tail call void @transport_remove_device(ptr noundef %tdev) #13
  tail call void @device_del(ptr noundef %tdev) #13
  br label %tlink_err

tlink_err:                                        ; preds = %while.end, %if.end.tlink_err_crit_edge
  %error.0 = phi i32 [ %call6, %if.end.tlink_err_crit_edge ], [ %call7.i, %while.end ]
  tail call void @transport_destroy_device(ptr noundef %tdev) #13
  tail call void @put_device(ptr noundef %tdev) #13
  br label %cleanup

cleanup:                                          ; preds = %tlink_err, %for.inc.cleanup_crit_edge, %if.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %tlink_err ], [ 0, %if.end8.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_host_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ata_port_classify(ptr nocapture noundef readonly %ap, ptr noundef %tf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ata_dev_classify(ptr noundef %tf) #13
  %switch.tableidx = add i32 %call, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 11
  br i1 %0, label %switch.hole_check, label %entry.for.inc.9_crit_edge

entry.for.inc.9_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.9

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 1535, %switch.maskindex
  %1 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %switch.lobit.not = icmp eq i16 %1, 0
  br i1 %switch.lobit.not, label %switch.hole_check.for.inc.9_crit_edge, label %switch.lookup

switch.hole_check.for.inc.9_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.9

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #15
  %switch.gep = getelementptr inbounds [11 x i32], ptr @switch.table.ata_port_classify, i32 0, i32 %switch.tableidx
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %2)
  %switch.load = load i32, ptr %switch.gep, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ata_port_classify.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ata_port_classify, %if.then5)) #13
          to label %cleanup [label %if.then5], !srcloc !204

if.then5:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #15
  %print_id = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %3 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %print_id, align 4
  %name = getelementptr [11 x %struct.anon.84], ptr @ata_class_names, i32 0, i32 %switch.load, i32 1
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ata_port_classify.__UNIQUE_ID_ddebug289, ptr noundef nonnull @.str.4, i32 noundef %4, ptr noundef %6) #13
  br label %cleanup

for.inc.9:                                        ; preds = %switch.hole_check.for.inc.9_crit_edge, %entry.for.inc.9_crit_edge
  %print_id12 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %7 = ptrtoint ptr %print_id12 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %print_id12, align 4
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %8, i32 noundef %call) #16
  br label %cleanup

cleanup:                                          ; preds = %for.inc.9, %if.then5, %switch.lookup
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_dev_classify(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ata_dev_next(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ata_tlink_release(ptr nocapture noundef %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ata_attach_transport() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 984) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %eh_strategy_handler = getelementptr inbounds %struct.scsi_transport_template, ptr %call7.i.i, i32 0, i32 10
  %1 = ptrtoint ptr %eh_strategy_handler to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @ata_scsi_error, ptr %eh_strategy_handler, align 8
  %user_scan = getelementptr inbounds %struct.scsi_transport_template, ptr %call7.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %user_scan to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @ata_scsi_user_scan, ptr %user_scan, align 4
  %port_attrs = getelementptr inbounds %struct.ata_internal, ptr %call7.i.i, i32 0, i32 7
  %attrs = getelementptr inbounds %struct.attribute_container, ptr %call7.i.i, i32 0, i32 4
  %3 = ptrtoint ptr %attrs to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %port_attrs, ptr %attrs, align 4
  %class = getelementptr inbounds %struct.attribute_container, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @ata_port_class, ptr %class, align 4
  %match = getelementptr inbounds %struct.attribute_container, ptr %call7.i.i, i32 0, i32 5
  %5 = ptrtoint ptr %match to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @ata_tport_match, ptr %match, align 8
  %call.i = tail call i32 @attribute_container_register(ptr noundef nonnull %call7.i.i) #13
  %link_attr_cont = getelementptr inbounds %struct.ata_internal, ptr %call7.i.i, i32 0, i32 4
  %class13 = getelementptr inbounds %struct.ata_internal, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 2
  %6 = ptrtoint ptr %class13 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @ata_link_class, ptr %class13, align 4
  %link_attrs = getelementptr inbounds %struct.ata_internal, ptr %call7.i.i, i32 0, i32 6
  %attrs17 = getelementptr inbounds %struct.ata_internal, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 4
  %7 = ptrtoint ptr %attrs17 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %link_attrs, ptr %attrs17, align 4
  %match20 = getelementptr inbounds %struct.ata_internal, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 5
  %8 = ptrtoint ptr %match20 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @ata_tlink_match, ptr %match20, align 8
  %call.i408 = tail call i32 @attribute_container_register(ptr noundef %link_attr_cont) #13
  %dev_attr_cont = getelementptr inbounds %struct.ata_internal, ptr %call7.i.i, i32 0, i32 5
  %class24 = getelementptr inbounds %struct.ata_internal, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 2
  %9 = ptrtoint ptr %class24 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @ata_dev_class, ptr %class24, align 8
  %dev_attrs = getelementptr inbounds %struct.ata_internal, ptr %call7.i.i, i32 0, i32 8
  %attrs28 = getelementptr inbounds %struct.ata_internal, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 4
  %10 = ptrtoint ptr %attrs28 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev_attrs, ptr %attrs28, align 8
  %match31 = getelementptr inbounds %struct.ata_internal, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 5
  %11 = ptrtoint ptr %match31 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @ata_tdev_match, ptr %match31, align 4
  %call.i409 = tail call i32 @attribute_container_register(ptr noundef %dev_attr_cont) #13
  %private_port_attrs = getelementptr inbounds %struct.ata_internal, ptr %call7.i.i, i32 0, i32 1
  %12 = call ptr @memcpy(ptr %private_port_attrs, ptr @dev_attr_nr_pmp_links, i32 28)
  %mode = getelementptr inbounds %struct.ata_internal, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %13 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 292, ptr %mode, align 8
  %14 = ptrtoint ptr %port_attrs to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %private_port_attrs, ptr %port_attrs, align 8
  %arrayidx42 = getelementptr %struct.ata_internal, ptr %call7.i.i, i32 0, i32 1, i32 1
  %15 = call ptr @memcpy(ptr %arrayidx42, ptr @dev_attr_idle_irq, i32 28)
  %mode46 = getelementptr %struct.ata_internal, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %mode46 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 292, ptr %mode46, align 4
  %arrayidx50 = getelementptr %struct.ata_internal, ptr %call7.i.i, i32 0, i32 7, i32 1
  %17 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %arrayidx42, ptr %arrayidx50, align 4
  %arrayidx53 = getelementptr %struct.ata_internal, ptr %call7.i.i, i32 0, i32 1, i32 2
  %18 = call ptr @memcpy(ptr %arrayidx53, ptr @dev_attr_port_no, i32 28)
  %mode57 = getelementptr %struct.ata_internal, ptr %call7.i.i, i32 0, i32 1, i32 2, i32 0, i32 1
  %19 = ptrtoint ptr %mode57 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 292, ptr %mode57, align 8
  %arrayidx61 = getelementptr %struct.ata_internal, ptr %call7.i.i, i32 0, i32 7, i32 2
  %20 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %arrayidx53, ptr %arrayidx61, align 8
  %arrayidx74 = getelementptr %struct.ata_internal, ptr %call7.i.i, i32 0, i32 7, i32 3
  %21 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %arrayidx74, align 4
  %private_link_attrs = getelementptr inbounds %struct.ata_internal, ptr %call7.i.i, i32 0, i32 2
  %22 = call ptr @memcpy(ptr %private_link_attrs, ptr @dev_attr_hw_sata_spd_limit, i32 28)
  %mode79 = getelementptr inbounds %struct.ata_internal, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 1
  %23 = ptrtoint ptr %mode79 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 292, ptr %mode79, align 4
  %24 = ptrtoint ptr %link_attrs to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %private_link_attrs, ptr %link_attrs, align 8
  %arrayidx86 = getelementptr %struct.ata_internal, ptr %call7.i.i, i32 0, i32 2, i32 1
  %25 = call ptr @memcpy(ptr %arrayidx86, ptr @dev_attr_sata_spd_limit, i32 28)
  %mode90 = getelementptr %struct.ata_internal, ptr %call7.i.i, i32 0, i32 2, i32 1, i32 0, i32 1
  %26 = ptrtoint ptr %mode90 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 292, ptr %mode90, align 8
  %arrayidx94 = getelementptr %struct.ata_internal, ptr %call7.i.i, i32 0, i32 6, i32 1
  %27 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %arrayidx86, ptr %arrayidx94, align 4
  %arrayidx97 = getelementptr %struct.ata_internal, ptr %call7.i.i, i32 0, i32 2, i32 2
  %28 = call ptr @memcpy(ptr %arrayidx97, ptr @dev_attr_sata_spd, i32 28)
  %mode101 = getelementptr %struct.ata_internal, ptr %call7.i.i, i32 0, i32 2, i32 2, i32 0, i32 1
  %29 = ptrtoint ptr %mode101 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 292, ptr %mode101, align 4
  %arrayidx105 = getelementptr %struct.ata_internal, ptr %call7.i.i, i32 0, i32 6, i32 2
  %30 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %arrayidx97, ptr %arrayidx105, align 8
  %arrayidx126 = getelementptr %struct.ata_internal, ptr %call7.i.i, i32 0, i32 6, i32 3
  %31 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %arrayidx126, align 4
  %private_dev_attrs = getelementptr inbounds %struct.ata_internal, ptr %call7.i.i, i32 0, i32 3
  %32 = call ptr @memcpy(ptr %private_dev_attrs, ptr @dev_attr_class, i32 28)
  %mode131 = getelementptr inbounds %struct.ata_internal, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 0, i32 1
  %33 = ptrtoint ptr %mode131 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 292, ptr %mode131, align 8
  %34 = ptrtoint ptr %dev_attrs to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %private_dev_attrs, ptr %dev_attrs, align 8
  %arrayidx138 = getelementptr %struct.ata_internal, ptr %call7.i.i, i32 0, i32 3, i32 1
  %35 = call ptr @memcpy(ptr %arrayidx138, ptr @dev_attr_pio_mode, i32 28)
  %mode142 = getelementptr %struct.ata_internal, ptr %call7.i.i, i32 0, i32 3, i32 1, i32 0, i32 1
  %36 = ptrtoint ptr %mode142 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 292, ptr %mode142, align 4
  %arrayidx146 = getelementptr %struct.ata_internal, ptr %call7.i.i, i32 0, i32 8, i32 1
  %37 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %arrayidx138, ptr %arrayidx146, align 4
  %arrayidx149 = getelementptr %struct.ata_internal, ptr %call7.i.i, i32 0, i32 3, i32 2
  %38 = call ptr @memcpy(ptr %arrayidx149, ptr @dev_attr_dma_mode, i32 28)
  %mode153 = getelementptr %struct.ata_internal, ptr %call7.i.i, i32 0, i32 3, i32 2, i32 0, i32 1
  %39 = ptrtoint ptr %mode153 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 292, ptr %mode153, align 8
  %arrayidx157 = getelementptr %struct.ata_internal, ptr %call7.i.i, i32 0, i32 8, i32 2
  %40 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %arrayidx149, ptr %arrayidx157, align 8
  %arrayidx160 = getelementptr %struct.ata_internal, ptr %call7.i.i, i32 0, i32 3, i32 3
  %41 = call ptr @memcpy(ptr %arrayidx160, ptr @dev_attr_xfer_mode, i32 28)
  %mode164 = getelementptr %struct.ata_internal, ptr %call7.i.i, i32 0, i32 3, i32 3, i32 0, i32 1
  %42 = ptrtoint ptr %mode164 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 292, ptr %mode164, align 4
  %arrayidx168 = getelementptr %struct.ata_internal, ptr %call7.i.i, i32 0, i32 8, i32 3
  %43 = ptrtoint ptr %arrayidx168 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %arrayidx160, ptr %arrayidx168, align 4
  %arrayidx171 = getelementptr %struct.ata_internal, ptr %call7.i.i, i32 0, i32 3, i32 4
  %44 = call ptr @memcpy(ptr %arrayidx171, ptr @dev_attr_spdn_cnt, i32 28)
  %mode175 = getelementptr %struct.ata_internal, ptr %call7.i.i, i32 0, i32 3, i32 4, i32 0, i32 1
  %45 = ptrtoint ptr %mode175 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 292, ptr %mode175, align 8
  %arrayidx179 = getelementptr %struct.ata_internal, ptr %call7.i.i, i32 0, i32 8, i32 4
  %46 = ptrtoint ptr %arrayidx179 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %arrayidx171, ptr %arrayidx179, align 8
  %arrayidx182 = getelementptr %struct.ata_internal, ptr %call7.i.i, i32 0, i32 3, i32 5
  %47 = call ptr @memcpy(ptr %arrayidx182, ptr @dev_attr_ering, i32 28)
  %mode186 = getelementptr %struct.ata_internal, ptr %call7.i.i, i32 0, i32 3, i32 5, i32 0, i32 1
  %48 = ptrtoint ptr %mode186 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 292, ptr %mode186, align 4
  %arrayidx190 = getelementptr %struct.ata_internal, ptr %call7.i.i, i32 0, i32 8, i32 5
  %49 = ptrtoint ptr %arrayidx190 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %arrayidx182, ptr %arrayidx190, align 4
  %arrayidx193 = getelementptr %struct.ata_internal, ptr %call7.i.i, i32 0, i32 3, i32 6
  %50 = call ptr @memcpy(ptr %arrayidx193, ptr @dev_attr_id, i32 28)
  %mode197 = getelementptr %struct.ata_internal, ptr %call7.i.i, i32 0, i32 3, i32 6, i32 0, i32 1
  %51 = ptrtoint ptr %mode197 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 292, ptr %mode197, align 8
  %arrayidx201 = getelementptr %struct.ata_internal, ptr %call7.i.i, i32 0, i32 8, i32 6
  %52 = ptrtoint ptr %arrayidx201 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %arrayidx193, ptr %arrayidx201, align 8
  %arrayidx204 = getelementptr %struct.ata_internal, ptr %call7.i.i, i32 0, i32 3, i32 7
  %53 = call ptr @memcpy(ptr %arrayidx204, ptr @dev_attr_gscr, i32 28)
  %mode208 = getelementptr %struct.ata_internal, ptr %call7.i.i, i32 0, i32 3, i32 7, i32 0, i32 1
  %54 = ptrtoint ptr %mode208 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 292, ptr %mode208, align 4
  %arrayidx212 = getelementptr %struct.ata_internal, ptr %call7.i.i, i32 0, i32 8, i32 7
  %55 = ptrtoint ptr %arrayidx212 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %arrayidx204, ptr %arrayidx212, align 4
  %arrayidx215 = getelementptr %struct.ata_internal, ptr %call7.i.i, i32 0, i32 3, i32 8
  %56 = call ptr @memcpy(ptr %arrayidx215, ptr @dev_attr_trim, i32 28)
  %mode219 = getelementptr %struct.ata_internal, ptr %call7.i.i, i32 0, i32 3, i32 8, i32 0, i32 1
  %57 = ptrtoint ptr %mode219 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 292, ptr %mode219, align 8
  %arrayidx223 = getelementptr %struct.ata_internal, ptr %call7.i.i, i32 0, i32 8, i32 8
  %58 = ptrtoint ptr %arrayidx223 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %arrayidx215, ptr %arrayidx223, align 8
  %arrayidx244 = getelementptr %struct.ata_internal, ptr %call7.i.i, i32 0, i32 8, i32 9
  %59 = ptrtoint ptr %arrayidx244 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %arrayidx244, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_scsi_error(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_user_scan(ptr noundef, i32 noundef, i32 noundef, i64 noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ata_tport_match(ptr nocapture noundef readnone %cont, ptr nocapture noundef readonly %dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %release.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 35
  %0 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %release.i, align 4
  %cmp.i.not = icmp eq ptr %1, @ata_tport_release
  br i1 %cmp.i.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = load ptr, ptr @ata_scsi_transport_template, align 4
  %cmp = icmp eq ptr %2, %cont
  %conv = zext i1 %cmp to i32
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %conv, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ata_tlink_match(ptr noundef readnone %cont, ptr nocapture noundef readonly %dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ata_scsi_transport_template, align 4
  %release.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 35
  %1 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %release.i, align 4
  %cmp.i.not = icmp eq ptr %2, @ata_tlink_release
  %link_attr_cont = getelementptr inbounds %struct.ata_internal, ptr %0, i32 0, i32 4
  %cmp = icmp eq ptr %link_attr_cont, %cont
  %narrow = select i1 %cmp.i.not, i1 %cmp, i1 false
  %retval.0 = zext i1 %narrow to i32
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ata_tdev_match(ptr noundef readnone %cont, ptr nocapture noundef readonly %dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ata_scsi_transport_template, align 4
  %release.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 35
  %1 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %release.i, align 4
  %cmp.i.not = icmp eq ptr %2, @ata_tdev_release
  %dev_attr_cont = getelementptr inbounds %struct.ata_internal, ptr %0, i32 0, i32 5
  %cmp = icmp eq ptr %dev_attr_cont, %cont
  %narrow = select i1 %cmp.i.not, i1 %cmp, i1 false
  %retval.0 = zext i1 %narrow to i32
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ata_release_transport(ptr noundef %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @attribute_container_unregister(ptr noundef %t) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %transport_container_unregister.exit, label %do.body.i, !prof !205

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/transport_class.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 92, 0\0A.popsection", ""() #13, !srcloc !206
  unreachable

transport_container_unregister.exit:              ; preds = %entry
  %link_attr_cont = getelementptr inbounds %struct.ata_internal, ptr %t, i32 0, i32 4
  %call.i5 = tail call i32 @attribute_container_unregister(ptr noundef %link_attr_cont) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5)
  %tobool.not.i6 = icmp eq i32 %call.i5, 0
  br i1 %tobool.not.i6, label %transport_container_unregister.exit8, label %do.body.i7, !prof !205

do.body.i7:                                       ; preds = %transport_container_unregister.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/transport_class.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 92, 0\0A.popsection", ""() #13, !srcloc !206
  unreachable

transport_container_unregister.exit8:             ; preds = %transport_container_unregister.exit
  %dev_attr_cont = getelementptr inbounds %struct.ata_internal, ptr %t, i32 0, i32 5
  %call.i9 = tail call i32 @attribute_container_unregister(ptr noundef %dev_attr_cont) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9)
  %tobool.not.i10 = icmp eq i32 %call.i9, 0
  br i1 %tobool.not.i10, label %transport_container_unregister.exit12, label %do.body.i11, !prof !205

do.body.i11:                                      ; preds = %transport_container_unregister.exit8
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/transport_class.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 92, 0\0A.popsection", ""() #13, !srcloc !206
  unreachable

transport_container_unregister.exit12:            ; preds = %transport_container_unregister.exit8
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef %t) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @libata_transport_init() local_unnamed_addr #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @transport_class_register(ptr noundef nonnull @ata_link_class) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @transport_class_register(ptr noundef nonnull @ata_port_class) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_unregister_link_crit_edge

if.end.out_unregister_link_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unregister_link

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @transport_class_register(ptr noundef nonnull @ata_dev_class) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %out_unregister_port

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

out_unregister_port:                              ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @transport_class_unregister(ptr noundef nonnull @ata_port_class) #13
  br label %out_unregister_link

out_unregister_link:                              ; preds = %out_unregister_port, %if.end.out_unregister_link_crit_edge
  %error.0 = phi i32 [ %call1, %if.end.out_unregister_link_crit_edge ], [ %call5, %out_unregister_port ]
  tail call void @transport_class_unregister(ptr noundef nonnull @ata_link_class) #13
  br label %cleanup

cleanup:                                          ; preds = %out_unregister_link, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4.cleanup_crit_edge ], [ %call, %entry.cleanup_crit_edge ], [ %error.0, %out_unregister_link ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @transport_class_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @transport_class_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @libata_transport_exit() #6 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @transport_class_unregister(ptr noundef nonnull @ata_link_class) #13
  tail call void @transport_class_unregister(ptr noundef nonnull @ata_port_class) #13
  tail call void @transport_class_unregister(ptr noundef nonnull @ata_dev_class) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ata_tdev_release(ptr nocapture noundef %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @attribute_container_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_ata_port_nr_pmp_links(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %nr_pmp_links = getelementptr i8, ptr %1, i32 -36
  %2 = ptrtoint ptr %nr_pmp_links to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_pmp_links, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 20, ptr noundef nonnull @.str.21, i32 noundef %3) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_ata_port_idle_irq(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %idle_irq = getelementptr i8, ptr %1, i32 -20
  %2 = ptrtoint ptr %idle_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %idle_irq, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 20, ptr noundef nonnull @.str.23, i32 noundef %3) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_ata_port_port_no(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %local_port_no = getelementptr i8, ptr %1, i32 -11792
  %2 = ptrtoint ptr %local_port_no to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %local_port_no, align 8
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 20, ptr noundef nonnull @.str.25, i32 noundef %3) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_ata_link_hw_sata_spd_limit(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %hw_sata_spd_limit = getelementptr i8, ptr %1, i32 944
  %2 = ptrtoint ptr %hw_sata_spd_limit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hw_sata_spd_limit, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  %4 = tail call i32 @llvm.ctlz.i32(i32 %3, i1 true) #13, !range !207
  %sub.i = sub nuw nsw i32 32, %4
  %cond.i = select i1 %tobool.not.i, i32 0, i32 %sub.i
  %call1 = tail call ptr @sata_spd_string(i32 noundef %cond.i) #13
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.27, ptr noundef %call1)
  ret i32 %call2
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sata_spd_string(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_ata_link_sata_spd_limit(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %sata_spd_limit = getelementptr i8, ptr %1, i32 948
  %2 = ptrtoint ptr %sata_spd_limit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sata_spd_limit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  %4 = tail call i32 @llvm.ctlz.i32(i32 %3, i1 true) #13, !range !207
  %sub.i = sub nuw nsw i32 32, %4
  %cond.i = select i1 %tobool.not.i, i32 0, i32 %sub.i
  %call1 = tail call ptr @sata_spd_string(i32 noundef %cond.i) #13
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.27, ptr noundef %call1)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_ata_link_sata_spd(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %sata_spd = getelementptr i8, ptr %1, i32 952
  %2 = ptrtoint ptr %sata_spd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sata_spd, align 64
  %call1 = tail call ptr @sata_spd_string(i32 noundef %3) #13
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.27, ptr noundef %call1)
  ret i32 %call2
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @show_ata_dev_class(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %class = getelementptr i8, ptr %1, i32 944
  %2 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %class, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %3)
  %4 = icmp ult i32 %3, 12
  br i1 %4, label %switch.hole_check, label %entry.get_ata_class_names.exit_crit_edge

entry.get_ata_class_names.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_ata_class_names.exit

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %3 to i16
  %switch.shifted = lshr i16 3071, %switch.maskindex
  %5 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %switch.lobit.not = icmp eq i16 %5, 0
  br i1 %switch.lobit.not, label %switch.hole_check.get_ata_class_names.exit_crit_edge, label %switch.lookup

switch.hole_check.get_ata_class_names.exit_crit_edge: ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_ata_class_names.exit

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #15
  %switch.gep = getelementptr inbounds [12 x i32], ptr @switch.table.show_ata_dev_class, i32 0, i32 %3
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load = load i32, ptr %switch.gep, align 4
  %name.i = getelementptr [11 x %struct.anon.84], ptr @ata_class_names, i32 0, i32 %switch.load, i32 1
  %7 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name.i, align 4
  %stpcpy.i = tail call ptr @stpcpy(ptr %buf, ptr %8) #18
  %9 = ptrtoint ptr %stpcpy.i to i32
  %10 = ptrtoint ptr %buf to i32
  %11 = sub i32 %9, %10
  br label %get_ata_class_names.exit

get_ata_class_names.exit:                         ; preds = %switch.lookup, %switch.hole_check.get_ata_class_names.exit_crit_edge, %entry.get_ata_class_names.exit_crit_edge
  %len.0.i = phi i32 [ %11, %switch.lookup ], [ 0, %entry.get_ata_class_names.exit_crit_edge ], [ 0, %switch.hole_check.get_ata_class_names.exit_crit_edge ]
  %add.ptr3.i = getelementptr i8, ptr %buf, i32 %len.0.i
  %12 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 2560, ptr %add.ptr3.i, align 1
  %add5.i = add i32 %len.0.i, 1
  ret i32 %add5.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_ata_dev_pio_mode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %pio_mode = getelementptr i8, ptr %1, i32 952
  %2 = ptrtoint ptr %pio_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pio_mode, align 16
  %conv = zext i8 %3 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.015.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %len.014.i = phi i32 [ 0, %entry ], [ %len.1.i, %for.inc.i.for.body.i_crit_edge ]
  %prefix.013.i = phi ptr [ @.str.34, %entry ], [ %prefix.1.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [24 x %struct.anon.86], ptr @ata_xfer_names, i32 0, i32 %i.015.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %5, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i8, ptr %buf, i32 %len.014.i
  %name.i = getelementptr [24 x %struct.anon.86], ptr @ata_xfer_names, i32 0, i32 %i.015.i, i32 1
  %6 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name.i, align 4
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.35, ptr noundef %prefix.013.i, ptr noundef %7) #13
  %add.i = add i32 %call.i, %len.014.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %prefix.1.i = phi ptr [ @.str.36, %if.then.i ], [ %prefix.013.i, %for.body.i.for.inc.i_crit_edge ]
  %len.1.i = phi i32 [ %add.i, %if.then.i ], [ %len.014.i, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.015.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 24
  br i1 %exitcond.not.i, label %get_ata_xfer_names.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

get_ata_xfer_names.exit:                          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr2.i = getelementptr i8, ptr %buf, i32 %len.1.i
  %8 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 2560, ptr %add.ptr2.i, align 1
  %add4.i = add i32 %len.1.i, 1
  ret i32 %add4.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_ata_dev_dma_mode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %dma_mode = getelementptr i8, ptr %1, i32 953
  %2 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dma_mode, align 1
  %conv = zext i8 %3 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.015.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %len.014.i = phi i32 [ 0, %entry ], [ %len.1.i, %for.inc.i.for.body.i_crit_edge ]
  %prefix.013.i = phi ptr [ @.str.34, %entry ], [ %prefix.1.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [24 x %struct.anon.86], ptr @ata_xfer_names, i32 0, i32 %i.015.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %5, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i8, ptr %buf, i32 %len.014.i
  %name.i = getelementptr [24 x %struct.anon.86], ptr @ata_xfer_names, i32 0, i32 %i.015.i, i32 1
  %6 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name.i, align 4
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.35, ptr noundef %prefix.013.i, ptr noundef %7) #13
  %add.i = add i32 %call.i, %len.014.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %prefix.1.i = phi ptr [ @.str.36, %if.then.i ], [ %prefix.013.i, %for.body.i.for.inc.i_crit_edge ]
  %len.1.i = phi i32 [ %add.i, %if.then.i ], [ %len.014.i, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.015.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 24
  br i1 %exitcond.not.i, label %get_ata_xfer_names.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

get_ata_xfer_names.exit:                          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr2.i = getelementptr i8, ptr %buf, i32 %len.1.i
  %8 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 2560, ptr %add.ptr2.i, align 1
  %add4.i = add i32 %len.1.i, 1
  ret i32 %add4.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_ata_dev_xfer_mode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %xfer_mode = getelementptr i8, ptr %1, i32 954
  %2 = ptrtoint ptr %xfer_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %xfer_mode, align 2
  %conv = zext i8 %3 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.015.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %len.014.i = phi i32 [ 0, %entry ], [ %len.1.i, %for.inc.i.for.body.i_crit_edge ]
  %prefix.013.i = phi ptr [ @.str.34, %entry ], [ %prefix.1.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [24 x %struct.anon.86], ptr @ata_xfer_names, i32 0, i32 %i.015.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %5, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i8, ptr %buf, i32 %len.014.i
  %name.i = getelementptr [24 x %struct.anon.86], ptr @ata_xfer_names, i32 0, i32 %i.015.i, i32 1
  %6 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name.i, align 4
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.35, ptr noundef %prefix.013.i, ptr noundef %7) #13
  %add.i = add i32 %call.i, %len.014.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %prefix.1.i = phi ptr [ @.str.36, %if.then.i ], [ %prefix.013.i, %for.body.i.for.inc.i_crit_edge ]
  %len.1.i = phi i32 [ %add.i, %if.then.i ], [ %len.014.i, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.015.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 24
  br i1 %exitcond.not.i, label %get_ata_xfer_names.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

get_ata_xfer_names.exit:                          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr2.i = getelementptr i8, ptr %buf, i32 %len.1.i
  %8 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 2560, ptr %add.ptr2.i, align 1
  %add4.i = add i32 %len.1.i, 1
  ret i32 %add4.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_ata_dev_spdn_cnt(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %spdn_cnt = getelementptr i8, ptr %1, i32 1624
  %2 = ptrtoint ptr %spdn_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %spdn_cnt, align 16
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 20, ptr noundef nonnull @.str.21, i32 noundef %3) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_ata_dev_ering(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %arg = alloca %struct.ata_show_ering_arg, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %arg) #13
  %2 = getelementptr inbounds %struct.ata_show_ering_arg, ptr %arg, i32 0, i32 1
  %3 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %buf, ptr %arg, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %2, align 4
  %ering = getelementptr i8, ptr %1, i32 1632
  %call = call i32 @ata_ering_map(ptr noundef %ering, ptr noundef nonnull @ata_show_ering, ptr noundef nonnull %arg) #13
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg) #13
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_ering_map(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ata_show_ering(ptr nocapture noundef readonly %ent, ptr nocapture noundef %void_arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %timestamp = getelementptr inbounds %struct.ata_ering_entry, ptr %ent, i32 0, i32 2
  %0 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %timestamp, align 8
  %2 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %1, i32 0) #19, !srcloc !208
  %asmresult.i.i = extractvalue { i64, i32 } %2, 0
  %asmresult4.i.i = extractvalue { i64, i32 } %2, 1
  %3 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %1, i64 %asmresult.i.i, i32 %asmresult4.i.i) #19, !srcloc !209
  %asmresult10.i.i = extractvalue { i64, i32 } %3, 0
  %conv14.i = trunc i64 %1 to i32
  %div1581.i = lshr i64 %asmresult10.i.i, 6
  %conv159.i = trunc i64 %div1581.i to i32
  %mul160.neg.i = mul i32 %conv159.i, -100
  %sub161.i = add i32 %mul160.neg.i, %conv14.i
  %4 = ptrtoint ptr %void_arg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %void_arg, align 4
  %written = getelementptr inbounds %struct.ata_show_ering_arg, ptr %void_arg, i32 0, i32 1
  %6 = ptrtoint ptr %written to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %written, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %7
  %mul = mul i32 %sub161.i, 1000000000
  %div = udiv i32 %mul, 100
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr, ptr noundef nonnull @.str.65, i64 noundef %div1581.i, i32 noundef %div)
  %8 = ptrtoint ptr %written to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %written, align 4
  %add = add i32 %9, %call1
  store i32 %add, ptr %written, align 4
  %err_mask = getelementptr inbounds %struct.ata_ering_entry, ptr %ent, i32 0, i32 1
  %10 = ptrtoint ptr %err_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %err_mask, align 4
  %12 = ptrtoint ptr %void_arg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %void_arg, align 4
  %add.ptr5 = getelementptr i8, ptr %13, i32 %add
  %and.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.for.inc.i_crit_edge, label %if.then.i

entry.for.inc.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr5, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.66) #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %entry.for.inc.i_crit_edge
  %prefix.1.i = phi ptr [ @.str.36, %if.then.i ], [ @.str.34, %entry.for.inc.i_crit_edge ]
  %len.1.i = phi i32 [ %call.i, %if.then.i ], [ 0, %entry.for.inc.i_crit_edge ]
  %and.1.i = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool.not.1.i = icmp eq i32 %and.1.i, 0
  br i1 %tobool.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.then.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1.i

if.then.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.1.i = getelementptr i8, ptr %add.ptr5, i32 %len.1.i
  %call.1.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.1.i, ptr noundef nonnull @.str.35, ptr noundef nonnull %prefix.1.i, ptr noundef nonnull @.str.67) #13
  %add.1.i = add i32 %call.1.i, %len.1.i
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %prefix.1.1.i = phi ptr [ @.str.36, %if.then.1.i ], [ %prefix.1.i, %for.inc.i.for.inc.1.i_crit_edge ]
  %len.1.1.i = phi i32 [ %add.1.i, %if.then.1.i ], [ %len.1.i, %for.inc.i.for.inc.1.i_crit_edge ]
  %and.2.i = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i)
  %tobool.not.2.i = icmp eq i32 %and.2.i, 0
  br i1 %tobool.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.then.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2.i

if.then.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.2.i = getelementptr i8, ptr %add.ptr5, i32 %len.1.1.i
  %call.2.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.2.i, ptr noundef nonnull @.str.35, ptr noundef nonnull %prefix.1.1.i, ptr noundef nonnull @.str.68) #13
  %add.2.i = add i32 %call.2.i, %len.1.1.i
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %prefix.1.2.i = phi ptr [ @.str.36, %if.then.2.i ], [ %prefix.1.1.i, %for.inc.1.i.for.inc.2.i_crit_edge ]
  %len.1.2.i = phi i32 [ %add.2.i, %if.then.2.i ], [ %len.1.1.i, %for.inc.1.i.for.inc.2.i_crit_edge ]
  %and.3.i = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i)
  %tobool.not.3.i = icmp eq i32 %and.3.i, 0
  br i1 %tobool.not.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge, label %if.then.3.i

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.3.i

if.then.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.3.i = getelementptr i8, ptr %add.ptr5, i32 %len.1.2.i
  %call.3.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.3.i, ptr noundef nonnull @.str.35, ptr noundef %prefix.1.2.i, ptr noundef nonnull @.str.69) #13
  %add.3.i = add i32 %call.3.i, %len.1.2.i
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.then.3.i, %for.inc.2.i.for.inc.3.i_crit_edge
  %prefix.1.3.i = phi ptr [ @.str.36, %if.then.3.i ], [ %prefix.1.2.i, %for.inc.2.i.for.inc.3.i_crit_edge ]
  %len.1.3.i = phi i32 [ %add.3.i, %if.then.3.i ], [ %len.1.2.i, %for.inc.2.i.for.inc.3.i_crit_edge ]
  %and.4.i = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4.i)
  %tobool.not.4.i = icmp eq i32 %and.4.i, 0
  br i1 %tobool.not.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge, label %if.then.4.i

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.4.i

if.then.4.i:                                      ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.4.i = getelementptr i8, ptr %add.ptr5, i32 %len.1.3.i
  %call.4.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.4.i, ptr noundef nonnull @.str.35, ptr noundef %prefix.1.3.i, ptr noundef nonnull @.str.70) #13
  %add.4.i = add i32 %call.4.i, %len.1.3.i
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %if.then.4.i, %for.inc.3.i.for.inc.4.i_crit_edge
  %prefix.1.4.i = phi ptr [ @.str.36, %if.then.4.i ], [ %prefix.1.3.i, %for.inc.3.i.for.inc.4.i_crit_edge ]
  %len.1.4.i = phi i32 [ %add.4.i, %if.then.4.i ], [ %len.1.3.i, %for.inc.3.i.for.inc.4.i_crit_edge ]
  %and.5.i = and i32 %11, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5.i)
  %tobool.not.5.i = icmp eq i32 %and.5.i, 0
  br i1 %tobool.not.5.i, label %for.inc.4.i.for.inc.5.i_crit_edge, label %if.then.5.i

for.inc.4.i.for.inc.5.i_crit_edge:                ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.5.i

if.then.5.i:                                      ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.5.i = getelementptr i8, ptr %add.ptr5, i32 %len.1.4.i
  %call.5.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.5.i, ptr noundef nonnull @.str.35, ptr noundef %prefix.1.4.i, ptr noundef nonnull @.str.71) #13
  %add.5.i = add i32 %call.5.i, %len.1.4.i
  br label %for.inc.5.i

for.inc.5.i:                                      ; preds = %if.then.5.i, %for.inc.4.i.for.inc.5.i_crit_edge
  %prefix.1.5.i = phi ptr [ @.str.36, %if.then.5.i ], [ %prefix.1.4.i, %for.inc.4.i.for.inc.5.i_crit_edge ]
  %len.1.5.i = phi i32 [ %add.5.i, %if.then.5.i ], [ %len.1.4.i, %for.inc.4.i.for.inc.5.i_crit_edge ]
  %and.6.i = and i32 %11, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6.i)
  %tobool.not.6.i = icmp eq i32 %and.6.i, 0
  br i1 %tobool.not.6.i, label %for.inc.5.i.for.inc.6.i_crit_edge, label %if.then.6.i

for.inc.5.i.for.inc.6.i_crit_edge:                ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.6.i

if.then.6.i:                                      ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.6.i = getelementptr i8, ptr %add.ptr5, i32 %len.1.5.i
  %call.6.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.6.i, ptr noundef nonnull @.str.35, ptr noundef %prefix.1.5.i, ptr noundef nonnull @.str.72) #13
  %add.6.i = add i32 %call.6.i, %len.1.5.i
  br label %for.inc.6.i

for.inc.6.i:                                      ; preds = %if.then.6.i, %for.inc.5.i.for.inc.6.i_crit_edge
  %prefix.1.6.i = phi ptr [ @.str.36, %if.then.6.i ], [ %prefix.1.5.i, %for.inc.5.i.for.inc.6.i_crit_edge ]
  %len.1.6.i = phi i32 [ %add.6.i, %if.then.6.i ], [ %len.1.5.i, %for.inc.5.i.for.inc.6.i_crit_edge ]
  %and.7.i = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7.i)
  %tobool.not.7.i = icmp eq i32 %and.7.i, 0
  br i1 %tobool.not.7.i, label %for.inc.6.i.for.inc.7.i_crit_edge, label %if.then.7.i

for.inc.6.i.for.inc.7.i_crit_edge:                ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.7.i

if.then.7.i:                                      ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.7.i = getelementptr i8, ptr %add.ptr5, i32 %len.1.6.i
  %call.7.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.7.i, ptr noundef nonnull @.str.35, ptr noundef %prefix.1.6.i, ptr noundef nonnull @.str.73) #13
  %add.7.i = add i32 %call.7.i, %len.1.6.i
  br label %for.inc.7.i

for.inc.7.i:                                      ; preds = %if.then.7.i, %for.inc.6.i.for.inc.7.i_crit_edge
  %prefix.1.7.i = phi ptr [ @.str.36, %if.then.7.i ], [ %prefix.1.6.i, %for.inc.6.i.for.inc.7.i_crit_edge ]
  %len.1.7.i = phi i32 [ %add.7.i, %if.then.7.i ], [ %len.1.6.i, %for.inc.6.i.for.inc.7.i_crit_edge ]
  %and.8.i = and i32 %11, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.8.i)
  %tobool.not.8.i = icmp eq i32 %and.8.i, 0
  br i1 %tobool.not.8.i, label %for.inc.7.i.for.inc.8.i_crit_edge, label %if.then.8.i

for.inc.7.i.for.inc.8.i_crit_edge:                ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.8.i

if.then.8.i:                                      ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.8.i = getelementptr i8, ptr %add.ptr5, i32 %len.1.7.i
  %call.8.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.8.i, ptr noundef nonnull @.str.35, ptr noundef %prefix.1.7.i, ptr noundef nonnull @.str.74) #13
  %add.8.i = add i32 %call.8.i, %len.1.7.i
  br label %for.inc.8.i

for.inc.8.i:                                      ; preds = %if.then.8.i, %for.inc.7.i.for.inc.8.i_crit_edge
  %prefix.1.8.i = phi ptr [ @.str.36, %if.then.8.i ], [ %prefix.1.7.i, %for.inc.7.i.for.inc.8.i_crit_edge ]
  %len.1.8.i = phi i32 [ %add.8.i, %if.then.8.i ], [ %len.1.7.i, %for.inc.7.i.for.inc.8.i_crit_edge ]
  %and.9.i = and i32 %11, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.9.i)
  %tobool.not.9.i = icmp eq i32 %and.9.i, 0
  br i1 %tobool.not.9.i, label %for.inc.8.i.for.inc.9.i_crit_edge, label %if.then.9.i

for.inc.8.i.for.inc.9.i_crit_edge:                ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.9.i

if.then.9.i:                                      ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.9.i = getelementptr i8, ptr %add.ptr5, i32 %len.1.8.i
  %call.9.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.9.i, ptr noundef nonnull @.str.35, ptr noundef %prefix.1.8.i, ptr noundef nonnull @.str.75) #13
  %add.9.i = add i32 %call.9.i, %len.1.8.i
  br label %for.inc.9.i

for.inc.9.i:                                      ; preds = %if.then.9.i, %for.inc.8.i.for.inc.9.i_crit_edge
  %prefix.1.9.i = phi ptr [ @.str.36, %if.then.9.i ], [ %prefix.1.8.i, %for.inc.8.i.for.inc.9.i_crit_edge ]
  %len.1.9.i = phi i32 [ %add.9.i, %if.then.9.i ], [ %len.1.8.i, %for.inc.8.i.for.inc.9.i_crit_edge ]
  %and.10.i = and i32 %11, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.10.i)
  %tobool.not.10.i = icmp eq i32 %and.10.i, 0
  br i1 %tobool.not.10.i, label %for.inc.9.i.get_ata_err_names.exit_crit_edge, label %if.then.10.i

for.inc.9.i.get_ata_err_names.exit_crit_edge:     ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_ata_err_names.exit

if.then.10.i:                                     ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.10.i = getelementptr i8, ptr %add.ptr5, i32 %len.1.9.i
  %call.10.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.10.i, ptr noundef nonnull @.str.35, ptr noundef %prefix.1.9.i, ptr noundef nonnull @.str.76) #13
  %add.10.i = add i32 %call.10.i, %len.1.9.i
  br label %get_ata_err_names.exit

get_ata_err_names.exit:                           ; preds = %if.then.10.i, %for.inc.9.i.get_ata_err_names.exit_crit_edge
  %len.1.10.i = phi i32 [ %add.10.i, %if.then.10.i ], [ %len.1.9.i, %for.inc.9.i.get_ata_err_names.exit_crit_edge ]
  %add.ptr2.i = getelementptr i8, ptr %add.ptr5, i32 %len.1.10.i
  %14 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 2560, ptr %add.ptr2.i, align 1
  %add4.i = add i32 %len.1.10.i, 1
  %15 = ptrtoint ptr %written to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %written, align 4
  %add8 = add i32 %add4.i, %16
  store i32 %add8, ptr %written, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_ata_dev_id(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %class = getelementptr i8, ptr %1, i32 944
  %2 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %class, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %cmp = icmp eq i32 %3, 5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %4 = getelementptr i8, ptr %1, i32 1000
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader
  %i.013 = phi i32 [ 0, %for.cond.preheader ], [ %add, %for.body.for.body_crit_edge ]
  %written.012 = phi i32 [ 0, %for.cond.preheader ], [ %add3, %for.body.for.body_crit_edge ]
  %add.ptr2 = getelementptr i8, ptr %buf, i32 %written.012
  %arrayidx = getelementptr [256 x i16], ptr %4, i32 0, i32 %i.013
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %6 to i32
  %add = add nuw nsw i32 %i.013, 1
  %and = and i32 %add, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 10, i32 32
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2, i32 noundef 20, ptr noundef nonnull @.str.78, i32 noundef %conv, i32 noundef %cond) #13
  %add3 = add i32 %call, %written.012
  %exitcond.not = icmp eq i32 %add, 256
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %add3, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_ata_dev_gscr(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %class = getelementptr i8, ptr %1, i32 944
  %2 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %class, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %cmp.not = icmp eq i32 %3, 5
  br i1 %cmp.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %4 = getelementptr i8, ptr %1, i32 1000
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader
  %i.013 = phi i32 [ 0, %for.cond.preheader ], [ %add, %for.body.for.body_crit_edge ]
  %written.012 = phi i32 [ 0, %for.cond.preheader ], [ %add3, %for.body.for.body_crit_edge ]
  %add.ptr2 = getelementptr i8, ptr %buf, i32 %written.012
  %arrayidx = getelementptr [128 x i32], ptr %4, i32 0, i32 %i.013
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %add = add nuw nsw i32 %i.013, 1
  %and = and i32 %add, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 10, i32 32
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2, i32 noundef 20, ptr noundef nonnull @.str.80, i32 noundef %6, i32 noundef %cond) #13
  %add3 = add i32 %call, %written.012
  %exitcond.not = icmp eq i32 %add, 128
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %add3, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_ata_dev_trim(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %arrayidx.i.i = getelementptr i8, ptr %1, i32 1160
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %3)
  %cmp.i.i = icmp eq i16 %3, -1
  %4 = and i16 %3, 32640
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %5 = icmp eq i16 %4, 0
  %or.cond.i = or i1 %cmp.i.i, %5
  br i1 %or.cond.i, label %entry.if.end13_crit_edge, label %land.lhs.true.i

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

land.lhs.true.i:                                  ; preds = %entry
  %arrayidx.i = getelementptr i8, ptr %1, i32 1338
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx.i, align 2
  %8 = and i16 %7, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not.i = icmp eq i16 %8, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.end13_crit_edge, label %if.else

land.lhs.true.i.if.end13_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.else:                                          ; preds = %land.lhs.true.i
  %horkage = getelementptr i8, ptr %1, i32 -16
  %9 = ptrtoint ptr %horkage to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %horkage, align 8
  %and = and i32 %10, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else2, label %if.else.if.end13_crit_edge

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.else2:                                         ; preds = %if.else
  %and4 = and i32 %10, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.else7, label %if.else2.if.end13_crit_edge

if.else2.if.end13_crit_edge:                      ; preds = %if.else2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.else7:                                         ; preds = %if.else2
  %flags.i = getelementptr i8, ptr %1, i32 -12
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %12, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i18 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i18, label %if.else7.if.end13_crit_edge, label %ata_fpdma_dsm_supported.exit

if.else7.if.end13_crit_edge:                      ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

ata_fpdma_dsm_supported.exit:                     ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i19 = getelementptr i8, ptr %1, i32 1524
  %13 = ptrtoint ptr %arrayidx.i19 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i19, align 4
  %15 = and i8 %14, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool2.i.not = icmp eq i8 %15, 0
  %spec.select = select i1 %tobool2.i.not, ptr @.str.86, ptr @.str.85
  br label %if.end13

if.end13:                                         ; preds = %ata_fpdma_dsm_supported.exit, %if.else7.if.end13_crit_edge, %if.else2.if.end13_crit_edge, %if.else.if.end13_crit_edge, %land.lhs.true.i.if.end13_crit_edge, %entry.if.end13_crit_edge
  %mode.0 = phi ptr [ @.str.83, %if.else.if.end13_crit_edge ], [ @.str.84, %if.else2.if.end13_crit_edge ], [ @.str.82, %entry.if.end13_crit_edge ], [ @.str.82, %land.lhs.true.i.if.end13_crit_edge ], [ @.str.86, %if.else7.if.end13_crit_edge ], [ %spec.select, %ata_fpdma_dsm_supported.exit ]
  %call14 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 20, ptr noundef nonnull @.str.27, ptr noundef nonnull %mode.0) #13
  ret i32 %call14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @attribute_container_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare ptr @stpcpy(ptr noalias writeonly, ptr noalias nocapture readonly) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 109)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 109)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly nofree nounwind willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nobuiltin nounwind }
attributes #19 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !43, !45, !46, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !70, !71, !73, !74, !76, !77, !79, !80, !82, !83, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !137, !139, !140, !142, !143, !145, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !175, !177, !179, !180, !182, !184, !185, !187, !189, !191, !193}
!llvm.module.flags = !{!195, !196, !197, !198, !199, !200, !201, !202}
!llvm.ident = !{!203}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/ata/libata-transport.c", i32 291, i32 20}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/ata/libata-transport.c", i32 344, i32 4}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @ata_port_classify.__UNIQUE_ID_ddebug289, !3, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/ata/libata-transport.c", i32 350, i32 2}
!10 = !{ptr @ata_port_classify._entry, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @ata_port_classify._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @__ksymtab_ata_port_classify, !13, !"__ksymtab_ata_port_classify", i1 false, i1 false}
!13 = !{!"../drivers/ata/libata-transport.c", i32 353, i32 1}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/ata/libata-transport.c", i32 448, i32 21}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/ata/libata-transport.c", i32 450, i32 21}
!18 = !{ptr @ata_scsi_transport_template, !19, !"ata_scsi_transport_template", i1 false, i1 false}
!19 = !{!"../drivers/ata/libata-transport.c", i32 45, i32 33}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/ata/libata-transport.c", i32 137, i32 22}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/ata/libata-transport.c", i32 138, i32 19}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/ata/libata-transport.c", i32 140, i32 20}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/ata/libata-transport.c", i32 142, i32 19}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/ata/libata-transport.c", i32 144, i32 20}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/ata/libata-transport.c", i32 146, i32 19}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/ata/libata-transport.c", i32 147, i32 20}
!34 = !{ptr @ata_class_names, !35, !"ata_class_names", i1 false, i1 false}
!35 = !{!"../drivers/ata/libata-transport.c", i32 136, i32 3}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/ata/libata-transport.c", i32 699, i32 21}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/ata/libata-transport.c", i32 701, i32 21}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/ata/libata-transport.c", i32 222, i32 8}
!42 = !{ptr @ata_port_class, !41, !"ata_port_class", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/ata/libata-transport.c", i32 379, i32 8}
!45 = !{ptr @ata_link_class, !44, !"ata_link_class", i1 false, i1 false}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/ata/libata-transport.c", i32 619, i32 8}
!48 = !{ptr @ata_dev_class, !47, !"ata_dev_class", i1 false, i1 false}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/ata/libata-transport.c", i32 218, i32 1}
!51 = !{ptr @dev_attr_nr_pmp_links, !50, !"dev_attr_nr_pmp_links", i1 false, i1 false}
!52 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/ata/libata-transport.c", i32 219, i32 1}
!55 = !{ptr @dev_attr_idle_irq, !54, !"dev_attr_idle_irq", i1 false, i1 false}
!56 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/ata/libata-transport.c", i32 220, i32 1}
!59 = !{ptr @dev_attr_port_no, !58, !"dev_attr_port_no", i1 false, i1 false}
!60 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/ata/libata-transport.c", i32 374, i32 1}
!63 = !{ptr @dev_attr_hw_sata_spd_limit, !62, !"dev_attr_hw_sata_spd_limit", i1 false, i1 false}
!64 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/ata/libata-transport.c", i32 375, i32 1}
!67 = !{ptr @dev_attr_sata_spd_limit, !66, !"dev_attr_sata_spd_limit", i1 false, i1 false}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/ata/libata-transport.c", i32 376, i32 1}
!70 = !{ptr @dev_attr_sata_spd, !69, !"dev_attr_sata_spd", i1 false, i1 false}
!71 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/ata/libata-transport.c", i32 499, i32 1}
!73 = !{ptr @dev_attr_class, !72, !"dev_attr_class", i1 false, i1 false}
!74 = distinct !{null, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/ata/libata-transport.c", i32 149, i32 1}
!76 = distinct !{null, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/ata/libata-transport.c", i32 500, i32 1}
!79 = !{ptr @dev_attr_pio_mode, !78, !"dev_attr_pio_mode", i1 false, i1 false}
!80 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/ata/libata-transport.c", i32 199, i32 1}
!82 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/ata/libata-transport.c", i32 174, i32 19}
!86 = !{ptr @.str.38, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/ata/libata-transport.c", i32 175, i32 19}
!88 = !{ptr @.str.39, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/ata/libata-transport.c", i32 176, i32 19}
!90 = !{ptr @.str.40, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/ata/libata-transport.c", i32 177, i32 19}
!92 = !{ptr @.str.41, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/ata/libata-transport.c", i32 178, i32 19}
!94 = !{ptr @.str.42, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/ata/libata-transport.c", i32 179, i32 19}
!96 = !{ptr @.str.43, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/ata/libata-transport.c", i32 180, i32 19}
!98 = !{ptr @.str.44, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/ata/libata-transport.c", i32 181, i32 19}
!100 = !{ptr @.str.45, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/ata/libata-transport.c", i32 182, i32 20}
!102 = !{ptr @.str.46, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/ata/libata-transport.c", i32 183, i32 20}
!104 = !{ptr @.str.47, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/ata/libata-transport.c", i32 184, i32 20}
!106 = !{ptr @.str.48, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/ata/libata-transport.c", i32 185, i32 20}
!108 = !{ptr @.str.49, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/ata/libata-transport.c", i32 186, i32 20}
!110 = !{ptr @.str.50, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/ata/libata-transport.c", i32 187, i32 20}
!112 = !{ptr @.str.51, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/ata/libata-transport.c", i32 188, i32 20}
!114 = !{ptr @.str.52, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/ata/libata-transport.c", i32 189, i32 20}
!116 = !{ptr @.str.53, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/ata/libata-transport.c", i32 190, i32 18}
!118 = !{ptr @.str.54, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/ata/libata-transport.c", i32 191, i32 18}
!120 = !{ptr @.str.55, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/ata/libata-transport.c", i32 192, i32 18}
!122 = !{ptr @.str.56, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/ata/libata-transport.c", i32 193, i32 18}
!124 = !{ptr @.str.57, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/ata/libata-transport.c", i32 194, i32 18}
!126 = !{ptr @.str.58, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/ata/libata-transport.c", i32 195, i32 18}
!128 = !{ptr @.str.59, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/ata/libata-transport.c", i32 196, i32 18}
!130 = !{ptr @.str.60, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/ata/libata-transport.c", i32 197, i32 20}
!132 = !{ptr @ata_xfer_names, !133, !"ata_xfer_names", i1 false, i1 false}
!133 = !{!"../drivers/ata/libata-transport.c", i32 173, i32 3}
!134 = !{ptr @.str.61, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/ata/libata-transport.c", i32 501, i32 1}
!136 = !{ptr @dev_attr_dma_mode, !135, !"dev_attr_dma_mode", i1 false, i1 false}
!137 = !{ptr @.str.62, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/ata/libata-transport.c", i32 502, i32 1}
!139 = !{ptr @dev_attr_xfer_mode, !138, !"dev_attr_xfer_mode", i1 false, i1 false}
!140 = !{ptr @.str.63, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/ata/libata-transport.c", i32 520, i32 1}
!142 = !{ptr @dev_attr_spdn_cnt, !141, !"dev_attr_spdn_cnt", i1 false, i1 false}
!143 = !{ptr @.str.64, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/ata/libata-transport.c", i32 554, i32 8}
!145 = !{ptr @dev_attr_ering, !144, !"dev_attr_ering", i1 false, i1 false}
!146 = !{ptr @.str.65, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/ata/libata-transport.c", i32 535, i32 5}
!148 = !{ptr @.str.66, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/ata/libata-transport.c", i32 156, i32 18}
!150 = !{ptr @.str.67, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/ata/libata-transport.c", i32 157, i32 18}
!152 = !{ptr @.str.68, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/ata/libata-transport.c", i32 158, i32 21}
!154 = !{ptr @.str.69, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/ata/libata-transport.c", i32 159, i32 20}
!156 = !{ptr @.str.70, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/ata/libata-transport.c", i32 160, i32 21}
!158 = !{ptr @.str.71, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/ata/libata-transport.c", i32 161, i32 22}
!160 = !{ptr @.str.72, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/ata/libata-transport.c", i32 162, i32 20}
!162 = !{ptr @.str.73, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/ata/libata-transport.c", i32 163, i32 21}
!164 = !{ptr @.str.74, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/ata/libata-transport.c", i32 164, i32 20}
!166 = !{ptr @.str.75, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/ata/libata-transport.c", i32 165, i32 24}
!168 = !{ptr @.str.76, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/ata/libata-transport.c", i32 166, i32 18}
!170 = distinct !{null, !171, !"ata_err_names", i1 false, i1 false}
!171 = !{!"../drivers/ata/libata-transport.c", i32 155, i32 3}
!172 = !{ptr @.str.77, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/ata/libata-transport.c", i32 573, i32 8}
!174 = !{ptr @dev_attr_id, !173, !"dev_attr_id", i1 false, i1 false}
!175 = !{ptr @.str.78, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/ata/libata-transport.c", i32 566, i32 41}
!177 = !{ptr @.str.79, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/ata/libata-transport.c", i32 594, i32 8}
!179 = !{ptr @dev_attr_gscr, !178, !"dev_attr_gscr", i1 false, i1 false}
!180 = !{ptr @.str.80, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/ata/libata-transport.c", i32 585, i32 41}
!182 = !{ptr @.str.81, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/ata/libata-transport.c", i32 617, i32 8}
!184 = !{ptr @dev_attr_trim, !183, !"dev_attr_trim", i1 false, i1 false}
!185 = !{ptr @.str.82, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/ata/libata-transport.c", i32 604, i32 10}
!187 = !{ptr @.str.83, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/ata/libata-transport.c", i32 606, i32 10}
!189 = !{ptr @.str.84, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/ata/libata-transport.c", i32 608, i32 11}
!191 = !{ptr @.str.85, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/ata/libata-transport.c", i32 610, i32 10}
!193 = !{ptr @.str.86, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/ata/libata-transport.c", i32 612, i32 10}
!195 = !{i32 1, !"wchar_size", i32 2}
!196 = !{i32 1, !"min_enum_size", i32 4}
!197 = !{i32 8, !"branch-target-enforcement", i32 0}
!198 = !{i32 8, !"sign-return-address", i32 0}
!199 = !{i32 8, !"sign-return-address-all", i32 0}
!200 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!201 = !{i32 7, !"uwtable", i32 1}
!202 = !{i32 7, !"frame-pointer", i32 2}
!203 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!204 = !{i64 2148711169, i64 2148711174, i64 2148711187, i64 2148711231, i64 2148711265, i64 2148711286}
!205 = !{!"branch_weights", i32 2000, i32 1}
!206 = !{i64 2154276786, i64 2154277281, i64 2154276823, i64 2154276879, i64 2154276913, i64 2154276937, i64 2154276978, i64 2154276999, i64 2154277027, i64 2154277061}
!207 = !{i32 0, i32 33}
!208 = !{i64 1134344, i64 1134371, i64 1134393, i64 1134421}
!209 = !{i64 1134752, i64 1134779, i64 1134812, i64 1134833, i64 1134860, i64 1134886}
