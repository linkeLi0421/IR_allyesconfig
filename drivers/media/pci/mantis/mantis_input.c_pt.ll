; ModuleID = '/llk/IR_all_yes/drivers/media/pci/mantis/mantis_input.c_pt.bc'
source_filename = "../drivers/media/pci/mantis/mantis_input.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mantis_input_init\22, \22a\22\09"
module asm "\09.weak\09__crc_mantis_input_init\09\09\09\09"
module asm "\09.long\09__crc_mantis_input_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mantis_input_init:\09\09\09\09\09"
module asm "\09.asciz \09\22mantis_input_init\22\09\09\09\09\09"
module asm "__kstrtabns_mantis_input_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mantis_input_exit\22, \22a\22\09"
module asm "\09.weak\09__crc_mantis_input_exit\09\09\09\09"
module asm "\09.long\09__crc_mantis_input_exit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mantis_input_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22mantis_input_exit\22\09\09\09\09\09"
module asm "__kstrtabns_mantis_input_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

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
%struct.hlist_node = type { ptr, ptr }
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
%struct.rc_dev = type { %struct.device, i8, [5 x ptr], ptr, ptr, %struct.input_id, ptr, ptr, %struct.rc_map, %struct.mutex, i32, ptr, ptr, i32, i8, i8, i64, i64, i64, i32, %struct.rc_scancode_filter, %struct.rc_scancode_filter, i32, i32, ptr, %struct.spinlock, i8, i32, %struct.timer_list, %struct.timer_list, i32, i32, i64, i8, i32, i32, i32, i32, i32, %struct.device, %struct.cdev, i64, i64, i8, %struct.spinlock, %struct.list_head, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.rc_map = type { ptr, i32, i32, i32, i32, ptr, %struct.spinlock }
%struct.rc_scancode_filter = type { i32, i32 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }

@mantis_input_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 36, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s (%d): Remote device allocation failed\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mantis_input_init\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/media/pci/mantis/mantis_input.c\00", [56 x i8] zeroinitializer }, align 32
@mantis_input_init._entry_ptr = internal global ptr @mantis_input_init._entry, section ".printk_index", align 4
@mantis_input_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 36, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\015%s (%d): Remote device allocation failed\0A\00", [52 x i8] zeroinitializer }, align 32
@mantis_input_init._entry_ptr.5 = internal global ptr @mantis_input_init._entry.3, section ".printk_index", align 4
@mantis_input_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 36, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016%s (%d): Remote device allocation failed\0A\00", [52 x i8] zeroinitializer }, align 32
@mantis_input_init._entry_ptr.8 = internal global ptr @mantis_input_init._entry.6, section ".printk_index", align 4
@mantis_input_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 36, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017%s (%d): Remote device allocation failed\0A\00", [52 x i8] zeroinitializer }, align 32
@mantis_input_init._entry_ptr.11 = internal global ptr @mantis_input_init._entry.9, section ".printk_index", align 4
@mantis_input_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 36, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_input_init._entry_ptr.13 = internal global ptr @mantis_input_init._entry.12, section ".printk_index", align 4
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Mantis %s IR receiver\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pci-%s/ir0\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mantis_core\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rc-empty\00", [23 x i8] zeroinitializer }, align 32
@mantis_input_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 58, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013%s (%d): IR device registration failed, ret = %d\0A\00", [44 x i8] zeroinitializer }, align 32
@mantis_input_init._entry_ptr.20 = internal global ptr @mantis_input_init._entry.18, section ".printk_index", align 4
@mantis_input_init._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 58, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\015%s (%d): IR device registration failed, ret = %d\0A\00", [44 x i8] zeroinitializer }, align 32
@mantis_input_init._entry_ptr.23 = internal global ptr @mantis_input_init._entry.21, section ".printk_index", align 4
@mantis_input_init._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.1, ptr @.str.2, i32 58, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016%s (%d): IR device registration failed, ret = %d\0A\00", [44 x i8] zeroinitializer }, align 32
@mantis_input_init._entry_ptr.26 = internal global ptr @mantis_input_init._entry.24, section ".printk_index", align 4
@mantis_input_init._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.1, ptr @.str.2, i32 58, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017%s (%d): IR device registration failed, ret = %d\0A\00", [44 x i8] zeroinitializer }, align 32
@mantis_input_init._entry_ptr.29 = internal global ptr @mantis_input_init._entry.27, section ".printk_index", align 4
@mantis_input_init._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.1, ptr @.str.2, i32 58, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_input_init._entry_ptr.31 = internal global ptr @mantis_input_init._entry.30, section ".printk_index", align 4
@__kstrtab_mantis_input_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_mantis_input_init = external dso_local constant [0 x i8], align 1
@__ksymtab_mantis_input_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mantis_input_init to i32), ptr @__kstrtab_mantis_input_init, ptr @__kstrtabns_mantis_input_init }, section "___ksymtab_gpl+mantis_input_init", align 4
@__kstrtab_mantis_input_exit = external dso_local constant [0 x i8], align 1
@__kstrtabns_mantis_input_exit = external dso_local constant [0 x i8], align 1
@__ksymtab_mantis_input_exit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mantis_input_exit to i32), ptr @__kstrtab_mantis_input_exit, ptr @__kstrtabns_mantis_input_exit }, section "___ksymtab_gpl+mantis_input_exit", align 4
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 36, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 42, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 44, i32 4 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 52, i32 28 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 53, i32 52 }
@___asan_gen_.98 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.102 = private constant [43 x i8] c"../drivers/media/pci/mantis/mantis_input.c\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 58, i32 3 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @__ksymtab_mantis_input_exit, ptr @__ksymtab_mantis_input_init, ptr @mantis_input_init._entry, ptr @mantis_input_init._entry.12, ptr @mantis_input_init._entry.18, ptr @mantis_input_init._entry.21, ptr @mantis_input_init._entry.24, ptr @mantis_input_init._entry.27, ptr @mantis_input_init._entry.3, ptr @mantis_input_init._entry.30, ptr @mantis_input_init._entry.6, ptr @mantis_input_init._entry.9, ptr @mantis_input_init._entry_ptr, ptr @mantis_input_init._entry_ptr.11, ptr @mantis_input_init._entry_ptr.13, ptr @mantis_input_init._entry_ptr.20, ptr @mantis_input_init._entry_ptr.23, ptr @mantis_input_init._entry_ptr.26, ptr @mantis_input_init._entry_ptr.29, ptr @mantis_input_init._entry_ptr.31, ptr @mantis_input_init._entry_ptr.5, ptr @mantis_input_init._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_input_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_input_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_input_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_input_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_input_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_input_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_input_init._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_input_init._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_input_init._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_input_init._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mantis_input_process(ptr nocapture noundef readonly %mantis, i32 noundef %scancode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rc = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 42
  %0 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rc, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv = sext i32 %scancode to i64
  tail call void @rc_keydown(ptr noundef nonnull %1, i32 noundef 0, i64 noundef %conv, i8 noundef zeroext 0) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_keydown(ptr noundef, i32 noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mantis_input_init(ptr noundef %mantis) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rc_allocate_device(i32 noundef 0) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body, label %if.end63

do.body:                                          ; preds = %entry
  %0 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %num = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num, align 8
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %3) #7
  br label %cleanup

if.end63:                                         ; preds = %entry
  %device_name = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 43
  %hwconfig = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 32
  %4 = ptrtoint ptr %hwconfig to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hwconfig, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call64 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %device_name, i32 noundef 80, ptr noundef nonnull @.str.14, ptr noundef %7)
  %input_phys = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 44
  %pdev = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 6
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44, i32 3
  %10 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end63.pci_name.exit_crit_edge

if.end63.pci_name.exit_crit_edge:                 ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #6
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end63.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %13, %if.end.i.i ], [ %11, %if.end63.pci_name.exit_crit_edge ]
  %call67 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %input_phys, i32 noundef 80, ptr noundef nonnull @.str.15, ptr noundef %retval.0.i.i)
  %device_name70 = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 3
  %14 = ptrtoint ptr %device_name70 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %device_name, ptr %device_name70, align 8
  %input_phys73 = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 4
  %15 = ptrtoint ptr %input_phys73 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %input_phys, ptr %input_phys73, align 4
  %input_id = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 5
  %16 = ptrtoint ptr %input_id to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %input_id, align 8
  %vendor_id = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 1
  %17 = ptrtoint ptr %vendor_id to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %vendor_id, align 4
  %vendor = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 5, i32 1
  %19 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %vendor, align 2
  %device_id = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 2
  %20 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %device_id, align 2
  %product = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 5, i32 2
  %22 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %product, align 4
  %version = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 5, i32 3
  %23 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 1, ptr %version, align 2
  %driver_name = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 6
  %24 = ptrtoint ptr %driver_name to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.16, ptr %driver_name, align 8
  %rc_map_name = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 45
  %25 = ptrtoint ptr %rc_map_name to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rc_map_name, align 4
  %tobool77.not = icmp eq ptr %26, null
  %..str.17 = select i1 %tobool77.not, ptr @.str.17, ptr %26
  %map_name = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 7
  %27 = ptrtoint ptr %map_name to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %..str.17, ptr %map_name, align 4
  %28 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdev, align 8
  %dev79 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  %parent = getelementptr inbounds %struct.device, ptr %call, i32 0, i32 1
  %30 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %dev79, ptr %parent, align 8
  %call81 = tail call i32 @rc_register_device(ptr noundef nonnull %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end156, label %do.body84

do.body84:                                        ; preds = %pci_name.exit
  %31 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp86.not = icmp eq i32 %32, 0
  br i1 %cmp86.not, label %do.body84.out_dev_crit_edge, label %do.end93

do.body84.out_dev_crit_edge:                      ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_dev

do.end93:                                         ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #6
  %num95 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %33 = ptrtoint ptr %num95 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num95, align 8
  %call96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1, i32 noundef %34, i32 noundef %call81) #7
  br label %out_dev

if.end156:                                        ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #6
  %rc = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 42
  %35 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call, ptr %rc, align 8
  br label %cleanup

out_dev:                                          ; preds = %do.end93, %do.body84.out_dev_crit_edge
  tail call void @rc_free_device(ptr noundef nonnull %call) #4
  br label %cleanup

cleanup:                                          ; preds = %out_dev, %if.end156, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end156 ], [ %call81, %out_dev ], [ -12, %do.end ], [ -12, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rc_allocate_device(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rc_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mantis_input_exit(ptr nocapture noundef readonly %mantis) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rc = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 42
  %0 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rc, align 8
  tail call void @rc_unregister_device(ptr noundef %1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !19, !21, !23, !25, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !42}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/mantis/mantis_input.c", i32 36, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @mantis_input_init._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @mantis_input_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @mantis_input_init._entry.3, !1, !"_entry", i1 false, i1 false}
!8 = !{ptr @mantis_input_init._entry_ptr.5, !1, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.7, !1, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @mantis_input_init._entry.6, !1, !"_entry", i1 false, i1 false}
!11 = !{ptr @mantis_input_init._entry_ptr.8, !1, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.10, !1, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @mantis_input_init._entry.9, !1, !"_entry", i1 false, i1 false}
!14 = !{ptr @mantis_input_init._entry_ptr.11, !1, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @mantis_input_init._entry.12, !1, !"_entry", i1 false, i1 false}
!16 = !{ptr @mantis_input_init._entry_ptr.13, !1, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.14, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/pci/mantis/mantis_input.c", i32 42, i32 4}
!19 = !{ptr @.str.15, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/pci/mantis/mantis_input.c", i32 44, i32 4}
!21 = !{ptr @.str.16, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/pci/mantis/mantis_input.c", i32 52, i32 28}
!23 = !{ptr @.str.17, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/pci/mantis/mantis_input.c", i32 53, i32 52}
!25 = !{ptr @.str.19, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/pci/mantis/mantis_input.c", i32 58, i32 3}
!27 = !{ptr @mantis_input_init._entry.18, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @mantis_input_init._entry_ptr.20, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.22, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @mantis_input_init._entry.21, !26, !"_entry", i1 false, i1 false}
!31 = !{ptr @mantis_input_init._entry_ptr.23, !26, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.25, !26, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @mantis_input_init._entry.24, !26, !"_entry", i1 false, i1 false}
!34 = !{ptr @mantis_input_init._entry_ptr.26, !26, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.28, !26, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @mantis_input_init._entry.27, !26, !"_entry", i1 false, i1 false}
!37 = !{ptr @mantis_input_init._entry_ptr.29, !26, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @mantis_input_init._entry.30, !26, !"_entry", i1 false, i1 false}
!39 = !{ptr @mantis_input_init._entry_ptr.31, !26, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @__ksymtab_mantis_input_init, !41, !"__ksymtab_mantis_input_init", i1 false, i1 false}
!41 = !{!"../drivers/media/pci/mantis/mantis_input.c", i32 70, i32 1}
!42 = !{ptr @__ksymtab_mantis_input_exit, !43, !"__ksymtab_mantis_input_exit", i1 false, i1 false}
!43 = !{!"../drivers/media/pci/mantis/mantis_input.c", i32 76, i32 1}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
