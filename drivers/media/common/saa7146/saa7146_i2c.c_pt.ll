; ModuleID = '/llk/IR_all_yes/drivers/media/common/saa7146/saa7146_i2c.c_pt.bc'
source_filename = "../drivers/media/common/saa7146/saa7146_i2c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.saa7146_dev = type { ptr, %struct.v4l2_device, %struct.v4l2_ctrl_handler, %struct.spinlock, %struct.mutex, ptr, i32, [32 x i8], ptr, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i32, %struct.saa7146_dma, %struct.wait_queue_head, i32, %struct.saa7146_dma, %struct.saa7146_dma }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.saa7146_dma = type { i32, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.111, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.111 = type { ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.saa7146_extension = type { [32 x i8], i32, ptr, %struct.pci_driver, ptr, ptr, ptr, ptr, i32, ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@saa7146_debug = external dso_local local_unnamed_addr global i32, align 4
@saa7146_i2c_adapter_prepare.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 100, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"saa7146\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"saa7146_i2c_adapter_prepare\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/media/common/saa7146/saa7146_i2c.c\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s(): bitrate: 0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"saa7146: %s(): bitrate: 0x%08x\0A\00", [32 x i8] zeroinitializer }, align 32
@saa7146_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @saa7146_i2c_xfer, ptr null, ptr null, ptr null, ptr @saa7146_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@saa7146_i2c_reset.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 31, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"saa7146_i2c_reset\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s(): busy_state detected\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"saa7146: %s(): busy_state detected\0A\00", [60 x i8] zeroinitializer }, align 32
@saa7146_i2c_reset.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.8, i8 0, i8 35, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s(): error_state detected. status:0x%08x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"saa7146: %s(): error_state detected. status:0x%08x\0A\00", [44 x i8] zeroinitializer }, align 32
@saa7146_i2c_reset.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.10, i8 0, i8 41, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s(): fatal error. status:0x%08x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"saa7146: %s(): fatal error. status:0x%08x\0A\00", [53 x i8] zeroinitializer }, align 32
@saa7146_i2c_transfer.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 75, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"saa7146_i2c_transfer\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s(): msg:%d/%d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"saa7146: %s(): msg:%d/%d\0A\00", [38 x i8] zeroinitializer }, align 32
@saa7146_i2c_transfer.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.15, i8 0, i8 79, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s(): could not reset i2c-device\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"saa7146: %s(): could not reset i2c-device\0A\00", [53 x i8] zeroinitializer }, align 32
@saa7146_i2c_transfer.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.17, i8 0, i8 84, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s(): error while sending message(s). starting again\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"saa7146: %s(): error while sending message(s). starting again\0A\00", [33 x i8] zeroinitializer }, align 32
@saa7146_i2c_transfer.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.21, i8 0, i8 91, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s(): transmission successful. (msg:%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"saa7146: %s(): transmission successful. (msg:%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@saa7146_i2c_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.12, ptr @.str.2, i32 373, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016saa7146: revision 0 error. this should never happen\0A\00", [41 x i8] zeroinitializer }, align 32
@saa7146_i2c_transfer._entry_ptr = internal global ptr @saa7146_i2c_transfer._entry, section ".printk_index", align 4
@saa7146_i2c_writeout.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 0, i8 46, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"saa7146_i2c_writeout\00", [43 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s(): before: 0x%08x (status: 0x%08x), %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"saa7146: %s(): before: 0x%08x (status: 0x%08x), %d\0A\00", [44 x i8] zeroinitializer }, align 32
@saa7146_i2c_writeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.24, ptr @.str.2, i32 206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014saa7146: %s %s [irq]: timed out waiting for end of xfer\0A\00", [37 x i8] zeroinitializer }, align 32
@saa7146_i2c_writeout._entry_ptr = internal global ptr @saa7146_i2c_writeout._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@saa7146_i2c_writeout._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.24, ptr @.str.2, i32 224, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014saa7146: %s %s: timed out waiting for MC2\0A\00", [51 x i8] zeroinitializer }, align 32
@saa7146_i2c_writeout._entry_ptr.30 = internal global ptr @saa7146_i2c_writeout._entry.28, section ".printk_index", align 4
@saa7146_i2c_writeout._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.24, ptr @.str.2, i32 241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\014saa7146: %s %s [poll]: timed out waiting for end of xfer\0A\00", [36 x i8] zeroinitializer }, align 32
@saa7146_i2c_writeout._entry_ptr.33 = internal global ptr @saa7146_i2c_writeout._entry.31, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@saa7146_i2c_writeout.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.34, i8 0, i8 65, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s(): unexpected i2c status %04x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"saa7146: %s(): unexpected i2c status %04x\0A\00", [53 x i8] zeroinitializer }, align 32
@saa7146_i2c_writeout.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.36, i8 0, i8 65, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s(): error due to invalid start/stop condition\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"saa7146: %s(): error due to invalid start/stop condition\0A\00", [38 x i8] zeroinitializer }, align 32
@saa7146_i2c_writeout.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.38, i8 0, i8 66, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s(): error in data transmission\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"saa7146: %s(): error in data transmission\0A\00", [53 x i8] zeroinitializer }, align 32
@saa7146_i2c_writeout.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.40, i8 0, i8 67, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s(): error when receiving data\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"saa7146: %s(): error when receiving data\0A\00", [54 x i8] zeroinitializer }, align 32
@saa7146_i2c_writeout.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.42, i8 0, i8 68, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s(): error because arbitration lost\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"saa7146: %s(): error because arbitration lost\0A\00", [49 x i8] zeroinitializer }, align 32
@saa7146_i2c_writeout.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.44, i8 0, i8 69, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s(): error in address phase\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"saa7146: %s(): error in address phase\0A\00", [57 x i8] zeroinitializer }, align 32
@saa7146_i2c_writeout.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.46, i8 0, i8 71, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s(): after: 0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"saa7146: %s(): after: 0x%08x\0A\00", [34 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967175]
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 403, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant [13 x i8] c"saa7146_algo\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 396, i32 35 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 125, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 143, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 166, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 302, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 319, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 339, i32 5 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 365, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 373, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 183, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 205, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 223, i32 5 }
@___asan_gen_.141 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 240, i32 5 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 260, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 263, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 266, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 269, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 272, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 277, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.187 = private constant [46 x i8] c"../drivers/media/common/saa7146/saa7146_i2c.c\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 287, i32 2 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @saa7146_i2c_transfer._entry, ptr @saa7146_i2c_transfer._entry_ptr, ptr @saa7146_i2c_writeout._entry, ptr @saa7146_i2c_writeout._entry.28, ptr @saa7146_i2c_writeout._entry.31, ptr @saa7146_i2c_writeout._entry_ptr, ptr @saa7146_i2c_writeout._entry_ptr.30, ptr @saa7146_i2c_writeout._entry_ptr.33, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @saa7146_algo, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7146_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7146_i2c_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7146_i2c_writeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7146_i2c_writeout._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7146_i2c_writeout._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7146_i2c_adapter_prepare(ptr noundef %dev, ptr noundef writeonly %i2c_adapter, i32 noundef %bitrate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %0 = load i32, ptr @saa7146_debug, align 4
  %and = and i32 %0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body8_crit_edge, label %do.body1

entry.do.body8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body8

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @saa7146_i2c_adapter_prepare.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@saa7146_i2c_adapter_prepare, %if.then5)) #7
          to label %do.body8 [label %if.then5], !srcloc !101

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @saa7146_i2c_adapter_prepare.__UNIQUE_ID_ddebug312, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %bitrate) #7
  br label %do.body8

do.body8:                                         ; preds = %if.then5, %do.body1, %entry.do.body8_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %mem = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 5
  %1 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mem, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 65537) #7, !srcloc !103
  %i2c_bitrate = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 17
  %3 = ptrtoint ptr %i2c_bitrate to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %bitrate, ptr %i2c_bitrate, align 4
  %call10 = tail call fastcc i32 @saa7146_i2c_reset(ptr noundef %dev)
  %tobool11.not = icmp eq ptr %i2c_adapter, null
  br i1 %tobool11.not, label %do.body8.if.end15_crit_edge, label %if.then12

do.body8.if.end15_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then12:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #9
  %v4l2_dev = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 1
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adapter, i32 0, i32 9, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %v4l2_dev, ptr %driver_data.i.i, align 4
  %pci = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 8
  %5 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pci, align 4
  %dev13 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %parent = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adapter, i32 0, i32 9, i32 1
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev13, ptr %parent, align 8
  %algo = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adapter, i32 0, i32 2
  %8 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @saa7146_algo, ptr %algo, align 8
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adapter, i32 0, i32 3
  %9 = ptrtoint ptr %algo_data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %algo_data, align 4
  %timeout = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adapter, i32 0, i32 7
  %10 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 100, ptr %timeout, align 4
  %retries = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adapter, i32 0, i32 8
  %11 = ptrtoint ptr %retries to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3, ptr %retries, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %do.body8.if.end15_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @saa7146_i2c_reset(ptr nocapture noundef readonly %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mem.i = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 144
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !106
  tail call void @arm_heavy_mb() #7
  %i2c_bitrate = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 17
  %3 = ptrtoint ptr %i2c_bitrate to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %i2c_bitrate, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mem.i, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %5) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !107
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mem.i, align 4
  %add.ptr5 = getelementptr i8, ptr %9, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 0) #7, !srcloc !103
  %10 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not = icmp eq i32 %10, 0
  br i1 %cmp.not, label %entry.if.end42_crit_edge, label %do.body6

entry.if.end42_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

do.body6:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %11 = load i32, ptr @saa7146_debug, align 4
  %and7 = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool.not = icmp eq i32 %and7, 0
  br i1 %tobool.not, label %do.body6.do.body20_crit_edge, label %do.body9

do.body6.do.body20_crit_edge:                     ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body20

do.body9:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @saa7146_i2c_reset.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@saa7146_i2c_reset, %if.then14)) #7
          to label %do.body20 [label %if.then14], !srcloc !101

if.then14:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @saa7146_i2c_reset.__UNIQUE_ID_ddebug296, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5) #7
  br label %do.body20

do.body20:                                        ; preds = %if.then14, %do.body9, %do.body6.do.body20_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !108
  tail call void @arm_heavy_mb() #7
  %12 = ptrtoint ptr %i2c_bitrate to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i2c_bitrate, align 4
  %or = or i32 %13, 128
  %14 = tail call i32 @llvm.bswap.i32(i32 %or)
  %15 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mem.i, align 4
  %add.ptr25 = getelementptr i8, ptr %16, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %14) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  tail call void @arm_heavy_mb() #7
  %17 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mem.i, align 4
  %add.ptr30 = getelementptr i8, ptr %18, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 16777472) #7, !srcloc !103
  tail call void @msleep(i32 noundef 5) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !110
  tail call void @arm_heavy_mb() #7
  %19 = ptrtoint ptr %i2c_bitrate to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %i2c_bitrate, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %22 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mem.i, align 4
  %add.ptr36 = getelementptr i8, ptr %23, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 %21) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !111
  tail call void @arm_heavy_mb() #7
  %24 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mem.i, align 4
  %add.ptr41 = getelementptr i8, ptr %25, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 16777472) #7, !srcloc !103
  tail call void @msleep(i32 noundef 5) #7
  br label %if.end42

if.end42:                                         ; preds = %do.body20, %entry.if.end42_crit_edge
  %26 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mem.i, align 4
  %add.ptr.i166 = getelementptr i8, ptr %27, i32 144
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i166) #7, !srcloc !104
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  %30 = ptrtoint ptr %i2c_bitrate to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %i2c_bitrate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %29)
  %cmp45.not = icmp eq i32 %31, %29
  br i1 %cmp45.not, label %if.end42.if.end104_crit_edge, label %do.body47

if.end42.if.end104_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end104

do.body47:                                        ; preds = %if.end42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %32 = load i32, ptr @saa7146_debug, align 4
  %and48 = and i32 %32, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %do.body47.do.body70_crit_edge, label %do.body51

do.body47.do.body70_crit_edge:                    ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body70

do.body51:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @saa7146_i2c_reset.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@saa7146_i2c_reset, %if.then63)) #7
          to label %do.body70 [label %if.then63], !srcloc !101

if.then63:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @saa7146_i2c_reset.__UNIQUE_ID_ddebug297, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5, i32 noundef %29) #7
  br label %do.body70

do.body70:                                        ; preds = %if.then63, %do.body51, %do.body47.do.body70_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !112
  tail call void @arm_heavy_mb() #7
  %33 = ptrtoint ptr %i2c_bitrate to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %i2c_bitrate, align 4
  %or74 = or i32 %34, 128
  %35 = tail call i32 @llvm.bswap.i32(i32 %or74)
  %36 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mem.i, align 4
  %add.ptr76 = getelementptr i8, ptr %37, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr76, i32 %35) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  tail call void @arm_heavy_mb() #7
  %38 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mem.i, align 4
  %add.ptr81 = getelementptr i8, ptr %39, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81, i32 16777472) #7, !srcloc !103
  tail call void @msleep(i32 noundef 5) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %40 = ptrtoint ptr %i2c_bitrate to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %i2c_bitrate, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  %43 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mem.i, align 4
  %add.ptr87 = getelementptr i8, ptr %44, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr87, i32 %42) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !115
  tail call void @arm_heavy_mb() #7
  %45 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mem.i, align 4
  %add.ptr92 = getelementptr i8, ptr %46, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr92, i32 16777472) #7, !srcloc !103
  tail call void @msleep(i32 noundef 5) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  tail call void @arm_heavy_mb() #7
  %47 = ptrtoint ptr %i2c_bitrate to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %i2c_bitrate, align 4
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  %50 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mem.i, align 4
  %add.ptr98 = getelementptr i8, ptr %51, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr98, i32 %49) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  %52 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mem.i, align 4
  %add.ptr103 = getelementptr i8, ptr %53, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr103, i32 16777472) #7, !srcloc !103
  tail call void @msleep(i32 noundef 5) #7
  br label %if.end104

if.end104:                                        ; preds = %do.body70, %if.end42.if.end104_crit_edge
  %54 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mem.i, align 4
  %add.ptr.i168 = getelementptr i8, ptr %55, i32 144
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i168) #7, !srcloc !104
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  %58 = ptrtoint ptr %i2c_bitrate to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %i2c_bitrate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %57)
  %cmp107.not = icmp eq i32 %59, %57
  br i1 %cmp107.not, label %if.end104.cleanup_crit_edge, label %do.body109

if.end104.cleanup_crit_edge:                      ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body109:                                       ; preds = %if.end104
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %60 = load i32, ptr @saa7146_debug, align 4
  %and110 = and i32 %60, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110)
  %tobool111.not = icmp eq i32 %and110, 0
  br i1 %tobool111.not, label %do.body109.cleanup_crit_edge, label %do.body113

do.body109.cleanup_crit_edge:                     ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body113:                                       ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @saa7146_i2c_reset.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@saa7146_i2c_reset, %if.then125)) #7
          to label %cleanup [label %if.then125], !srcloc !101

if.then125:                                       ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @saa7146_i2c_reset.__UNIQUE_ID_ddebug298, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.5, i32 noundef %57) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then125, %do.body113, %do.body109.cleanup_crit_edge, %if.end104.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.then125 ], [ -1, %do.body109.cleanup_crit_edge ], [ 0, %if.end104.cleanup_crit_edge ], [ -1, %do.body113 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa7146_i2c_xfer(ptr nocapture noundef readonly %adapter, ptr nocapture noundef readonly %msg, i32 noundef %num) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adapter, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -4
  %retries = getelementptr inbounds %struct.i2c_adapter, ptr %adapter, i32 0, i32 8
  %2 = ptrtoint ptr %retries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %retries, align 8
  %call2 = tail call fastcc i32 @saa7146_i2c_transfer(ptr noundef %add.ptr.i, ptr noundef %msg, i32 noundef %num, i32 noundef %3)
  ret i32 %call2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @saa7146_i2c_func(ptr nocapture noundef readnone %adapter) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 2031617
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @saa7146_i2c_transfer(ptr noundef %dev, ptr nocapture noundef readonly %msgs, i32 noundef %num, i32 noundef %retries) unnamed_addr #0 align 64 {
entry:
  %zero = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cpu_addr = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 18, i32 1
  %0 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpu_addr, align 4
  %i2c_lock = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 16
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_lock, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp238 = icmp sgt i32 %num, 0
  br i1 %cmp238, label %for.cond.preheader.do.body_crit_edge, label %for.cond.preheader.if.end.thread.i_crit_edge

for.cond.preheader.if.end.thread.i_crit_edge:     ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.thread.i

for.cond.preheader.do.body_crit_edge:             ; preds = %for.cond.preheader
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %for.cond.preheader.do.body_crit_edge
  %i.0239 = phi i32 [ %inc, %for.inc.do.body_crit_edge ], [ 0, %for.cond.preheader.do.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %2 = load i32, ptr @saa7146_debug, align 4
  %and = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.for.inc_crit_edge, label %do.body3

do.body.for.inc_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.body3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @saa7146_i2c_transfer.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@saa7146_i2c_transfer, %if.then8)) #7
          to label %for.inc [label %if.then8], !srcloc !101

if.then8:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #9
  %add = add nuw nsw i32 %i.0239, 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @saa7146_i2c_transfer.__UNIQUE_ID_ddebug307, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12, i32 noundef %add, i32 noundef %num) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then8, %do.body3, %do.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0239, 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %for.end, label %for.inc.do.body_crit_edge

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.end:                                          ; preds = %for.inc
  br i1 %cmp238, label %for.end.for.body.i_crit_edge, label %for.end.if.end.thread.i_crit_edge

for.end.if.end.thread.i_crit_edge:                ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.thread.i

for.end.for.body.i_crit_edge:                     ; preds = %for.end
  br label %for.body.i

if.end.thread.i:                                  ; preds = %for.end.if.end.thread.i_crit_edge, %for.cond.preheader.if.end.thread.i_crit_edge
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %1, align 4
  br label %for.end52.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.end.for.body.i_crit_edge
  %mem.0125.i = phi i32 [ %add1.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.end.for.body.i_crit_edge ]
  %i.0124.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.end.for.body.i_crit_edge ]
  %len.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0124.i, i32 2
  %4 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %len.i, align 4
  %conv.i = zext i16 %5 to i32
  %add.i = add i32 %mem.0125.i, %conv.i
  %add1.i = add i32 %add.i, 1
  %inc.i = add nuw nsw i32 %i.0124.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %num
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %phi.bo139.i = sdiv i32 %add.i, 3
  %phi.bo140.i = add nsw i32 %phi.bo139.i, 1
  %mul.i = shl i32 %phi.bo140.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %mul.i)
  %cmp3.i = icmp ugt i32 %mul.i, 4096
  br i1 %cmp3.i, label %for.end.i.out_crit_edge, label %for.body9.i.preheader

for.end.i.out_crit_edge:                          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.body9.i.preheader:                            ; preds = %for.end.i
  %6 = call ptr @memset(ptr %1, i32 0, i32 %mul.i)
  br label %for.body9.i

for.body9.i:                                      ; preds = %for.inc50.i.for.body9.i_crit_edge, %for.body9.i.preheader
  %op_count.0135.i = phi i32 [ %op_count.1.lcssa.i, %for.inc50.i.for.body9.i_crit_edge ], [ 0, %for.body9.i.preheader ]
  %i.1133.i = phi i32 [ %inc51.i, %for.inc50.i.for.body9.i_crit_edge ], [ 0, %for.body9.i.preheader ]
  %arrayidx10.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.1133.i
  %7 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx10.i, align 4
  %conv.i.i = zext i16 %8 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 1
  %flags.i.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.1133.i, i32 1
  %9 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %flags.i.i, align 2
  %11 = and i16 %10, 1
  %12 = zext i16 %11 to i32
  %shl.i.masked.i = and i32 %shl.i.i, 254
  %conv11.i = or i32 %shl.i.masked.i, %12
  %op_count.0135.i.frozen = freeze i32 %op_count.0135.i
  %div12.i = sdiv i32 %op_count.0135.i.frozen, 3
  %13 = mul i32 %div12.i, 3
  %rem.i.decomposed = sub i32 %op_count.0135.i.frozen, %13
  %sub15.i = sub nsw i32 3, %rem.i.decomposed
  %mul16.i = shl nuw nsw i32 %sub15.i, 3
  %shl.i = shl i32 %conv11.i, %mul16.i
  %14 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #7
  %arrayidx17.i = getelementptr i32, ptr %1, i32 %div12.i
  %15 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx17.i, align 4
  %mul19.i = shl nuw nsw i32 %sub15.i, 1
  %shl20.i = shl nuw nsw i32 3, %mul19.i
  %17 = tail call i32 @llvm.bswap.i32(i32 %shl20.i) #7
  %or.i = or i32 %17, %16
  %or22.i = or i32 %or.i, %14
  %18 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or22.i, ptr %arrayidx17.i, align 4
  %len26.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.1133.i, i32 2
  %op_count.1126.i = add i32 %op_count.0135.i, 1
  %19 = ptrtoint ptr %len26.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %len26.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %cmp28128.not.i = icmp eq i16 %20, 0
  br i1 %cmp28128.not.i, label %for.body9.i.for.inc50.i_crit_edge, label %for.body30.lr.ph.i

for.body9.i.for.inc50.i_crit_edge:                ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc50.i

for.body30.lr.ph.i:                               ; preds = %for.body9.i
  %buf.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.1133.i, i32 3
  br label %for.body30.i

for.body30.i:                                     ; preds = %for.body30.i.for.body30.i_crit_edge, %for.body30.lr.ph.i
  %op_count.1130.i = phi i32 [ %op_count.1126.i, %for.body30.lr.ph.i ], [ %op_count.1.i, %for.body30.i.for.body30.i_crit_edge ]
  %j.0129.i = phi i32 [ 0, %for.body30.lr.ph.i ], [ %inc48.i, %for.body30.i.for.body30.i_crit_edge ]
  %op_count.1130.i.frozen = freeze i32 %op_count.1130.i
  %div31.i = sdiv i32 %op_count.1130.i.frozen, 3
  %21 = mul i32 %div31.i, 3
  %rem32.i.decomposed = sub i32 %op_count.1130.i.frozen, %21
  %22 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %buf.i, align 4
  %arrayidx34.i = getelementptr i8, ptr %23, i32 %j.0129.i
  %24 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx34.i, align 1
  %conv35.i = zext i8 %25 to i32
  %sub36.i = sub nsw i32 3, %rem32.i.decomposed
  %mul37.i = shl nuw nsw i32 %sub36.i, 3
  %shl38.i = shl i32 %conv35.i, %mul37.i
  %26 = tail call i32 @llvm.bswap.i32(i32 %shl38.i) #7
  %arrayidx39.i = getelementptr i32, ptr %1, i32 %div31.i
  %27 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx39.i, align 4
  %mul42.i = shl nuw nsw i32 %sub36.i, 1
  %shl43.i = shl nuw nsw i32 2, %mul42.i
  %29 = tail call i32 @llvm.bswap.i32(i32 %shl43.i) #7
  %or40.i = or i32 %29, %28
  %or45.i = or i32 %or40.i, %26
  %30 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or45.i, ptr %arrayidx39.i, align 4
  %inc48.i = add nuw nsw i32 %j.0129.i, 1
  %op_count.1.i = add i32 %op_count.1130.i, 1
  %31 = ptrtoint ptr %len26.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %len26.i, align 4
  %conv27.i = zext i16 %32 to i32
  %cmp28.i = icmp ult i32 %inc48.i, %conv27.i
  br i1 %cmp28.i, label %for.body30.i.for.body30.i_crit_edge, label %for.body30.i.for.inc50.i_crit_edge

for.body30.i.for.inc50.i_crit_edge:               ; preds = %for.body30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc50.i

for.body30.i.for.body30.i_crit_edge:              ; preds = %for.body30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body30.i

for.inc50.i:                                      ; preds = %for.body30.i.for.inc50.i_crit_edge, %for.body9.i.for.inc50.i_crit_edge
  %op_count.1.lcssa.i = phi i32 [ %op_count.1126.i, %for.body9.i.for.inc50.i_crit_edge ], [ %op_count.1.i, %for.body30.i.for.inc50.i_crit_edge ]
  %inc51.i = add nuw nsw i32 %i.1133.i, 1
  %exitcond138.not.i = icmp eq i32 %inc51.i, %num
  br i1 %exitcond138.not.i, label %for.inc50.i.for.end52.i_crit_edge, label %for.inc50.i.for.body9.i_crit_edge

for.inc50.i.for.body9.i_crit_edge:                ; preds = %for.inc50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body9.i

for.inc50.i.for.end52.i_crit_edge:                ; preds = %for.inc50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end52.i

for.end52.i:                                      ; preds = %for.inc50.i.for.end52.i_crit_edge, %if.end.thread.i
  %mem.0.lcssa144148.i = phi i32 [ 1, %if.end.thread.i ], [ %phi.bo140.i, %for.inc50.i.for.end52.i_crit_edge ]
  %op_count.0.lcssa.i = phi i32 [ 0, %if.end.thread.i ], [ %op_count.1.lcssa.i, %for.inc50.i.for.end52.i_crit_edge ]
  %sub53.i = add i32 %op_count.0.lcssa.i, -1
  %sub53.i.frozen = freeze i32 %sub53.i
  %div54.i = sdiv i32 %sub53.i.frozen, 3
  %33 = mul i32 %div54.i, 3
  %rem56.i.decomposed = sub i32 %sub53.i.frozen, %33
  %arrayidx57.i = getelementptr i32, ptr %1, i32 %div54.i
  %34 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx57.i, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #7
  %.neg.i = mul nsw i32 %rem56.i.decomposed, -2
  %mul59.i = add nsw i32 %.neg.i, 6
  %shr.i = lshr i32 %36, %mul59.i
  %and.i = and i32 %shr.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i)
  %cmp60.i = icmp eq i32 %and.i, 2
  br i1 %cmp60.i, label %if.then62.i, label %for.end52.i.saa7146_i2c_msg_prepare.exit_crit_edge

for.end52.i.saa7146_i2c_msg_prepare.exit_crit_edge: ; preds = %for.end52.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %saa7146_i2c_msg_prepare.exit

if.then62.i:                                      ; preds = %for.end52.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl65.i = shl nuw nsw i32 2, %mul59.i
  %37 = xor i32 %shl65.i, -1
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #7
  %and67.i = and i32 %38, %35
  %shl70.i = shl nuw nsw i32 1, %mul59.i
  %39 = tail call i32 @llvm.bswap.i32(i32 %shl70.i) #7
  %or72.i = or i32 %and67.i, %39
  %40 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %or72.i, ptr %arrayidx57.i, align 4
  br label %saa7146_i2c_msg_prepare.exit

saa7146_i2c_msg_prepare.exit:                     ; preds = %if.then62.i, %for.end52.i.saa7146_i2c_msg_prepare.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mem.0.lcssa144148.i)
  %cmp14 = icmp slt i32 %mem.0.lcssa144148.i, 0
  br i1 %cmp14, label %saa7146_i2c_msg_prepare.exit.out_crit_edge, label %if.end16

saa7146_i2c_msg_prepare.exit.out_crit_edge:       ; preds = %saa7146_i2c_msg_prepare.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end16:                                         ; preds = %saa7146_i2c_msg_prepare.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %mem.0.lcssa144148.i)
  %cmp17 = icmp ugt i32 %mem.0.lcssa144148.i, 3
  br i1 %cmp17, label %if.end16.if.then20_crit_edge, label %lor.lhs.false

if.end16.if.then20_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then20

lor.lhs.false:                                    ; preds = %if.end16
  %ext = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 11
  %41 = ptrtoint ptr %ext to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ext, align 4
  %flags = getelementptr inbounds %struct.saa7146_extension, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags, align 4
  %and18 = and i32 %44, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %cmp19.not = icmp eq i32 %and18, 0
  br i1 %cmp19.not, label %lor.lhs.false.if.end21_crit_edge, label %lor.lhs.false.if.then20_crit_edge

lor.lhs.false.if.then20_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then20

lor.lhs.false.if.end21_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then20:                                        ; preds = %lor.lhs.false.if.then20_crit_edge, %if.end16.if.then20_crit_edge
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %lor.lhs.false.if.end21_crit_edge
  %short_delay.0 = phi i32 [ 1, %if.then20 ], [ 0, %lor.lhs.false.if.end21_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mem.0.lcssa144148.i)
  %cmp51241.not = icmp eq i32 %mem.0.lcssa144148.i, 0
  %ext57 = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 11
  br label %do.body22

do.body22:                                        ; preds = %if.end92.do.body22_crit_edge, %if.end21
  %retries.addr.0 = phi i32 [ %retries, %if.end21 ], [ %dec, %if.end92.do.body22_crit_edge ]
  %call23 = tail call fastcc i32 @saa7146_i2c_reset(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %do.body26, label %for.cond50.preheader

for.cond50.preheader:                             ; preds = %do.body22
  br i1 %cmp51241.not, label %for.cond50.preheader.for.end89_crit_edge, label %for.cond50.preheader.for.body52_crit_edge

for.cond50.preheader.for.body52_crit_edge:        ; preds = %for.cond50.preheader
  br label %for.body52

for.cond50.preheader.for.end89_crit_edge:         ; preds = %for.cond50.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end89

do.body26:                                        ; preds = %do.body22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %45 = load i32, ptr @saa7146_debug, align 4
  %and27 = and i32 %45, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %do.body26.out_crit_edge, label %do.body30

do.body26.out_crit_edge:                          ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.body30:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @saa7146_i2c_transfer.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@saa7146_i2c_transfer, %if.then42)) #7
          to label %out [label %if.then42], !srcloc !101

if.then42:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @saa7146_i2c_transfer.__UNIQUE_ID_ddebug308, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.12) #7
  br label %out

for.body52:                                       ; preds = %for.inc87.for.body52_crit_edge, %for.cond50.preheader.for.body52_crit_edge
  %i.1242 = phi i32 [ %inc88, %for.inc87.for.body52_crit_edge ], [ 0, %for.cond50.preheader.for.body52_crit_edge ]
  %arrayidx = getelementptr i32, ptr %1, i32 %i.1242
  %call53 = tail call fastcc i32 @saa7146_i2c_writeout(ptr noundef %dev, ptr noundef %arrayidx, i32 noundef %short_delay.0)
  %46 = zext i32 %call53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call53, label %for.body52.do.body63_crit_edge [
    i32 0, label %for.inc87
    i32 -121, label %land.lhs.true
  ]

for.body52.do.body63_crit_edge:                   ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body63

land.lhs.true:                                    ; preds = %for.body52
  %47 = ptrtoint ptr %ext57 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ext57, align 4
  %flags58 = getelementptr inbounds %struct.saa7146_extension, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %flags58 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags58, align 4
  %and59 = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %cmp60.not = icmp eq i32 %and59, 0
  br i1 %cmp60.not, label %land.lhs.true.do.body63_crit_edge, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

land.lhs.true.do.body63_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body63

do.body63:                                        ; preds = %land.lhs.true.do.body63_crit_edge, %for.body52.do.body63_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %51 = load i32, ptr @saa7146_debug, align 4
  %and64 = and i32 %51, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %do.body63.for.end89_crit_edge, label %do.body67

do.body63.for.end89_crit_edge:                    ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end89

do.body67:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @saa7146_i2c_transfer.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@saa7146_i2c_transfer, %if.then79)) #7
          to label %for.end89 [label %if.then79], !srcloc !101

if.then79:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @saa7146_i2c_transfer.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.12) #7
  br label %for.end89

for.inc87:                                        ; preds = %for.body52
  %inc88 = add nuw nsw i32 %i.1242, 1
  %exitcond250.not = icmp eq i32 %inc88, %mem.0.lcssa144148.i
  br i1 %exitcond250.not, label %for.inc87.if.end99_crit_edge, label %for.inc87.for.body52_crit_edge

for.inc87.for.body52_crit_edge:                   ; preds = %for.inc87
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body52

for.inc87.if.end99_crit_edge:                     ; preds = %for.inc87
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end99

for.end89:                                        ; preds = %if.then79, %do.body67, %do.body63.for.end89_crit_edge, %for.cond50.preheader.for.end89_crit_edge
  %err.1 = phi i32 [ %call53, %if.then79 ], [ %call53, %do.body63.for.end89_crit_edge ], [ %call53, %do.body67 ], [ %call23, %for.cond50.preheader.for.end89_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %cmp90 = icmp eq i32 %err.1, 0
  br i1 %cmp90, label %for.end89.if.end99_crit_edge, label %if.end92

for.end89.if.end99_crit_edge:                     ; preds = %for.end89
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end99

if.end92:                                         ; preds = %for.end89
  tail call void @msleep(i32 noundef 10) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %err.1, i32 %num)
  %cmp94.not = icmp eq i32 %err.1, %num
  %dec = add i32 %retries.addr.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retries.addr.0)
  %tobool95.not = icmp eq i32 %retries.addr.0, 0
  %or.cond = select i1 %cmp94.not, i1 true, i1 %tobool95.not
  br i1 %or.cond, label %do.end96, label %if.end92.do.body22_crit_edge

if.end92.do.body22_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body22

do.end96:                                         ; preds = %if.end92
  br i1 %cmp94.not, label %do.end96.if.end99_crit_edge, label %do.end96.out_crit_edge

do.end96.out_crit_edge:                           ; preds = %do.end96
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.end96.if.end99_crit_edge:                      ; preds = %do.end96
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end99

if.end99:                                         ; preds = %do.end96.if.end99_crit_edge, %for.end89.if.end99_crit_edge, %for.inc87.if.end99_crit_edge
  br i1 %cmp238, label %if.end99.for.cond1.preheader.i_crit_edge, label %if.end99.saa7146_i2c_msg_cleanup.exit_crit_edge

if.end99.saa7146_i2c_msg_cleanup.exit_crit_edge:  ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  br label %saa7146_i2c_msg_cleanup.exit

if.end99.for.cond1.preheader.i_crit_edge:         ; preds = %if.end99
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc11.i.for.cond1.preheader.i_crit_edge, %if.end99.for.cond1.preheader.i_crit_edge
  %op_count.09.i = phi i32 [ %op_count.1.lcssa.i219, %for.inc11.i.for.cond1.preheader.i_crit_edge ], [ 0, %if.end99.for.cond1.preheader.i_crit_edge ]
  %i.07.i = phi i32 [ %inc12.i, %for.inc11.i.for.cond1.preheader.i_crit_edge ], [ 0, %if.end99.for.cond1.preheader.i_crit_edge ]
  %len.i211 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.07.i, i32 2
  %op_count.11.i = add i32 %op_count.09.i, 1
  %52 = ptrtoint ptr %len.i211 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %len.i211, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %cmp23.not.i = icmp eq i16 %53, 0
  br i1 %cmp23.not.i, label %for.cond1.preheader.i.for.inc11.i_crit_edge, label %for.body4.lr.ph.i

for.cond1.preheader.i.for.inc11.i_crit_edge:      ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc11.i

for.body4.lr.ph.i:                                ; preds = %for.cond1.preheader.i
  %buf.i212 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.07.i, i32 3
  br label %for.body4.i

for.body4.i:                                      ; preds = %for.body4.i.for.body4.i_crit_edge, %for.body4.lr.ph.i
  %op_count.15.i = phi i32 [ %op_count.11.i, %for.body4.lr.ph.i ], [ %op_count.1.i217, %for.body4.i.for.body4.i_crit_edge ]
  %j.04.i = phi i32 [ 0, %for.body4.lr.ph.i ], [ %inc10.i, %for.body4.i.for.body4.i_crit_edge ]
  %op_count.15.i.frozen = freeze i32 %op_count.15.i
  %div.i = sdiv i32 %op_count.15.i.frozen, 3
  %arrayidx5.i = getelementptr i32, ptr %1, i32 %div.i
  %54 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx5.i, align 4
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #7
  %57 = mul i32 %div.i, 3
  %rem.i213.decomposed = sub i32 %op_count.15.i.frozen, %57
  %.neg.i214 = mul nsw i32 %rem.i213.decomposed, -8
  %mul.i215 = add nsw i32 %.neg.i214, 24
  %shr.i216 = lshr i32 %56, %mul.i215
  %conv6.i = trunc i32 %shr.i216 to i8
  %58 = ptrtoint ptr %buf.i212 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %buf.i212, align 4
  %arrayidx8.i = getelementptr i8, ptr %59, i32 %j.04.i
  %60 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv6.i, ptr %arrayidx8.i, align 1
  %inc10.i = add nuw nsw i32 %j.04.i, 1
  %op_count.1.i217 = add i32 %op_count.15.i, 1
  %61 = ptrtoint ptr %len.i211 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %len.i211, align 4
  %conv.i218 = zext i16 %62 to i32
  %cmp2.i = icmp ult i32 %inc10.i, %conv.i218
  br i1 %cmp2.i, label %for.body4.i.for.body4.i_crit_edge, label %for.body4.i.for.inc11.i_crit_edge

for.body4.i.for.inc11.i_crit_edge:                ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc11.i

for.body4.i.for.body4.i_crit_edge:                ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body4.i

for.inc11.i:                                      ; preds = %for.body4.i.for.inc11.i_crit_edge, %for.cond1.preheader.i.for.inc11.i_crit_edge
  %op_count.1.lcssa.i219 = phi i32 [ %op_count.11.i, %for.cond1.preheader.i.for.inc11.i_crit_edge ], [ %op_count.1.i217, %for.body4.i.for.inc11.i_crit_edge ]
  %inc12.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i220 = icmp eq i32 %inc12.i, %num
  br i1 %exitcond.not.i220, label %for.inc11.i.saa7146_i2c_msg_cleanup.exit_crit_edge, label %for.inc11.i.for.cond1.preheader.i_crit_edge

for.inc11.i.for.cond1.preheader.i_crit_edge:      ; preds = %for.inc11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond1.preheader.i

for.inc11.i.saa7146_i2c_msg_cleanup.exit_crit_edge: ; preds = %for.inc11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %saa7146_i2c_msg_cleanup.exit

saa7146_i2c_msg_cleanup.exit:                     ; preds = %for.inc11.i.saa7146_i2c_msg_cleanup.exit_crit_edge, %if.end99.saa7146_i2c_msg_cleanup.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %63 = load i32, ptr @saa7146_debug, align 4
  %and128 = and i32 %63, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128)
  %tobool129.not = icmp eq i32 %and128, 0
  br i1 %tobool129.not, label %saa7146_i2c_msg_cleanup.exit.out_crit_edge, label %do.body131

saa7146_i2c_msg_cleanup.exit.out_crit_edge:       ; preds = %saa7146_i2c_msg_cleanup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.body131:                                       ; preds = %saa7146_i2c_msg_cleanup.exit
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @saa7146_i2c_transfer.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@saa7146_i2c_transfer, %if.then143)) #7
          to label %out [label %if.then143], !srcloc !101

if.then143:                                       ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @saa7146_i2c_transfer.__UNIQUE_ID_ddebug311, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.12, i32 noundef %num) #7
  br label %out

out:                                              ; preds = %if.then143, %do.body131, %saa7146_i2c_msg_cleanup.exit.out_crit_edge, %do.end96.out_crit_edge, %land.lhs.true.out_crit_edge, %if.then42, %do.body30, %do.body26.out_crit_edge, %saa7146_i2c_msg_prepare.exit.out_crit_edge, %for.end.i.out_crit_edge
  %short_delay.1 = phi i32 [ %short_delay.0, %if.then42 ], [ %short_delay.0, %do.body26.out_crit_edge ], [ %short_delay.0, %do.end96.out_crit_edge ], [ %short_delay.0, %if.then143 ], [ %short_delay.0, %saa7146_i2c_msg_cleanup.exit.out_crit_edge ], [ 0, %saa7146_i2c_msg_prepare.exit.out_crit_edge ], [ %short_delay.0, %do.body30 ], [ %short_delay.0, %do.body131 ], [ 0, %for.end.i.out_crit_edge ], [ %short_delay.0, %land.lhs.true.out_crit_edge ]
  %err.3 = phi i32 [ %call23, %if.then42 ], [ %call23, %do.body26.out_crit_edge ], [ %err.1, %do.end96.out_crit_edge ], [ %num, %if.then143 ], [ %num, %saa7146_i2c_msg_cleanup.exit.out_crit_edge ], [ -5, %saa7146_i2c_msg_prepare.exit.out_crit_edge ], [ %call23, %do.body30 ], [ %num, %do.body131 ], [ -5, %for.end.i.out_crit_edge ], [ -121, %land.lhs.true.out_crit_edge ]
  %revision = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 6
  %64 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp150 = icmp eq i32 %65, 0
  br i1 %cmp150, label %if.then151, label %out.if.end162_crit_edge

out.if.end162_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end162

if.then151:                                       ; preds = %out
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %zero) #7
  %66 = ptrtoint ptr %zero to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %zero, align 4
  %call152 = tail call fastcc i32 @saa7146_i2c_reset(ptr noundef %dev)
  %call153 = call fastcc i32 @saa7146_i2c_writeout(ptr noundef %dev, ptr noundef nonnull %zero, i32 noundef %short_delay.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call153)
  %cmp154.not = icmp eq i32 %call153, 0
  br i1 %cmp154.not, label %if.then151.if.end161_crit_edge, label %do.end158

if.then151.if.end161_crit_edge:                   ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end161

do.end158:                                        ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #9
  %call160 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #10
  br label %if.end161

if.end161:                                        ; preds = %do.end158, %if.then151.if.end161_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %zero) #7
  br label %if.end162

if.end162:                                        ; preds = %if.end161, %out.if.end162_crit_edge
  tail call void @mutex_unlock(ptr noundef %i2c_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end162, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.3, %if.end162 ], [ -512, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @saa7146_i2c_writeout(ptr noundef %dev, ptr nocapture noundef %dword, i32 noundef %short_delay) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %0 = load i32, ptr @saa7146_debug, align 4
  %and = and i32 %0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end11_crit_edge, label %do.body1

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @saa7146_i2c_writeout.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@saa7146_i2c_writeout, %if.then5)) #7
          to label %do.end11 [label %if.then5], !srcloc !101

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %dword to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dword, align 4
  %mem = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 5
  %3 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mem, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 144
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !104
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  %i2c_op = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 20
  %7 = ptrtoint ptr %i2c_op to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i2c_op, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @saa7146_i2c_writeout.__UNIQUE_ID_ddebug299, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.24, i32 noundef %2, i32 noundef %6, i32 noundef %8) #7
  br label %do.end11

do.end11:                                         ; preds = %if.then5, %do.body1, %entry.do.end11_crit_edge
  %ext = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 11
  %9 = ptrtoint ptr %ext to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ext, align 4
  %flags = getelementptr inbounds %struct.saa7146_extension, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  %and12 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %cmp.not = icmp eq i32 %and12, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %i2c_bitrate113 = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 17
  %13 = ptrtoint ptr %i2c_bitrate113 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i2c_bitrate113, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %mem114 = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 5
  %16 = ptrtoint ptr %mem114 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mem114, align 4
  %add.ptr115 = getelementptr i8, ptr %17, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr115, i32 %15) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %18 = ptrtoint ptr %dword to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dword, align 4
  %20 = ptrtoint ptr %mem114 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mem114, align 4
  %add.ptr120 = getelementptr i8, ptr %21, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr120, i32 %19) #7
  br i1 %cmp.not, label %do.body110, label %do.body14

do.body14:                                        ; preds = %do.end11
  %i2c_op24 = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 20
  %22 = ptrtoint ptr %i2c_op24 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %i2c_op24, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %23 = ptrtoint ptr %mem114 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mem114, align 4
  %add.ptr29 = getelementptr i8, ptr %24, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 768) #7, !srcloc !103
  %int_slock.i = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 10
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %int_slock.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !120
  tail call void @arm_heavy_mb() #7
  %25 = ptrtoint ptr %mem114 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mem114, align 4
  %add.ptr.i = getelementptr i8, ptr %26, i32 220
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  %28 = or i32 %27, 768
  %29 = ptrtoint ptr %mem114 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mem114, align 4
  %add.ptr12.i = getelementptr i8, ptr %30, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %28) #7, !srcloc !103
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %int_slock.i, i32 noundef %call2.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  tail call void @arm_heavy_mb() #7
  %31 = ptrtoint ptr %mem114 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mem114, align 4
  %add.ptr34 = getelementptr i8, ptr %32, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 16777472) #7, !srcloc !103
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 197) #7
  %33 = ptrtoint ptr %i2c_op24 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %i2c_op24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp42 = icmp eq i32 %34, 0
  br i1 %cmp42, label %do.body14.if.end102_crit_edge, label %if.then54

do.body14.if.end102_crit_edge:                    ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end102

if.then54:                                        ; preds = %do.body14
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #7
  %35 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #7
  %i2c_wq = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 19
  %call56490 = call i32 @prepare_to_wait_event(ptr noundef %i2c_wq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #7
  %36 = ptrtoint ptr %i2c_op24 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %i2c_op24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp59491 = icmp eq i32 %37, 0
  br i1 %cmp59491, label %if.then54.for.end_crit_edge, label %if.then54.if.end76_crit_edge

if.then54.if.end76_crit_edge:                     ; preds = %if.then54
  br label %if.end76

if.then54.for.end_crit_edge:                      ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end76:                                         ; preds = %cleanup.if.end76_crit_edge, %if.then54.if.end76_crit_edge
  %__ret55.1493 = phi i32 [ %__ret55.1, %cleanup.if.end76_crit_edge ], [ 2, %if.then54.if.end76_crit_edge ]
  %call56492 = phi i32 [ %call56, %cleanup.if.end76_crit_edge ], [ %call56490, %if.then54.if.end76_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56492)
  %tobool77.not = icmp eq i32 %call56492, 0
  br i1 %tobool77.not, label %cleanup, label %if.end76.if.end83_crit_edge

if.end76.if.end83_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83

cleanup:                                          ; preds = %if.end76
  %call80 = call i32 @schedule_timeout(i32 noundef %__ret55.1493) #7
  %call56 = call i32 @prepare_to_wait_event(ptr noundef %i2c_wq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #7
  %38 = ptrtoint ptr %i2c_op24 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %i2c_op24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp59 = icmp eq i32 %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool63.not = icmp eq i32 %call80, 0
  %40 = select i1 %cmp59, i1 %tobool63.not, i1 false
  %__ret55.1 = select i1 %40, i32 1, i32 %call80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret55.1)
  %tobool69.not = icmp eq i32 %__ret55.1, 0
  %41 = select i1 %cmp59, i1 true, i1 %tobool69.not
  br i1 %41, label %cleanup.for.end_crit_edge, label %cleanup.if.end76_crit_edge

cleanup.if.end76_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then54.for.end_crit_edge
  %__ret55.1.lcssa = phi i32 [ 2, %if.then54.for.end_crit_edge ], [ %__ret55.1, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %i2c_wq, ptr noundef nonnull %__wq_entry) #7
  br label %if.end83

if.end83:                                         ; preds = %for.end, %if.end76.if.end83_crit_edge
  %__ret55.2470 = phi i32 [ %__ret55.1.lcssa, %for.end ], [ %call56492, %if.end76.if.end83_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %__ret55.2470)
  %cmp85 = icmp eq i32 %__ret55.2470, -512
  br i1 %cmp85, label %if.then95.critedge, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end83
  %42 = ptrtoint ptr %i2c_op24 to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pr = load i32, ptr %i2c_op24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool87.not = icmp eq i32 %.pr, 0
  br i1 %tobool87.not, label %lor.lhs.false.if.end102_crit_edge, label %do.end99.critedge

lor.lhs.false.if.end102_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end102

if.then95.critedge:                               ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i459 = call i32 @_raw_spin_lock_irqsave(ptr noundef %int_slock.i) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  call void @arm_heavy_mb() #7
  %43 = ptrtoint ptr %mem114 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mem114, align 4
  %add.ptr.i461 = getelementptr i8, ptr %44, i32 220
  %45 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i461) #7, !srcloc !104
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  %46 = and i32 %45, -769
  %47 = ptrtoint ptr %mem114 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mem114, align 4
  %add.ptr12.i462 = getelementptr i8, ptr %48, i32 220
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i462, i32 %46) #7, !srcloc !103
  call void @_raw_spin_unlock_irqrestore(ptr noundef %int_slock.i, i32 noundef %call2.i459) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  call void @arm_heavy_mb() #7
  %49 = ptrtoint ptr %mem114 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mem114, align 4
  %add.ptr93.c435 = getelementptr i8, ptr %50, i32 268
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93.c435, i32 768) #7, !srcloc !103
  br label %cleanup376

do.end99.critedge:                                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @SAA7146_IER_DISABLE(ptr noundef %dev)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  call void @arm_heavy_mb() #7
  %51 = ptrtoint ptr %mem114 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mem114, align 4
  %add.ptr93.c = getelementptr i8, ptr %52, i32 268
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93.c, i32 768) #7, !srcloc !103
  %name = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 7
  %call101 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %name, ptr noundef nonnull @.str.24) #10
  br label %cleanup376

if.end102:                                        ; preds = %lor.lhs.false.if.end102_crit_edge, %do.body14.if.end102_crit_edge
  %53 = ptrtoint ptr %mem114 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mem114, align 4
  %add.ptr106 = getelementptr i8, ptr %54, i32 144
  %55 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr106) #7, !srcloc !104
  %56 = call i32 @llvm.bswap.i32(i32 %55)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !126
  br label %if.end176

do.body110:                                       ; preds = %do.end11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  tail call void @arm_heavy_mb() #7
  %57 = ptrtoint ptr %mem114 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mem114, align 4
  %add.ptr125 = getelementptr i8, ptr %58, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr125, i32 16777472) #7, !srcloc !103
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %59 = load volatile i32, ptr @jiffies, align 128
  %add126 = add i32 %59, 2
  br label %while.cond

while.cond:                                       ; preds = %if.end137.while.cond_crit_edge, %do.body110
  %60 = ptrtoint ptr %mem114 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mem114, align 4
  %add.ptr130 = getelementptr i8, ptr %61, i32 256
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr130) #7, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  %63 = and i32 %62, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp135.not = icmp eq i32 %63, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %64 = load volatile i32, ptr @jiffies, align 128
  br i1 %cmp135.not, label %if.end137, label %while.end

if.end137:                                        ; preds = %while.cond
  %sub = sub i32 %add126, %64
  %cmp138 = icmp slt i32 %sub, 0
  br i1 %cmp138, label %do.end142, label %if.end137.while.cond_crit_edge

if.end137.while.cond_crit_edge:                   ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

do.end142:                                        ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #9
  %name144 = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 7
  %call146 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name144, ptr noundef nonnull @.str.24) #10
  br label %cleanup376

while.end:                                        ; preds = %while.cond
  %add149 = add i32 %64, 2
  %65 = ptrtoint ptr %mem114 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mem114, align 4
  %add.ptr.i464 = getelementptr i8, ptr %66, i32 144
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i464) #7, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  %68 = ptrtoint ptr %mem114 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mem114, align 4
  %add.ptr.i466495 = getelementptr i8, ptr %69, i32 144
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i466495) #7, !srcloc !104
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  %and154496 = and i32 %71, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and154496)
  %cmp155.not497 = icmp eq i32 %and154496, 1
  br i1 %cmp155.not497, label %if.end157.lr.ph, label %while.end.if.end176_crit_edge

while.end.if.end176_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end176

if.end157.lr.ph:                                  ; preds = %while.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %short_delay)
  %tobool171.not = icmp eq i32 %short_delay, 0
  br label %if.end157

if.end157:                                        ; preds = %if.end174.if.end157_crit_edge, %if.end157.lr.ph
  %trial.0498 = phi i32 [ 0, %if.end157.lr.ph ], [ %inc, %if.end174.if.end157_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %72 = load volatile i32, ptr @jiffies, align 128
  %sub158 = sub i32 %add149, %72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub158)
  %cmp159 = icmp slt i32 %sub158, 0
  br i1 %cmp159, label %do.end163, label %if.end168

do.end163:                                        ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #9
  %name165 = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 7
  %call167 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %name165, ptr noundef nonnull @.str.24) #10
  br label %cleanup376

if.end168:                                        ; preds = %if.end157
  %inc = add i32 %trial.0498, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %inc)
  %cmp169 = icmp sgt i32 %inc, 49
  %or.cond = or i1 %tobool171.not, %cmp169
  br i1 %or.cond, label %if.else173, label %if.then172

if.then172:                                       ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %73(i32 noundef 2147480) #7
  br label %if.end174

if.else173:                                       ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @msleep(i32 noundef 1) #7
  br label %if.end174

if.end174:                                        ; preds = %if.else173, %if.then172
  %74 = ptrtoint ptr %mem114 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %mem114, align 4
  %add.ptr.i466 = getelementptr i8, ptr %75, i32 144
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i466) #7, !srcloc !104
  %77 = tail call i32 @llvm.bswap.i32(i32 %76) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  %and154 = and i32 %77, 3
  %cmp155.not = icmp eq i32 %and154, 1
  br i1 %cmp155.not, label %if.end174.if.end157_crit_edge, label %if.end174.if.end176_crit_edge

if.end174.if.end176_crit_edge:                    ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end176

if.end174.if.end157_crit_edge:                    ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end157

if.end176:                                        ; preds = %if.end174.if.end176_crit_edge, %while.end.if.end176_crit_edge, %if.end102
  %status.0 = phi i32 [ %56, %if.end102 ], [ %71, %while.end.if.end176_crit_edge ], [ %77, %if.end174.if.end176_crit_edge ]
  %and177 = and i32 %status.0, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and177)
  %cmp178.not = icmp eq i32 %and177, 0
  br i1 %cmp178.not, label %if.end345, label %if.then179

if.then179:                                       ; preds = %if.end176
  %78 = and i32 %status.0, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %78)
  %.not = icmp eq i32 %78, 3
  br i1 %.not, label %if.then179.if.end209_crit_edge, label %do.body186

if.then179.if.end209_crit_edge:                   ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end209

do.body186:                                       ; preds = %if.then179
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %79 = load i32, ptr @saa7146_debug, align 4
  %and187 = and i32 %79, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and187)
  %tobool188.not = icmp eq i32 %and187, 0
  br i1 %tobool188.not, label %do.body186.if.end209_crit_edge, label %do.body190

do.body186.if.end209_crit_edge:                   ; preds = %do.body186
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end209

do.body190:                                       ; preds = %do.body186
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @saa7146_i2c_writeout.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@saa7146_i2c_writeout, %if.then202)) #7
          to label %if.end209 [label %if.then202], !srcloc !101

if.then202:                                       ; preds = %do.body190
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @saa7146_i2c_writeout.__UNIQUE_ID_ddebug300, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.24, i32 noundef %status.0) #7
  br label %if.end209

if.end209:                                        ; preds = %if.then202, %do.body190, %do.body186.if.end209_crit_edge, %if.then179.if.end209_crit_edge
  %and210 = and i32 %status.0, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and210)
  %cmp211.not = icmp eq i32 %and210, 0
  br i1 %cmp211.not, label %if.end209.if.end236_crit_edge, label %do.body213

if.end209.if.end236_crit_edge:                    ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end236

do.body213:                                       ; preds = %if.end209
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %80 = load i32, ptr @saa7146_debug, align 4
  %and214 = and i32 %80, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and214)
  %tobool215.not = icmp eq i32 %and214, 0
  br i1 %tobool215.not, label %do.body213.if.end236_crit_edge, label %do.body217

do.body213.if.end236_crit_edge:                   ; preds = %do.body213
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end236

do.body217:                                       ; preds = %do.body213
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @saa7146_i2c_writeout.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@saa7146_i2c_writeout, %if.then229)) #7
          to label %if.end236 [label %if.then229], !srcloc !101

if.then229:                                       ; preds = %do.body217
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @saa7146_i2c_writeout.__UNIQUE_ID_ddebug301, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.24) #7
  br label %if.end236

if.end236:                                        ; preds = %if.then229, %do.body217, %do.body213.if.end236_crit_edge, %if.end209.if.end236_crit_edge
  %and237 = and i32 %status.0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and237)
  %cmp238.not = icmp eq i32 %and237, 0
  br i1 %cmp238.not, label %if.end236.if.end263_crit_edge, label %do.body240

if.end236.if.end263_crit_edge:                    ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end263

do.body240:                                       ; preds = %if.end236
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %81 = load i32, ptr @saa7146_debug, align 4
  %and241 = and i32 %81, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and241)
  %tobool242.not = icmp eq i32 %and241, 0
  br i1 %tobool242.not, label %do.body240.if.end263_crit_edge, label %do.body244

do.body240.if.end263_crit_edge:                   ; preds = %do.body240
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end263

do.body244:                                       ; preds = %do.body240
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @saa7146_i2c_writeout.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@saa7146_i2c_writeout, %if.then256)) #7
          to label %if.end263 [label %if.then256], !srcloc !101

if.then256:                                       ; preds = %do.body244
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @saa7146_i2c_writeout.__UNIQUE_ID_ddebug302, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.24) #7
  br label %if.end263

if.end263:                                        ; preds = %if.then256, %do.body244, %do.body240.if.end263_crit_edge, %if.end236.if.end263_crit_edge
  %and264 = and i32 %status.0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and264)
  %cmp265.not = icmp eq i32 %and264, 0
  br i1 %cmp265.not, label %if.end263.if.end290_crit_edge, label %do.body267

if.end263.if.end290_crit_edge:                    ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end290

do.body267:                                       ; preds = %if.end263
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %82 = load i32, ptr @saa7146_debug, align 4
  %and268 = and i32 %82, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and268)
  %tobool269.not = icmp eq i32 %and268, 0
  br i1 %tobool269.not, label %do.body267.if.end290_crit_edge, label %do.body271

do.body267.if.end290_crit_edge:                   ; preds = %do.body267
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end290

do.body271:                                       ; preds = %do.body267
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @saa7146_i2c_writeout.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@saa7146_i2c_writeout, %if.then283)) #7
          to label %if.end290 [label %if.then283], !srcloc !101

if.then283:                                       ; preds = %do.body271
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @saa7146_i2c_writeout.__UNIQUE_ID_ddebug303, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.24) #7
  br label %if.end290

if.end290:                                        ; preds = %if.then283, %do.body271, %do.body267.if.end290_crit_edge, %if.end263.if.end290_crit_edge
  %and291 = and i32 %status.0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and291)
  %cmp292.not = icmp eq i32 %and291, 0
  br i1 %cmp292.not, label %if.end290.if.end317_crit_edge, label %do.body294

if.end290.if.end317_crit_edge:                    ; preds = %if.end290
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end317

do.body294:                                       ; preds = %if.end290
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %83 = load i32, ptr @saa7146_debug, align 4
  %and295 = and i32 %83, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and295)
  %tobool296.not = icmp eq i32 %and295, 0
  br i1 %tobool296.not, label %do.body294.if.end317_crit_edge, label %do.body298

do.body294.if.end317_crit_edge:                   ; preds = %do.body294
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end317

do.body298:                                       ; preds = %do.body294
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @saa7146_i2c_writeout.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@saa7146_i2c_writeout, %if.then310)) #7
          to label %if.end317 [label %if.then310], !srcloc !101

if.then310:                                       ; preds = %do.body298
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @saa7146_i2c_writeout.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.24) #7
  br label %if.end317

if.end317:                                        ; preds = %if.then310, %do.body298, %do.body294.if.end317_crit_edge, %if.end290.if.end317_crit_edge
  %and318 = and i32 %status.0, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and318)
  %cmp319.not = icmp eq i32 %and318, 0
  br i1 %cmp319.not, label %if.end317.cleanup376_crit_edge, label %do.body321

if.end317.cleanup376_crit_edge:                   ; preds = %if.end317
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup376

do.body321:                                       ; preds = %if.end317
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %84 = load i32, ptr @saa7146_debug, align 4
  %and322 = and i32 %84, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and322)
  %tobool323.not = icmp eq i32 %and322, 0
  br i1 %tobool323.not, label %do.body321.cleanup376_crit_edge, label %do.body325

do.body321.cleanup376_crit_edge:                  ; preds = %do.body321
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup376

do.body325:                                       ; preds = %do.body321
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @saa7146_i2c_writeout.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@saa7146_i2c_writeout, %if.then337)) #7
          to label %cleanup376 [label %if.then337], !srcloc !101

if.then337:                                       ; preds = %do.body325
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @saa7146_i2c_writeout.__UNIQUE_ID_ddebug305, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.24) #7
  br label %cleanup376

if.end345:                                        ; preds = %if.end176
  %mem348 = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 5
  %85 = ptrtoint ptr %mem348 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %mem348, align 4
  %add.ptr349 = getelementptr i8, ptr %86, i32 140
  %87 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr349) #7, !srcloc !104
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  %88 = ptrtoint ptr %dword to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %dword, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %89 = load i32, ptr @saa7146_debug, align 4
  %and354 = and i32 %89, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and354)
  %tobool355.not = icmp eq i32 %and354, 0
  br i1 %tobool355.not, label %if.end345.cleanup376_crit_edge, label %do.body357

if.end345.cleanup376_crit_edge:                   ; preds = %if.end345
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup376

do.body357:                                       ; preds = %if.end345
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @saa7146_i2c_writeout.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@saa7146_i2c_writeout, %if.then369)) #7
          to label %cleanup376 [label %if.then369], !srcloc !101

if.then369:                                       ; preds = %do.body357
  call void @__sanitizer_cov_trace_pc() #9
  %90 = ptrtoint ptr %dword to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %dword, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @saa7146_i2c_writeout.__UNIQUE_ID_ddebug306, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.24, i32 noundef %91) #7
  br label %cleanup376

cleanup376:                                       ; preds = %if.then369, %do.body357, %if.end345.cleanup376_crit_edge, %if.then337, %do.body325, %do.body321.cleanup376_crit_edge, %if.end317.cleanup376_crit_edge, %do.end163, %do.end142, %do.end99.critedge, %if.then95.critedge
  %retval.0 = phi i32 [ -512, %if.then95.critedge ], [ -5, %do.end99.critedge ], [ -5, %do.end163 ], [ -5, %do.end142 ], [ -121, %if.then337 ], [ -121, %do.body321.cleanup376_crit_edge ], [ -5, %if.end317.cleanup376_crit_edge ], [ 0, %if.then369 ], [ 0, %if.end345.cleanup376_crit_edge ], [ -121, %do.body325 ], [ 0, %do.body357 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @SAA7146_IER_DISABLE(ptr noundef %x) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %int_slock = getelementptr inbounds %struct.saa7146_dev, ptr %x, i32 0, i32 10
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %int_slock) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %mem = getelementptr inbounds %struct.saa7146_dev, ptr %x, i32 0, i32 5
  %0 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 220
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  %3 = and i32 %2, -769
  %4 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mem, align 4
  %add.ptr12 = getelementptr i8, ptr %5, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %3) #7, !srcloc !103
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %int_slock, i32 noundef %call2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91}
!llvm.module.flags = !{!92, !93, !94, !95, !96, !97, !98, !99}
!llvm.ident = !{!100}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/common/saa7146/saa7146_i2c.c", i32 403, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @saa7146_i2c_adapter_prepare.__UNIQUE_ID_ddebug312, !1, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/media/common/saa7146/saa7146_i2c.c", i32 125, i32 3}
!9 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @saa7146_i2c_reset.__UNIQUE_ID_ddebug296, !8, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!11 = !{ptr @.str.7, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/common/saa7146/saa7146_i2c.c", i32 143, i32 3}
!14 = !{ptr @saa7146_i2c_reset.__UNIQUE_ID_ddebug297, !13, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!15 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/common/saa7146/saa7146_i2c.c", i32 166, i32 3}
!18 = !{ptr @saa7146_i2c_reset.__UNIQUE_ID_ddebug298, !17, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!19 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @saa7146_algo, !21, !"saa7146_algo", i1 false, i1 false}
!21 = !{!"../drivers/media/common/saa7146/saa7146_i2c.c", i32 396, i32 35}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/common/saa7146/saa7146_i2c.c", i32 302, i32 3}
!24 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @saa7146_i2c_transfer.__UNIQUE_ID_ddebug307, !23, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!26 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/common/saa7146/saa7146_i2c.c", i32 319, i32 4}
!29 = !{ptr @saa7146_i2c_transfer.__UNIQUE_ID_ddebug308, !28, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!30 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/common/saa7146/saa7146_i2c.c", i32 339, i32 5}
!33 = !{ptr @saa7146_i2c_transfer.__UNIQUE_ID_ddebug309, !32, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!34 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!35 = distinct !{null, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/common/saa7146/saa7146_i2c.c", i32 359, i32 3}
!37 = distinct !{null, !36, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!38 = distinct !{null, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/common/saa7146/saa7146_i2c.c", i32 365, i32 2}
!41 = !{ptr @saa7146_i2c_transfer.__UNIQUE_ID_ddebug311, !40, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!42 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/common/saa7146/saa7146_i2c.c", i32 373, i32 4}
!45 = !{ptr @saa7146_i2c_transfer._entry, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @saa7146_i2c_transfer._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/common/saa7146/saa7146_i2c.c", i32 183, i32 2}
!49 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @saa7146_i2c_writeout.__UNIQUE_ID_ddebug299, !48, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!51 = !{ptr @.str.26, !48, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/common/saa7146/saa7146_i2c.c", i32 205, i32 4}
!54 = !{ptr @saa7146_i2c_writeout._entry, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @saa7146_i2c_writeout._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/common/saa7146/saa7146_i2c.c", i32 223, i32 5}
!58 = !{ptr @saa7146_i2c_writeout._entry.28, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @saa7146_i2c_writeout._entry_ptr.30, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/common/saa7146/saa7146_i2c.c", i32 240, i32 5}
!62 = !{ptr @saa7146_i2c_writeout._entry.31, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @saa7146_i2c_writeout._entry_ptr.33, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/common/saa7146/saa7146_i2c.c", i32 260, i32 4}
!66 = !{ptr @saa7146_i2c_writeout.__UNIQUE_ID_ddebug300, !65, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!67 = !{ptr @.str.35, !65, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/common/saa7146/saa7146_i2c.c", i32 263, i32 4}
!70 = !{ptr @saa7146_i2c_writeout.__UNIQUE_ID_ddebug301, !69, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!71 = !{ptr @.str.37, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/common/saa7146/saa7146_i2c.c", i32 266, i32 4}
!74 = !{ptr @saa7146_i2c_writeout.__UNIQUE_ID_ddebug302, !73, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!75 = !{ptr @.str.39, !73, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/common/saa7146/saa7146_i2c.c", i32 269, i32 4}
!78 = !{ptr @saa7146_i2c_writeout.__UNIQUE_ID_ddebug303, !77, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!79 = !{ptr @.str.41, !77, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.42, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/common/saa7146/saa7146_i2c.c", i32 272, i32 4}
!82 = !{ptr @saa7146_i2c_writeout.__UNIQUE_ID_ddebug304, !81, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!83 = !{ptr @.str.43, !81, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.44, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/common/saa7146/saa7146_i2c.c", i32 277, i32 4}
!86 = !{ptr @saa7146_i2c_writeout.__UNIQUE_ID_ddebug305, !85, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!87 = !{ptr @.str.45, !85, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.46, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/common/saa7146/saa7146_i2c.c", i32 287, i32 2}
!90 = !{ptr @saa7146_i2c_writeout.__UNIQUE_ID_ddebug306, !89, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!91 = !{ptr @.str.47, !89, !"<string literal>", i1 false, i1 false}
!92 = !{i32 1, !"wchar_size", i32 2}
!93 = !{i32 1, !"min_enum_size", i32 4}
!94 = !{i32 8, !"branch-target-enforcement", i32 0}
!95 = !{i32 8, !"sign-return-address", i32 0}
!96 = !{i32 8, !"sign-return-address-all", i32 0}
!97 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!98 = !{i32 7, !"uwtable", i32 1}
!99 = !{i32 7, !"frame-pointer", i32 2}
!100 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!101 = !{i64 2148821233, i64 2148821238, i64 2148821251, i64 2148821295, i64 2148821329, i64 2148821350}
!102 = !{i64 2156679524}
!103 = !{i64 7161071}
!104 = !{i64 7161489}
!105 = !{i64 2156606374}
!106 = !{i64 2156607845}
!107 = !{i64 2156608342}
!108 = !{i64 2156611444}
!109 = !{i64 2156612066}
!110 = !{i64 2156612629}
!111 = !{i64 2156613203}
!112 = !{i64 2156616601}
!113 = !{i64 2156617223}
!114 = !{i64 2156617786}
!115 = !{i64 2156618360}
!116 = !{i64 2156618923}
!117 = !{i64 2156619497}
!118 = !{i64 2156626038}
!119 = !{i64 2156627895}
!120 = !{i64 2156594471}
!121 = !{i64 2156595383}
!122 = !{i64 2156628525}
!123 = !{i64 2156591734}
!124 = !{i64 2156592648}
!125 = !{i64 2156631138}
!126 = !{i64 2156633843}
!127 = !{i64 2156635640}
!128 = !{i64 2156636450}
!129 = !{i64 2156658693}
