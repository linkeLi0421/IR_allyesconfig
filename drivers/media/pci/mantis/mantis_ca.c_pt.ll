; ModuleID = '/llk/IR_all_yes/drivers/media/pci/mantis/mantis_ca.c_pt.bc'
source_filename = "../drivers/media/pci/mantis/mantis_ca.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mantis_ca_init\22, \22a\22\09"
module asm "\09.weak\09__crc_mantis_ca_init\09\09\09\09"
module asm "\09.long\09__crc_mantis_ca_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mantis_ca_init:\09\09\09\09\09"
module asm "\09.asciz \09\22mantis_ca_init\22\09\09\09\09\09"
module asm "__kstrtabns_mantis_ca_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mantis_ca_exit\22, \22a\22\09"
module asm "\09.weak\09__crc_mantis_ca_exit\09\09\09\09"
module asm "\09.long\09__crc_mantis_ca_exit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mantis_ca_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22mantis_ca_exit\22\09\09\09\09\09"
module asm "__kstrtabns_mantis_ca_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.2 }
%union.anon.2 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.mantis_pci = type { i32, i16, i16, i16, i16, i8, ptr, i32, ptr, i8, i8, i32, i32, i32, ptr, i32, ptr, i32, %struct.tasklet_struct, %struct.spinlock, %struct.i2c_adapter, i32, %struct.wait_queue_head, %struct.mutex, %struct.dvb_adapter, ptr, %struct.dvb_demux, %struct.dmxdev, %struct.dmx_frontend, %struct.dmx_frontend, %struct.dvb_net, i8, ptr, i32, i32, [8 x i8], i32, i32, i32, i32, ptr, %struct.work_struct, ptr, [80 x i8], [80 x i8], ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon, i32 }
%struct.atomic_t = type { i32 }
%union.anon = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dmx_frontend = type { %struct.list_head, i32 }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mantis_ca = type { [4 x %struct.mantis_slot], %struct.work_struct, i32, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, ptr, %struct.dvb_ca_en50221, %struct.mutex }
%struct.mantis_slot = type { i32, i32, i32 }
%struct.dvb_ca_en50221 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@mantis_ca_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s (%d): Initializing Mantis CA\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mantis_ca_init\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/media/pci/mantis/mantis_ca.c\00", [59 x i8] zeroinitializer }, align 32
@mantis_ca_init._entry_ptr = internal global ptr @mantis_ca_init._entry, section ".printk_index", align 4
@mantis_ca_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\015%s (%d): Initializing Mantis CA\0A\00", [61 x i8] zeroinitializer }, align 32
@mantis_ca_init._entry_ptr.5 = internal global ptr @mantis_ca_init._entry.3, section ".printk_index", align 4
@mantis_ca_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016%s (%d): Initializing Mantis CA\0A\00", [61 x i8] zeroinitializer }, align 32
@mantis_ca_init._entry_ptr.8 = internal global ptr @mantis_ca_init._entry.6, section ".printk_index", align 4
@mantis_ca_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s (%d): Initializing Mantis CA\0A\00", [61 x i8] zeroinitializer }, align 32
@mantis_ca_init._entry_ptr.11 = internal global ptr @mantis_ca_init._entry.9, section ".printk_index", align 4
@mantis_ca_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_ca_init._entry_ptr.13 = internal global ptr @mantis_ca_init._entry.12, section ".printk_index", align 4
@mantis_ca_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s (%d): Out of memory!, exiting ..\0A\00", [57 x i8] zeroinitializer }, align 32
@mantis_ca_init._entry_ptr.16 = internal global ptr @mantis_ca_init._entry.14, section ".printk_index", align 4
@mantis_ca_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.1, ptr @.str.2, i32 142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\015%s (%d): Out of memory!, exiting ..\0A\00", [57 x i8] zeroinitializer }, align 32
@mantis_ca_init._entry_ptr.19 = internal global ptr @mantis_ca_init._entry.17, section ".printk_index", align 4
@mantis_ca_init._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.1, ptr @.str.2, i32 142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016%s (%d): Out of memory!, exiting ..\0A\00", [57 x i8] zeroinitializer }, align 32
@mantis_ca_init._entry_ptr.22 = internal global ptr @mantis_ca_init._entry.20, section ".printk_index", align 4
@mantis_ca_init._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.1, ptr @.str.2, i32 142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s (%d): Out of memory!, exiting ..\0A\00", [57 x i8] zeroinitializer }, align 32
@mantis_ca_init._entry_ptr.25 = internal global ptr @mantis_ca_init._entry.23, section ".printk_index", align 4
@mantis_ca_init._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.1, ptr @.str.2, i32 142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_ca_init._entry_ptr.27 = internal global ptr @mantis_ca_init._entry.26, section ".printk_index", align 4
@mantis_ca_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&ca->ca_lock\00", [19 x i8] zeroinitializer }, align 32
@mantis_ca_init.__key.29 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&ca->hif_data_wq\00", [47 x i8] zeroinitializer }, align 32
@mantis_ca_init.__key.31 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&ca->hif_opdone_wq\00", [45 x i8] zeroinitializer }, align 32
@mantis_ca_init.__key.33 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&ca->hif_write_wq\00", [46 x i8] zeroinitializer }, align 32
@mantis_ca_init._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.1, ptr @.str.2, i32 168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s (%d): Registering EN50221 device\0A\00", [57 x i8] zeroinitializer }, align 32
@mantis_ca_init._entry_ptr.37 = internal global ptr @mantis_ca_init._entry.35, section ".printk_index", align 4
@mantis_ca_init._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.1, ptr @.str.2, i32 168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\015%s (%d): Registering EN50221 device\0A\00", [57 x i8] zeroinitializer }, align 32
@mantis_ca_init._entry_ptr.40 = internal global ptr @mantis_ca_init._entry.38, section ".printk_index", align 4
@mantis_ca_init._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.1, ptr @.str.2, i32 168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016%s (%d): Registering EN50221 device\0A\00", [57 x i8] zeroinitializer }, align 32
@mantis_ca_init._entry_ptr.43 = internal global ptr @mantis_ca_init._entry.41, section ".printk_index", align 4
@mantis_ca_init._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.1, ptr @.str.2, i32 168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s (%d): Registering EN50221 device\0A\00", [57 x i8] zeroinitializer }, align 32
@mantis_ca_init._entry_ptr.46 = internal global ptr @mantis_ca_init._entry.44, section ".printk_index", align 4
@mantis_ca_init._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.1, ptr @.str.2, i32 168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_ca_init._entry_ptr.48 = internal global ptr @mantis_ca_init._entry.47, section ".printk_index", align 4
@mantis_ca_init._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.1, ptr @.str.2, i32 171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013%s (%d): EN50221: Initialization failed <%d>\0A\00", [48 x i8] zeroinitializer }, align 32
@mantis_ca_init._entry_ptr.51 = internal global ptr @mantis_ca_init._entry.49, section ".printk_index", align 4
@mantis_ca_init._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.1, ptr @.str.2, i32 171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\015%s (%d): EN50221: Initialization failed <%d>\0A\00", [48 x i8] zeroinitializer }, align 32
@mantis_ca_init._entry_ptr.54 = internal global ptr @mantis_ca_init._entry.52, section ".printk_index", align 4
@mantis_ca_init._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.1, ptr @.str.2, i32 171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016%s (%d): EN50221: Initialization failed <%d>\0A\00", [48 x i8] zeroinitializer }, align 32
@mantis_ca_init._entry_ptr.57 = internal global ptr @mantis_ca_init._entry.55, section ".printk_index", align 4
@mantis_ca_init._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.1, ptr @.str.2, i32 171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017%s (%d): EN50221: Initialization failed <%d>\0A\00", [48 x i8] zeroinitializer }, align 32
@mantis_ca_init._entry_ptr.60 = internal global ptr @mantis_ca_init._entry.58, section ".printk_index", align 4
@mantis_ca_init._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.1, ptr @.str.2, i32 171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_ca_init._entry_ptr.62 = internal global ptr @mantis_ca_init._entry.61, section ".printk_index", align 4
@mantis_ca_init._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.1, ptr @.str.2, i32 174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s (%d): Registered EN50221 device\0A\00", [58 x i8] zeroinitializer }, align 32
@mantis_ca_init._entry_ptr.65 = internal global ptr @mantis_ca_init._entry.63, section ".printk_index", align 4
@mantis_ca_init._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.1, ptr @.str.2, i32 174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\015%s (%d): Registered EN50221 device\0A\00", [58 x i8] zeroinitializer }, align 32
@mantis_ca_init._entry_ptr.68 = internal global ptr @mantis_ca_init._entry.66, section ".printk_index", align 4
@mantis_ca_init._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.1, ptr @.str.2, i32 174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016%s (%d): Registered EN50221 device\0A\00", [58 x i8] zeroinitializer }, align 32
@mantis_ca_init._entry_ptr.71 = internal global ptr @mantis_ca_init._entry.69, section ".printk_index", align 4
@mantis_ca_init._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.1, ptr @.str.2, i32 174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s (%d): Registered EN50221 device\0A\00", [58 x i8] zeroinitializer }, align 32
@mantis_ca_init._entry_ptr.74 = internal global ptr @mantis_ca_init._entry.72, section ".printk_index", align 4
@mantis_ca_init._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.1, ptr @.str.2, i32 174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_ca_init._entry_ptr.76 = internal global ptr @mantis_ca_init._entry.75, section ".printk_index", align 4
@__kstrtab_mantis_ca_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_mantis_ca_init = external dso_local constant [0 x i8], align 1
@__ksymtab_mantis_ca_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mantis_ca_init to i32), ptr @__kstrtab_mantis_ca_init, ptr @__kstrtabns_mantis_ca_init }, section "___ksymtab_gpl+mantis_ca_init", align 4
@mantis_ca_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.2, i32 187, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s (%d): Mantis CA exit\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mantis_ca_exit\00", [17 x i8] zeroinitializer }, align 32
@mantis_ca_exit._entry_ptr = internal global ptr @mantis_ca_exit._entry, section ".printk_index", align 4
@mantis_ca_exit._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.78, ptr @.str.2, i32 187, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\015%s (%d): Mantis CA exit\0A\00", [37 x i8] zeroinitializer }, align 32
@mantis_ca_exit._entry_ptr.81 = internal global ptr @mantis_ca_exit._entry.79, section ".printk_index", align 4
@mantis_ca_exit._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.78, ptr @.str.2, i32 187, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016%s (%d): Mantis CA exit\0A\00", [37 x i8] zeroinitializer }, align 32
@mantis_ca_exit._entry_ptr.84 = internal global ptr @mantis_ca_exit._entry.82, section ".printk_index", align 4
@mantis_ca_exit._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.78, ptr @.str.2, i32 187, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s (%d): Mantis CA exit\0A\00", [37 x i8] zeroinitializer }, align 32
@mantis_ca_exit._entry_ptr.87 = internal global ptr @mantis_ca_exit._entry.85, section ".printk_index", align 4
@mantis_ca_exit._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.78, ptr @.str.2, i32 187, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_ca_exit._entry_ptr.89 = internal global ptr @mantis_ca_exit._entry.88, section ".printk_index", align 4
@mantis_ca_exit._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.78, ptr @.str.2, i32 192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s (%d): Unregistering EN50221 device\0A\00", [55 x i8] zeroinitializer }, align 32
@mantis_ca_exit._entry_ptr.92 = internal global ptr @mantis_ca_exit._entry.90, section ".printk_index", align 4
@mantis_ca_exit._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.78, ptr @.str.2, i32 192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\015%s (%d): Unregistering EN50221 device\0A\00", [55 x i8] zeroinitializer }, align 32
@mantis_ca_exit._entry_ptr.95 = internal global ptr @mantis_ca_exit._entry.93, section ".printk_index", align 4
@mantis_ca_exit._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.78, ptr @.str.2, i32 192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016%s (%d): Unregistering EN50221 device\0A\00", [55 x i8] zeroinitializer }, align 32
@mantis_ca_exit._entry_ptr.98 = internal global ptr @mantis_ca_exit._entry.96, section ".printk_index", align 4
@mantis_ca_exit._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.78, ptr @.str.2, i32 192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s (%d): Unregistering EN50221 device\0A\00", [55 x i8] zeroinitializer }, align 32
@mantis_ca_exit._entry_ptr.101 = internal global ptr @mantis_ca_exit._entry.99, section ".printk_index", align 4
@mantis_ca_exit._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.78, ptr @.str.2, i32 192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_ca_exit._entry_ptr.103 = internal global ptr @mantis_ca_exit._entry.102, section ".printk_index", align 4
@__kstrtab_mantis_ca_exit = external dso_local constant [0 x i8], align 1
@__kstrtabns_mantis_ca_exit = external dso_local constant [0 x i8], align 1
@__ksymtab_mantis_ca_exit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mantis_ca_exit to i32), ptr @__kstrtab_mantis_ca_exit, ptr @__kstrtabns_mantis_ca_exit }, section "___ksymtab_gpl+mantis_ca_exit", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mantis_ca_read_attr_mem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.2, i32 33, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013%s (%d): Slot(%d): Request Attribute Mem Read\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mantis_ca_read_attr_mem\00", [40 x i8] zeroinitializer }, align 32
@mantis_ca_read_attr_mem._entry_ptr = internal global ptr @mantis_ca_read_attr_mem._entry, section ".printk_index", align 4
@mantis_ca_read_attr_mem._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.105, ptr @.str.2, i32 33, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\015%s (%d): Slot(%d): Request Attribute Mem Read\0A\00", [47 x i8] zeroinitializer }, align 32
@mantis_ca_read_attr_mem._entry_ptr.108 = internal global ptr @mantis_ca_read_attr_mem._entry.106, section ".printk_index", align 4
@mantis_ca_read_attr_mem._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.105, ptr @.str.2, i32 33, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016%s (%d): Slot(%d): Request Attribute Mem Read\0A\00", [47 x i8] zeroinitializer }, align 32
@mantis_ca_read_attr_mem._entry_ptr.111 = internal global ptr @mantis_ca_read_attr_mem._entry.109, section ".printk_index", align 4
@mantis_ca_read_attr_mem._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.105, ptr @.str.2, i32 33, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017%s (%d): Slot(%d): Request Attribute Mem Read\0A\00", [47 x i8] zeroinitializer }, align 32
@mantis_ca_read_attr_mem._entry_ptr.114 = internal global ptr @mantis_ca_read_attr_mem._entry.112, section ".printk_index", align 4
@mantis_ca_read_attr_mem._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.105, ptr @.str.2, i32 33, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_ca_read_attr_mem._entry_ptr.116 = internal global ptr @mantis_ca_read_attr_mem._entry.115, section ".printk_index", align 4
@mantis_ca_write_attr_mem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.118, ptr @.str.2, i32 46, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013%s (%d): Slot(%d): Request Attribute Mem Write\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mantis_ca_write_attr_mem\00", [39 x i8] zeroinitializer }, align 32
@mantis_ca_write_attr_mem._entry_ptr = internal global ptr @mantis_ca_write_attr_mem._entry, section ".printk_index", align 4
@mantis_ca_write_attr_mem._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.118, ptr @.str.2, i32 46, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\015%s (%d): Slot(%d): Request Attribute Mem Write\0A\00", [46 x i8] zeroinitializer }, align 32
@mantis_ca_write_attr_mem._entry_ptr.121 = internal global ptr @mantis_ca_write_attr_mem._entry.119, section ".printk_index", align 4
@mantis_ca_write_attr_mem._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.118, ptr @.str.2, i32 46, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016%s (%d): Slot(%d): Request Attribute Mem Write\0A\00", [46 x i8] zeroinitializer }, align 32
@mantis_ca_write_attr_mem._entry_ptr.124 = internal global ptr @mantis_ca_write_attr_mem._entry.122, section ".printk_index", align 4
@mantis_ca_write_attr_mem._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.118, ptr @.str.2, i32 46, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017%s (%d): Slot(%d): Request Attribute Mem Write\0A\00", [46 x i8] zeroinitializer }, align 32
@mantis_ca_write_attr_mem._entry_ptr.127 = internal global ptr @mantis_ca_write_attr_mem._entry.125, section ".printk_index", align 4
@mantis_ca_write_attr_mem._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.118, ptr @.str.2, i32 46, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_ca_write_attr_mem._entry_ptr.129 = internal global ptr @mantis_ca_write_attr_mem._entry.128, section ".printk_index", align 4
@mantis_ca_read_cam_ctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.131, ptr @.str.2, i32 59, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s (%d): Slot(%d): Request CAM control Read\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mantis_ca_read_cam_ctl\00", [41 x i8] zeroinitializer }, align 32
@mantis_ca_read_cam_ctl._entry_ptr = internal global ptr @mantis_ca_read_cam_ctl._entry, section ".printk_index", align 4
@mantis_ca_read_cam_ctl._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.131, ptr @.str.2, i32 59, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\015%s (%d): Slot(%d): Request CAM control Read\0A\00", [49 x i8] zeroinitializer }, align 32
@mantis_ca_read_cam_ctl._entry_ptr.134 = internal global ptr @mantis_ca_read_cam_ctl._entry.132, section ".printk_index", align 4
@mantis_ca_read_cam_ctl._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.131, ptr @.str.2, i32 59, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016%s (%d): Slot(%d): Request CAM control Read\0A\00", [49 x i8] zeroinitializer }, align 32
@mantis_ca_read_cam_ctl._entry_ptr.137 = internal global ptr @mantis_ca_read_cam_ctl._entry.135, section ".printk_index", align 4
@mantis_ca_read_cam_ctl._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.131, ptr @.str.2, i32 59, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017%s (%d): Slot(%d): Request CAM control Read\0A\00", [49 x i8] zeroinitializer }, align 32
@mantis_ca_read_cam_ctl._entry_ptr.140 = internal global ptr @mantis_ca_read_cam_ctl._entry.138, section ".printk_index", align 4
@mantis_ca_read_cam_ctl._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.131, ptr @.str.2, i32 59, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_ca_read_cam_ctl._entry_ptr.142 = internal global ptr @mantis_ca_read_cam_ctl._entry.141, section ".printk_index", align 4
@mantis_ca_write_cam_ctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.144, ptr @.str.2, i32 72, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013%s (%d): Slot(%d): Request CAM control Write\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mantis_ca_write_cam_ctl\00", [40 x i8] zeroinitializer }, align 32
@mantis_ca_write_cam_ctl._entry_ptr = internal global ptr @mantis_ca_write_cam_ctl._entry, section ".printk_index", align 4
@mantis_ca_write_cam_ctl._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.144, ptr @.str.2, i32 72, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\015%s (%d): Slot(%d): Request CAM control Write\0A\00", [48 x i8] zeroinitializer }, align 32
@mantis_ca_write_cam_ctl._entry_ptr.147 = internal global ptr @mantis_ca_write_cam_ctl._entry.145, section ".printk_index", align 4
@mantis_ca_write_cam_ctl._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.144, ptr @.str.2, i32 72, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016%s (%d): Slot(%d): Request CAM control Write\0A\00", [48 x i8] zeroinitializer }, align 32
@mantis_ca_write_cam_ctl._entry_ptr.150 = internal global ptr @mantis_ca_write_cam_ctl._entry.148, section ".printk_index", align 4
@mantis_ca_write_cam_ctl._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.144, ptr @.str.2, i32 72, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017%s (%d): Slot(%d): Request CAM control Write\0A\00", [48 x i8] zeroinitializer }, align 32
@mantis_ca_write_cam_ctl._entry_ptr.153 = internal global ptr @mantis_ca_write_cam_ctl._entry.151, section ".printk_index", align 4
@mantis_ca_write_cam_ctl._entry.154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.144, ptr @.str.2, i32 72, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_ca_write_cam_ctl._entry_ptr.155 = internal global ptr @mantis_ca_write_cam_ctl._entry.154, section ".printk_index", align 4
@mantis_ca_slot_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.157, ptr @.str.2, i32 85, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s (%d): Slot(%d): Slot RESET\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mantis_ca_slot_reset\00", [43 x i8] zeroinitializer }, align 32
@mantis_ca_slot_reset._entry_ptr = internal global ptr @mantis_ca_slot_reset._entry, section ".printk_index", align 4
@mantis_ca_slot_reset._entry.158 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.157, ptr @.str.2, i32 85, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\015%s (%d): Slot(%d): Slot RESET\0A\00", [63 x i8] zeroinitializer }, align 32
@mantis_ca_slot_reset._entry_ptr.160 = internal global ptr @mantis_ca_slot_reset._entry.158, section ".printk_index", align 4
@mantis_ca_slot_reset._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.157, ptr @.str.2, i32 85, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016%s (%d): Slot(%d): Slot RESET\0A\00", [63 x i8] zeroinitializer }, align 32
@mantis_ca_slot_reset._entry_ptr.163 = internal global ptr @mantis_ca_slot_reset._entry.161, section ".printk_index", align 4
@mantis_ca_slot_reset._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.157, ptr @.str.2, i32 85, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s (%d): Slot(%d): Slot RESET\0A\00", [63 x i8] zeroinitializer }, align 32
@mantis_ca_slot_reset._entry_ptr.166 = internal global ptr @mantis_ca_slot_reset._entry.164, section ".printk_index", align 4
@mantis_ca_slot_reset._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.157, ptr @.str.2, i32 85, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_ca_slot_reset._entry_ptr.168 = internal global ptr @mantis_ca_slot_reset._entry.167, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@mantis_ca_slot_shutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.170, ptr @.str.2, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s (%d): Slot(%d): Slot shutdown\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mantis_ca_slot_shutdown\00", [40 x i8] zeroinitializer }, align 32
@mantis_ca_slot_shutdown._entry_ptr = internal global ptr @mantis_ca_slot_shutdown._entry, section ".printk_index", align 4
@mantis_ca_slot_shutdown._entry.171 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.170, ptr @.str.2, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\015%s (%d): Slot(%d): Slot shutdown\0A\00", [60 x i8] zeroinitializer }, align 32
@mantis_ca_slot_shutdown._entry_ptr.173 = internal global ptr @mantis_ca_slot_shutdown._entry.171, section ".printk_index", align 4
@mantis_ca_slot_shutdown._entry.174 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.170, ptr @.str.2, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%s (%d): Slot(%d): Slot shutdown\0A\00", [60 x i8] zeroinitializer }, align 32
@mantis_ca_slot_shutdown._entry_ptr.176 = internal global ptr @mantis_ca_slot_shutdown._entry.174, section ".printk_index", align 4
@mantis_ca_slot_shutdown._entry.177 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.170, ptr @.str.2, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s (%d): Slot(%d): Slot shutdown\0A\00", [60 x i8] zeroinitializer }, align 32
@mantis_ca_slot_shutdown._entry_ptr.179 = internal global ptr @mantis_ca_slot_shutdown._entry.177, section ".printk_index", align 4
@mantis_ca_slot_shutdown._entry.180 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.170, ptr @.str.2, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_ca_slot_shutdown._entry_ptr.181 = internal global ptr @mantis_ca_slot_shutdown._entry.180, section ".printk_index", align 4
@mantis_ts_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.183, ptr @.str.2, i32 111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s (%d): Slot(%d): TS control\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mantis_ts_control\00", [46 x i8] zeroinitializer }, align 32
@mantis_ts_control._entry_ptr = internal global ptr @mantis_ts_control._entry, section ".printk_index", align 4
@mantis_ts_control._entry.184 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.185, ptr @.str.183, ptr @.str.2, i32 111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\015%s (%d): Slot(%d): TS control\0A\00", [63 x i8] zeroinitializer }, align 32
@mantis_ts_control._entry_ptr.186 = internal global ptr @mantis_ts_control._entry.184, section ".printk_index", align 4
@mantis_ts_control._entry.187 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.188, ptr @.str.183, ptr @.str.2, i32 111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016%s (%d): Slot(%d): TS control\0A\00", [63 x i8] zeroinitializer }, align 32
@mantis_ts_control._entry_ptr.189 = internal global ptr @mantis_ts_control._entry.187, section ".printk_index", align 4
@mantis_ts_control._entry.190 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.191, ptr @.str.183, ptr @.str.2, i32 111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s (%d): Slot(%d): TS control\0A\00", [63 x i8] zeroinitializer }, align 32
@mantis_ts_control._entry_ptr.192 = internal global ptr @mantis_ts_control._entry.190, section ".printk_index", align 4
@mantis_ts_control._entry.193 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.191, ptr @.str.183, ptr @.str.2, i32 111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_ts_control._entry_ptr.194 = internal global ptr @mantis_ts_control._entry.193, section ".printk_index", align 4
@mantis_slot_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.195, ptr @.str.196, ptr @.str.2, i32 121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s (%d): Slot(%d): Poll Slot status\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mantis_slot_status\00", [45 x i8] zeroinitializer }, align 32
@mantis_slot_status._entry_ptr = internal global ptr @mantis_slot_status._entry, section ".printk_index", align 4
@mantis_slot_status._entry.197 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.198, ptr @.str.196, ptr @.str.2, i32 121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\015%s (%d): Slot(%d): Poll Slot status\0A\00", [57 x i8] zeroinitializer }, align 32
@mantis_slot_status._entry_ptr.199 = internal global ptr @mantis_slot_status._entry.197, section ".printk_index", align 4
@mantis_slot_status._entry.200 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.196, ptr @.str.2, i32 121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016%s (%d): Slot(%d): Poll Slot status\0A\00", [57 x i8] zeroinitializer }, align 32
@mantis_slot_status._entry_ptr.202 = internal global ptr @mantis_slot_status._entry.200, section ".printk_index", align 4
@mantis_slot_status._entry.203 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.204, ptr @.str.196, ptr @.str.2, i32 121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s (%d): Slot(%d): Poll Slot status\0A\00", [57 x i8] zeroinitializer }, align 32
@mantis_slot_status._entry_ptr.205 = internal global ptr @mantis_slot_status._entry.203, section ".printk_index", align 4
@mantis_slot_status._entry.206 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.204, ptr @.str.196, ptr @.str.2, i32 121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_slot_status._entry_ptr.207 = internal global ptr @mantis_slot_status._entry.206, section ".printk_index", align 4
@mantis_slot_status._entry.208 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.209, ptr @.str.196, ptr @.str.2, i32 124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s (%d): CA Module present and ready\0A\00", [56 x i8] zeroinitializer }, align 32
@mantis_slot_status._entry_ptr.210 = internal global ptr @mantis_slot_status._entry.208, section ".printk_index", align 4
@mantis_slot_status._entry.211 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.212, ptr @.str.196, ptr @.str.2, i32 124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\015%s (%d): CA Module present and ready\0A\00", [56 x i8] zeroinitializer }, align 32
@mantis_slot_status._entry_ptr.213 = internal global ptr @mantis_slot_status._entry.211, section ".printk_index", align 4
@mantis_slot_status._entry.214 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.215, ptr @.str.196, ptr @.str.2, i32 124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016%s (%d): CA Module present and ready\0A\00", [56 x i8] zeroinitializer }, align 32
@mantis_slot_status._entry_ptr.216 = internal global ptr @mantis_slot_status._entry.214, section ".printk_index", align 4
@mantis_slot_status._entry.217 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.218, ptr @.str.196, ptr @.str.2, i32 124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s (%d): CA Module present and ready\0A\00", [56 x i8] zeroinitializer }, align 32
@mantis_slot_status._entry_ptr.219 = internal global ptr @mantis_slot_status._entry.217, section ".printk_index", align 4
@mantis_slot_status._entry.220 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.218, ptr @.str.196, ptr @.str.2, i32 124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_slot_status._entry_ptr.221 = internal global ptr @mantis_slot_status._entry.220, section ".printk_index", align 4
@mantis_slot_status._entry.222 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.223, ptr @.str.196, ptr @.str.2, i32 127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s (%d): CA Module not present or not ready\0A\00", [49 x i8] zeroinitializer }, align 32
@mantis_slot_status._entry_ptr.224 = internal global ptr @mantis_slot_status._entry.222, section ".printk_index", align 4
@mantis_slot_status._entry.225 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.226, ptr @.str.196, ptr @.str.2, i32 127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\015%s (%d): CA Module not present or not ready\0A\00", [49 x i8] zeroinitializer }, align 32
@mantis_slot_status._entry_ptr.227 = internal global ptr @mantis_slot_status._entry.225, section ".printk_index", align 4
@mantis_slot_status._entry.228 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.229, ptr @.str.196, ptr @.str.2, i32 127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016%s (%d): CA Module not present or not ready\0A\00", [49 x i8] zeroinitializer }, align 32
@mantis_slot_status._entry_ptr.230 = internal global ptr @mantis_slot_status._entry.228, section ".printk_index", align 4
@mantis_slot_status._entry.231 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.232, ptr @.str.196, ptr @.str.2, i32 127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017%s (%d): CA Module not present or not ready\0A\00", [49 x i8] zeroinitializer }, align 32
@mantis_slot_status._entry_ptr.233 = internal global ptr @mantis_slot_status._entry.231, section ".printk_index", align 4
@mantis_slot_status._entry.234 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.232, ptr @.str.196, ptr @.str.2, i32 127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_slot_status._entry_ptr.235 = internal global ptr @mantis_slot_status._entry.234, section ".printk_index", align 4
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 139, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 142, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 162, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 164, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 165, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 166, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 168, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 171, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 174, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 187, i32 2 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 192, i32 2 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 33, i32 2 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 46, i32 2 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 59, i32 2 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 72, i32 2 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 85, i32 2 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 101, i32 2 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 111, i32 2 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 121, i32 2 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 124, i32 3 }
@___asan_gen_.746 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.749 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.750 = private constant [40 x i8] c"../drivers/media/pci/mantis/mantis_ca.c\00", align 1
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 127, i32 3 }
@llvm.compiler.used = appending global [259 x ptr] [ptr @__ksymtab_mantis_ca_exit, ptr @__ksymtab_mantis_ca_init, ptr @mantis_ca_exit._entry, ptr @mantis_ca_exit._entry.102, ptr @mantis_ca_exit._entry.79, ptr @mantis_ca_exit._entry.82, ptr @mantis_ca_exit._entry.85, ptr @mantis_ca_exit._entry.88, ptr @mantis_ca_exit._entry.90, ptr @mantis_ca_exit._entry.93, ptr @mantis_ca_exit._entry.96, ptr @mantis_ca_exit._entry.99, ptr @mantis_ca_exit._entry_ptr, ptr @mantis_ca_exit._entry_ptr.101, ptr @mantis_ca_exit._entry_ptr.103, ptr @mantis_ca_exit._entry_ptr.81, ptr @mantis_ca_exit._entry_ptr.84, ptr @mantis_ca_exit._entry_ptr.87, ptr @mantis_ca_exit._entry_ptr.89, ptr @mantis_ca_exit._entry_ptr.92, ptr @mantis_ca_exit._entry_ptr.95, ptr @mantis_ca_exit._entry_ptr.98, ptr @mantis_ca_init._entry, ptr @mantis_ca_init._entry.12, ptr @mantis_ca_init._entry.14, ptr @mantis_ca_init._entry.17, ptr @mantis_ca_init._entry.20, ptr @mantis_ca_init._entry.23, ptr @mantis_ca_init._entry.26, ptr @mantis_ca_init._entry.3, ptr @mantis_ca_init._entry.35, ptr @mantis_ca_init._entry.38, ptr @mantis_ca_init._entry.41, ptr @mantis_ca_init._entry.44, ptr @mantis_ca_init._entry.47, ptr @mantis_ca_init._entry.49, ptr @mantis_ca_init._entry.52, ptr @mantis_ca_init._entry.55, ptr @mantis_ca_init._entry.58, ptr @mantis_ca_init._entry.6, ptr @mantis_ca_init._entry.61, ptr @mantis_ca_init._entry.63, ptr @mantis_ca_init._entry.66, ptr @mantis_ca_init._entry.69, ptr @mantis_ca_init._entry.72, ptr @mantis_ca_init._entry.75, ptr @mantis_ca_init._entry.9, ptr @mantis_ca_init._entry_ptr, ptr @mantis_ca_init._entry_ptr.11, ptr @mantis_ca_init._entry_ptr.13, ptr @mantis_ca_init._entry_ptr.16, ptr @mantis_ca_init._entry_ptr.19, ptr @mantis_ca_init._entry_ptr.22, ptr @mantis_ca_init._entry_ptr.25, ptr @mantis_ca_init._entry_ptr.27, ptr @mantis_ca_init._entry_ptr.37, ptr @mantis_ca_init._entry_ptr.40, ptr @mantis_ca_init._entry_ptr.43, ptr @mantis_ca_init._entry_ptr.46, ptr @mantis_ca_init._entry_ptr.48, ptr @mantis_ca_init._entry_ptr.5, ptr @mantis_ca_init._entry_ptr.51, ptr @mantis_ca_init._entry_ptr.54, ptr @mantis_ca_init._entry_ptr.57, ptr @mantis_ca_init._entry_ptr.60, ptr @mantis_ca_init._entry_ptr.62, ptr @mantis_ca_init._entry_ptr.65, ptr @mantis_ca_init._entry_ptr.68, ptr @mantis_ca_init._entry_ptr.71, ptr @mantis_ca_init._entry_ptr.74, ptr @mantis_ca_init._entry_ptr.76, ptr @mantis_ca_init._entry_ptr.8, ptr @mantis_ca_read_attr_mem._entry, ptr @mantis_ca_read_attr_mem._entry.106, ptr @mantis_ca_read_attr_mem._entry.109, ptr @mantis_ca_read_attr_mem._entry.112, ptr @mantis_ca_read_attr_mem._entry.115, ptr @mantis_ca_read_attr_mem._entry_ptr, ptr @mantis_ca_read_attr_mem._entry_ptr.108, ptr @mantis_ca_read_attr_mem._entry_ptr.111, ptr @mantis_ca_read_attr_mem._entry_ptr.114, ptr @mantis_ca_read_attr_mem._entry_ptr.116, ptr @mantis_ca_read_cam_ctl._entry, ptr @mantis_ca_read_cam_ctl._entry.132, ptr @mantis_ca_read_cam_ctl._entry.135, ptr @mantis_ca_read_cam_ctl._entry.138, ptr @mantis_ca_read_cam_ctl._entry.141, ptr @mantis_ca_read_cam_ctl._entry_ptr, ptr @mantis_ca_read_cam_ctl._entry_ptr.134, ptr @mantis_ca_read_cam_ctl._entry_ptr.137, ptr @mantis_ca_read_cam_ctl._entry_ptr.140, ptr @mantis_ca_read_cam_ctl._entry_ptr.142, ptr @mantis_ca_slot_reset._entry, ptr @mantis_ca_slot_reset._entry.158, ptr @mantis_ca_slot_reset._entry.161, ptr @mantis_ca_slot_reset._entry.164, ptr @mantis_ca_slot_reset._entry.167, ptr @mantis_ca_slot_reset._entry_ptr, ptr @mantis_ca_slot_reset._entry_ptr.160, ptr @mantis_ca_slot_reset._entry_ptr.163, ptr @mantis_ca_slot_reset._entry_ptr.166, ptr @mantis_ca_slot_reset._entry_ptr.168, ptr @mantis_ca_slot_shutdown._entry, ptr @mantis_ca_slot_shutdown._entry.171, ptr @mantis_ca_slot_shutdown._entry.174, ptr @mantis_ca_slot_shutdown._entry.177, ptr @mantis_ca_slot_shutdown._entry.180, ptr @mantis_ca_slot_shutdown._entry_ptr, ptr @mantis_ca_slot_shutdown._entry_ptr.173, ptr @mantis_ca_slot_shutdown._entry_ptr.176, ptr @mantis_ca_slot_shutdown._entry_ptr.179, ptr @mantis_ca_slot_shutdown._entry_ptr.181, ptr @mantis_ca_write_attr_mem._entry, ptr @mantis_ca_write_attr_mem._entry.119, ptr @mantis_ca_write_attr_mem._entry.122, ptr @mantis_ca_write_attr_mem._entry.125, ptr @mantis_ca_write_attr_mem._entry.128, ptr @mantis_ca_write_attr_mem._entry_ptr, ptr @mantis_ca_write_attr_mem._entry_ptr.121, ptr @mantis_ca_write_attr_mem._entry_ptr.124, ptr @mantis_ca_write_attr_mem._entry_ptr.127, ptr @mantis_ca_write_attr_mem._entry_ptr.129, ptr @mantis_ca_write_cam_ctl._entry, ptr @mantis_ca_write_cam_ctl._entry.145, ptr @mantis_ca_write_cam_ctl._entry.148, ptr @mantis_ca_write_cam_ctl._entry.151, ptr @mantis_ca_write_cam_ctl._entry.154, ptr @mantis_ca_write_cam_ctl._entry_ptr, ptr @mantis_ca_write_cam_ctl._entry_ptr.147, ptr @mantis_ca_write_cam_ctl._entry_ptr.150, ptr @mantis_ca_write_cam_ctl._entry_ptr.153, ptr @mantis_ca_write_cam_ctl._entry_ptr.155, ptr @mantis_slot_status._entry, ptr @mantis_slot_status._entry.197, ptr @mantis_slot_status._entry.200, ptr @mantis_slot_status._entry.203, ptr @mantis_slot_status._entry.206, ptr @mantis_slot_status._entry.208, ptr @mantis_slot_status._entry.211, ptr @mantis_slot_status._entry.214, ptr @mantis_slot_status._entry.217, ptr @mantis_slot_status._entry.220, ptr @mantis_slot_status._entry.222, ptr @mantis_slot_status._entry.225, ptr @mantis_slot_status._entry.228, ptr @mantis_slot_status._entry.231, ptr @mantis_slot_status._entry.234, ptr @mantis_slot_status._entry_ptr, ptr @mantis_slot_status._entry_ptr.199, ptr @mantis_slot_status._entry_ptr.202, ptr @mantis_slot_status._entry_ptr.205, ptr @mantis_slot_status._entry_ptr.207, ptr @mantis_slot_status._entry_ptr.210, ptr @mantis_slot_status._entry_ptr.213, ptr @mantis_slot_status._entry_ptr.216, ptr @mantis_slot_status._entry_ptr.219, ptr @mantis_slot_status._entry_ptr.221, ptr @mantis_slot_status._entry_ptr.224, ptr @mantis_slot_status._entry_ptr.227, ptr @mantis_slot_status._entry_ptr.230, ptr @mantis_slot_status._entry_ptr.233, ptr @mantis_slot_status._entry_ptr.235, ptr @mantis_ts_control._entry, ptr @mantis_ts_control._entry.184, ptr @mantis_ts_control._entry.187, ptr @mantis_ts_control._entry.190, ptr @mantis_ts_control._entry.193, ptr @mantis_ts_control._entry_ptr, ptr @mantis_ts_control._entry_ptr.186, ptr @mantis_ts_control._entry_ptr.189, ptr @mantis_ts_control._entry_ptr.192, ptr @mantis_ts_control._entry_ptr.194, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @mantis_ca_init.__key, ptr @.str.28, ptr @mantis_ca_init.__key.29, ptr @.str.30, ptr @mantis_ca_init.__key.31, ptr @.str.32, ptr @mantis_ca_init.__key.33, ptr @.str.34, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.64, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @.str.91, ptr @.str.94, ptr @.str.97, ptr @.str.100, ptr @.str.104, ptr @.str.105, ptr @.str.107, ptr @.str.110, ptr @.str.113, ptr @.str.117, ptr @.str.118, ptr @.str.120, ptr @.str.123, ptr @.str.126, ptr @.str.130, ptr @.str.131, ptr @.str.133, ptr @.str.136, ptr @.str.139, ptr @.str.143, ptr @.str.144, ptr @.str.146, ptr @.str.149, ptr @.str.152, ptr @.str.156, ptr @.str.157, ptr @.str.159, ptr @.str.162, ptr @.str.165, ptr @.str.169, ptr @.str.170, ptr @.str.172, ptr @.str.175, ptr @.str.178, ptr @.str.182, ptr @.str.183, ptr @.str.185, ptr @.str.188, ptr @.str.191, ptr @.str.195, ptr @.str.196, ptr @.str.198, ptr @.str.201, ptr @.str.204, ptr @.str.209, ptr @.str.212, ptr @.str.215, ptr @.str.218, ptr @.str.223, ptr @.str.226, ptr @.str.229, ptr @.str.232], section "llvm.metadata"
@0 = internal global [172 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ca_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ca_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ca_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ca_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ca_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ca_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ca_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ca_init._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ca_init._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ca_init._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ca_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ca_init.__key.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ca_init.__key.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ca_init.__key.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ca_init._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ca_init._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ca_init._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ca_init._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ca_init._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ca_init._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ca_init._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ca_init._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ca_init._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ca_init._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ca_init._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ca_init._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ca_init._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ca_init._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ca_init._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ca_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ca_exit._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ca_exit._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ca_exit._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ca_exit._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ca_exit._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ca_exit._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ca_exit._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ca_exit._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ca_exit._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ca_read_attr_mem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ca_read_attr_mem._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ca_read_attr_mem._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ca_read_attr_mem._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ca_read_attr_mem._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ca_write_attr_mem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ca_write_attr_mem._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ca_write_attr_mem._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ca_write_attr_mem._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ca_write_attr_mem._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ca_read_cam_ctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ca_read_cam_ctl._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ca_read_cam_ctl._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ca_read_cam_ctl._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ca_read_cam_ctl._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ca_write_cam_ctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ca_write_cam_ctl._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ca_write_cam_ctl._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ca_write_cam_ctl._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ca_write_cam_ctl._entry.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ca_slot_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ca_slot_reset._entry.158 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ca_slot_reset._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ca_slot_reset._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ca_slot_reset._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ca_slot_shutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ca_slot_shutdown._entry.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ca_slot_shutdown._entry.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ca_slot_shutdown._entry.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ca_slot_shutdown._entry.180 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ts_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ts_control._entry.184 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ts_control._entry.187 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ts_control._entry.190 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_ts_control._entry.193 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_slot_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_slot_status._entry.197 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_slot_status._entry.200 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_slot_status._entry.203 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_slot_status._entry.206 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_slot_status._entry.208 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_slot_status._entry.211 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_slot_status._entry.214 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_slot_status._entry.217 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_slot_status._entry.220 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_slot_status._entry.222 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_slot_status._entry.225 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_slot_status._entry.228 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_slot_status._entry.231 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_slot_status._entry.234 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mantis_ca_init(ptr noundef %mantis) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb_adapter1 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 24
  %0 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %switch = icmp ult i32 %1, 4
  br i1 %switch, label %entry.do.end61_crit_edge, label %do.end

entry.do.end61_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end61

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %num = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %3) #7
  br label %do.end61

do.end61:                                         ; preds = %do.end, %entry.do.end61_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 460) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.body64, label %if.end136

do.body64:                                        ; preds = %do.end61
  %5 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp66.not = icmp eq i32 %6, 0
  br i1 %cmp66.not, label %do.body64.err_crit_edge, label %do.end73

do.body64.err_crit_edge:                          ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #6
  br label %err

do.end73:                                         ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #6
  %num75 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %7 = ptrtoint ptr %num75 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num75, align 8
  %call76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef %8) #7
  br label %err

if.end136:                                        ; preds = %do.end61
  %ca_priv = getelementptr inbounds %struct.mantis_ca, ptr %call7.i.i, i32 0, i32 9
  %9 = ptrtoint ptr %ca_priv to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %mantis, ptr %ca_priv, align 8
  %mantis_ca = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 40
  %10 = ptrtoint ptr %mantis_ca to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %mantis_ca, align 8
  %en50221 = getelementptr inbounds %struct.mantis_ca, ptr %call7.i.i, i32 0, i32 10
  %11 = ptrtoint ptr %en50221 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %en50221, align 4
  %read_attribute_mem = getelementptr inbounds %struct.mantis_ca, ptr %call7.i.i, i32 0, i32 10, i32 1
  %12 = ptrtoint ptr %read_attribute_mem to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @mantis_ca_read_attr_mem, ptr %read_attribute_mem, align 8
  %write_attribute_mem = getelementptr inbounds %struct.mantis_ca, ptr %call7.i.i, i32 0, i32 10, i32 2
  %13 = ptrtoint ptr %write_attribute_mem to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @mantis_ca_write_attr_mem, ptr %write_attribute_mem, align 4
  %read_cam_control = getelementptr inbounds %struct.mantis_ca, ptr %call7.i.i, i32 0, i32 10, i32 3
  %14 = ptrtoint ptr %read_cam_control to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @mantis_ca_read_cam_ctl, ptr %read_cam_control, align 8
  %write_cam_control = getelementptr inbounds %struct.mantis_ca, ptr %call7.i.i, i32 0, i32 10, i32 4
  %15 = ptrtoint ptr %write_cam_control to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @mantis_ca_write_cam_ctl, ptr %write_cam_control, align 4
  %slot_reset = getelementptr inbounds %struct.mantis_ca, ptr %call7.i.i, i32 0, i32 10, i32 7
  %16 = ptrtoint ptr %slot_reset to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @mantis_ca_slot_reset, ptr %slot_reset, align 8
  %slot_shutdown = getelementptr inbounds %struct.mantis_ca, ptr %call7.i.i, i32 0, i32 10, i32 8
  %17 = ptrtoint ptr %slot_shutdown to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @mantis_ca_slot_shutdown, ptr %slot_shutdown, align 4
  %slot_ts_enable = getelementptr inbounds %struct.mantis_ca, ptr %call7.i.i, i32 0, i32 10, i32 9
  %18 = ptrtoint ptr %slot_ts_enable to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @mantis_ts_control, ptr %slot_ts_enable, align 8
  %poll_slot_status = getelementptr inbounds %struct.mantis_ca, ptr %call7.i.i, i32 0, i32 10, i32 10
  %19 = ptrtoint ptr %poll_slot_status to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @mantis_slot_status, ptr %poll_slot_status, align 4
  %data = getelementptr inbounds %struct.mantis_ca, ptr %call7.i.i, i32 0, i32 10, i32 11
  %20 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i, ptr %data, align 8
  %ca_lock = getelementptr inbounds %struct.mantis_ca, ptr %call7.i.i, i32 0, i32 11
  tail call void @__mutex_init(ptr noundef %ca_lock, ptr noundef nonnull @.str.28, ptr noundef nonnull @mantis_ca_init.__key) #4
  %hif_data_wq = getelementptr inbounds %struct.mantis_ca, ptr %call7.i.i, i32 0, i32 5
  tail call void @__init_waitqueue_head(ptr noundef %hif_data_wq, ptr noundef nonnull @.str.30, ptr noundef nonnull @mantis_ca_init.__key.29) #4
  %hif_opdone_wq = getelementptr inbounds %struct.mantis_ca, ptr %call7.i.i, i32 0, i32 3
  tail call void @__init_waitqueue_head(ptr noundef %hif_opdone_wq, ptr noundef nonnull @.str.32, ptr noundef nonnull @mantis_ca_init.__key.31) #4
  %hif_write_wq = getelementptr inbounds %struct.mantis_ca, ptr %call7.i.i, i32 0, i32 6
  tail call void @__init_waitqueue_head(ptr noundef %hif_write_wq, ptr noundef nonnull @.str.34, ptr noundef nonnull @mantis_ca_init.__key.33) #4
  %21 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp160.not = icmp eq i32 %22, 0
  br i1 %cmp160.not, label %if.end136.do.end229_crit_edge, label %do.end167

if.end136.do.end229_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end229

do.end167:                                        ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #6
  %num169 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %23 = ptrtoint ptr %num169 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num169, align 8
  %call170 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.1, i32 noundef %24) #7
  br label %do.end229

do.end229:                                        ; preds = %do.end167, %if.end136.do.end229_crit_edge
  %call231 = tail call i32 @dvb_ca_en50221_init(ptr noundef %dvb_adapter1, ptr noundef %en50221, i32 noundef 1, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call231)
  %cmp232.not = icmp eq i32 %call231, 0
  %25 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp309.not = icmp eq i32 %26, 0
  br i1 %cmp232.not, label %do.body307, label %do.body234

do.body234:                                       ; preds = %do.end229
  br i1 %cmp309.not, label %do.body234.err_crit_edge, label %do.end243

do.body234.err_crit_edge:                         ; preds = %do.body234
  call void @__sanitizer_cov_trace_pc() #6
  br label %err

do.end243:                                        ; preds = %do.body234
  call void @__sanitizer_cov_trace_pc() #6
  %num245 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %27 = ptrtoint ptr %num245 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num245, align 8
  %call246 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.1, i32 noundef %28, i32 noundef %call231) #7
  br label %err

do.body307:                                       ; preds = %do.end229
  br i1 %cmp309.not, label %do.body307.do.end378_crit_edge, label %do.end316

do.body307.do.end378_crit_edge:                   ; preds = %do.body307
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end378

do.end316:                                        ; preds = %do.body307
  call void @__sanitizer_cov_trace_pc() #6
  %num318 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %29 = ptrtoint ptr %num318 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num318, align 8
  %call319 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.1, i32 noundef %30) #7
  br label %do.end378

do.end378:                                        ; preds = %do.end316, %do.body307.do.end378_crit_edge
  %call379 = tail call i32 @mantis_evmgr_init(ptr noundef nonnull %call7.i.i) #4
  br label %cleanup

err:                                              ; preds = %do.end243, %do.body234.err_crit_edge, %do.end73, %do.body64.err_crit_edge
  %result.0 = phi i32 [ %call231, %do.end243 ], [ -12, %do.end73 ], [ -12, %do.body64.err_crit_edge ], [ %call231, %do.body234.err_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #4
  br label %cleanup

cleanup:                                          ; preds = %err, %do.end378
  %retval.0 = phi i32 [ %result.0, %err ], [ 0, %do.end378 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mantis_ca_read_attr_mem(ptr nocapture noundef readonly %en50221, i32 noundef %slot, i32 noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %en50221, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %ca_priv = getelementptr inbounds %struct.mantis_ca, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %ca_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ca_priv, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %switch = icmp ult i32 %5, 4
  br i1 %switch, label %entry.do.end60_crit_edge, label %do.end

entry.do.end60_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end60

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %num = getelementptr inbounds %struct.mantis_pci, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.105, i32 noundef %7, i32 noundef %slot) #7
  br label %do.end60

do.end60:                                         ; preds = %do.end, %entry.do.end60_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot)
  %cmp61.not = icmp eq i32 %slot, 0
  br i1 %cmp61.not, label %if.end63, label %do.end60.cleanup_crit_edge

do.end60.cleanup_crit_edge:                       ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end63:                                         ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #6
  %call64 = tail call i32 @mantis_hif_read_mem(ptr noundef %1, i32 noundef %addr) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end63, %do.end60.cleanup_crit_edge
  %retval.0 = phi i32 [ %call64, %if.end63 ], [ -22, %do.end60.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mantis_ca_write_attr_mem(ptr nocapture noundef readonly %en50221, i32 noundef %slot, i32 noundef %addr, i8 noundef zeroext %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %en50221, i32 0, i32 11
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  %ca_priv = getelementptr inbounds %struct.mantis_ca, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %ca_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ca_priv, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %switch = icmp ult i32 %5, 4
  br i1 %switch, label %entry.do.end61_crit_edge, label %do.end

entry.do.end61_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end61

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %num = getelementptr inbounds %struct.mantis_pci, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.118, i32 noundef %7, i32 noundef %slot) #7
  br label %do.end61

do.end61:                                         ; preds = %do.end, %entry.do.end61_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot)
  %cmp62.not = icmp eq i32 %slot, 0
  br i1 %cmp62.not, label %if.end64, label %do.end61.cleanup_crit_edge

do.end61.cleanup_crit_edge:                       ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end64:                                         ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #6
  %call65 = tail call i32 @mantis_hif_write_mem(ptr noundef %1, i32 noundef %addr, i8 noundef zeroext %data) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %do.end61.cleanup_crit_edge
  %retval.0 = phi i32 [ %call65, %if.end64 ], [ -22, %do.end61.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mantis_ca_read_cam_ctl(ptr nocapture noundef readonly %en50221, i32 noundef %slot, i8 noundef zeroext %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %en50221, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %ca_priv = getelementptr inbounds %struct.mantis_ca, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %ca_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ca_priv, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %switch = icmp ult i32 %5, 4
  br i1 %switch, label %entry.do.end60_crit_edge, label %do.end

entry.do.end60_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end60

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %num = getelementptr inbounds %struct.mantis_pci, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.131, i32 noundef %7, i32 noundef %slot) #7
  br label %do.end60

do.end60:                                         ; preds = %do.end, %entry.do.end60_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot)
  %cmp61.not = icmp eq i32 %slot, 0
  br i1 %cmp61.not, label %if.end63, label %do.end60.cleanup_crit_edge

do.end60.cleanup_crit_edge:                       ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end63:                                         ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #6
  %conv = zext i8 %addr to i32
  %call64 = tail call i32 @mantis_hif_read_iom(ptr noundef %1, i32 noundef %conv) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end63, %do.end60.cleanup_crit_edge
  %retval.0 = phi i32 [ %call64, %if.end63 ], [ -22, %do.end60.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mantis_ca_write_cam_ctl(ptr nocapture noundef readonly %en50221, i32 noundef %slot, i8 noundef zeroext %addr, i8 noundef zeroext %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %en50221, i32 0, i32 11
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  %ca_priv = getelementptr inbounds %struct.mantis_ca, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %ca_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ca_priv, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %switch = icmp ult i32 %5, 4
  br i1 %switch, label %entry.do.end61_crit_edge, label %do.end

entry.do.end61_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end61

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %num = getelementptr inbounds %struct.mantis_pci, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.143, ptr noundef nonnull @.str.144, i32 noundef %7, i32 noundef %slot) #7
  br label %do.end61

do.end61:                                         ; preds = %do.end, %entry.do.end61_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot)
  %cmp62.not = icmp eq i32 %slot, 0
  br i1 %cmp62.not, label %if.end64, label %do.end61.cleanup_crit_edge

do.end61.cleanup_crit_edge:                       ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end64:                                         ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #6
  %conv = zext i8 %addr to i32
  %call65 = tail call i32 @mantis_hif_write_iom(ptr noundef %1, i32 noundef %conv, i8 noundef zeroext %data) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %do.end61.cleanup_crit_edge
  %retval.0 = phi i32 [ %call65, %if.end64 ], [ -22, %do.end61.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mantis_ca_slot_reset(ptr nocapture noundef readonly %en50221, i32 noundef %slot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %en50221, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %ca_priv = getelementptr inbounds %struct.mantis_ca, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %ca_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ca_priv, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %switch = icmp ult i32 %5, 4
  br i1 %switch, label %entry.do.end60_crit_edge, label %do.end

entry.do.end60_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end60

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %num = getelementptr inbounds %struct.mantis_pci, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.157, i32 noundef %7, i32 noundef %slot) #7
  br label %do.end60

do.end60:                                         ; preds = %do.end, %entry.do.end60_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 107374000) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !291
  tail call void @arm_heavy_mb() #4
  %mmio = getelementptr inbounds %struct.mantis_pci, ptr %3, i32 0, i32 8
  %9 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio, align 8
  %add.ptr = getelementptr i8, ptr %10, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -637534208) #4, !srcloc !292
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 107374000) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !293
  tail call void @arm_heavy_mb() #4
  %12 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio, align 8
  %add.ptr68 = getelementptr i8, ptr %13, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68, i32 0) #4, !srcloc !292
  tail call void @msleep(i32 noundef 1000) #4
  %en5022169 = getelementptr inbounds %struct.mantis_ca, ptr %1, i32 0, i32 10
  tail call void @dvb_ca_en50221_camready_irq(ptr noundef %en5022169, i32 noundef 0) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mantis_ca_slot_shutdown(ptr nocapture noundef readonly %en50221, i32 noundef %slot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %en50221, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %ca_priv = getelementptr inbounds %struct.mantis_ca, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %ca_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ca_priv, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %switch = icmp ult i32 %5, 4
  br i1 %switch, label %entry.do.end60_crit_edge, label %do.end

entry.do.end60_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end60

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %num = getelementptr inbounds %struct.mantis_pci, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.170, i32 noundef %7, i32 noundef %slot) #7
  br label %do.end60

do.end60:                                         ; preds = %do.end, %entry.do.end60_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mantis_ts_control(ptr nocapture noundef readonly %en50221, i32 noundef %slot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %en50221, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %ca_priv = getelementptr inbounds %struct.mantis_ca, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %ca_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ca_priv, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %switch = icmp ult i32 %5, 4
  br i1 %switch, label %entry.do.end60_crit_edge, label %do.end

entry.do.end60_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end60

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %num = getelementptr inbounds %struct.mantis_pci, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.182, ptr noundef nonnull @.str.183, i32 noundef %7, i32 noundef %slot) #7
  br label %do.end60

do.end60:                                         ; preds = %do.end, %entry.do.end60_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mantis_slot_status(ptr nocapture noundef readonly %en50221, i32 noundef %slot, i32 noundef %open) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %en50221, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %ca_priv = getelementptr inbounds %struct.mantis_ca, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %ca_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ca_priv, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %switch = icmp ult i32 %5, 4
  br i1 %switch, label %entry.do.end60_crit_edge, label %do.end

entry.do.end60_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end60

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %num = getelementptr inbounds %struct.mantis_pci, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.195, ptr noundef nonnull @.str.196, i32 noundef %7, i32 noundef %slot) #7
  br label %do.end60

do.end60:                                         ; preds = %do.end, %entry.do.end60_crit_edge
  %slot_state = getelementptr inbounds %struct.mantis_ca, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %slot_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %slot_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp61 = icmp eq i32 %9, 3
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %switch280 = icmp ult i32 %11, 4
  br i1 %switch280, label %do.end60.cleanup_crit_edge, label %cleanup.sink.split

do.end60.cleanup_crit_edge:                       ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup.sink.split:                               ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #6
  %.str.209..str.223 = select i1 %cmp61, ptr @.str.209, ptr @.str.223
  %num147 = getelementptr inbounds %struct.mantis_pci, ptr %3, i32 0, i32 11
  %12 = ptrtoint ptr %num147 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num147, align 8
  %call148 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.209..str.223, ptr noundef nonnull @.str.196, i32 noundef %13) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.end60.cleanup_crit_edge
  %. = select i1 %cmp61, i32 5, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_ca_en50221_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mantis_evmgr_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mantis_ca_exit(ptr noundef readonly %mantis) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mantis_ca = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 40
  %0 = ptrtoint ptr %mantis_ca to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mantis_ca, align 8
  %2 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %switch = icmp ult i32 %3, 4
  br i1 %switch, label %entry.do.end60_crit_edge, label %do.end

entry.do.end60_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end60

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %num = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %4 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.78, i32 noundef %5) #7
  br label %do.end60

do.end60:                                         ; preds = %do.end, %entry.do.end60_crit_edge
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end60.cleanup_crit_edge, label %if.end62

do.end60.cleanup_crit_edge:                       ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end62:                                         ; preds = %do.end60
  tail call void @mantis_evmgr_exit(ptr noundef nonnull %1) #4
  %6 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp65.not = icmp eq i32 %7, 0
  br i1 %cmp65.not, label %if.end62.do.end134_crit_edge, label %do.end72

if.end62.do.end134_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end134

do.end72:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #6
  %num74 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %8 = ptrtoint ptr %num74 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num74, align 8
  %call75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.78, i32 noundef %9) #7
  br label %do.end134

do.end134:                                        ; preds = %do.end72, %if.end62.do.end134_crit_edge
  %en50221 = getelementptr inbounds %struct.mantis_ca, ptr %1, i32 0, i32 10
  tail call void @dvb_ca_en50221_release(ptr noundef %en50221) #4
  tail call void @kfree(ptr noundef nonnull %1) #4
  br label %cleanup

cleanup:                                          ; preds = %do.end134, %do.end60.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mantis_evmgr_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_ca_en50221_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mantis_hif_read_mem(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mantis_hif_write_mem(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mantis_hif_read_iom(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mantis_hif_write_iom(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_ca_en50221_camready_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 172)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 172)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !34, !35, !37, !38, !40, !41, !43, !44, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !91, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !124, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281}
!llvm.module.flags = !{!282, !283, !284, !285, !286, !287, !288, !289}
!llvm.ident = !{!290}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/mantis/mantis_ca.c", i32 139, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @mantis_ca_init._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @mantis_ca_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @mantis_ca_init._entry.3, !1, !"_entry", i1 false, i1 false}
!8 = !{ptr @mantis_ca_init._entry_ptr.5, !1, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.7, !1, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @mantis_ca_init._entry.6, !1, !"_entry", i1 false, i1 false}
!11 = !{ptr @mantis_ca_init._entry_ptr.8, !1, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.10, !1, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @mantis_ca_init._entry.9, !1, !"_entry", i1 false, i1 false}
!14 = !{ptr @mantis_ca_init._entry_ptr.11, !1, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @mantis_ca_init._entry.12, !1, !"_entry", i1 false, i1 false}
!16 = !{ptr @mantis_ca_init._entry_ptr.13, !1, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.15, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/pci/mantis/mantis_ca.c", i32 142, i32 3}
!19 = !{ptr @mantis_ca_init._entry.14, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @mantis_ca_init._entry_ptr.16, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.18, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @mantis_ca_init._entry.17, !18, !"_entry", i1 false, i1 false}
!23 = !{ptr @mantis_ca_init._entry_ptr.19, !18, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.21, !18, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @mantis_ca_init._entry.20, !18, !"_entry", i1 false, i1 false}
!26 = !{ptr @mantis_ca_init._entry_ptr.22, !18, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.24, !18, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @mantis_ca_init._entry.23, !18, !"_entry", i1 false, i1 false}
!29 = !{ptr @mantis_ca_init._entry_ptr.25, !18, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @mantis_ca_init._entry.26, !18, !"_entry", i1 false, i1 false}
!31 = !{ptr @mantis_ca_init._entry_ptr.27, !18, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @mantis_ca_init.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/media/pci/mantis/mantis_ca.c", i32 162, i32 2}
!34 = !{ptr @.str.28, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @mantis_ca_init.__key.29, !36, !"__key", i1 false, i1 false}
!36 = !{!"../drivers/media/pci/mantis/mantis_ca.c", i32 164, i32 2}
!37 = !{ptr @.str.30, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @mantis_ca_init.__key.31, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/media/pci/mantis/mantis_ca.c", i32 165, i32 2}
!40 = !{ptr @.str.32, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @mantis_ca_init.__key.33, !42, !"__key", i1 false, i1 false}
!42 = !{!"../drivers/media/pci/mantis/mantis_ca.c", i32 166, i32 2}
!43 = !{ptr @.str.34, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.36, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/pci/mantis/mantis_ca.c", i32 168, i32 2}
!46 = !{ptr @mantis_ca_init._entry.35, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @mantis_ca_init._entry_ptr.37, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.39, !45, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @mantis_ca_init._entry.38, !45, !"_entry", i1 false, i1 false}
!50 = !{ptr @mantis_ca_init._entry_ptr.40, !45, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.42, !45, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @mantis_ca_init._entry.41, !45, !"_entry", i1 false, i1 false}
!53 = !{ptr @mantis_ca_init._entry_ptr.43, !45, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.45, !45, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @mantis_ca_init._entry.44, !45, !"_entry", i1 false, i1 false}
!56 = !{ptr @mantis_ca_init._entry_ptr.46, !45, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @mantis_ca_init._entry.47, !45, !"_entry", i1 false, i1 false}
!58 = !{ptr @mantis_ca_init._entry_ptr.48, !45, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.50, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/pci/mantis/mantis_ca.c", i32 171, i32 3}
!61 = !{ptr @mantis_ca_init._entry.49, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @mantis_ca_init._entry_ptr.51, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.53, !60, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @mantis_ca_init._entry.52, !60, !"_entry", i1 false, i1 false}
!65 = !{ptr @mantis_ca_init._entry_ptr.54, !60, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.56, !60, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @mantis_ca_init._entry.55, !60, !"_entry", i1 false, i1 false}
!68 = !{ptr @mantis_ca_init._entry_ptr.57, !60, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.59, !60, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @mantis_ca_init._entry.58, !60, !"_entry", i1 false, i1 false}
!71 = !{ptr @mantis_ca_init._entry_ptr.60, !60, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @mantis_ca_init._entry.61, !60, !"_entry", i1 false, i1 false}
!73 = !{ptr @mantis_ca_init._entry_ptr.62, !60, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.64, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/pci/mantis/mantis_ca.c", i32 174, i32 2}
!76 = !{ptr @mantis_ca_init._entry.63, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @mantis_ca_init._entry_ptr.65, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.67, !75, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @mantis_ca_init._entry.66, !75, !"_entry", i1 false, i1 false}
!80 = !{ptr @mantis_ca_init._entry_ptr.68, !75, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.70, !75, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @mantis_ca_init._entry.69, !75, !"_entry", i1 false, i1 false}
!83 = !{ptr @mantis_ca_init._entry_ptr.71, !75, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.73, !75, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @mantis_ca_init._entry.72, !75, !"_entry", i1 false, i1 false}
!86 = !{ptr @mantis_ca_init._entry_ptr.74, !75, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @mantis_ca_init._entry.75, !75, !"_entry", i1 false, i1 false}
!88 = !{ptr @mantis_ca_init._entry_ptr.76, !75, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @__ksymtab_mantis_ca_init, !90, !"__ksymtab_mantis_ca_init", i1 false, i1 false}
!90 = !{!"../drivers/media/pci/mantis/mantis_ca.c", i32 181, i32 1}
!91 = !{ptr @.str.77, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/pci/mantis/mantis_ca.c", i32 187, i32 2}
!93 = !{ptr @.str.78, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @mantis_ca_exit._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @mantis_ca_exit._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.80, !92, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @mantis_ca_exit._entry.79, !92, !"_entry", i1 false, i1 false}
!98 = !{ptr @mantis_ca_exit._entry_ptr.81, !92, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.83, !92, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @mantis_ca_exit._entry.82, !92, !"_entry", i1 false, i1 false}
!101 = !{ptr @mantis_ca_exit._entry_ptr.84, !92, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.86, !92, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @mantis_ca_exit._entry.85, !92, !"_entry", i1 false, i1 false}
!104 = !{ptr @mantis_ca_exit._entry_ptr.87, !92, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @mantis_ca_exit._entry.88, !92, !"_entry", i1 false, i1 false}
!106 = !{ptr @mantis_ca_exit._entry_ptr.89, !92, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.91, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/pci/mantis/mantis_ca.c", i32 192, i32 2}
!109 = !{ptr @mantis_ca_exit._entry.90, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @mantis_ca_exit._entry_ptr.92, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.94, !108, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @mantis_ca_exit._entry.93, !108, !"_entry", i1 false, i1 false}
!113 = !{ptr @mantis_ca_exit._entry_ptr.95, !108, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.97, !108, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @mantis_ca_exit._entry.96, !108, !"_entry", i1 false, i1 false}
!116 = !{ptr @mantis_ca_exit._entry_ptr.98, !108, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.100, !108, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @mantis_ca_exit._entry.99, !108, !"_entry", i1 false, i1 false}
!119 = !{ptr @mantis_ca_exit._entry_ptr.101, !108, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @mantis_ca_exit._entry.102, !108, !"_entry", i1 false, i1 false}
!121 = !{ptr @mantis_ca_exit._entry_ptr.103, !108, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @__ksymtab_mantis_ca_exit, !123, !"__ksymtab_mantis_ca_exit", i1 false, i1 false}
!123 = !{!"../drivers/media/pci/mantis/mantis_ca.c", i32 197, i32 1}
!124 = !{ptr @.str.104, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/pci/mantis/mantis_ca.c", i32 33, i32 2}
!126 = !{ptr @.str.105, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @mantis_ca_read_attr_mem._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @mantis_ca_read_attr_mem._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.107, !125, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @mantis_ca_read_attr_mem._entry.106, !125, !"_entry", i1 false, i1 false}
!131 = !{ptr @mantis_ca_read_attr_mem._entry_ptr.108, !125, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.110, !125, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @mantis_ca_read_attr_mem._entry.109, !125, !"_entry", i1 false, i1 false}
!134 = !{ptr @mantis_ca_read_attr_mem._entry_ptr.111, !125, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.113, !125, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @mantis_ca_read_attr_mem._entry.112, !125, !"_entry", i1 false, i1 false}
!137 = !{ptr @mantis_ca_read_attr_mem._entry_ptr.114, !125, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @mantis_ca_read_attr_mem._entry.115, !125, !"_entry", i1 false, i1 false}
!139 = !{ptr @mantis_ca_read_attr_mem._entry_ptr.116, !125, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.117, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/pci/mantis/mantis_ca.c", i32 46, i32 2}
!142 = !{ptr @.str.118, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @mantis_ca_write_attr_mem._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @mantis_ca_write_attr_mem._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.120, !141, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @mantis_ca_write_attr_mem._entry.119, !141, !"_entry", i1 false, i1 false}
!147 = !{ptr @mantis_ca_write_attr_mem._entry_ptr.121, !141, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.123, !141, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @mantis_ca_write_attr_mem._entry.122, !141, !"_entry", i1 false, i1 false}
!150 = !{ptr @mantis_ca_write_attr_mem._entry_ptr.124, !141, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.126, !141, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @mantis_ca_write_attr_mem._entry.125, !141, !"_entry", i1 false, i1 false}
!153 = !{ptr @mantis_ca_write_attr_mem._entry_ptr.127, !141, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @mantis_ca_write_attr_mem._entry.128, !141, !"_entry", i1 false, i1 false}
!155 = !{ptr @mantis_ca_write_attr_mem._entry_ptr.129, !141, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.130, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/media/pci/mantis/mantis_ca.c", i32 59, i32 2}
!158 = !{ptr @.str.131, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @mantis_ca_read_cam_ctl._entry, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @mantis_ca_read_cam_ctl._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.133, !157, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @mantis_ca_read_cam_ctl._entry.132, !157, !"_entry", i1 false, i1 false}
!163 = !{ptr @mantis_ca_read_cam_ctl._entry_ptr.134, !157, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.136, !157, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @mantis_ca_read_cam_ctl._entry.135, !157, !"_entry", i1 false, i1 false}
!166 = !{ptr @mantis_ca_read_cam_ctl._entry_ptr.137, !157, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.139, !157, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @mantis_ca_read_cam_ctl._entry.138, !157, !"_entry", i1 false, i1 false}
!169 = !{ptr @mantis_ca_read_cam_ctl._entry_ptr.140, !157, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @mantis_ca_read_cam_ctl._entry.141, !157, !"_entry", i1 false, i1 false}
!171 = !{ptr @mantis_ca_read_cam_ctl._entry_ptr.142, !157, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.143, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/media/pci/mantis/mantis_ca.c", i32 72, i32 2}
!174 = !{ptr @.str.144, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @mantis_ca_write_cam_ctl._entry, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @mantis_ca_write_cam_ctl._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.146, !173, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @mantis_ca_write_cam_ctl._entry.145, !173, !"_entry", i1 false, i1 false}
!179 = !{ptr @mantis_ca_write_cam_ctl._entry_ptr.147, !173, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.149, !173, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @mantis_ca_write_cam_ctl._entry.148, !173, !"_entry", i1 false, i1 false}
!182 = !{ptr @mantis_ca_write_cam_ctl._entry_ptr.150, !173, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.152, !173, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @mantis_ca_write_cam_ctl._entry.151, !173, !"_entry", i1 false, i1 false}
!185 = !{ptr @mantis_ca_write_cam_ctl._entry_ptr.153, !173, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @mantis_ca_write_cam_ctl._entry.154, !173, !"_entry", i1 false, i1 false}
!187 = !{ptr @mantis_ca_write_cam_ctl._entry_ptr.155, !173, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.156, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/media/pci/mantis/mantis_ca.c", i32 85, i32 2}
!190 = !{ptr @.str.157, !189, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @mantis_ca_slot_reset._entry, !189, !"_entry", i1 false, i1 false}
!192 = !{ptr @mantis_ca_slot_reset._entry_ptr, !189, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.159, !189, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @mantis_ca_slot_reset._entry.158, !189, !"_entry", i1 false, i1 false}
!195 = !{ptr @mantis_ca_slot_reset._entry_ptr.160, !189, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.162, !189, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @mantis_ca_slot_reset._entry.161, !189, !"_entry", i1 false, i1 false}
!198 = !{ptr @mantis_ca_slot_reset._entry_ptr.163, !189, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.165, !189, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @mantis_ca_slot_reset._entry.164, !189, !"_entry", i1 false, i1 false}
!201 = !{ptr @mantis_ca_slot_reset._entry_ptr.166, !189, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @mantis_ca_slot_reset._entry.167, !189, !"_entry", i1 false, i1 false}
!203 = !{ptr @mantis_ca_slot_reset._entry_ptr.168, !189, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.169, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/media/pci/mantis/mantis_ca.c", i32 101, i32 2}
!206 = !{ptr @.str.170, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @mantis_ca_slot_shutdown._entry, !205, !"_entry", i1 false, i1 false}
!208 = !{ptr @mantis_ca_slot_shutdown._entry_ptr, !205, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.172, !205, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @mantis_ca_slot_shutdown._entry.171, !205, !"_entry", i1 false, i1 false}
!211 = !{ptr @mantis_ca_slot_shutdown._entry_ptr.173, !205, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.175, !205, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @mantis_ca_slot_shutdown._entry.174, !205, !"_entry", i1 false, i1 false}
!214 = !{ptr @mantis_ca_slot_shutdown._entry_ptr.176, !205, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.178, !205, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @mantis_ca_slot_shutdown._entry.177, !205, !"_entry", i1 false, i1 false}
!217 = !{ptr @mantis_ca_slot_shutdown._entry_ptr.179, !205, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @mantis_ca_slot_shutdown._entry.180, !205, !"_entry", i1 false, i1 false}
!219 = !{ptr @mantis_ca_slot_shutdown._entry_ptr.181, !205, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.182, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/media/pci/mantis/mantis_ca.c", i32 111, i32 2}
!222 = !{ptr @.str.183, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @mantis_ts_control._entry, !221, !"_entry", i1 false, i1 false}
!224 = !{ptr @mantis_ts_control._entry_ptr, !221, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.185, !221, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @mantis_ts_control._entry.184, !221, !"_entry", i1 false, i1 false}
!227 = !{ptr @mantis_ts_control._entry_ptr.186, !221, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.188, !221, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @mantis_ts_control._entry.187, !221, !"_entry", i1 false, i1 false}
!230 = !{ptr @mantis_ts_control._entry_ptr.189, !221, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.191, !221, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @mantis_ts_control._entry.190, !221, !"_entry", i1 false, i1 false}
!233 = !{ptr @mantis_ts_control._entry_ptr.192, !221, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @mantis_ts_control._entry.193, !221, !"_entry", i1 false, i1 false}
!235 = !{ptr @mantis_ts_control._entry_ptr.194, !221, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.195, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/media/pci/mantis/mantis_ca.c", i32 121, i32 2}
!238 = !{ptr @.str.196, !237, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @mantis_slot_status._entry, !237, !"_entry", i1 false, i1 false}
!240 = !{ptr @mantis_slot_status._entry_ptr, !237, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.198, !237, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @mantis_slot_status._entry.197, !237, !"_entry", i1 false, i1 false}
!243 = !{ptr @mantis_slot_status._entry_ptr.199, !237, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.201, !237, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @mantis_slot_status._entry.200, !237, !"_entry", i1 false, i1 false}
!246 = !{ptr @mantis_slot_status._entry_ptr.202, !237, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.204, !237, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @mantis_slot_status._entry.203, !237, !"_entry", i1 false, i1 false}
!249 = !{ptr @mantis_slot_status._entry_ptr.205, !237, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @mantis_slot_status._entry.206, !237, !"_entry", i1 false, i1 false}
!251 = !{ptr @mantis_slot_status._entry_ptr.207, !237, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.209, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/media/pci/mantis/mantis_ca.c", i32 124, i32 3}
!254 = !{ptr @mantis_slot_status._entry.208, !253, !"_entry", i1 false, i1 false}
!255 = !{ptr @mantis_slot_status._entry_ptr.210, !253, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.212, !253, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @mantis_slot_status._entry.211, !253, !"_entry", i1 false, i1 false}
!258 = !{ptr @mantis_slot_status._entry_ptr.213, !253, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.215, !253, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @mantis_slot_status._entry.214, !253, !"_entry", i1 false, i1 false}
!261 = !{ptr @mantis_slot_status._entry_ptr.216, !253, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @.str.218, !253, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @mantis_slot_status._entry.217, !253, !"_entry", i1 false, i1 false}
!264 = !{ptr @mantis_slot_status._entry_ptr.219, !253, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @mantis_slot_status._entry.220, !253, !"_entry", i1 false, i1 false}
!266 = !{ptr @mantis_slot_status._entry_ptr.221, !253, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.223, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/media/pci/mantis/mantis_ca.c", i32 127, i32 3}
!269 = !{ptr @mantis_slot_status._entry.222, !268, !"_entry", i1 false, i1 false}
!270 = !{ptr @mantis_slot_status._entry_ptr.224, !268, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.226, !268, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @mantis_slot_status._entry.225, !268, !"_entry", i1 false, i1 false}
!273 = !{ptr @mantis_slot_status._entry_ptr.227, !268, !"_entry_ptr", i1 false, i1 false}
!274 = !{ptr @.str.229, !268, !"<string literal>", i1 false, i1 false}
!275 = !{ptr @mantis_slot_status._entry.228, !268, !"_entry", i1 false, i1 false}
!276 = !{ptr @mantis_slot_status._entry_ptr.230, !268, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.232, !268, !"<string literal>", i1 false, i1 false}
!278 = !{ptr @mantis_slot_status._entry.231, !268, !"_entry", i1 false, i1 false}
!279 = !{ptr @mantis_slot_status._entry_ptr.233, !268, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @mantis_slot_status._entry.234, !268, !"_entry", i1 false, i1 false}
!281 = !{ptr @mantis_slot_status._entry_ptr.235, !268, !"_entry_ptr", i1 false, i1 false}
!282 = !{i32 1, !"wchar_size", i32 2}
!283 = !{i32 1, !"min_enum_size", i32 4}
!284 = !{i32 8, !"branch-target-enforcement", i32 0}
!285 = !{i32 8, !"sign-return-address", i32 0}
!286 = !{i32 8, !"sign-return-address-all", i32 0}
!287 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!288 = !{i32 7, !"uwtable", i32 1}
!289 = !{i32 7, !"frame-pointer", i32 2}
!290 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!291 = !{i64 2157824015}
!292 = !{i64 4676447}
!293 = !{i64 2157825113}
