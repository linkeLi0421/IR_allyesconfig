; ModuleID = '/llk/IR_all_yes/drivers/media/pci/mantis/mantis_i2c.c_pt.bc'
source_filename = "../drivers/media/pci/mantis/mantis_i2c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mantis_i2c_init\22, \22a\22\09"
module asm "\09.weak\09__crc_mantis_i2c_init\09\09\09\09"
module asm "\09.long\09__crc_mantis_i2c_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mantis_i2c_init:\09\09\09\09\09"
module asm "\09.asciz \09\22mantis_i2c_init\22\09\09\09\09\09"
module asm "__kstrtabns_mantis_i2c_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mantis_i2c_exit\22, \22a\22\09"
module asm "\09.weak\09__crc_mantis_i2c_exit\09\09\09\09"
module asm "\09.long\09__crc_mantis_i2c_exit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mantis_i2c_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22mantis_i2c_exit\22\09\09\09\09\09"
module asm "__kstrtabns_mantis_i2c_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mantis_pci = type { i32, i16, i16, i16, i16, i8, ptr, i32, ptr, i8, i8, i32, i32, i32, ptr, i32, ptr, i32, %struct.tasklet_struct, %struct.spinlock, %struct.i2c_adapter, i32, %struct.wait_queue_head, %struct.mutex, %struct.dvb_adapter, ptr, %struct.dvb_demux, %struct.dmxdev, %struct.dmx_frontend, %struct.dmx_frontend, %struct.dvb_net, i8, ptr, i32, i32, [8 x i8], i32, i32, i32, i32, ptr, %struct.work_struct, ptr, [80 x i8], [80 x i8], ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.104, i32 }
%struct.atomic_t = type { i32 }
%union.anon.104 = type { ptr }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.103, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.103 = type { ptr }
%struct.mantis_hwconfig = type { ptr, ptr, i32, i32, i32, i32, ptr, ptr, i8, i8, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@mantis_i2c_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&mantis->i2c_wq\00", [16 x i8] zeroinitializer }, align 32
@mantis_i2c_init.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&mantis->i2c_lock\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Mantis I2C\00", [21 x i8] zeroinitializer }, align 32
@mantis_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @mantis_i2c_xfer, ptr null, ptr null, ptr null, ptr @mantis_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@mantis_i2c_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s (%d): Initializing I2C ..\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mantis_i2c_init\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/pci/mantis/mantis_i2c.c\00", [58 x i8] zeroinitializer }, align 32
@mantis_i2c_init._entry_ptr = internal global ptr @mantis_i2c_init._entry, section ".printk_index", align 4
@mantis_i2c_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.5, ptr @.str.6, i32 230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\015%s (%d): Initializing I2C ..\0A\00", [32 x i8] zeroinitializer }, align 32
@mantis_i2c_init._entry_ptr.9 = internal global ptr @mantis_i2c_init._entry.7, section ".printk_index", align 4
@mantis_i2c_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.5, ptr @.str.6, i32 230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s (%d): Initializing I2C ..\0A\00", [32 x i8] zeroinitializer }, align 32
@mantis_i2c_init._entry_ptr.12 = internal global ptr @mantis_i2c_init._entry.10, section ".printk_index", align 4
@mantis_i2c_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.5, ptr @.str.6, i32 230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s (%d): Initializing I2C ..\0A\00", [32 x i8] zeroinitializer }, align 32
@mantis_i2c_init._entry_ptr.15 = internal global ptr @mantis_i2c_init._entry.13, section ".printk_index", align 4
@mantis_i2c_init._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.5, ptr @.str.6, i32 230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_i2c_init._entry_ptr.17 = internal global ptr @mantis_i2c_init._entry.16, section ".printk_index", align 4
@mantis_i2c_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.5, ptr @.str.6, i32 235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s (%d): Disabling I2C interrupt\0A\00", [60 x i8] zeroinitializer }, align 32
@mantis_i2c_init._entry_ptr.20 = internal global ptr @mantis_i2c_init._entry.18, section ".printk_index", align 4
@mantis_i2c_init._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.5, ptr @.str.6, i32 235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\015%s (%d): Disabling I2C interrupt\0A\00", [60 x i8] zeroinitializer }, align 32
@mantis_i2c_init._entry_ptr.23 = internal global ptr @mantis_i2c_init._entry.21, section ".printk_index", align 4
@mantis_i2c_init._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.5, ptr @.str.6, i32 235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%s (%d): Disabling I2C interrupt\0A\00", [60 x i8] zeroinitializer }, align 32
@mantis_i2c_init._entry_ptr.26 = internal global ptr @mantis_i2c_init._entry.24, section ".printk_index", align 4
@mantis_i2c_init._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.5, ptr @.str.6, i32 235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s (%d): Disabling I2C interrupt\0A\00", [60 x i8] zeroinitializer }, align 32
@mantis_i2c_init._entry_ptr.29 = internal global ptr @mantis_i2c_init._entry.27, section ".printk_index", align 4
@mantis_i2c_init._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.5, ptr @.str.6, i32 235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_i2c_init._entry_ptr.31 = internal global ptr @mantis_i2c_init._entry.30, section ".printk_index", align 4
@__kstrtab_mantis_i2c_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_mantis_i2c_init = external dso_local constant [0 x i8], align 1
@__ksymtab_mantis_i2c_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mantis_i2c_init to i32), ptr @__kstrtab_mantis_i2c_init, ptr @__kstrtabns_mantis_i2c_init }, section "___ksymtab_gpl+mantis_i2c_init", align 4
@mantis_i2c_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.32, ptr @.str.6, i32 244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mantis_i2c_exit\00", [16 x i8] zeroinitializer }, align 32
@mantis_i2c_exit._entry_ptr = internal global ptr @mantis_i2c_exit._entry, section ".printk_index", align 4
@mantis_i2c_exit._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.32, ptr @.str.6, i32 244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_i2c_exit._entry_ptr.34 = internal global ptr @mantis_i2c_exit._entry.33, section ".printk_index", align 4
@mantis_i2c_exit._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.32, ptr @.str.6, i32 244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_i2c_exit._entry_ptr.36 = internal global ptr @mantis_i2c_exit._entry.35, section ".printk_index", align 4
@mantis_i2c_exit._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.32, ptr @.str.6, i32 244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_i2c_exit._entry_ptr.38 = internal global ptr @mantis_i2c_exit._entry.37, section ".printk_index", align 4
@mantis_i2c_exit._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.32, ptr @.str.6, i32 244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_i2c_exit._entry_ptr.40 = internal global ptr @mantis_i2c_exit._entry.39, section ".printk_index", align 4
@mantis_i2c_exit._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.32, ptr @.str.6, i32 247, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s (%d): Removing I2C adapter\0A\00", [63 x i8] zeroinitializer }, align 32
@mantis_i2c_exit._entry_ptr.43 = internal global ptr @mantis_i2c_exit._entry.41, section ".printk_index", align 4
@mantis_i2c_exit._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.32, ptr @.str.6, i32 247, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\015%s (%d): Removing I2C adapter\0A\00", [63 x i8] zeroinitializer }, align 32
@mantis_i2c_exit._entry_ptr.46 = internal global ptr @mantis_i2c_exit._entry.44, section ".printk_index", align 4
@mantis_i2c_exit._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.32, ptr @.str.6, i32 247, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016%s (%d): Removing I2C adapter\0A\00", [63 x i8] zeroinitializer }, align 32
@mantis_i2c_exit._entry_ptr.49 = internal global ptr @mantis_i2c_exit._entry.47, section ".printk_index", align 4
@mantis_i2c_exit._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.32, ptr @.str.6, i32 247, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s (%d): Removing I2C adapter\0A\00", [63 x i8] zeroinitializer }, align 32
@mantis_i2c_exit._entry_ptr.52 = internal global ptr @mantis_i2c_exit._entry.50, section ".printk_index", align 4
@mantis_i2c_exit._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.32, ptr @.str.6, i32 247, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_i2c_exit._entry_ptr.54 = internal global ptr @mantis_i2c_exit._entry.53, section ".printk_index", align 4
@__kstrtab_mantis_i2c_exit = external dso_local constant [0 x i8], align 1
@__kstrtabns_mantis_i2c_exit = external dso_local constant [0 x i8], align 1
@__ksymtab_mantis_i2c_exit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mantis_i2c_exit to i32), ptr @__kstrtab_mantis_i2c_exit, ptr @__kstrtabns_mantis_i2c_exit }, section "___ksymtab_gpl+mantis_i2c_exit", align 4
@mantis_i2c_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.6, i32 128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013%s (%d): Messages:%d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mantis_i2c_xfer\00", [16 x i8] zeroinitializer }, align 32
@mantis_i2c_xfer._entry_ptr = internal global ptr @mantis_i2c_xfer._entry, section ".printk_index", align 4
@mantis_i2c_xfer._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.6, i32 128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\015%s (%d): Messages:%d\0A\00", [40 x i8] zeroinitializer }, align 32
@mantis_i2c_xfer._entry_ptr.59 = internal global ptr @mantis_i2c_xfer._entry.57, section ".printk_index", align 4
@mantis_i2c_xfer._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.56, ptr @.str.6, i32 128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016%s (%d): Messages:%d\0A\00", [40 x i8] zeroinitializer }, align 32
@mantis_i2c_xfer._entry_ptr.62 = internal global ptr @mantis_i2c_xfer._entry.60, section ".printk_index", align 4
@mantis_i2c_xfer._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.56, ptr @.str.6, i32 128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s (%d): Messages:%d\0A\00", [40 x i8] zeroinitializer }, align 32
@mantis_i2c_xfer._entry_ptr.65 = internal global ptr @mantis_i2c_xfer._entry.63, section ".printk_index", align 4
@mantis_i2c_xfer._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.56, ptr @.str.6, i32 128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_i2c_xfer._entry_ptr.67 = internal global ptr @mantis_i2c_xfer._entry.66, section ".printk_index", align 4
@mantis_i2c_xfer._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.56, ptr @.str.6, i32 139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"        Byte MODE:\0A\00", [44 x i8] zeroinitializer }, align 32
@mantis_i2c_xfer._entry_ptr.70 = internal global ptr @mantis_i2c_xfer._entry.68, section ".printk_index", align 4
@mantis_i2c_xfer._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.56, ptr @.str.6, i32 160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"        Byte <%d> RXD=0x%02x  [%02x]\0A\00", [58 x i8] zeroinitializer }, align 32
@mantis_i2c_xfer._entry_ptr.73 = internal global ptr @mantis_i2c_xfer._entry.71, section ".printk_index", align 4
@mantis_i2c_xfer._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.56, ptr @.str.6, i32 163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s (%d):         I/O error, LINE:%d\0A\00", [57 x i8] zeroinitializer }, align 32
@mantis_i2c_xfer._entry_ptr.76 = internal global ptr @mantis_i2c_xfer._entry.74, section ".printk_index", align 4
@mantis_i2c_xfer._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.56, ptr @.str.6, i32 163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\015%s (%d):         I/O error, LINE:%d\0A\00", [57 x i8] zeroinitializer }, align 32
@mantis_i2c_xfer._entry_ptr.79 = internal global ptr @mantis_i2c_xfer._entry.77, section ".printk_index", align 4
@mantis_i2c_xfer._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.56, ptr @.str.6, i32 163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016%s (%d):         I/O error, LINE:%d\0A\00", [57 x i8] zeroinitializer }, align 32
@mantis_i2c_xfer._entry_ptr.82 = internal global ptr @mantis_i2c_xfer._entry.80, section ".printk_index", align 4
@mantis_i2c_xfer._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.56, ptr @.str.6, i32 163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s (%d):         I/O error, LINE:%d\0A\00", [57 x i8] zeroinitializer }, align 32
@mantis_i2c_xfer._entry_ptr.85 = internal global ptr @mantis_i2c_xfer._entry.83, section ".printk_index", align 4
@mantis_i2c_xfer._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.56, ptr @.str.6, i32 163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_i2c_xfer._entry_ptr.87 = internal global ptr @mantis_i2c_xfer._entry.86, section ".printk_index", align 4
@mantis_i2c_xfer._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.56, ptr @.str.6, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_i2c_xfer._entry_ptr.89 = internal global ptr @mantis_i2c_xfer._entry.88, section ".printk_index", align 4
@mantis_i2c_xfer._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.56, ptr @.str.6, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_i2c_xfer._entry_ptr.91 = internal global ptr @mantis_i2c_xfer._entry.90, section ".printk_index", align 4
@mantis_i2c_xfer._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.56, ptr @.str.6, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_i2c_xfer._entry_ptr.93 = internal global ptr @mantis_i2c_xfer._entry.92, section ".printk_index", align 4
@mantis_i2c_xfer._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.56, ptr @.str.6, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_i2c_xfer._entry_ptr.95 = internal global ptr @mantis_i2c_xfer._entry.94, section ".printk_index", align 4
@mantis_i2c_xfer._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.56, ptr @.str.6, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_i2c_xfer._entry_ptr.97 = internal global ptr @mantis_i2c_xfer._entry.96, section ".printk_index", align 4
@mantis_i2c_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.6, i32 31, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"        %s:  Address=[0x%02x] <R>[ \00", [60 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mantis_i2c_read\00", [16 x i8] zeroinitializer }, align 32
@mantis_i2c_read._entry_ptr = internal global ptr @mantis_i2c_read._entry, section ".printk_index", align 4
@mantis_i2c_read._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.99, ptr @.str.6, i32 52, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"I2CDONE: trials=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@mantis_i2c_read._entry_ptr.102 = internal global ptr @mantis_i2c_read._entry.100, section ".printk_index", align 4
@mantis_i2c_read._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.99, ptr @.str.6, i32 61, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"I2CRACK: trials=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@mantis_i2c_read._entry_ptr.105 = internal global ptr @mantis_i2c_read._entry.103, section ".printk_index", align 4
@mantis_i2c_read._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.99, ptr @.str.6, i32 65, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%02x \00", [26 x i8] zeroinitializer }, align 32
@mantis_i2c_read._entry_ptr.108 = internal global ptr @mantis_i2c_read._entry.106, section ".printk_index", align 4
@mantis_i2c_read._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.99, ptr @.str.6, i32 67, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"]\0A\00", [29 x i8] zeroinitializer }, align 32
@mantis_i2c_read._entry_ptr.111 = internal global ptr @mantis_i2c_read._entry.109, section ".printk_index", align 4
@mantis_i2c_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.113, ptr @.str.6, i32 78, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"        %s: Address=[0x%02x] <W>[ \00", [61 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mantis_i2c_write\00", [47 x i8] zeroinitializer }, align 32
@mantis_i2c_write._entry_ptr = internal global ptr @mantis_i2c_write._entry, section ".printk_index", align 4
@mantis_i2c_write._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.113, ptr @.str.6, i32 81, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_i2c_write._entry_ptr.115 = internal global ptr @mantis_i2c_write._entry.114, section ".printk_index", align 4
@mantis_i2c_write._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.113, ptr @.str.6, i32 100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_i2c_write._entry_ptr.117 = internal global ptr @mantis_i2c_write._entry.116, section ".printk_index", align 4
@mantis_i2c_write._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.113, ptr @.str.6, i32 109, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_i2c_write._entry_ptr.119 = internal global ptr @mantis_i2c_write._entry.118, section ".printk_index", align 4
@mantis_i2c_write._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.113, ptr @.str.6, i32 111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_i2c_write._entry_ptr.121 = internal global ptr @mantis_i2c_write._entry.120, section ".printk_index", align 4
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 214, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 215, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 216, i32 29 }
@___asan_gen_.137 = private unnamed_addr constant [12 x i8] c"mantis_algo\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 203, i32 35 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 230, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 235, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 244, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 247, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 128, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 139, i32 4 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 160, i32 6 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 163, i32 6 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 169, i32 5 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 30, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 52, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 61, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 65, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 67, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 77, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 81, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 100, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 109, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.381 = private constant [41 x i8] c"../drivers/media/pci/mantis/mantis_i2c.c\00", align 1
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 111, i32 2 }
@llvm.compiler.used = appending global [136 x ptr] [ptr @__ksymtab_mantis_i2c_exit, ptr @__ksymtab_mantis_i2c_init, ptr @mantis_i2c_exit._entry, ptr @mantis_i2c_exit._entry.33, ptr @mantis_i2c_exit._entry.35, ptr @mantis_i2c_exit._entry.37, ptr @mantis_i2c_exit._entry.39, ptr @mantis_i2c_exit._entry.41, ptr @mantis_i2c_exit._entry.44, ptr @mantis_i2c_exit._entry.47, ptr @mantis_i2c_exit._entry.50, ptr @mantis_i2c_exit._entry.53, ptr @mantis_i2c_exit._entry_ptr, ptr @mantis_i2c_exit._entry_ptr.34, ptr @mantis_i2c_exit._entry_ptr.36, ptr @mantis_i2c_exit._entry_ptr.38, ptr @mantis_i2c_exit._entry_ptr.40, ptr @mantis_i2c_exit._entry_ptr.43, ptr @mantis_i2c_exit._entry_ptr.46, ptr @mantis_i2c_exit._entry_ptr.49, ptr @mantis_i2c_exit._entry_ptr.52, ptr @mantis_i2c_exit._entry_ptr.54, ptr @mantis_i2c_init._entry, ptr @mantis_i2c_init._entry.10, ptr @mantis_i2c_init._entry.13, ptr @mantis_i2c_init._entry.16, ptr @mantis_i2c_init._entry.18, ptr @mantis_i2c_init._entry.21, ptr @mantis_i2c_init._entry.24, ptr @mantis_i2c_init._entry.27, ptr @mantis_i2c_init._entry.30, ptr @mantis_i2c_init._entry.7, ptr @mantis_i2c_init._entry_ptr, ptr @mantis_i2c_init._entry_ptr.12, ptr @mantis_i2c_init._entry_ptr.15, ptr @mantis_i2c_init._entry_ptr.17, ptr @mantis_i2c_init._entry_ptr.20, ptr @mantis_i2c_init._entry_ptr.23, ptr @mantis_i2c_init._entry_ptr.26, ptr @mantis_i2c_init._entry_ptr.29, ptr @mantis_i2c_init._entry_ptr.31, ptr @mantis_i2c_init._entry_ptr.9, ptr @mantis_i2c_read._entry, ptr @mantis_i2c_read._entry.100, ptr @mantis_i2c_read._entry.103, ptr @mantis_i2c_read._entry.106, ptr @mantis_i2c_read._entry.109, ptr @mantis_i2c_read._entry_ptr, ptr @mantis_i2c_read._entry_ptr.102, ptr @mantis_i2c_read._entry_ptr.105, ptr @mantis_i2c_read._entry_ptr.108, ptr @mantis_i2c_read._entry_ptr.111, ptr @mantis_i2c_write._entry, ptr @mantis_i2c_write._entry.114, ptr @mantis_i2c_write._entry.116, ptr @mantis_i2c_write._entry.118, ptr @mantis_i2c_write._entry.120, ptr @mantis_i2c_write._entry_ptr, ptr @mantis_i2c_write._entry_ptr.115, ptr @mantis_i2c_write._entry_ptr.117, ptr @mantis_i2c_write._entry_ptr.119, ptr @mantis_i2c_write._entry_ptr.121, ptr @mantis_i2c_xfer._entry, ptr @mantis_i2c_xfer._entry.57, ptr @mantis_i2c_xfer._entry.60, ptr @mantis_i2c_xfer._entry.63, ptr @mantis_i2c_xfer._entry.66, ptr @mantis_i2c_xfer._entry.68, ptr @mantis_i2c_xfer._entry.71, ptr @mantis_i2c_xfer._entry.74, ptr @mantis_i2c_xfer._entry.77, ptr @mantis_i2c_xfer._entry.80, ptr @mantis_i2c_xfer._entry.83, ptr @mantis_i2c_xfer._entry.86, ptr @mantis_i2c_xfer._entry.88, ptr @mantis_i2c_xfer._entry.90, ptr @mantis_i2c_xfer._entry.92, ptr @mantis_i2c_xfer._entry.94, ptr @mantis_i2c_xfer._entry.96, ptr @mantis_i2c_xfer._entry_ptr, ptr @mantis_i2c_xfer._entry_ptr.59, ptr @mantis_i2c_xfer._entry_ptr.62, ptr @mantis_i2c_xfer._entry_ptr.65, ptr @mantis_i2c_xfer._entry_ptr.67, ptr @mantis_i2c_xfer._entry_ptr.70, ptr @mantis_i2c_xfer._entry_ptr.73, ptr @mantis_i2c_xfer._entry_ptr.76, ptr @mantis_i2c_xfer._entry_ptr.79, ptr @mantis_i2c_xfer._entry_ptr.82, ptr @mantis_i2c_xfer._entry_ptr.85, ptr @mantis_i2c_xfer._entry_ptr.87, ptr @mantis_i2c_xfer._entry_ptr.89, ptr @mantis_i2c_xfer._entry_ptr.91, ptr @mantis_i2c_xfer._entry_ptr.93, ptr @mantis_i2c_xfer._entry_ptr.95, ptr @mantis_i2c_xfer._entry_ptr.97, ptr @mantis_i2c_init.__key, ptr @.str, ptr @mantis_i2c_init.__key.1, ptr @.str.2, ptr @.str.3, ptr @mantis_algo, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.32, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @.str.78, ptr @.str.81, ptr @.str.84, ptr @.str.98, ptr @.str.99, ptr @.str.101, ptr @.str.104, ptr @.str.107, ptr @.str.110, ptr @.str.112, ptr @.str.113], section "llvm.metadata"
@0 = internal global [87 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_i2c_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_i2c_init.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_i2c_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_i2c_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_i2c_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_i2c_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_i2c_init._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_i2c_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_i2c_init._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_i2c_init._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_i2c_init._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_i2c_init._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_i2c_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_i2c_exit._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_i2c_exit._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_i2c_exit._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_i2c_exit._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_i2c_exit._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_i2c_exit._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_i2c_exit._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_i2c_exit._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_i2c_exit._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_i2c_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_i2c_xfer._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_i2c_xfer._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_i2c_xfer._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_i2c_xfer._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_i2c_xfer._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_i2c_xfer._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_i2c_xfer._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_i2c_xfer._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_i2c_xfer._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_i2c_xfer._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_i2c_xfer._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_i2c_xfer._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_i2c_xfer._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_i2c_xfer._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_i2c_xfer._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_i2c_xfer._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_i2c_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_i2c_read._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_i2c_read._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_i2c_read._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_i2c_read._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_i2c_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_i2c_write._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_i2c_write._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_i2c_write._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_i2c_write._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mantis_i2c_init(ptr noundef %mantis) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 20
  %pdev1 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 6
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 8
  %i2c_wq = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 22
  tail call void @__init_waitqueue_head(ptr noundef %i2c_wq, ptr noundef nonnull @.str, ptr noundef nonnull @mantis_i2c_init.__key) #5
  %i2c_lock = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 23
  tail call void @__mutex_init(ptr noundef %i2c_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @mantis_i2c_init.__key.1) #5
  %name = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 20, i32 12
  %call = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.3, i32 noundef 48) #5
  %driver_data.i.i = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 20, i32 9, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %mantis, ptr %driver_data.i.i, align 4
  %3 = ptrtoint ptr %adapter to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %adapter, align 8
  %algo = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 20, i32 2
  %4 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @mantis_algo, ptr %algo, align 8
  %algo_data = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 20, i32 3
  %5 = ptrtoint ptr %algo_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %algo_data, align 4
  %timeout = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 20, i32 7
  %6 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 500, ptr %timeout, align 4
  %retries = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 20, i32 8
  %7 = ptrtoint ptr %retries to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3, ptr %retries, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %parent = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 20, i32 9, i32 1
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %parent, align 8
  %call6 = tail call i32 @i2c_add_adapter(ptr noundef %adapter) #5
  %i2c_rc = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 21
  %9 = ptrtoint ptr %i2c_rc to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call6, ptr %i2c_rc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body9

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body9:                                         ; preds = %entry
  %10 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %switch = icmp ult i32 %11, 4
  br i1 %switch, label %do.body9.do.end75_crit_edge, label %do.end16

do.body9.do.end75_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end75

do.end16:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #7
  %num = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %12 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num, align 8
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef %13) #8
  br label %do.end75

do.end75:                                         ; preds = %do.end16, %do.body9.do.end75_crit_edge
  %mmio = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 8
  %14 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio, align 8
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #5, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !171
  %17 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmio, align 8
  %add.ptr82 = getelementptr i8, ptr %18, i32 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82) #5, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !173
  tail call void @arm_heavy_mb() #5
  %20 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %16) #5, !srcloc !174
  %22 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %23)
  %switch228 = icmp ult i32 %23, 4
  br i1 %switch228, label %do.end75.do.end162_crit_edge, label %do.end100

do.end75.do.end162_crit_edge:                     ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end162

do.end100:                                        ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #7
  %num102 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %24 = ptrtoint ptr %num102 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num102, align 8
  %call103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.5, i32 noundef %25) #8
  br label %do.end162

do.end162:                                        ; preds = %do.end100, %do.end75.do.end162_crit_edge
  %intmask_lock.i = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 19
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %intmask_lock.i) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !175
  tail call void @arm_heavy_mb() #5
  %26 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmio, align 8
  %add.ptr.i = getelementptr i8, ptr %27, i32 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !176
  %29 = and i32 %28, -16777217
  %30 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmio, align 8
  %add.ptr12.i = getelementptr i8, ptr %31, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %29) #5, !srcloc !174
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %intmask_lock.i, i32 noundef %call2.i) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end162, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end162 ], [ %call6, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mantis_i2c_exit(ptr noundef %mantis) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %switch = icmp ult i32 %1, 4
  br i1 %switch, label %entry.do.end55_crit_edge, label %do.end

entry.do.end55_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end55

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %num = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.32, i32 noundef %3) #8
  br label %do.end55

do.end55:                                         ; preds = %do.end, %entry.do.end55_crit_edge
  %intmask_lock.i = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 19
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %intmask_lock.i) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !175
  tail call void @arm_heavy_mb() #5
  %mmio.i = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 8
  %4 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !176
  %7 = and i32 %6, -16777217
  %8 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio.i, align 8
  %add.ptr12.i = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %7) #5, !srcloc !174
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %intmask_lock.i, i32 noundef %call2.i) #5
  %10 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %switch167 = icmp ult i32 %11, 4
  br i1 %switch167, label %do.end55.do.end121_crit_edge, label %do.end64

do.end55.do.end121_crit_edge:                     ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end121

do.end64:                                         ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #7
  %num66 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %12 = ptrtoint ptr %num66 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num66, align 8
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.32, i32 noundef %13) #8
  br label %do.end121

do.end121:                                        ; preds = %do.end64, %do.end55.do.end121_crit_edge
  %adapter = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 20
  tail call void @i2c_del_adapter(ptr noundef %adapter) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mantis_i2c_xfer(ptr nocapture noundef readonly %adapter, ptr nocapture noundef readonly %msgs, i32 noundef returned %num) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adapter, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !177

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/pci/mantis/mantis_i2c.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 124, 0\0A.popsection", ""() #5, !srcloc !178
  unreachable

do.end9:                                          ; preds = %entry
  %hwconfig = getelementptr inbounds %struct.mantis_pci, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %hwconfig to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwconfig, align 4
  %tobool11.not = icmp eq ptr %3, null
  br i1 %tobool11.not, label %do.body21, label %do.body30, !prof !177

do.body21:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/pci/mantis/mantis_i2c.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 126, 0\0A.popsection", ""() #5, !srcloc !179
  unreachable

do.body30:                                        ; preds = %do.end9
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %switch = icmp ult i32 %5, 4
  br i1 %switch, label %do.body30.do.end96_crit_edge, label %do.end36

do.body30.do.end96_crit_edge:                     ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end96

do.end36:                                         ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #7
  %num37 = getelementptr inbounds %struct.mantis_pci, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %num37 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num37, align 8
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, i32 noundef %7, i32 noundef %num) #8
  br label %do.end96

do.end96:                                         ; preds = %do.end36, %do.body30.do.end96_crit_edge
  %i2c_lock = getelementptr inbounds %struct.mantis_pci, ptr %1, i32 0, i32 23
  tail call void @mutex_lock_nested(ptr noundef %i2c_lock, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp97515 = icmp sgt i32 %num, 0
  br i1 %cmp97515, label %while.body.lr.ph, label %do.end96.while.end_crit_edge

do.end96.while.end_crit_edge:                     ; preds = %do.end96
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.end96
  %i2c_mode = getelementptr inbounds %struct.mantis_hwconfig, ptr %3, i32 0, i32 10
  %mmio = getelementptr inbounds %struct.mantis_pci, ptr %1, i32 0, i32 8
  br label %while.body

while.body:                                       ; preds = %if.end380.while.body_crit_edge, %while.body.lr.ph
  %i.0517 = phi i32 [ 0, %while.body.lr.ph ], [ %i.2, %if.end380.while.body_crit_edge ]
  %8 = ptrtoint ptr %i2c_mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i2c_mode, align 4
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool98.not = icmp eq i32 %and, 0
  br i1 %tobool98.not, label %while.body.if.end359_crit_edge, label %land.lhs.true99

while.body.if.end359_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end359

land.lhs.true99:                                  ; preds = %while.body
  %add = add nsw i32 %i.0517, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %num)
  %cmp100 = icmp slt i32 %add, %num
  br i1 %cmp100, label %land.lhs.true101, label %land.lhs.true99.if.end359_crit_edge

land.lhs.true99.if.end359_crit_edge:              ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end359

land.lhs.true101:                                 ; preds = %land.lhs.true99
  %arrayidx = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0517
  %len = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0517, i32 2
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %11)
  %cmp102 = icmp ult i16 %11, 2
  br i1 %cmp102, label %land.lhs.true104, label %land.lhs.true101.if.end359_crit_edge

land.lhs.true101.if.end359_crit_edge:             ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end359

land.lhs.true104:                                 ; preds = %land.lhs.true101
  %len107 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %add, i32 2
  %12 = ptrtoint ptr %len107 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %len107, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %13)
  %cmp109 = icmp ult i16 %13, 2
  br i1 %cmp109, label %land.lhs.true111, label %land.lhs.true104.if.end359_crit_edge

land.lhs.true104.if.end359_crit_edge:             ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end359

land.lhs.true111:                                 ; preds = %land.lhs.true104
  %flags = getelementptr %struct.i2c_msg, ptr %msgs, i32 %add, i32 1
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %flags, align 2
  %16 = and i16 %15, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool116.not = icmp eq i16 %16, 0
  br i1 %tobool116.not, label %land.lhs.true111.if.end359_crit_edge, label %do.body118

land.lhs.true111.if.end359_crit_edge:             ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end359

do.body118:                                       ; preds = %land.lhs.true111
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %18)
  %cmp120 = icmp ugt i32 %18, 3
  br i1 %cmp120, label %do.end125, label %do.body118.do.end130_crit_edge

do.body118.do.end130_crit_edge:                   ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end130

do.end125:                                        ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #7
  %call127 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69) #8
  br label %do.end130

do.end130:                                        ; preds = %do.end125, %do.body118.do.end130_crit_edge
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx, align 4
  %conv132 = zext i16 %20 to i32
  %shl = shl i32 %conv132, 25
  %buf = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0517, i32 3
  %21 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %buf, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 1
  %conv135 = zext i8 %24 to i32
  %shl136 = shl nuw nsw i32 %conv135, 16
  %or = or i32 %shl, %shl136
  %or138 = or i32 %or, 16777344
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !180
  tail call void @arm_heavy_mb() #5
  %25 = tail call i32 @llvm.bswap.i32(i32 %or138)
  %26 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmio, align 8
  %add.ptr = getelementptr i8, ptr %27, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %25) #5, !srcloc !174
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end130
  %trials.0514 = phi i32 [ 0, %do.end130 ], [ %inc, %for.body.for.body_crit_edge ]
  %28 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmio, align 8
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #5, !srcloc !170
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !181
  %and149 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and149)
  %tobool150.not = icmp eq i32 %and149, 0
  %inc = add nuw nsw i32 %trials.0514, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9999, i32 %trials.0514)
  %cmp142 = icmp ult i32 %trials.0514, 9999
  %or.cond = select i1 %tobool150.not, i1 %cmp142, i1 false
  br i1 %or.cond, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body
  br i1 %tobool150.not, label %do.body275, label %if.then155

if.then155:                                       ; preds = %for.end
  %and156 = and i32 %31, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and156)
  %tobool157.not = icmp eq i32 %and156, 0
  br i1 %tobool157.not, label %do.body191, label %if.then158

if.then158:                                       ; preds = %if.then155
  %32 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mmio, align 8
  %add.ptr162 = getelementptr i8, ptr %33, i32 24
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr162) #5, !srcloc !170
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !182
  %shr = lshr i32 %35, 8
  %conv167 = trunc i32 %shr to i8
  %buf170 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %add, i32 3
  %36 = ptrtoint ptr %buf170 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %buf170, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv167, ptr %37, align 1
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %40)
  %cmp174 = icmp ugt i32 %40, 3
  br i1 %cmp174, label %do.end179, label %if.then158.if.end357_crit_edge

if.then158.if.end357_crit_edge:                   ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end357

do.end179:                                        ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %buf170 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %buf170, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %42, align 1
  %conv185 = zext i8 %44 to i32
  %call186 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, i32 noundef 0, i32 noundef %35, i32 noundef %conv185) #8
  br label %if.end357

do.body191:                                       ; preds = %if.then155
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp193.not = icmp eq i32 %46, 0
  br i1 %cmp193.not, label %do.body191.while.end_crit_edge, label %do.body191.while.end.sink.split_crit_edge

do.body191.while.end.sink.split_crit_edge:        ; preds = %do.body191
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.sink.split

do.body191.while.end_crit_edge:                   ; preds = %do.body191
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

do.body275:                                       ; preds = %for.end
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp277.not = icmp eq i32 %48, 0
  br i1 %cmp277.not, label %do.body275.while.end_crit_edge, label %do.body275.while.end.sink.split_crit_edge

do.body275.while.end.sink.split_crit_edge:        ; preds = %do.body275
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.sink.split

do.body275.while.end_crit_edge:                   ; preds = %do.body275
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end357:                                        ; preds = %do.end179, %if.then158.if.end357_crit_edge
  %add358 = add i32 %i.0517, 2
  br label %if.end359

if.end359:                                        ; preds = %if.end357, %land.lhs.true111.if.end359_crit_edge, %land.lhs.true104.if.end359_crit_edge, %land.lhs.true101.if.end359_crit_edge, %land.lhs.true99.if.end359_crit_edge, %while.body.if.end359_crit_edge
  %i.1 = phi i32 [ %add358, %if.end357 ], [ %i.0517, %land.lhs.true111.if.end359_crit_edge ], [ %i.0517, %land.lhs.true104.if.end359_crit_edge ], [ %i.0517, %land.lhs.true101.if.end359_crit_edge ], [ %i.0517, %land.lhs.true99.if.end359_crit_edge ], [ %i.0517, %while.body.if.end359_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1, i32 %num)
  %cmp360 = icmp slt i32 %i.1, %num
  br i1 %cmp360, label %if.then362, label %if.end359.if.end380_crit_edge

if.end359.if.end380_crit_edge:                    ; preds = %if.end359
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end380

if.then362:                                       ; preds = %if.end359
  %arrayidx363 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.1
  %flags364 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.1, i32 1
  %49 = ptrtoint ptr %flags364 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %flags364, align 2
  %51 = and i16 %50, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %tobool367.not = icmp eq i16 %51, 0
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %53)
  %cmp.i490 = icmp ugt i32 %53, 2
  br i1 %tobool367.not, label %if.else371, label %if.then368

if.then368:                                       ; preds = %if.then362
  br i1 %cmp.i490, label %do.end.i, label %if.then368.do.end3.i_crit_edge

if.then368.do.end3.i_crit_edge:                   ; preds = %if.then368
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end3.i

do.end.i:                                         ; preds = %if.then368
  call void @__sanitizer_cov_trace_pc() #7
  %54 = ptrtoint ptr %arrayidx363 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %arrayidx363, align 4
  %conv.i = zext i16 %55 to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, i32 noundef %conv.i) #8
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %if.then368.do.end3.i_crit_edge
  %len.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.1, i32 2
  %56 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %cmp54.not.i = icmp eq i16 %57, 0
  br i1 %cmp54.not.i, label %do.end3.i.do.body110.i_crit_edge, label %for.body.lr.ph.i

do.end3.i.do.body110.i_crit_edge:                 ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body110.i

for.body.lr.ph.i:                                 ; preds = %do.end3.i
  %conv43.i = zext i16 %57 to i32
  %buf.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.1, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc107.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %conv47.i = phi i32 [ %conv43.i, %for.body.lr.ph.i ], [ %conv4.i, %for.inc107.i.for.body.i_crit_edge ]
  %i.05.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc108.i, %for.inc107.i.for.body.i_crit_edge ]
  %58 = ptrtoint ptr %arrayidx363 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %arrayidx363, align 4
  %conv8.i = zext i16 %59 to i32
  %shl.i = shl i32 %conv8.i, 25
  %sub.i = add nsw i32 %conv47.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.05.i, i32 %sub.i)
  %cmp14.i = icmp eq i32 %i.05.i, %sub.i
  %spec.select.v.i = select i1 %cmp14.i, i32 16777352, i32 16777384
  %spec.select.i = or i32 %shl.i, %spec.select.v.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !183
  tail call void @arm_heavy_mb() #5
  %60 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mmio, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 16777216) #5, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !184
  tail call void @arm_heavy_mb() #5
  %62 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #5
  %63 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mmio, align 8
  %add.ptr25.i = getelementptr i8, ptr %64, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i, i32 %62) #5, !srcloc !174
  br label %for.body29.i

for.body29.i:                                     ; preds = %for.inc.i.for.body29.i_crit_edge, %for.body.i
  %trials.01.i = phi i32 [ 0, %for.body.i ], [ %inc.i, %for.inc.i.for.body29.i_crit_edge ]
  %65 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mmio, align 8
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #5, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !185
  %68 = and i32 %67, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool.not.i = icmp eq i32 %68, 0
  br i1 %tobool.not.i, label %for.inc.i, label %for.body29.i.do.body38.i_crit_edge

for.body29.i.do.body38.i_crit_edge:               ; preds = %for.body29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body38.i

for.inc.i:                                        ; preds = %for.body29.i
  %inc.i = add nuw nsw i32 %trials.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10000
  br i1 %exitcond.not.i, label %for.inc.i.do.body38.i_crit_edge, label %for.inc.i.for.body29.i_crit_edge

for.inc.i.for.body29.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body29.i

for.inc.i.do.body38.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body38.i

do.body38.i:                                      ; preds = %for.inc.i.do.body38.i_crit_edge, %for.body29.i.do.body38.i_crit_edge
  %trials.0.lcssa.i = phi i32 [ 10000, %for.inc.i.do.body38.i_crit_edge ], [ %trials.01.i, %for.body29.i.do.body38.i_crit_edge ]
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %70)
  %cmp40.i = icmp ugt i32 %70, 9
  br i1 %cmp40.i, label %do.end45.i, label %do.body38.i.for.body54.i.preheader_crit_edge

do.body38.i.for.body54.i.preheader_crit_edge:     ; preds = %do.body38.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body54.i.preheader

do.end45.i:                                       ; preds = %do.body38.i
  call void @__sanitizer_cov_trace_pc() #7
  %call47.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, i32 noundef %trials.0.lcssa.i) #8
  br label %for.body54.i.preheader

for.body54.i.preheader:                           ; preds = %do.end45.i, %do.body38.i.for.body54.i.preheader_crit_edge
  br label %for.body54.i

for.body54.i:                                     ; preds = %for.inc66.i.for.body54.i_crit_edge, %for.body54.i.preheader
  %trials.12.i = phi i32 [ %inc67.i, %for.inc66.i.for.body54.i_crit_edge ], [ 0, %for.body54.i.preheader ]
  %71 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %mmio, align 8
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #5, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !186
  %74 = and i32 %73, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool63.not.i = icmp eq i32 %74, 0
  br i1 %tobool63.not.i, label %for.inc66.i, label %for.body54.i.do.body69.i_crit_edge

for.body54.i.do.body69.i_crit_edge:               ; preds = %for.body54.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body69.i

for.inc66.i:                                      ; preds = %for.body54.i
  %inc67.i = add nuw nsw i32 %trials.12.i, 1
  %exitcond8.not.i = icmp eq i32 %inc67.i, 10000
  br i1 %exitcond8.not.i, label %for.inc66.i.do.body69.i_crit_edge, label %for.inc66.i.for.body54.i_crit_edge

for.inc66.i.for.body54.i_crit_edge:               ; preds = %for.inc66.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body54.i

for.inc66.i.do.body69.i_crit_edge:                ; preds = %for.inc66.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body69.i

do.body69.i:                                      ; preds = %for.inc66.i.do.body69.i_crit_edge, %for.body54.i.do.body69.i_crit_edge
  %trials.1.lcssa.i = phi i32 [ 10000, %for.inc66.i.do.body69.i_crit_edge ], [ %trials.12.i, %for.body54.i.do.body69.i_crit_edge ]
  %75 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %76)
  %cmp71.i = icmp ugt i32 %76, 9
  br i1 %cmp71.i, label %do.end76.i, label %do.body69.i.do.end81.i_crit_edge

do.body69.i.do.end81.i_crit_edge:                 ; preds = %do.body69.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end81.i

do.end76.i:                                       ; preds = %do.body69.i
  call void @__sanitizer_cov_trace_pc() #7
  %call78.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, i32 noundef %trials.1.lcssa.i) #8
  br label %do.end81.i

do.end81.i:                                       ; preds = %do.end76.i, %do.body69.i.do.end81.i_crit_edge
  %77 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %mmio, align 8
  %add.ptr85.i = getelementptr i8, ptr %78, i32 24
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr85.i) #5, !srcloc !170
  %80 = lshr i32 %79, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !187
  %conv90.i = trunc i32 %80 to i8
  %81 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %buf.i, align 4
  %arrayidx.i = getelementptr i8, ptr %82, i32 %i.05.i
  %83 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv90.i, ptr %arrayidx.i, align 1
  %84 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %85)
  %cmp93.i = icmp ugt i32 %85, 2
  br i1 %cmp93.i, label %do.end98.i, label %do.end81.i.for.inc107.i_crit_edge

do.end81.i.for.inc107.i_crit_edge:                ; preds = %do.end81.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc107.i

do.end98.i:                                       ; preds = %do.end81.i
  call void @__sanitizer_cov_trace_pc() #7
  %86 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %buf.i, align 4
  %arrayidx101.i = getelementptr i8, ptr %87, i32 %i.05.i
  %88 = ptrtoint ptr %arrayidx101.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx101.i, align 1
  %conv102.i = zext i8 %89 to i32
  %call103.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, i32 noundef %conv102.i) #8
  br label %for.inc107.i

for.inc107.i:                                     ; preds = %do.end98.i, %do.end81.i.for.inc107.i_crit_edge
  %inc108.i = add nuw nsw i32 %i.05.i, 1
  %90 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %len.i, align 4
  %conv4.i = zext i16 %91 to i32
  %cmp5.i = icmp ult i32 %inc108.i, %conv4.i
  br i1 %cmp5.i, label %for.inc107.i.for.body.i_crit_edge, label %for.inc107.i.do.body110.i_crit_edge

for.inc107.i.do.body110.i_crit_edge:              ; preds = %for.inc107.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body110.i

for.inc107.i.for.body.i_crit_edge:                ; preds = %for.inc107.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

do.body110.i:                                     ; preds = %for.inc107.i.do.body110.i_crit_edge, %do.end3.i.do.body110.i_crit_edge
  %92 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %93)
  %cmp112.i = icmp ugt i32 %93, 2
  br i1 %cmp112.i, label %do.body110.i.if.end374.sink.split_crit_edge, label %do.body110.i.if.end374_crit_edge

do.body110.i.if.end374_crit_edge:                 ; preds = %do.body110.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end374

do.body110.i.if.end374.sink.split_crit_edge:      ; preds = %do.body110.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end374.sink.split

if.else371:                                       ; preds = %if.then362
  br i1 %cmp.i490, label %do.end.i493, label %if.else371.do.end3.i496_crit_edge

if.else371.do.end3.i496_crit_edge:                ; preds = %if.else371
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end3.i496

do.end.i493:                                      ; preds = %if.else371
  call void @__sanitizer_cov_trace_pc() #7
  %94 = ptrtoint ptr %arrayidx363 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %arrayidx363, align 4
  %conv.i491 = zext i16 %95 to i32
  %call.i492 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.113, i32 noundef %conv.i491) #8
  br label %do.end3.i496

do.end3.i496:                                     ; preds = %do.end.i493, %if.else371.do.end3.i496_crit_edge
  %len.i494 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.1, i32 2
  %96 = ptrtoint ptr %len.i494 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %len.i494, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %97)
  %cmp54.not.i495 = icmp eq i16 %97, 0
  br i1 %cmp54.not.i495, label %do.end3.i496.do.body103.i_crit_edge, label %do.body7.lr.ph.i

do.end3.i496.do.body103.i_crit_edge:              ; preds = %do.end3.i496
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body103.i

do.body7.lr.ph.i:                                 ; preds = %do.end3.i496
  %buf.i497 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.1, i32 3
  br label %do.body7.i

do.body7.i:                                       ; preds = %for.inc100.i.do.body7.i_crit_edge, %do.body7.lr.ph.i
  %i.05.i499 = phi i32 [ 0, %do.body7.lr.ph.i ], [ %inc101.i, %for.inc100.i.do.body7.i_crit_edge ]
  %98 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %99)
  %cmp9.i = icmp ugt i32 %99, 2
  br i1 %cmp9.i, label %do.end14.i, label %do.body7.i.do.end20.i_crit_edge

do.body7.i.do.end20.i_crit_edge:                  ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end20.i

do.end14.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #7
  %100 = ptrtoint ptr %buf.i497 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %buf.i497, align 4
  %arrayidx.i500 = getelementptr i8, ptr %101, i32 %i.05.i499
  %102 = ptrtoint ptr %arrayidx.i500 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx.i500, align 1
  %conv16.i = zext i8 %103 to i32
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, i32 noundef %conv16.i) #8
  br label %do.end20.i

do.end20.i:                                       ; preds = %do.end14.i, %do.body7.i.do.end20.i_crit_edge
  %104 = ptrtoint ptr %arrayidx363 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %arrayidx363, align 4
  %conv22.i = zext i16 %105 to i32
  %shl.i501 = shl i32 %conv22.i, 25
  %106 = ptrtoint ptr %buf.i497 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %buf.i497, align 4
  %arrayidx24.i = getelementptr i8, ptr %107, i32 %i.05.i499
  %108 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx24.i, align 1
  %conv25.i = zext i8 %109 to i32
  %shl26.i = shl nuw nsw i32 %conv25.i, 8
  %or.i = or i32 %shl.i501, %shl26.i
  %or29.i = or i32 %or.i, 168
  %110 = ptrtoint ptr %len.i494 to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %len.i494, align 4
  %conv31.i = zext i16 %111 to i32
  %sub.i502 = add nsw i32 %conv31.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.05.i499, i32 %sub.i502)
  %cmp32.i = icmp eq i32 %i.05.i499, %sub.i502
  %and.i = and i32 %or29.i, -33489016
  %spec.select.i503 = select i1 %cmp32.i, i32 %and.i, i32 %or29.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !188
  tail call void @arm_heavy_mb() #5
  %112 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %mmio, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %113, i32 16777216) #5, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !189
  tail call void @arm_heavy_mb() #5
  %114 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i503) #5
  %115 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %mmio, align 8
  %add.ptr43.i = getelementptr i8, ptr %116, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43.i, i32 %114) #5, !srcloc !174
  br label %for.body47.i

for.body47.i:                                     ; preds = %for.inc.i508.for.body47.i_crit_edge, %do.end20.i
  %trials.01.i504 = phi i32 [ 0, %do.end20.i ], [ %inc.i506, %for.inc.i508.for.body47.i_crit_edge ]
  %117 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %mmio, align 8
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %118) #5, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !190
  %120 = and i32 %119, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool.not.i505 = icmp eq i32 %120, 0
  br i1 %tobool.not.i505, label %for.inc.i508, label %for.body47.i.do.body56.i_crit_edge

for.body47.i.do.body56.i_crit_edge:               ; preds = %for.body47.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body56.i

for.inc.i508:                                     ; preds = %for.body47.i
  %inc.i506 = add nuw nsw i32 %trials.01.i504, 1
  %exitcond.not.i507 = icmp eq i32 %inc.i506, 10000
  br i1 %exitcond.not.i507, label %for.inc.i508.do.body56.i_crit_edge, label %for.inc.i508.for.body47.i_crit_edge

for.inc.i508.for.body47.i_crit_edge:              ; preds = %for.inc.i508
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body47.i

for.inc.i508.do.body56.i_crit_edge:               ; preds = %for.inc.i508
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body56.i

do.body56.i:                                      ; preds = %for.inc.i508.do.body56.i_crit_edge, %for.body47.i.do.body56.i_crit_edge
  %trials.0.lcssa.i509 = phi i32 [ 10000, %for.inc.i508.do.body56.i_crit_edge ], [ %trials.01.i504, %for.body47.i.do.body56.i_crit_edge ]
  %121 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %122)
  %cmp58.i = icmp ugt i32 %122, 9
  br i1 %cmp58.i, label %do.end63.i, label %do.body56.i.for.body72.i.preheader_crit_edge

do.body56.i.for.body72.i.preheader_crit_edge:     ; preds = %do.body56.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body72.i.preheader

do.end63.i:                                       ; preds = %do.body56.i
  call void @__sanitizer_cov_trace_pc() #7
  %call65.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, i32 noundef %trials.0.lcssa.i509) #8
  br label %for.body72.i.preheader

for.body72.i.preheader:                           ; preds = %do.end63.i, %do.body56.i.for.body72.i.preheader_crit_edge
  br label %for.body72.i

for.body72.i:                                     ; preds = %for.inc84.i.for.body72.i_crit_edge, %for.body72.i.preheader
  %trials.12.i510 = phi i32 [ %inc85.i, %for.inc84.i.for.body72.i_crit_edge ], [ 0, %for.body72.i.preheader ]
  %123 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %mmio, align 8
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %124) #5, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !191
  %126 = and i32 %125, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool81.not.i = icmp eq i32 %126, 0
  br i1 %tobool81.not.i, label %for.inc84.i, label %for.body72.i.do.body87.i_crit_edge

for.body72.i.do.body87.i_crit_edge:               ; preds = %for.body72.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body87.i

for.inc84.i:                                      ; preds = %for.body72.i
  %inc85.i = add nuw nsw i32 %trials.12.i510, 1
  %exitcond7.not.i = icmp eq i32 %inc85.i, 10000
  br i1 %exitcond7.not.i, label %for.inc84.i.do.body87.i_crit_edge, label %for.inc84.i.for.body72.i_crit_edge

for.inc84.i.for.body72.i_crit_edge:               ; preds = %for.inc84.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body72.i

for.inc84.i.do.body87.i_crit_edge:                ; preds = %for.inc84.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body87.i

do.body87.i:                                      ; preds = %for.inc84.i.do.body87.i_crit_edge, %for.body72.i.do.body87.i_crit_edge
  %trials.1.lcssa.i511 = phi i32 [ 10000, %for.inc84.i.do.body87.i_crit_edge ], [ %trials.12.i510, %for.body72.i.do.body87.i_crit_edge ]
  %127 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %128)
  %cmp89.i = icmp ugt i32 %128, 9
  br i1 %cmp89.i, label %do.end94.i, label %do.body87.i.for.inc100.i_crit_edge

do.body87.i.for.inc100.i_crit_edge:               ; preds = %do.body87.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc100.i

do.end94.i:                                       ; preds = %do.body87.i
  call void @__sanitizer_cov_trace_pc() #7
  %call96.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, i32 noundef %trials.1.lcssa.i511) #8
  br label %for.inc100.i

for.inc100.i:                                     ; preds = %do.end94.i, %do.body87.i.for.inc100.i_crit_edge
  %inc101.i = add nuw nsw i32 %i.05.i499, 1
  %129 = ptrtoint ptr %len.i494 to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %len.i494, align 4
  %conv4.i512 = zext i16 %130 to i32
  %cmp5.i513 = icmp ult i32 %inc101.i, %conv4.i512
  br i1 %cmp5.i513, label %for.inc100.i.do.body7.i_crit_edge, label %for.inc100.i.do.body103.i_crit_edge

for.inc100.i.do.body103.i_crit_edge:              ; preds = %for.inc100.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body103.i

for.inc100.i.do.body7.i_crit_edge:                ; preds = %for.inc100.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body7.i

do.body103.i:                                     ; preds = %for.inc100.i.do.body103.i_crit_edge, %do.end3.i496.do.body103.i_crit_edge
  %131 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %132)
  %cmp105.i = icmp ugt i32 %132, 2
  br i1 %cmp105.i, label %do.body103.i.if.end374.sink.split_crit_edge, label %do.body103.i.if.end374_crit_edge

do.body103.i.if.end374_crit_edge:                 ; preds = %do.body103.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end374

do.body103.i.if.end374.sink.split_crit_edge:      ; preds = %do.body103.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end374.sink.split

if.end374.sink.split:                             ; preds = %do.body103.i.if.end374.sink.split_crit_edge, %do.body110.i.if.end374.sink.split_crit_edge
  %call112.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110) #8
  br label %if.end374

if.end374:                                        ; preds = %if.end374.sink.split, %do.body103.i.if.end374_crit_edge, %do.body110.i.if.end374_crit_edge
  %inc375 = add i32 %i.1, 1
  br label %if.end380

if.end380:                                        ; preds = %if.end374, %if.end359.if.end380_crit_edge
  %i.2 = phi i32 [ %inc375, %if.end374 ], [ %i.1, %if.end359.if.end380_crit_edge ]
  %cmp97 = icmp slt i32 %i.2, %num
  br i1 %cmp97, label %if.end380.while.body_crit_edge, label %if.end380.while.end_crit_edge

if.end380.while.end_crit_edge:                    ; preds = %if.end380
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end380.while.body_crit_edge:                   ; preds = %if.end380
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end.sink.split:                             ; preds = %do.body275.while.end.sink.split_crit_edge, %do.body191.while.end.sink.split_crit_edge
  %.sink518 = phi i32 [ 163, %do.body191.while.end.sink.split_crit_edge ], [ 169, %do.body275.while.end.sink.split_crit_edge ]
  %num288 = getelementptr inbounds %struct.mantis_pci, ptr %1, i32 0, i32 11
  %133 = ptrtoint ptr %num288 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %num288, align 8
  %call289 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.56, i32 noundef %134, i32 noundef %.sink518) #8
  br label %while.end

while.end:                                        ; preds = %while.end.sink.split, %if.end380.while.end_crit_edge, %do.body275.while.end_crit_edge, %do.body191.while.end_crit_edge, %do.end96.while.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %i2c_lock) #5
  ret i32 %num
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mantis_i2c_func(ptr nocapture noundef readnone %adapter) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251592712
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !42, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !71, !73, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !125, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !148, !149, !151, !152, !154, !155, !157, !158, !160}
!llvm.module.flags = !{!161, !162, !163, !164, !165, !166, !167, !168}
!llvm.ident = !{!169}

!0 = !{ptr @mantis_i2c_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/mantis/mantis_i2c.c", i32 214, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @mantis_i2c_init.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/media/pci/mantis/mantis_i2c.c", i32 215, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/pci/mantis/mantis_i2c.c", i32 216, i32 29}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/pci/mantis/mantis_i2c.c", i32 230, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @mantis_i2c_init._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @mantis_i2c_init._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !9, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @mantis_i2c_init._entry.7, !9, !"_entry", i1 false, i1 false}
!16 = !{ptr @mantis_i2c_init._entry_ptr.9, !9, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.11, !9, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @mantis_i2c_init._entry.10, !9, !"_entry", i1 false, i1 false}
!19 = !{ptr @mantis_i2c_init._entry_ptr.12, !9, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.14, !9, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @mantis_i2c_init._entry.13, !9, !"_entry", i1 false, i1 false}
!22 = !{ptr @mantis_i2c_init._entry_ptr.15, !9, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @mantis_i2c_init._entry.16, !9, !"_entry", i1 false, i1 false}
!24 = !{ptr @mantis_i2c_init._entry_ptr.17, !9, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.19, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/pci/mantis/mantis_i2c.c", i32 235, i32 2}
!27 = !{ptr @mantis_i2c_init._entry.18, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @mantis_i2c_init._entry_ptr.20, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.22, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @mantis_i2c_init._entry.21, !26, !"_entry", i1 false, i1 false}
!31 = !{ptr @mantis_i2c_init._entry_ptr.23, !26, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.25, !26, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @mantis_i2c_init._entry.24, !26, !"_entry", i1 false, i1 false}
!34 = !{ptr @mantis_i2c_init._entry_ptr.26, !26, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.28, !26, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @mantis_i2c_init._entry.27, !26, !"_entry", i1 false, i1 false}
!37 = !{ptr @mantis_i2c_init._entry_ptr.29, !26, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @mantis_i2c_init._entry.30, !26, !"_entry", i1 false, i1 false}
!39 = !{ptr @mantis_i2c_init._entry_ptr.31, !26, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @__ksymtab_mantis_i2c_init, !41, !"__ksymtab_mantis_i2c_init", i1 false, i1 false}
!41 = !{!"../drivers/media/pci/mantis/mantis_i2c.c", i32 240, i32 1}
!42 = !{ptr @.str.32, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/pci/mantis/mantis_i2c.c", i32 244, i32 2}
!44 = !{ptr @mantis_i2c_exit._entry, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @mantis_i2c_exit._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @mantis_i2c_exit._entry.33, !43, !"_entry", i1 false, i1 false}
!47 = !{ptr @mantis_i2c_exit._entry_ptr.34, !43, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @mantis_i2c_exit._entry.35, !43, !"_entry", i1 false, i1 false}
!49 = !{ptr @mantis_i2c_exit._entry_ptr.36, !43, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @mantis_i2c_exit._entry.37, !43, !"_entry", i1 false, i1 false}
!51 = !{ptr @mantis_i2c_exit._entry_ptr.38, !43, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @mantis_i2c_exit._entry.39, !43, !"_entry", i1 false, i1 false}
!53 = !{ptr @mantis_i2c_exit._entry_ptr.40, !43, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.42, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/pci/mantis/mantis_i2c.c", i32 247, i32 2}
!56 = !{ptr @mantis_i2c_exit._entry.41, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @mantis_i2c_exit._entry_ptr.43, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.45, !55, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @mantis_i2c_exit._entry.44, !55, !"_entry", i1 false, i1 false}
!60 = !{ptr @mantis_i2c_exit._entry_ptr.46, !55, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.48, !55, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @mantis_i2c_exit._entry.47, !55, !"_entry", i1 false, i1 false}
!63 = !{ptr @mantis_i2c_exit._entry_ptr.49, !55, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.51, !55, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @mantis_i2c_exit._entry.50, !55, !"_entry", i1 false, i1 false}
!66 = !{ptr @mantis_i2c_exit._entry_ptr.52, !55, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @mantis_i2c_exit._entry.53, !55, !"_entry", i1 false, i1 false}
!68 = !{ptr @mantis_i2c_exit._entry_ptr.54, !55, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @__ksymtab_mantis_i2c_exit, !70, !"__ksymtab_mantis_i2c_exit", i1 false, i1 false}
!70 = !{!"../drivers/media/pci/mantis/mantis_i2c.c", i32 252, i32 1}
!71 = !{ptr @mantis_algo, !72, !"mantis_algo", i1 false, i1 false}
!72 = !{!"../drivers/media/pci/mantis/mantis_i2c.c", i32 203, i32 35}
!73 = !{ptr @.str.55, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/pci/mantis/mantis_i2c.c", i32 128, i32 2}
!75 = !{ptr @.str.56, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @mantis_i2c_xfer._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @mantis_i2c_xfer._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.58, !74, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @mantis_i2c_xfer._entry.57, !74, !"_entry", i1 false, i1 false}
!80 = !{ptr @mantis_i2c_xfer._entry_ptr.59, !74, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.61, !74, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @mantis_i2c_xfer._entry.60, !74, !"_entry", i1 false, i1 false}
!83 = !{ptr @mantis_i2c_xfer._entry_ptr.62, !74, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.64, !74, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @mantis_i2c_xfer._entry.63, !74, !"_entry", i1 false, i1 false}
!86 = !{ptr @mantis_i2c_xfer._entry_ptr.65, !74, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @mantis_i2c_xfer._entry.66, !74, !"_entry", i1 false, i1 false}
!88 = !{ptr @mantis_i2c_xfer._entry_ptr.67, !74, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.69, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/pci/mantis/mantis_i2c.c", i32 139, i32 4}
!91 = !{ptr @mantis_i2c_xfer._entry.68, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @mantis_i2c_xfer._entry_ptr.70, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.72, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/pci/mantis/mantis_i2c.c", i32 160, i32 6}
!95 = !{ptr @mantis_i2c_xfer._entry.71, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @mantis_i2c_xfer._entry_ptr.73, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.75, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/pci/mantis/mantis_i2c.c", i32 163, i32 6}
!99 = !{ptr @mantis_i2c_xfer._entry.74, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @mantis_i2c_xfer._entry_ptr.76, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.78, !98, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @mantis_i2c_xfer._entry.77, !98, !"_entry", i1 false, i1 false}
!103 = !{ptr @mantis_i2c_xfer._entry_ptr.79, !98, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.81, !98, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @mantis_i2c_xfer._entry.80, !98, !"_entry", i1 false, i1 false}
!106 = !{ptr @mantis_i2c_xfer._entry_ptr.82, !98, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.84, !98, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @mantis_i2c_xfer._entry.83, !98, !"_entry", i1 false, i1 false}
!109 = !{ptr @mantis_i2c_xfer._entry_ptr.85, !98, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @mantis_i2c_xfer._entry.86, !98, !"_entry", i1 false, i1 false}
!111 = !{ptr @mantis_i2c_xfer._entry_ptr.87, !98, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @mantis_i2c_xfer._entry.88, !113, !"_entry", i1 false, i1 false}
!113 = !{!"../drivers/media/pci/mantis/mantis_i2c.c", i32 169, i32 5}
!114 = !{ptr @mantis_i2c_xfer._entry_ptr.89, !113, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @mantis_i2c_xfer._entry.90, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @mantis_i2c_xfer._entry_ptr.91, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @mantis_i2c_xfer._entry.92, !113, !"_entry", i1 false, i1 false}
!118 = !{ptr @mantis_i2c_xfer._entry_ptr.93, !113, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @mantis_i2c_xfer._entry.94, !113, !"_entry", i1 false, i1 false}
!120 = !{ptr @mantis_i2c_xfer._entry_ptr.95, !113, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @mantis_i2c_xfer._entry.96, !113, !"_entry", i1 false, i1 false}
!122 = !{ptr @mantis_i2c_xfer._entry_ptr.97, !113, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.98, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/pci/mantis/mantis_i2c.c", i32 30, i32 2}
!125 = !{ptr @.str.99, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @mantis_i2c_read._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @mantis_i2c_read._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.101, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/pci/mantis/mantis_i2c.c", i32 52, i32 3}
!130 = !{ptr @mantis_i2c_read._entry.100, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @mantis_i2c_read._entry_ptr.102, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.104, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/pci/mantis/mantis_i2c.c", i32 61, i32 3}
!134 = !{ptr @mantis_i2c_read._entry.103, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @mantis_i2c_read._entry_ptr.105, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.107, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/pci/mantis/mantis_i2c.c", i32 65, i32 3}
!138 = !{ptr @mantis_i2c_read._entry.106, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @mantis_i2c_read._entry_ptr.108, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.110, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/pci/mantis/mantis_i2c.c", i32 67, i32 2}
!142 = !{ptr @mantis_i2c_read._entry.109, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @mantis_i2c_read._entry_ptr.111, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.112, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/media/pci/mantis/mantis_i2c.c", i32 77, i32 2}
!146 = !{ptr @.str.113, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @mantis_i2c_write._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @mantis_i2c_write._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @mantis_i2c_write._entry.114, !150, !"_entry", i1 false, i1 false}
!150 = !{!"../drivers/media/pci/mantis/mantis_i2c.c", i32 81, i32 3}
!151 = !{ptr @mantis_i2c_write._entry_ptr.115, !150, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @mantis_i2c_write._entry.116, !153, !"_entry", i1 false, i1 false}
!153 = !{!"../drivers/media/pci/mantis/mantis_i2c.c", i32 100, i32 3}
!154 = !{ptr @mantis_i2c_write._entry_ptr.117, !153, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @mantis_i2c_write._entry.118, !156, !"_entry", i1 false, i1 false}
!156 = !{!"../drivers/media/pci/mantis/mantis_i2c.c", i32 109, i32 3}
!157 = !{ptr @mantis_i2c_write._entry_ptr.119, !156, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @mantis_i2c_write._entry.120, !159, !"_entry", i1 false, i1 false}
!159 = !{!"../drivers/media/pci/mantis/mantis_i2c.c", i32 111, i32 2}
!160 = !{ptr @mantis_i2c_write._entry_ptr.121, !159, !"_entry_ptr", i1 false, i1 false}
!161 = !{i32 1, !"wchar_size", i32 2}
!162 = !{i32 1, !"min_enum_size", i32 4}
!163 = !{i32 8, !"branch-target-enforcement", i32 0}
!164 = !{i32 8, !"sign-return-address", i32 0}
!165 = !{i32 8, !"sign-return-address-all", i32 0}
!166 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!167 = !{i32 7, !"uwtable", i32 1}
!168 = !{i32 7, !"frame-pointer", i32 2}
!169 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!170 = !{i64 472765}
!171 = !{i64 2158256269}
!172 = !{i64 2158256854}
!173 = !{i64 2158257203}
!174 = !{i64 472347}
!175 = !{i64 2158069927}
!176 = !{i64 2158070884}
!177 = !{!"branch_weights", i32 1, i32 2000}
!178 = !{i64 2158186996, i64 2158187498, i64 2158187033, i64 2158187089, i64 2158187123, i64 2158187147, i64 2158187188, i64 2158187209, i64 2158187237, i64 2158187271}
!179 = !{i64 2158188620, i64 2158189122, i64 2158188657, i64 2158188713, i64 2158188747, i64 2158188771, i64 2158188812, i64 2158188833, i64 2158188861, i64 2158188895}
!180 = !{i64 2158210266}
!181 = !{i64 2158211064}
!182 = !{i64 2158211897}
!183 = !{i64 2158086390}
!184 = !{i64 2158087006}
!185 = !{i64 2158087804}
!186 = !{i64 2158098751}
!187 = !{i64 2158109694}
!188 = !{i64 2158150422}
!189 = !{i64 2158151038}
!190 = !{i64 2158151836}
!191 = !{i64 2158162789}
