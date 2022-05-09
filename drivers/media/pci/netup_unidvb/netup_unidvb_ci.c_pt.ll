; ModuleID = '/llk/IR_all_yes/drivers/media/pci/netup_unidvb/netup_unidvb_ci.c_pt.bc'
source_filename = "../drivers/media/pci/netup_unidvb/netup_unidvb_ci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.netup_unidvb_dev = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, [2 x %struct.vb2_dvb_frontends], [2 x %struct.netup_i2c], ptr, [2 x %struct.netup_dma], [2 x %struct.netup_ci_state], ptr, i32 }
%struct.vb2_dvb_frontends = type { %struct.list_head, %struct.mutex, %struct.dvb_adapter, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.netup_i2c = type { %struct.spinlock, %struct.wait_queue_head, %struct.i2c_adapter, ptr, ptr, ptr, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.netup_dma = type { i8, %struct.spinlock, ptr, ptr, i32, ptr, i32, i64, i32, i32, i32, %struct.list_head, %struct.work_struct, %struct.timer_list }
%struct.netup_ci_state = type { %struct.dvb_ca_en50221, ptr, ptr, ptr, i32, i32 }
%struct.dvb_ca_en50221 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.103, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.103 = type { ptr }

@netup_unidvb_ci_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 192, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s(): invalid CI adapter %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"netup_unidvb_ci_register\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/media/pci/netup_unidvb/netup_unidvb_ci.c\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@netup_unidvb_ci_register._entry_ptr = internal global ptr @netup_unidvb_ci_register._entry, section ".printk_index", align 4
@netup_unidvb_ci_register._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 217, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s(): dvb_ca_en50221_init result %d\0A\00", [59 x i8] zeroinitializer }, align 32
@netup_unidvb_ci_register._entry_ptr.7 = internal global ptr @netup_unidvb_ci_register._entry.5, section ".printk_index", align 4
@netup_unidvb_ci_register._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 222, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s(): CI adapter %d init done\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@netup_unidvb_ci_register._entry_ptr.11 = internal global ptr @netup_unidvb_ci_register._entry.8, section ".printk_index", align 4
@netup_unidvb_ci_unregister.__UNIQUE_ID_ddebug396 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 57, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"netup_unidvb\00", [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"netup_unidvb_ci_unregister\00", [37 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s()\0A\00", [26 x i8] zeroinitializer }, align 32
@netup_unidvb_ci_unregister._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.13, ptr @.str.2, i32 233, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@netup_unidvb_ci_unregister._entry_ptr = internal global ptr @netup_unidvb_ci_unregister._entry, section ".printk_index", align 4
@netup_unidvb_ci_read_attribute_mem.__UNIQUE_ID_ddebug392 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 36, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"netup_unidvb_ci_read_attribute_mem\00", [61 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s(): addr=0x%x val=0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@netup_unidvb_ci_write_attribute_mem.__UNIQUE_ID_ddebug393 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 38, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"netup_unidvb_ci_write_attribute_mem\00", [60 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s(): addr=0x%x data=0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@netup_unidvb_ci_read_cam_ctl.__UNIQUE_ID_ddebug394 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.19, ptr @.str.2, ptr @.str.16, i8 0, i8 42, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"netup_unidvb_ci_read_cam_ctl\00", [35 x i8] zeroinitializer }, align 32
@netup_unidvb_ci_write_cam_ctl.__UNIQUE_ID_ddebug395 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.20, ptr @.str.2, ptr @.str.18, i8 0, i8 44, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"netup_unidvb_ci_write_cam_ctl\00", [34 x i8] zeroinitializer }, align 32
@netup_unidvb_ci_slot_reset.__UNIQUE_ID_ddebug388 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 0, i8 22, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"netup_unidvb_ci_slot_reset\00", [37 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s(): CAM_CTRLSTAT_READ_SET=0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@netup_unidvb_ci_slot_reset.__UNIQUE_ID_ddebug389 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.21, ptr @.str.2, ptr @.str.23, i8 0, i8 24, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s(): waiting for reset\0A\00", [39 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@netup_unidvb_ci_slot_reset.__UNIQUE_ID_ddebug390 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.21, ptr @.str.2, ptr @.str.24, i8 0, i8 26, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s(): CAMP reset timeout! Will try again..\0A\00", [52 x i8] zeroinitializer }, align 32
@netup_unidvb_ci_slot_shutdown.__UNIQUE_ID_ddebug387 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.25, ptr @.str.2, ptr @.str.14, i8 0, i8 19, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"netup_unidvb_ci_slot_shutdown\00", [34 x i8] zeroinitializer }, align 32
@netup_unidvb_ci_slot_ts_ctl.__UNIQUE_ID_ddebug385 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.26, ptr @.str.2, ptr @.str.27, i8 0, i8 15, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"netup_unidvb_ci_slot_ts_ctl\00", [36 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s(): CAM_CTRLSTAT=0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@netup_unidvb_ci_slot_ts_ctl.__UNIQUE_ID_ddebug386 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.26, ptr @.str.2, ptr @.str.28, i8 0, i8 16, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s(): CAM_CTRLSTAT=0x%x done\0A\00", [34 x i8] zeroinitializer }, align 32
@netup_unidvb_poll_ci_slot_status.__UNIQUE_ID_ddebug391 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.29, ptr @.str.2, ptr @.str.22, i8 0, i8 30, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"netup_unidvb_poll_ci_slot_status\00", [63 x i8] zeroinitializer }, align 32
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 191, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 215, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 221, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 230, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 232, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 143, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 154, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 167, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 178, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 90, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 96, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 105, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 76, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 59, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 65, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.118 = private constant [52 x i8] c"../drivers/media/pci/netup_unidvb/netup_unidvb_ci.c\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 122, i32 2 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @netup_unidvb_ci_register._entry, ptr @netup_unidvb_ci_register._entry.5, ptr @netup_unidvb_ci_register._entry.8, ptr @netup_unidvb_ci_register._entry_ptr, ptr @netup_unidvb_ci_register._entry_ptr.11, ptr @netup_unidvb_ci_register._entry_ptr.7, ptr @netup_unidvb_ci_unregister._entry, ptr @netup_unidvb_ci_unregister._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_unidvb_ci_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_unidvb_ci_register._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_unidvb_ci_register._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_unidvb_ci_unregister._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netup_ci_interrupt(ptr nocapture noundef readonly %ndev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !71
  tail call void @arm_heavy_mb() #4
  %bmmio0 = getelementptr inbounds %struct.netup_unidvb_dev, ptr %ndev, i32 0, i32 7
  %0 = ptrtoint ptr %bmmio0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bmmio0, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 18818
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 257) #4, !srcloc !72
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netup_unidvb_ci_register(ptr noundef %dev, i32 noundef %num, ptr noundef %pci_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num)
  %0 = icmp ugt i32 %num, 1
  br i1 %0, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %num) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.netup_unidvb_dev, ptr %dev, i32 0, i32 17, i32 %num
  %nr = getelementptr %struct.netup_unidvb_dev, ptr %dev, i32 0, i32 17, i32 %num, i32 5
  %1 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %num, ptr %nr, align 4
  %bmmio1 = getelementptr inbounds %struct.netup_unidvb_dev, ptr %dev, i32 0, i32 9
  %2 = ptrtoint ptr %bmmio1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bmmio1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp3 = icmp eq i32 %num, 0
  %cond = select i1 %cmp3, i32 0, i32 131072
  %add.ptr = getelementptr i8, ptr %3, i32 %cond
  %membase8_config = getelementptr %struct.netup_unidvb_dev, ptr %dev, i32 0, i32 17, i32 %num, i32 1
  %4 = ptrtoint ptr %membase8_config to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr, ptr %membase8_config, align 4
  %5 = ptrtoint ptr %bmmio1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bmmio1, align 4
  %cond6 = select i1 %cmp3, i32 32768, i32 163840
  %add.ptr7 = getelementptr i8, ptr %6, i32 %cond6
  %membase8_io = getelementptr %struct.netup_unidvb_dev, ptr %dev, i32 0, i32 17, i32 %num, i32 2
  %7 = ptrtoint ptr %membase8_io to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr7, ptr %membase8_io, align 4
  %dev8 = getelementptr %struct.netup_unidvb_dev, ptr %dev, i32 0, i32 17, i32 %num, i32 3
  %8 = ptrtoint ptr %dev8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %dev8, align 4
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %arrayidx, align 4
  %read_attribute_mem = getelementptr inbounds %struct.dvb_ca_en50221, ptr %arrayidx, i32 0, i32 1
  %10 = ptrtoint ptr %read_attribute_mem to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @netup_unidvb_ci_read_attribute_mem, ptr %read_attribute_mem, align 4
  %write_attribute_mem = getelementptr inbounds %struct.dvb_ca_en50221, ptr %arrayidx, i32 0, i32 2
  %11 = ptrtoint ptr %write_attribute_mem to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @netup_unidvb_ci_write_attribute_mem, ptr %write_attribute_mem, align 4
  %read_cam_control = getelementptr inbounds %struct.dvb_ca_en50221, ptr %arrayidx, i32 0, i32 3
  %12 = ptrtoint ptr %read_cam_control to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @netup_unidvb_ci_read_cam_ctl, ptr %read_cam_control, align 4
  %write_cam_control = getelementptr inbounds %struct.dvb_ca_en50221, ptr %arrayidx, i32 0, i32 4
  %13 = ptrtoint ptr %write_cam_control to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @netup_unidvb_ci_write_cam_ctl, ptr %write_cam_control, align 4
  %slot_reset = getelementptr inbounds %struct.dvb_ca_en50221, ptr %arrayidx, i32 0, i32 7
  %14 = ptrtoint ptr %slot_reset to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @netup_unidvb_ci_slot_reset, ptr %slot_reset, align 4
  %slot_shutdown = getelementptr inbounds %struct.dvb_ca_en50221, ptr %arrayidx, i32 0, i32 8
  %15 = ptrtoint ptr %slot_shutdown to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @netup_unidvb_ci_slot_shutdown, ptr %slot_shutdown, align 4
  %slot_ts_enable = getelementptr inbounds %struct.dvb_ca_en50221, ptr %arrayidx, i32 0, i32 9
  %16 = ptrtoint ptr %slot_ts_enable to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @netup_unidvb_ci_slot_ts_ctl, ptr %slot_ts_enable, align 4
  %poll_slot_status = getelementptr inbounds %struct.dvb_ca_en50221, ptr %arrayidx, i32 0, i32 10
  %17 = ptrtoint ptr %poll_slot_status to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @netup_unidvb_poll_ci_slot_status, ptr %poll_slot_status, align 4
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %arrayidx, i32 0, i32 11
  %18 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %arrayidx, ptr %data, align 4
  %adapter = getelementptr %struct.netup_unidvb_dev, ptr %dev, i32 0, i32 13, i32 %num, i32 2
  %call = tail call i32 @dvb_ca_en50221_init(ptr noundef %adapter, ptr noundef %arrayidx, i32 noundef 0, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp20 = icmp slt i32 %call, 0
  br i1 %cmp20, label %do.end24, label %do.body27

do.end24:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %dev25 = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev25, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef %call) #7
  br label %cleanup

do.body27:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !73
  tail call void @arm_heavy_mb() #4
  %bmmio0 = getelementptr inbounds %struct.netup_unidvb_dev, ptr %dev, i32 0, i32 7
  %19 = ptrtoint ptr %bmmio0 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bmmio0, align 4
  %add.ptr30 = getelementptr i8, ptr %20, i32 18580
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr30, i16 4) #4, !srcloc !72
  %dev34 = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev34, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef %num) #7
  br label %cleanup

cleanup:                                          ; preds = %do.body27, %do.end24, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call, %do.end24 ], [ 0, %do.body27 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netup_unidvb_ci_read_attribute_mem(ptr nocapture noundef readonly %en50221, i32 noundef %slot, i32 noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %en50221, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %dev1 = getelementptr inbounds %struct.netup_ci_state, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %membase8_config = getelementptr inbounds %struct.netup_ci_state, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %membase8_config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase8_config, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %addr
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %add.ptr, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netup_unidvb_ci_read_attribute_mem.__UNIQUE_ID_ddebug392, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@netup_unidvb_ci_read_attribute_mem, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !74

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 8
  %dev4 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %conv = zext i8 %7 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @netup_unidvb_ci_read_attribute_mem.__UNIQUE_ID_ddebug392, ptr noundef %dev4, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15, i32 noundef %addr, i32 noundef %conv) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %conv5 = zext i8 %7 to i32
  ret i32 %conv5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netup_unidvb_ci_write_attribute_mem(ptr nocapture noundef readonly %en50221, i32 noundef %slot, i32 noundef %addr, i8 noundef zeroext %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %en50221, i32 0, i32 11
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  %dev2 = getelementptr inbounds %struct.netup_ci_state, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netup_unidvb_ci_write_attribute_mem.__UNIQUE_ID_ddebug393, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@netup_unidvb_ci_write_attribute_mem, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !74

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %conv = zext i8 %data to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @netup_unidvb_ci_write_attribute_mem.__UNIQUE_ID_ddebug393, ptr noundef %dev5, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.17, i32 noundef %addr, i32 noundef %conv) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %membase8_config = getelementptr inbounds %struct.netup_ci_state, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %membase8_config to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase8_config, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %addr
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %data, ptr %add.ptr, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netup_unidvb_ci_read_cam_ctl(ptr nocapture noundef readonly %en50221, i32 noundef %slot, i8 noundef zeroext %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %en50221, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %dev1 = getelementptr inbounds %struct.netup_ci_state, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %membase8_io = getelementptr inbounds %struct.netup_ci_state, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %membase8_io to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase8_io, align 4
  %conv = zext i8 %addr to i32
  %add.ptr = getelementptr i8, ptr %5, i32 %conv
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %add.ptr, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netup_unidvb_ci_read_cam_ctl.__UNIQUE_ID_ddebug394, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@netup_unidvb_ci_read_cam_ctl, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !74

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 8
  %dev4 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %conv6 = zext i8 %7 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @netup_unidvb_ci_read_cam_ctl.__UNIQUE_ID_ddebug394, ptr noundef %dev4, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.19, i32 noundef %conv, i32 noundef %conv6) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %conv7 = zext i8 %7 to i32
  ret i32 %conv7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netup_unidvb_ci_write_cam_ctl(ptr nocapture noundef readonly %en50221, i32 noundef %slot, i8 noundef zeroext %addr, i8 noundef zeroext %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %en50221, i32 0, i32 11
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  %dev2 = getelementptr inbounds %struct.netup_ci_state, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netup_unidvb_ci_write_cam_ctl.__UNIQUE_ID_ddebug395, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@netup_unidvb_ci_write_cam_ctl, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !74

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %conv = zext i8 %addr to i32
  %conv6 = zext i8 %data to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @netup_unidvb_ci_write_cam_ctl.__UNIQUE_ID_ddebug395, ptr noundef %dev5, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.20, i32 noundef %conv, i32 noundef %conv6) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %membase8_io = getelementptr inbounds %struct.netup_ci_state, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %membase8_io to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase8_io, align 4
  %conv7 = zext i8 %addr to i32
  %add.ptr = getelementptr i8, ptr %7, i32 %conv7
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %data, ptr %add.ptr, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netup_unidvb_ci_slot_reset(ptr nocapture noundef readonly %en50221, i32 noundef %slot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %en50221, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %dev1 = getelementptr inbounds %struct.netup_ci_state, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %nr = getelementptr inbounds %struct.netup_ci_state, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netup_unidvb_ci_slot_reset.__UNIQUE_ID_ddebug388, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@netup_unidvb_ci_slot_reset, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !74

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  %dev4 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %bmmio0 = getelementptr inbounds %struct.netup_unidvb_dev, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %bmmio0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bmmio0, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 18816
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #4, !srcloc !75
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !76
  %conv8 = zext i16 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @netup_unidvb_ci_slot_reset.__UNIQUE_ID_ddebug388, ptr noundef %dev4, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.21, i32 noundef %conv8) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %conv13 = select i1 %cmp, i32 8, i32 0
  %shl = shl nuw nsw i32 4, %conv13
  %conv14 = trunc i32 %shl to i16
  %12 = tail call i16 @llvm.bswap.i16(i16 %conv14)
  %bmmio015 = getelementptr inbounds %struct.netup_unidvb_dev, ptr %3, i32 0, i32 7
  %shl46 = shl nuw nsw i32 16, %conv13
  br label %reset

reset:                                            ; preds = %do.end75, %do.end
  %reset_counter.0 = phi i32 [ 3, %do.end ], [ %dec, %do.end75 ]
  %ci_stat.0 = phi i16 [ 0, %do.end ], [ %ci_stat.2, %do.end75 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !77
  tail call void @arm_heavy_mb() #4
  %14 = ptrtoint ptr %bmmio015 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bmmio015, align 4
  %add.ptr16 = getelementptr i8, ptr %15, i32 18816
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr16, i16 %12) #4, !srcloc !72
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netup_unidvb_ci_slot_reset.__UNIQUE_ID_ddebug389, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@netup_unidvb_ci_slot_reset, %if.then29)) #4
          to label %do.end34 [label %if.then29], !srcloc !74

if.then29:                                        ; preds = %reset
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 8
  %dev31 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @netup_unidvb_ci_slot_reset.__UNIQUE_ID_ddebug389, ptr noundef %dev31, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.21) #4
  br label %do.end34

do.end34:                                         ; preds = %if.then29, %reset
  %add.neg = sub i32 -500, %13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %sub96 = add i32 %add.neg, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub96)
  %cmp3597 = icmp slt i32 %sub96, 0
  br i1 %cmp3597, label %do.end34.while.body_crit_edge, label %do.end34.while.end_crit_edge

do.end34.while.body_crit_edge:                    ; preds = %do.end34
  br label %while.body

do.end34.while.end_crit_edge:                     ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #6
  %.pre = zext i16 %ci_stat.0 to i32
  br label %while.end

while.body:                                       ; preds = %if.end49.while.body_crit_edge, %do.end34.while.body_crit_edge
  %19 = ptrtoint ptr %bmmio015 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bmmio015, align 4
  %add.ptr40 = getelementptr i8, ptr %20, i32 18816
  %21 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr40) #4, !srcloc !75
  %22 = tail call i16 @llvm.bswap.i16(i16 %21)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !78
  %conv44 = zext i16 %22 to i32
  %and = and i32 %shl46, %conv44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool47.not = icmp eq i32 %and, 0
  br i1 %tobool47.not, label %if.end49, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.end49:                                         ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %24
  %cmp35 = icmp slt i32 %sub, 0
  br i1 %cmp35, label %if.end49.while.body_crit_edge, label %if.end49.while.end_crit_edge

if.end49.while.end_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.end49.while.body_crit_edge:                    ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.end:                                        ; preds = %if.end49.while.end_crit_edge, %while.body.while.end_crit_edge, %do.end34.while.end_crit_edge
  %conv50.pre-phi = phi i32 [ %.pre, %do.end34.while.end_crit_edge ], [ %conv44, %while.body.while.end_crit_edge ], [ %conv44, %if.end49.while.end_crit_edge ]
  %ci_stat.2 = phi i16 [ %ci_stat.0, %do.end34.while.end_crit_edge ], [ %22, %while.body.while.end_crit_edge ], [ %22, %if.end49.while.end_crit_edge ]
  %and53 = and i32 %shl46, %conv50.pre-phi
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reset_counter.0)
  %cmp55 = icmp ne i32 %reset_counter.0, 0
  %or.cond = select i1 %tobool54.not, i1 %cmp55, i1 false
  br i1 %or.cond, label %do.body58, label %if.end76

do.body58:                                        ; preds = %while.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netup_unidvb_ci_slot_reset.__UNIQUE_ID_ddebug390, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@netup_unidvb_ci_slot_reset, %if.then70)) #4
          to label %do.end75 [label %if.then70], !srcloc !74

if.then70:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #6
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %3, align 8
  %dev72 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @netup_unidvb_ci_slot_reset.__UNIQUE_ID_ddebug390, ptr noundef %dev72, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.21) #4
  br label %do.end75

do.end75:                                         ; preds = %if.then70, %do.body58
  %dec = add nsw i32 %reset_counter.0, -1
  br label %reset

if.end76:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netup_unidvb_ci_slot_shutdown(ptr nocapture noundef readonly %en50221, i32 noundef %slot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %en50221, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %dev1 = getelementptr inbounds %struct.netup_ci_state, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netup_unidvb_ci_slot_shutdown.__UNIQUE_ID_ddebug387, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@netup_unidvb_ci_slot_shutdown, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !74

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %dev4 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @netup_unidvb_ci_slot_shutdown.__UNIQUE_ID_ddebug387, ptr noundef %dev4, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.25) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netup_unidvb_ci_slot_ts_ctl(ptr nocapture noundef readonly %en50221, i32 noundef %slot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %en50221, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %dev1 = getelementptr inbounds %struct.netup_ci_state, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %nr = getelementptr inbounds %struct.netup_ci_state, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netup_unidvb_ci_slot_ts_ctl.__UNIQUE_ID_ddebug385, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@netup_unidvb_ci_slot_ts_ctl, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !74

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  %dev4 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %bmmio0 = getelementptr inbounds %struct.netup_unidvb_dev, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %bmmio0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bmmio0, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 18816
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #4, !srcloc !75
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !79
  %conv8 = zext i16 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @netup_unidvb_ci_slot_ts_ctl.__UNIQUE_ID_ddebug385, ptr noundef %dev4, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.26, i32 noundef %conv8) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot)
  %cmp9.not = icmp eq i32 %slot, 0
  br i1 %cmp9.not, label %do.body13, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body13:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !80
  tail call void @arm_heavy_mb() #4
  %conv17 = select i1 %cmp, i16 2048, i16 8
  %12 = tail call i16 @llvm.bswap.i16(i16 %conv17)
  %bmmio018 = getelementptr inbounds %struct.netup_unidvb_dev, ptr %3, i32 0, i32 7
  %13 = ptrtoint ptr %bmmio018 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bmmio018, align 4
  %add.ptr19 = getelementptr i8, ptr %14, i32 18818
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr19, i16 %12) #4, !srcloc !72
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netup_unidvb_ci_slot_ts_ctl.__UNIQUE_ID_ddebug386, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@netup_unidvb_ci_slot_ts_ctl, %if.then32)) #4
          to label %cleanup [label %if.then32], !srcloc !74

if.then32:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 8
  %dev34 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %17 = ptrtoint ptr %bmmio018 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bmmio018, align 4
  %add.ptr38 = getelementptr i8, ptr %18, i32 18816
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr38) #4, !srcloc !75
  %20 = tail call i16 @llvm.bswap.i16(i16 %19)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !81
  %conv42 = zext i16 %20 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @netup_unidvb_ci_slot_ts_ctl.__UNIQUE_ID_ddebug386, ptr noundef %dev34, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.26, i32 noundef %conv42) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %do.body13, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end.cleanup_crit_edge ], [ 0, %if.then32 ], [ 0, %do.body13 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netup_unidvb_poll_ci_slot_status(ptr nocapture noundef readonly %en50221, i32 noundef %slot, i32 noundef %open) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %en50221, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %dev1 = getelementptr inbounds %struct.netup_ci_state, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %nr = getelementptr inbounds %struct.netup_ci_state, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netup_unidvb_poll_ci_slot_status.__UNIQUE_ID_ddebug391, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@netup_unidvb_poll_ci_slot_status, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !74

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  %dev4 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %bmmio0 = getelementptr inbounds %struct.netup_unidvb_dev, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %bmmio0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bmmio0, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 18816
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #4, !srcloc !75
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !82
  %conv8 = zext i16 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @netup_unidvb_poll_ci_slot_status.__UNIQUE_ID_ddebug391, ptr noundef %dev4, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.29, i32 noundef %conv8) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %bmmio011 = getelementptr inbounds %struct.netup_unidvb_dev, ptr %3, i32 0, i32 7
  %12 = ptrtoint ptr %bmmio011 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bmmio011, align 4
  %add.ptr12 = getelementptr i8, ptr %13, i32 18816
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr12) #4, !srcloc !75
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !83
  %conv16 = zext i16 %15 to i32
  %conv17 = select i1 %cmp, i32 8, i32 0
  %shl = shl nuw nsw i32 16, %conv17
  %and = and i32 %shl, %conv16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %status = getelementptr inbounds %struct.netup_ci_state, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 5, ptr %status, align 4
  br label %if.end30

if.else:                                          ; preds = %do.end
  %shl22 = shl nuw nsw i32 2, %conv17
  %and23 = and i32 %shl22, %conv16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  %status28 = getelementptr inbounds %struct.netup_ci_state, ptr %1, i32 0, i32 4
  br i1 %tobool24.not, label %if.else27, label %if.then25

if.then25:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %status28 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %status28, align 4
  br label %if.end30

if.else27:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %status28 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %status28, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.else27, %if.then25, %if.then19
  %status31 = getelementptr inbounds %struct.netup_ci_state, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %status31 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %status31, align 4
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_ca_en50221_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @netup_unidvb_ci_unregister(ptr noundef %dev, i32 noundef %num) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netup_unidvb_ci_unregister.__UNIQUE_ID_ddebug396, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@netup_unidvb_ci_unregister, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !74

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @netup_unidvb_ci_unregister.__UNIQUE_ID_ddebug396, ptr noundef %dev3, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.13) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num)
  %2 = icmp ugt i32 %num, 1
  br i1 %2, label %do.end8, label %if.end11

do.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  %dev10 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str, ptr noundef nonnull @.str.13, i32 noundef %num) #7
  br label %cleanup

if.end11:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx = getelementptr %struct.netup_unidvb_dev, ptr %dev, i32 0, i32 17, i32 %num
  tail call void @dvb_ca_en50221_release(ptr noundef %arrayidx) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_ca_en50221_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !22, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !38, !39, !41, !42, !43, !45, !46, !48, !49, !51, !52, !54, !55, !56, !58, !59, !61}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_ci.c", i32 191, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @netup_unidvb_ci_register._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @netup_unidvb_ci_register._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_ci.c", i32 215, i32 3}
!10 = !{ptr @netup_unidvb_ci_register._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @netup_unidvb_ci_register._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_ci.c", i32 221, i32 2}
!14 = !{ptr @.str.10, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @netup_unidvb_ci_register._entry.8, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @netup_unidvb_ci_register._entry_ptr.11, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.12, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_ci.c", i32 230, i32 2}
!19 = !{ptr @.str.13, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.14, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @netup_unidvb_ci_unregister.__UNIQUE_ID_ddebug396, !18, !"__UNIQUE_ID_ddebug396", i1 false, i1 false}
!22 = !{ptr @netup_unidvb_ci_unregister._entry, !23, !"_entry", i1 false, i1 false}
!23 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_ci.c", i32 232, i32 3}
!24 = !{ptr @netup_unidvb_ci_unregister._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_ci.c", i32 143, i32 2}
!27 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @netup_unidvb_ci_read_attribute_mem.__UNIQUE_ID_ddebug392, !26, !"__UNIQUE_ID_ddebug392", i1 false, i1 false}
!29 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_ci.c", i32 154, i32 2}
!31 = !{ptr @.str.18, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @netup_unidvb_ci_write_attribute_mem.__UNIQUE_ID_ddebug393, !30, !"__UNIQUE_ID_ddebug393", i1 false, i1 false}
!33 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_ci.c", i32 167, i32 2}
!35 = !{ptr @netup_unidvb_ci_read_cam_ctl.__UNIQUE_ID_ddebug394, !34, !"__UNIQUE_ID_ddebug394", i1 false, i1 false}
!36 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_ci.c", i32 178, i32 2}
!38 = !{ptr @netup_unidvb_ci_write_cam_ctl.__UNIQUE_ID_ddebug395, !37, !"__UNIQUE_ID_ddebug395", i1 false, i1 false}
!39 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_ci.c", i32 90, i32 2}
!41 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @netup_unidvb_ci_slot_reset.__UNIQUE_ID_ddebug388, !40, !"__UNIQUE_ID_ddebug388", i1 false, i1 false}
!43 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_ci.c", i32 96, i32 2}
!45 = !{ptr @netup_unidvb_ci_slot_reset.__UNIQUE_ID_ddebug389, !44, !"__UNIQUE_ID_ddebug389", i1 false, i1 false}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_ci.c", i32 105, i32 3}
!48 = !{ptr @netup_unidvb_ci_slot_reset.__UNIQUE_ID_ddebug390, !47, !"__UNIQUE_ID_ddebug390", i1 false, i1 false}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_ci.c", i32 76, i32 2}
!51 = !{ptr @netup_unidvb_ci_slot_shutdown.__UNIQUE_ID_ddebug387, !50, !"__UNIQUE_ID_ddebug387", i1 false, i1 false}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_ci.c", i32 59, i32 2}
!54 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @netup_unidvb_ci_slot_ts_ctl.__UNIQUE_ID_ddebug385, !53, !"__UNIQUE_ID_ddebug385", i1 false, i1 false}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_ci.c", i32 65, i32 2}
!58 = !{ptr @netup_unidvb_ci_slot_ts_ctl.__UNIQUE_ID_ddebug386, !57, !"__UNIQUE_ID_ddebug386", i1 false, i1 false}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_ci.c", i32 122, i32 2}
!61 = !{ptr @netup_unidvb_poll_ci_slot_status.__UNIQUE_ID_ddebug391, !60, !"__UNIQUE_ID_ddebug391", i1 false, i1 false}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!71 = !{i64 2158310322}
!72 = !{i64 5025425}
!73 = !{i64 2158346300}
!74 = !{i64 2148958600, i64 2148958605, i64 2148958618, i64 2148958662, i64 2148958696, i64 2148958717}
!75 = !{i64 5025625}
!76 = !{i64 2158322409}
!77 = !{i64 2158322652}
!78 = !{i64 2158326109}
!79 = !{i64 2158313550}
!80 = !{i64 2158313796}
!81 = !{i64 2158317096}
!82 = !{i64 2158332334}
!83 = !{i64 2158332839}
