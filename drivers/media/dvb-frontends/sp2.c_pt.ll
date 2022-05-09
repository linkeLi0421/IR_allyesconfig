; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/sp2.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/sp2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.dvb_ca_en50221 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sp2 = type { i32, ptr, ptr, %struct.dvb_ca_en50221, i32, i32, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.sp2_config = type { ptr, ptr, ptr }

@sp2_ci_slot_reset.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 45, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sp2\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sp2_ci_slot_reset\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/media/dvb-frontends/sp2.c\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"slot: %d\0A\00", [22 x i8] zeroinitializer }, align 32
@sp2_ci_slot_shutdown.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 52, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sp2_ci_slot_shutdown\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"slot:%d\0A\00", [23 x i8] zeroinitializer }, align 32
@sp2_ci_slot_ts_enable.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.5, i8 0, i8 55, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sp2_ci_slot_ts_enable\00", [42 x i8] zeroinitializer }, align 32
@sp2_ci_poll_slot_status.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 60, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sp2_ci_poll_slot_status\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"slot:%d open:%d\0A\00", [47 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__initcall__kmod_sp2__303_426_sp2_driver_init6 = internal global ptr @sp2_driver_init, section ".initcall6.init", align 4
@sp2_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @sp2_probe, ptr @sp2_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @sp2_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_sp2_driver_exit = internal global ptr @sp2_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description304 = internal constant [39 x i8] c"sp2.description=CIMaX SP2/HF CI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author305 = internal constant [46 x i8] c"sp2.author=Olli Salonen <olli.salonen@iki.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_file306 = internal constant [41 x i8] c"sp2.file=drivers/media/dvb-frontends/sp2\00", section ".modinfo", align 1
@__UNIQUE_ID_license307 = internal constant [16 x i8] c"sp2.license=GPL\00", section ".modinfo", align 1
@sp2_ci_op_cam._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 127, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"callback not defined\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sp2_ci_op_cam\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sp2_ci_op_cam._entry_ptr = internal global ptr @sp2_ci_op_cam._entry, section ".printk_index", align 4
@sp2_ci_op_cam.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.13, i8 0, i8 34, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: slot=%d, addr=0x%04x, %s, data=%x\00", [58 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"attr\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"io\00", [29 x i8] zeroinitializer }, align 32
@sp2_write_i2c._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 68, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"i2c wr reg=%02x: len=%d is too big!\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sp2_write_i2c\00", [18 x i8] zeroinitializer }, align 32
@sp2_write_i2c._entry_ptr = internal global ptr @sp2_write_i2c._entry, section ".printk_index", align 4
@sp2_write_i2c._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.2, i32 79, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"i2c write error, reg = 0x%02x, status = %d\0A\00", [52 x i8] zeroinitializer }, align 32
@sp2_write_i2c._entry_ptr.22 = internal global ptr @sp2_write_i2c._entry.20, section ".printk_index", align 4
@sp2_write_i2c.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.23, i8 0, i8 21, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"addr=0x%04x, reg = 0x%02x, data = %*ph\0A\00", [56 x i8] zeroinitializer }, align 32
@sp2_read_i2c._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 40, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"i2c read error, reg = 0x%02x, status = %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sp2_read_i2c\00", [19 x i8] zeroinitializer }, align 32
@sp2_read_i2c._entry_ptr = internal global ptr @sp2_read_i2c._entry, section ".printk_index", align 4
@sp2_read_i2c.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 0, i8 12, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"addr=0x%04x, reg = 0x%02x, data = %02x\0A\00", [56 x i8] zeroinitializer }, align 32
@sp2_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"sp2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@sp2_probe.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.28, i8 0, i8 93, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sp2_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@sp2_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.2, i32 392, ptr @.str.30, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"CIMaX SP2 successfully attached\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@sp2_probe._entry_ptr = internal global ptr @sp2_probe._entry, section ".printk_index", align 4
@sp2_probe.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.31, i8 0, i8 98, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"init failed=%d\0A\00", [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__const.sp2_init.cimax_init = private unnamed_addr constant [34 x i8] c"\00\00\00\00\00D\00\00\00\00\00\00\00\00D\00\00\00\00\00\00\00\00\02\01\00\00\00\05\00\04\00\22\00", align 1
@sp2_init.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.28, i8 0, i8 76, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sp2_init\00", [23 x i8] zeroinitializer }, align 32
@sp2_init.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.31, i8 0, i8 85, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@sp2_remove.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.2, ptr @.str.28, i8 0, i8 101, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sp2_remove\00", [21 x i8] zeroinitializer }, align 32
@sp2_exit.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.28, i8 0, i8 87, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sp2_exit\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 180, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 210, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 221, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 240, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant [11 x i8] c"sp2_driver\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 417, i32 26 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 127, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 134, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 67, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 78, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 86, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 39, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 47, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant [7 x i8] c"sp2_id\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 411, i32 35 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 373, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 392, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 395, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 304, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 405, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.153 = private constant [37 x i8] c"../drivers/media/dvb-frontends/sp2.c\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 349, i32 2 }
@llvm.compiler.used = appending global [52 x ptr] [ptr @__UNIQUE_ID_author305, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file306, ptr @__UNIQUE_ID_license307, ptr @__exitcall_sp2_driver_exit, ptr @__initcall__kmod_sp2__303_426_sp2_driver_init6, ptr @sp2_ci_op_cam._entry, ptr @sp2_ci_op_cam._entry_ptr, ptr @sp2_driver_exit, ptr @sp2_probe._entry, ptr @sp2_probe._entry_ptr, ptr @sp2_read_i2c._entry, ptr @sp2_read_i2c._entry_ptr, ptr @sp2_write_i2c._entry, ptr @sp2_write_i2c._entry.20, ptr @sp2_write_i2c._entry_ptr, ptr @sp2_write_i2c._entry_ptr.22, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @sp2_driver, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @sp2_id, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sp2_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sp2_ci_op_cam._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sp2_write_i2c._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sp2_write_i2c._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sp2_read_i2c._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sp2_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sp2_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sp2_ci_read_attribute_mem(ptr nocapture noundef readonly %en50221, i32 noundef %slot, i32 noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sp2_ci_op_cam(ptr noundef %en50221, i32 noundef %slot, i8 noundef zeroext 0, i8 noundef zeroext 1, i32 noundef %addr, i8 noundef zeroext 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sp2_ci_op_cam(ptr nocapture noundef readonly %en50221, i32 noundef %slot, i8 noundef zeroext %acs, i8 noundef zeroext %read, i32 noundef %addr, i8 noundef zeroext %data) unnamed_addr #0 align 64 {
entry:
  %buffer.i = alloca [35 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %store = alloca i8, align 1
  %mem = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %en50221, i32 0, i32 11
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %store) #6
  %2 = ptrtoint ptr %store to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %store, align 1, !annotation !97
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mem) #6
  %3 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %mem, align 4, !annotation !97
  %ci_control = getelementptr inbounds %struct.sp2, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %ci_control to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci_control, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot)
  %cmp.not = icmp eq i32 %slot, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %module_access_type = getelementptr inbounds %struct.sp2, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %module_access_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %module_access_type, align 4
  %conv = zext i8 %acs to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv)
  %cmp2.not = icmp eq i32 %7, %conv
  br i1 %cmp2.not, label %if.end.if.end16_crit_edge, label %if.then4

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then4:                                         ; preds = %if.end
  %call = call fastcc i32 @sp2_read_i2c(ptr noundef %1, ptr noundef nonnull %store)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end6, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.then4
  %8 = ptrtoint ptr %store to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %store, align 1
  %10 = and i8 %9, -13
  %or76 = or i8 %10, %acs
  store i8 %or76, ptr %store, align 1
  call void @llvm.lifetime.start.p0(i64 35, ptr nonnull %buffer.i) #6
  %11 = getelementptr inbounds i8, ptr %buffer.i, i32 1
  %12 = getelementptr inbounds i8, ptr %buffer.i, i32 2
  %13 = call ptr @memset(ptr %12, i32 255, i32 33)
  %client1.i = getelementptr inbounds %struct.sp2, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %client1.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adapter.i, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %18 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 196607, ptr %18, align 4
  %addr2.i = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 1
  %20 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %addr2.i, align 2
  %22 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %flags.i, align 2
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %24 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %buffer.i, ptr %buf4.i, align 4
  %25 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %buffer.i, align 1
  %26 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %or76, ptr %11, align 1
  %call.i = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp10.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp10.not.i, label %do.body22.i, label %do.end15.i

do.end15.i:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %dev16.i = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16.i, ptr noundef nonnull @.str.21, i32 noundef 0, i32 noundef %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp18.i = icmp slt i32 %call.i, 0
  %spec.select = select i1 %cmp18.i, i32 %call.i, i32 -5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 35, ptr nonnull %buffer.i) #6
  br label %cleanup

do.body22.i:                                      ; preds = %if.end6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sp2_write_i2c.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sp2_ci_op_cam, %if.then26.i)) #6
          to label %sp2_write_i2c.exit [label %if.then26.i], !srcloc !98

if.then26.i:                                      ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %client1.i, align 4
  %dev28.i = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %addr2.i, align 2
  %conv30.i = zext i16 %30 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sp2_write_i2c.__UNIQUE_ID_ddebug291, ptr noundef %dev28.i, ptr noundef nonnull @.str.23, i32 noundef %conv30.i, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %store) #6
  br label %sp2_write_i2c.exit

sp2_write_i2c.exit:                               ; preds = %if.then26.i, %do.body22.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 35, ptr nonnull %buffer.i) #6
  br label %if.end16

if.end16:                                         ; preds = %sp2_write_i2c.exit, %if.end.if.end16_crit_edge
  %31 = ptrtoint ptr %module_access_type to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv, ptr %module_access_type, align 4
  %tobool19.not = icmp eq ptr %5, null
  br i1 %tobool19.not, label %do.end, label %if.then20

if.then20:                                        ; preds = %if.end16
  %priv = getelementptr inbounds %struct.sp2, ptr %1, i32 0, i32 6
  %32 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %priv, align 4
  %call21 = call i32 %5(ptr noundef %33, i8 noundef zeroext %read, i32 noundef %addr, i8 noundef zeroext %data, ptr noundef nonnull %mem) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool23.not = icmp eq i32 %call21, 0
  br i1 %tobool23.not, label %do.body26, label %if.then20.cleanup_crit_edge

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %client = getelementptr inbounds %struct.sp2, ptr %1, i32 0, i32 1
  %34 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %35, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #9
  br label %cleanup

do.body26:                                        ; preds = %if.then20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sp2_ci_op_cam.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sp2_ci_op_cam, %if.then31)) #6
          to label %do.end46 [label %if.then31], !srcloc !98

if.then31:                                        ; preds = %do.body26
  %client32 = getelementptr inbounds %struct.sp2, ptr %1, i32 0, i32 1
  %36 = ptrtoint ptr %client32 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %client32, align 4
  %dev33 = getelementptr inbounds %struct.i2c_client, ptr %37, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read)
  %tobool35.not = icmp eq i8 %read, 0
  %cond = select i1 %tobool35.not, ptr @.str.15, ptr @.str.14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %acs)
  %cmp37 = icmp eq i8 %acs, 0
  %cond39 = select i1 %cmp37, ptr @.str.16, ptr @.str.17
  br i1 %tobool35.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mem, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  %conv42 = zext i8 %data to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond43 = phi i32 [ %39, %cond.true ], [ %conv42, %cond.false ]
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sp2_ci_op_cam.__UNIQUE_ID_ddebug292, ptr noundef %dev33, ptr noundef nonnull @.str.13, ptr noundef nonnull %cond, i32 noundef 0, i32 noundef %addr, ptr noundef nonnull %cond39, i32 noundef %cond43) #6
  br label %do.end46

do.end46:                                         ; preds = %cond.end, %do.body26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read)
  %tobool47.not = icmp eq i8 %read, 0
  br i1 %tobool47.not, label %do.end46.cleanup_crit_edge, label %if.then48

do.end46.cleanup_crit_edge:                       ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then48:                                        ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mem, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then48, %do.end46.cleanup_crit_edge, %do.end, %if.then20.cleanup_crit_edge, %do.end15.i, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %41, %if.then48 ], [ -22, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.then4.cleanup_crit_edge ], [ %call21, %if.then20.cleanup_crit_edge ], [ 0, %do.end46.cleanup_crit_edge ], [ %spec.select, %do.end15.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mem) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %store) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sp2_ci_write_attribute_mem(ptr nocapture noundef readonly %en50221, i32 noundef %slot, i32 noundef %addr, i8 noundef zeroext %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sp2_ci_op_cam(ptr noundef %en50221, i32 noundef %slot, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef %addr, i8 noundef zeroext %data)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sp2_ci_read_cam_control(ptr nocapture noundef readonly %en50221, i32 noundef %slot, i8 noundef zeroext %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %addr to i32
  %call = tail call fastcc i32 @sp2_ci_op_cam(ptr noundef %en50221, i32 noundef %slot, i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef %conv, i8 noundef zeroext 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sp2_ci_write_cam_control(ptr nocapture noundef readonly %en50221, i32 noundef %slot, i8 noundef zeroext %addr, i8 noundef zeroext %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %addr to i32
  %call = tail call fastcc i32 @sp2_ci_op_cam(ptr noundef %en50221, i32 noundef %slot, i8 noundef zeroext 4, i8 noundef zeroext 0, i32 noundef %conv, i8 noundef zeroext %data)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sp2_ci_slot_reset(ptr nocapture noundef readonly %en50221, i32 noundef %slot) #0 align 64 {
entry:
  %buffer.i22 = alloca [35 x i8], align 1
  %msg.i23 = alloca %struct.i2c_msg, align 4
  %buffer.i = alloca [35 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %buf = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %en50221, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sp2_ci_slot_reset.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sp2_ci_slot_reset, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !98

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %client = getelementptr inbounds %struct.sp2, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sp2_ci_slot_reset.__UNIQUE_ID_ddebug293, ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %slot) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot)
  %cmp.not = icmp eq i32 %slot, 0
  br i1 %cmp.not, label %if.end4, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %do.end
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -128, ptr %buf, align 1
  call void @llvm.lifetime.start.p0(i64 35, ptr nonnull %buffer.i) #6
  %5 = getelementptr inbounds i8, ptr %buffer.i, i32 1
  %6 = getelementptr inbounds i8, ptr %buffer.i, i32 2
  %7 = call ptr @memset(ptr %6, i32 255, i32 33)
  %client1.i = getelementptr inbounds %struct.sp2, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %client1.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter.i, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %12 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 196607, ptr %12, align 4
  %addr2.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 1
  %14 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %addr2.i, align 2
  %16 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %flags.i, align 2
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %18 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %buffer.i, ptr %buf4.i, align 4
  %19 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %buffer.i, align 1
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -128, ptr %5, align 1
  %call.i = call i32 @i2c_transfer(ptr noundef %11, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp10.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp10.not.i, label %do.body22.i, label %do.end15.i

do.end15.i:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %dev16.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16.i, ptr noundef nonnull @.str.21, i32 noundef 0, i32 noundef %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp18.i = icmp slt i32 %call.i, 0
  %spec.select = select i1 %cmp18.i, i32 %call.i, i32 -5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 35, ptr nonnull %buffer.i) #6
  br label %cleanup

do.body22.i:                                      ; preds = %if.end4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sp2_write_i2c.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sp2_ci_slot_reset, %if.then26.i)) #6
          to label %if.end8 [label %if.then26.i], !srcloc !98

if.then26.i:                                      ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %client1.i, align 4
  %dev28.i = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %addr2.i, align 2
  %conv30.i = zext i16 %24 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sp2_write_i2c.__UNIQUE_ID_ddebug291, ptr noundef %dev28.i, ptr noundef nonnull @.str.23, i32 noundef %conv30.i, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %buf) #6
  br label %if.end8

if.end8:                                          ; preds = %if.then26.i, %do.body22.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 35, ptr nonnull %buffer.i) #6
  call void @usleep_range_state(i32 noundef 500, i32 noundef 600, i32 noundef 2) #6
  %25 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %buf, align 1
  call void @llvm.lifetime.start.p0(i64 35, ptr nonnull %buffer.i22) #6
  %26 = getelementptr inbounds i8, ptr %buffer.i22, i32 1
  %27 = getelementptr inbounds i8, ptr %buffer.i22, i32 2
  %28 = call ptr @memset(ptr %27, i32 255, i32 33)
  %29 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %client1.i, align 4
  %adapter.i25 = getelementptr inbounds %struct.i2c_client, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %adapter.i25 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %adapter.i25, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i23) #6
  %33 = getelementptr inbounds i8, ptr %msg.i23, i32 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 196607, ptr %33, align 4
  %addr2.i26 = getelementptr inbounds %struct.i2c_client, ptr %30, i32 0, i32 1
  %35 = ptrtoint ptr %addr2.i26 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %addr2.i26, align 2
  %37 = ptrtoint ptr %msg.i23 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %msg.i23, align 4
  %flags.i27 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i23, i32 0, i32 1
  %38 = ptrtoint ptr %flags.i27 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 0, ptr %flags.i27, align 2
  %buf4.i29 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i23, i32 0, i32 3
  %39 = ptrtoint ptr %buf4.i29 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %buffer.i22, ptr %buf4.i29, align 4
  %40 = ptrtoint ptr %buffer.i22 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %buffer.i22, align 1
  %41 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %26, align 1
  %call.i31 = call i32 @i2c_transfer(ptr noundef %32, ptr noundef nonnull %msg.i23, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i31)
  %cmp10.not.i32 = icmp eq i32 %call.i31, 1
  br i1 %cmp10.not.i32, label %do.body22.i37, label %do.end15.i36

do.end15.i36:                                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %dev16.i33 = getelementptr inbounds %struct.i2c_client, ptr %30, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16.i33, ptr noundef nonnull @.str.21, i32 noundef 0, i32 noundef %call.i31) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31)
  %cmp18.i34 = icmp slt i32 %call.i31, 0
  %spec.select49 = select i1 %cmp18.i34, i32 %call.i31, i32 -5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i23) #6
  call void @llvm.lifetime.end.p0(i64 35, ptr nonnull %buffer.i22) #6
  br label %cleanup

do.body22.i37:                                    ; preds = %if.end8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sp2_write_i2c.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sp2_ci_slot_reset, %if.then26.i40)) #6
          to label %if.end12 [label %if.then26.i40], !srcloc !98

if.then26.i40:                                    ; preds = %do.body22.i37
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %client1.i, align 4
  %dev28.i38 = getelementptr inbounds %struct.i2c_client, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %addr2.i26 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %addr2.i26, align 2
  %conv30.i39 = zext i16 %45 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sp2_write_i2c.__UNIQUE_ID_ddebug291, ptr noundef %dev28.i38, ptr noundef nonnull @.str.23, i32 noundef %conv30.i39, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %buf) #6
  br label %if.end12

if.end12:                                         ; preds = %if.then26.i40, %do.body22.i37
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i23) #6
  call void @llvm.lifetime.end.p0(i64 35, ptr nonnull %buffer.i22) #6
  call void @msleep(i32 noundef 1000) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end15.i36, %do.end15.i, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -22, %do.end.cleanup_crit_edge ], [ %spec.select, %do.end15.i ], [ %spec.select49, %do.end15.i36 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sp2_ci_slot_shutdown(ptr nocapture noundef readonly %en50221, i32 noundef %slot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %en50221, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sp2_ci_slot_shutdown.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sp2_ci_slot_shutdown, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !98

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %client = getelementptr inbounds %struct.sp2, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sp2_ci_slot_shutdown.__UNIQUE_ID_ddebug294, ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef %slot) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sp2_ci_slot_ts_enable(ptr nocapture noundef readonly %en50221, i32 noundef %slot) #0 align 64 {
entry:
  %buffer.i = alloca [35 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %buf = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %en50221, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf) #6
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %buf, align 1, !annotation !97
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sp2_ci_slot_ts_enable.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sp2_ci_slot_ts_enable, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !98

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %client = getelementptr inbounds %struct.sp2, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sp2_ci_slot_ts_enable.__UNIQUE_ID_ddebug295, ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef %slot) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot)
  %cmp.not = icmp eq i32 %slot, 0
  br i1 %cmp.not, label %if.end4, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %do.end
  %5 = call fastcc i32 @sp2_read_i2c(ptr noundef %1, ptr noundef nonnull %buf)
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %buf, align 1
  %8 = or i8 %7, 96
  store i8 %8, ptr %buf, align 1
  call void @llvm.lifetime.start.p0(i64 35, ptr nonnull %buffer.i) #6
  %9 = getelementptr inbounds i8, ptr %buffer.i, i32 1
  %10 = getelementptr inbounds i8, ptr %buffer.i, i32 2
  %11 = call ptr @memset(ptr %10, i32 255, i32 33)
  %client1.i = getelementptr inbounds %struct.sp2, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %client1.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adapter.i, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %16 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 196607, ptr %16, align 4
  %addr2.i = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 1
  %18 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %addr2.i, align 2
  %20 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %flags.i, align 2
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %22 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %buffer.i, ptr %buf4.i, align 4
  %23 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %buffer.i, align 1
  %24 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %8, ptr %9, align 1
  %call.i = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp10.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp10.not.i, label %do.body22.i, label %do.end15.i

do.end15.i:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %dev16.i = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16.i, ptr noundef nonnull @.str.21, i32 noundef 0, i32 noundef %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp18.i = icmp slt i32 %call.i, 0
  %call..i = select i1 %cmp18.i, i32 %call.i, i32 -5
  br label %sp2_write_i2c.exit

do.body22.i:                                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sp2_write_i2c.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sp2_ci_slot_ts_enable, %if.then26.i)) #6
          to label %sp2_write_i2c.exit [label %if.then26.i], !srcloc !98

if.then26.i:                                      ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %client1.i, align 4
  %dev28.i = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %addr2.i, align 2
  %conv30.i = zext i16 %28 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sp2_write_i2c.__UNIQUE_ID_ddebug291, ptr noundef %dev28.i, ptr noundef nonnull @.str.23, i32 noundef %conv30.i, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %buf) #6
  br label %sp2_write_i2c.exit

sp2_write_i2c.exit:                               ; preds = %if.then26.i, %do.body22.i, %do.end15.i
  %retval.0.i12 = phi i32 [ %call..i, %do.end15.i ], [ 0, %if.then26.i ], [ 0, %do.body22.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 35, ptr nonnull %buffer.i) #6
  br label %cleanup

cleanup:                                          ; preds = %sp2_write_i2c.exit, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i12, %sp2_write_i2c.exit ], [ -22, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sp2_read_i2c(ptr nocapture noundef readonly %s, ptr noundef %buf) unnamed_addr #0 align 64 {
entry:
  %reg.addr = alloca i8, align 1
  %msg = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reg.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %reg.addr, align 1
  %client1 = getelementptr inbounds %struct.sp2, ptr %s, i32 0, i32 1
  %1 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %client1, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adapter, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #6
  %5 = getelementptr inbounds i8, ptr %msg, i32 4
  %6 = call ptr @memset(ptr %5, i32 255, i32 16)
  %addr2 = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 1
  %7 = ptrtoint ptr %addr2 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %addr2, align 2
  %9 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags, align 2
  %len3 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %11 = ptrtoint ptr %len3 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %len3, align 4
  %buf4 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %12 = ptrtoint ptr %buf4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %reg.addr, ptr %buf4, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1
  %13 = load i16, ptr %addr2, align 2
  %14 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %arrayinit.element, align 4
  %flags7 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 1
  %15 = ptrtoint ptr %flags7 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %flags7, align 2
  %len8 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %16 = ptrtoint ptr %len8 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %len8, align 4
  %buf9 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %17 = ptrtoint ptr %buf9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %buf, ptr %buf9, align 4
  %call = call i32 @i2c_transfer(ptr noundef %4, ptr noundef nonnull %msg, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp.not = icmp eq i32 %call, 2
  br i1 %cmp.not, label %do.body15, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 4
  %18 = ptrtoint ptr %reg.addr to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %reg.addr, align 1
  %conv11 = zext i8 %19 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %conv11, i32 noundef %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp12 = icmp slt i32 %call, 0
  %call. = select i1 %cmp12, i32 %call, i32 -5
  br label %cleanup

do.body15:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sp2_read_i2c.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sp2_read_i2c, %if.then19)) #6
          to label %cleanup [label %if.then19], !srcloc !98

if.then19:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %client1, align 4
  %dev21 = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %addr2 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %addr2, align 2
  %conv23 = zext i16 %23 to i32
  %24 = ptrtoint ptr %reg.addr to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %reg.addr, align 1
  %conv24 = zext i8 %25 to i32
  %26 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %buf, align 1
  %conv25 = zext i8 %27 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sp2_read_i2c.__UNIQUE_ID_ddebug290, ptr noundef %dev21, ptr noundef nonnull @.str.26, i32 noundef %conv23, i32 noundef %conv24, i32 noundef %conv25) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %do.body15, %do.end
  %retval.0 = phi i32 [ %call., %do.end ], [ 0, %if.then19 ], [ 0, %do.body15 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sp2_ci_poll_slot_status(ptr nocapture noundef readonly %en50221, i32 noundef %slot, i32 noundef %open) #0 align 64 {
entry:
  %buf = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %en50221, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #6
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %buf, align 1, !annotation !97
  %3 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !97
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sp2_ci_poll_slot_status.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sp2_ci_poll_slot_status, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !98

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %client = getelementptr inbounds %struct.sp2, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sp2_ci_poll_slot_status.__UNIQUE_ID_ddebug296, ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %slot, i32 noundef %open) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %next_status_checked_time = getelementptr inbounds %struct.sp2, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %next_status_checked_time to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %next_status_checked_time, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %8, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then3, label %do.end.if.end14_crit_edge

do.end.if.end14_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then3:                                         ; preds = %do.end
  %call4 = call fastcc i32 @sp2_read_i2c(ptr noundef %1, ptr noundef nonnull %buf)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %10, 100
  %11 = ptrtoint ptr %next_status_checked_time to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add, ptr %next_status_checked_time, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool7.not = icmp eq i32 %call4, 0
  br i1 %tobool7.not, label %if.end9, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %buf, align 1
  %14 = and i8 %13, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool10.not = icmp eq i8 %14, 0
  %. = select i1 %tobool10.not, i32 0, i32 5
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %., ptr %1, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.end9, %do.end.if.end14_crit_edge
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then3.cleanup_crit_edge
  %retval.0 = phi i32 [ %17, %if.end14 ], [ 0, %if.then3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #6
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sp2_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @sp2_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sp2_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @sp2_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sp2_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sp2_probe.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sp2_probe, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !98

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sp2_probe.__UNIQUE_ID_ddebug300, ptr noundef %dev, ptr noundef nonnull @.str.28) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 80) #10
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %do.end.do.body21_crit_edge, label %if.end7

do.end.do.body21_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body21

if.end7:                                          ; preds = %do.end
  %client8 = getelementptr inbounds %struct.sp2, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %client8 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %client, ptr %client8, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %dvb_adap9 = getelementptr inbounds %struct.sp2, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %dvb_adap9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %dvb_adap9, align 8
  %priv = getelementptr inbounds %struct.sp2_config, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv, align 4
  %priv10 = getelementptr inbounds %struct.sp2, ptr %call7.i.i, i32 0, i32 6
  %9 = ptrtoint ptr %priv10 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %priv10, align 8
  %ci_control = getelementptr inbounds %struct.sp2_config, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %ci_control to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ci_control, align 4
  %ci_control11 = getelementptr inbounds %struct.sp2, ptr %call7.i.i, i32 0, i32 7
  %12 = ptrtoint ptr %ci_control11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %ci_control11, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call12 = tail call fastcc i32 @sp2_init(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %do.end18, label %if.end7.do.body21_crit_edge

if.end7.do.body21_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body21

do.end18:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %client8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %client8, align 4
  %dev20 = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev20, ptr noundef nonnull @.str.29) #9
  br label %cleanup

do.body21:                                        ; preds = %if.end7.do.body21_crit_edge, %do.end.do.body21_crit_edge
  %ret.0 = phi i32 [ %call12, %if.end7.do.body21_crit_edge ], [ -12, %do.end.do.body21_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sp2_probe.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sp2_probe, %if.then33)) #6
          to label %do.end37 [label %if.then33], !srcloc !98

if.then33:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sp2_probe.__UNIQUE_ID_ddebug301, ptr noundef %dev, ptr noundef nonnull @.str.31, i32 noundef %ret.0) #6
  br label %do.end37

do.end37:                                         ; preds = %if.then33, %do.body21
  tail call void @kfree(ptr noundef %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end37, %do.end18
  %retval.0 = phi i32 [ %ret.0, %do.end37 ], [ 0, %do.end18 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sp2_remove(ptr noundef %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sp2_remove.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sp2_remove, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !98

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sp2_remove.__UNIQUE_ID_ddebug302, ptr noundef %dev, ptr noundef nonnull @.str.28) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sp2_exit.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sp2_remove, %if.then.i)) #6
          to label %do.end.i [label %if.then.i], !srcloc !98

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sp2_exit.__UNIQUE_ID_ddebug299, ptr noundef %dev.i, ptr noundef nonnull @.str.28) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.end
  %tobool3.not.i = icmp eq ptr %client, null
  br i1 %tobool3.not.i, label %do.end.i.sp2_exit.exit_crit_edge, label %if.end5.i

do.end.i.sp2_exit.exit_crit_edge:                 ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sp2_exit.exit

if.end5.i:                                        ; preds = %do.end.i
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %tobool7.not.i = icmp eq ptr %3, null
  br i1 %tobool7.not.i, label %if.end5.i.sp2_exit.exit_crit_edge, label %if.end9.i

if.end5.i.sp2_exit.exit_crit_edge:                ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sp2_exit.exit

if.end9.i:                                        ; preds = %if.end5.i
  %data.i = getelementptr inbounds %struct.sp2, ptr %3, i32 0, i32 3, i32 11
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %tobool10.not.i = icmp eq ptr %5, null
  br i1 %tobool10.not.i, label %if.end9.i.sp2_exit.exit_crit_edge, label %if.end12.i

if.end9.i.sp2_exit.exit_crit_edge:                ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sp2_exit.exit

if.end12.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  %ca.i = getelementptr inbounds %struct.sp2, ptr %3, i32 0, i32 3
  tail call void @dvb_ca_en50221_release(ptr noundef %ca.i) #6
  br label %sp2_exit.exit

sp2_exit.exit:                                    ; preds = %if.end12.i, %if.end9.i.sp2_exit.exit_crit_edge, %if.end5.i.sp2_exit.exit_crit_edge, %do.end.i.sp2_exit.exit_crit_edge
  tail call void @kfree(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sp2_init(ptr noundef %s) unnamed_addr #0 align 64 {
entry:
  %buffer.i97 = alloca [35 x i8], align 1
  %msg.i98 = alloca %struct.i2c_msg, align 4
  %buffer.i76 = alloca [35 x i8], align 1
  %msg.i77 = alloca %struct.i2c_msg, align 4
  %buffer.i = alloca [35 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %buf = alloca i8, align 1
  %cimax_init = alloca [34 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf) #6
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %buf, align 1, !annotation !97
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %cimax_init) #6
  %1 = call ptr @memcpy(ptr %cimax_init, ptr @__const.sp2_init.cimax_init, i32 34)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sp2_init.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sp2_init, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !98

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %client = getelementptr inbounds %struct.sp2, ptr %s, i32 0, i32 1
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sp2_init.__UNIQUE_ID_ddebug297, ptr noundef %dev, ptr noundef nonnull @.str.28) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ca = getelementptr inbounds %struct.sp2, ptr %s, i32 0, i32 3
  %4 = ptrtoint ptr %ca to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %ca, align 4
  %read_attribute_mem = getelementptr inbounds %struct.sp2, ptr %s, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %read_attribute_mem to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @sp2_ci_read_attribute_mem, ptr %read_attribute_mem, align 4
  %write_attribute_mem = getelementptr inbounds %struct.sp2, ptr %s, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %write_attribute_mem to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @sp2_ci_write_attribute_mem, ptr %write_attribute_mem, align 4
  %read_cam_control = getelementptr inbounds %struct.sp2, ptr %s, i32 0, i32 3, i32 3
  %7 = ptrtoint ptr %read_cam_control to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @sp2_ci_read_cam_control, ptr %read_cam_control, align 4
  %write_cam_control = getelementptr inbounds %struct.sp2, ptr %s, i32 0, i32 3, i32 4
  %8 = ptrtoint ptr %write_cam_control to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @sp2_ci_write_cam_control, ptr %write_cam_control, align 4
  %slot_reset = getelementptr inbounds %struct.sp2, ptr %s, i32 0, i32 3, i32 7
  %9 = ptrtoint ptr %slot_reset to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @sp2_ci_slot_reset, ptr %slot_reset, align 4
  %slot_shutdown = getelementptr inbounds %struct.sp2, ptr %s, i32 0, i32 3, i32 8
  %10 = ptrtoint ptr %slot_shutdown to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @sp2_ci_slot_shutdown, ptr %slot_shutdown, align 4
  %slot_ts_enable = getelementptr inbounds %struct.sp2, ptr %s, i32 0, i32 3, i32 9
  %11 = ptrtoint ptr %slot_ts_enable to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @sp2_ci_slot_ts_enable, ptr %slot_ts_enable, align 4
  %poll_slot_status = getelementptr inbounds %struct.sp2, ptr %s, i32 0, i32 3, i32 10
  %12 = ptrtoint ptr %poll_slot_status to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @sp2_ci_poll_slot_status, ptr %poll_slot_status, align 4
  %data = getelementptr inbounds %struct.sp2, ptr %s, i32 0, i32 3, i32 11
  %13 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %s, ptr %data, align 4
  %module_access_type = getelementptr inbounds %struct.sp2, ptr %s, i32 0, i32 4
  %14 = ptrtoint ptr %module_access_type to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %module_access_type, align 4
  call void @llvm.lifetime.start.p0(i64 35, ptr nonnull %buffer.i) #6
  %15 = getelementptr inbounds i8, ptr %buffer.i, i32 1
  %client1.i = getelementptr inbounds %struct.sp2, ptr %s, i32 0, i32 1
  %16 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %client1.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adapter.i, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %20 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2359295, ptr %20, align 4
  %addr2.i = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 1
  %22 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %addr2.i, align 2
  %24 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %25 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %flags.i, align 2
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %26 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %buffer.i, ptr %buf4.i, align 4
  %27 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %buffer.i, align 1
  %28 = call ptr @memcpy(ptr %15, ptr %cimax_init, i32 34)
  %call.i = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp10.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp10.not.i, label %do.body22.i, label %do.end15.i

do.end15.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev16.i = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16.i, ptr noundef nonnull @.str.21, i32 noundef 0, i32 noundef %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp18.i = icmp slt i32 %call.i, 0
  %spec.select = select i1 %cmp18.i, i32 %call.i, i32 -5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 35, ptr nonnull %buffer.i) #6
  br label %do.body29

do.body22.i:                                      ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sp2_write_i2c.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sp2_init, %if.then26.i)) #6
          to label %if.end15 [label %if.then26.i], !srcloc !98

if.then26.i:                                      ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %client1.i, align 4
  %dev28.i = getelementptr inbounds %struct.i2c_client, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %addr2.i, align 2
  %conv30.i = zext i16 %32 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sp2_write_i2c.__UNIQUE_ID_ddebug291, ptr noundef %dev28.i, ptr noundef nonnull @.str.23, i32 noundef %conv30.i, i32 noundef 0, i32 noundef 34, ptr noundef nonnull %cimax_init) #6
  br label %if.end15

if.end15:                                         ; preds = %if.then26.i, %do.body22.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 35, ptr nonnull %buffer.i) #6
  %33 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %buf, align 1
  call void @llvm.lifetime.start.p0(i64 35, ptr nonnull %buffer.i76) #6
  %34 = getelementptr inbounds i8, ptr %buffer.i76, i32 1
  %35 = getelementptr inbounds i8, ptr %buffer.i76, i32 2
  %36 = call ptr @memset(ptr %35, i32 255, i32 33)
  %37 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %client1.i, align 4
  %adapter.i79 = getelementptr inbounds %struct.i2c_client, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %adapter.i79 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %adapter.i79, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i77) #6
  %41 = getelementptr inbounds i8, ptr %msg.i77, i32 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 196607, ptr %41, align 4
  %addr2.i80 = getelementptr inbounds %struct.i2c_client, ptr %38, i32 0, i32 1
  %43 = ptrtoint ptr %addr2.i80 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %addr2.i80, align 2
  %45 = ptrtoint ptr %msg.i77 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %msg.i77, align 4
  %flags.i81 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i77, i32 0, i32 1
  %46 = ptrtoint ptr %flags.i81 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 0, ptr %flags.i81, align 2
  %buf4.i83 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i77, i32 0, i32 3
  %47 = ptrtoint ptr %buf4.i83 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %buffer.i76, ptr %buf4.i83, align 4
  %48 = ptrtoint ptr %buffer.i76 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 31, ptr %buffer.i76, align 1
  %49 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %34, align 1
  %call.i85 = call i32 @i2c_transfer(ptr noundef %40, ptr noundef nonnull %msg.i77, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i85)
  %cmp10.not.i86 = icmp eq i32 %call.i85, 1
  br i1 %cmp10.not.i86, label %do.body22.i91, label %do.end15.i90

do.end15.i90:                                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %dev16.i87 = getelementptr inbounds %struct.i2c_client, ptr %38, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16.i87, ptr noundef nonnull @.str.21, i32 noundef 31, i32 noundef %call.i85) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i85)
  %cmp18.i88 = icmp slt i32 %call.i85, 0
  %spec.select128 = select i1 %cmp18.i88, i32 %call.i85, i32 -5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i77) #6
  call void @llvm.lifetime.end.p0(i64 35, ptr nonnull %buffer.i76) #6
  br label %do.body29

do.body22.i91:                                    ; preds = %if.end15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sp2_write_i2c.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sp2_init, %if.then26.i94)) #6
          to label %if.end19 [label %if.then26.i94], !srcloc !98

if.then26.i94:                                    ; preds = %do.body22.i91
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %client1.i, align 4
  %dev28.i92 = getelementptr inbounds %struct.i2c_client, ptr %51, i32 0, i32 4
  %52 = ptrtoint ptr %addr2.i80 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %addr2.i80, align 2
  %conv30.i93 = zext i16 %53 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sp2_write_i2c.__UNIQUE_ID_ddebug291, ptr noundef %dev28.i92, ptr noundef nonnull @.str.23, i32 noundef %conv30.i93, i32 noundef 31, i32 noundef 1, ptr noundef nonnull %buf) #6
  br label %if.end19

if.end19:                                         ; preds = %if.then26.i94, %do.body22.i91
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i77) #6
  call void @llvm.lifetime.end.p0(i64 35, ptr nonnull %buffer.i76) #6
  call void @llvm.lifetime.start.p0(i64 35, ptr nonnull %buffer.i97) #6
  %54 = getelementptr inbounds i8, ptr %buffer.i97, i32 1
  %55 = getelementptr inbounds i8, ptr %buffer.i97, i32 2
  %56 = call ptr @memset(ptr %55, i32 255, i32 33)
  %57 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %client1.i, align 4
  %adapter.i100 = getelementptr inbounds %struct.i2c_client, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %adapter.i100 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %adapter.i100, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i98) #6
  %61 = getelementptr inbounds i8, ptr %msg.i98, i32 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 196607, ptr %61, align 4
  %addr2.i101 = getelementptr inbounds %struct.i2c_client, ptr %58, i32 0, i32 1
  %63 = ptrtoint ptr %addr2.i101 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %addr2.i101, align 2
  %65 = ptrtoint ptr %msg.i98 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %msg.i98, align 4
  %flags.i102 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i98, i32 0, i32 1
  %66 = ptrtoint ptr %flags.i102 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 0, ptr %flags.i102, align 2
  %buf4.i104 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i98, i32 0, i32 3
  %67 = ptrtoint ptr %buf4.i104 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %buffer.i97, ptr %buf4.i104, align 4
  %68 = ptrtoint ptr %buffer.i97 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 24, ptr %buffer.i97, align 1
  %69 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %buf, align 1
  %71 = ptrtoint ptr %54 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %54, align 1
  %call.i106 = call i32 @i2c_transfer(ptr noundef %60, ptr noundef nonnull %msg.i98, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i106)
  %cmp10.not.i107 = icmp eq i32 %call.i106, 1
  br i1 %cmp10.not.i107, label %do.body22.i112, label %do.end15.i111

do.end15.i111:                                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %dev16.i108 = getelementptr inbounds %struct.i2c_client, ptr %58, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16.i108, ptr noundef nonnull @.str.21, i32 noundef 24, i32 noundef %call.i106) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i106)
  %cmp18.i109 = icmp slt i32 %call.i106, 0
  %spec.select129 = select i1 %cmp18.i109, i32 %call.i106, i32 -5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i98) #6
  call void @llvm.lifetime.end.p0(i64 35, ptr nonnull %buffer.i97) #6
  br label %do.body29

do.body22.i112:                                   ; preds = %if.end19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sp2_write_i2c.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sp2_init, %if.then26.i115)) #6
          to label %if.end23 [label %if.then26.i115], !srcloc !98

if.then26.i115:                                   ; preds = %do.body22.i112
  call void @__sanitizer_cov_trace_pc() #8
  %72 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %client1.i, align 4
  %dev28.i113 = getelementptr inbounds %struct.i2c_client, ptr %73, i32 0, i32 4
  %74 = ptrtoint ptr %addr2.i101 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %addr2.i101, align 2
  %conv30.i114 = zext i16 %75 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sp2_write_i2c.__UNIQUE_ID_ddebug291, ptr noundef %dev28.i113, ptr noundef nonnull @.str.23, i32 noundef %conv30.i114, i32 noundef 24, i32 noundef 1, ptr noundef nonnull %buf) #6
  br label %if.end23

if.end23:                                         ; preds = %if.then26.i115, %do.body22.i112
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i98) #6
  call void @llvm.lifetime.end.p0(i64 35, ptr nonnull %buffer.i97) #6
  %dvb_adap = getelementptr inbounds %struct.sp2, ptr %s, i32 0, i32 2
  %76 = ptrtoint ptr %dvb_adap to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dvb_adap, align 4
  %call25 = call i32 @dvb_ca_en50221_init(ptr noundef %77, ptr noundef %ca, i32 noundef 0, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end23.cleanup_crit_edge, label %if.end23.do.body29_crit_edge

if.end23.do.body29_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body29

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body29:                                        ; preds = %if.end23.do.body29_crit_edge, %do.end15.i111, %do.end15.i90, %do.end15.i
  %ret.0 = phi i32 [ %call25, %if.end23.do.body29_crit_edge ], [ %spec.select, %do.end15.i ], [ %spec.select128, %do.end15.i90 ], [ %spec.select129, %do.end15.i111 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sp2_init.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sp2_init, %if.then41)) #6
          to label %cleanup [label %if.then41], !srcloc !98

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #8
  %78 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %client1.i, align 4
  %dev43 = getelementptr inbounds %struct.i2c_client, ptr %79, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sp2_init.__UNIQUE_ID_ddebug298, ptr noundef %dev43, ptr noundef nonnull @.str.31, i32 noundef %ret.0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then41, %do.body29, %if.end23.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end23.cleanup_crit_edge ], [ %ret.0, %if.then41 ], [ %ret.0, %do.body29 ]
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %cimax_init) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf) #6
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_ca_en50221_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_ca_en50221_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !15, !16, !17, !19, !20, !22, !24, !26, !27, !29, !30, !31, !32, !33, !34, !36, !37, !38, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !52, !53, !55, !56, !57, !58, !60, !61, !63, !65, !66, !67, !69, !70, !71, !72, !74, !75, !77, !78, !80, !82, !83, !85, !86}
!llvm.module.flags = !{!88, !89, !90, !91, !92, !93, !94, !95}
!llvm.ident = !{!96}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/sp2.c", i32 180, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @sp2_ci_slot_reset.__UNIQUE_ID_ddebug293, !1, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/dvb-frontends/sp2.c", i32 210, i32 2}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @sp2_ci_slot_shutdown.__UNIQUE_ID_ddebug294, !7, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/dvb-frontends/sp2.c", i32 221, i32 2}
!12 = !{ptr @sp2_ci_slot_ts_enable.__UNIQUE_ID_ddebug295, !11, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/media/dvb-frontends/sp2.c", i32 240, i32 2}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @sp2_ci_poll_slot_status.__UNIQUE_ID_ddebug296, !14, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!17 = !{ptr @__initcall__kmod_sp2__303_426_sp2_driver_init6, !18, !"__initcall__kmod_sp2__303_426_sp2_driver_init6", i1 false, i1 false}
!18 = !{!"../drivers/media/dvb-frontends/sp2.c", i32 426, i32 1}
!19 = !{ptr @__exitcall_sp2_driver_exit, !18, !"__exitcall_sp2_driver_exit", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_description304, !21, !"__UNIQUE_ID_description304", i1 false, i1 false}
!21 = !{!"../drivers/media/dvb-frontends/sp2.c", i32 428, i32 1}
!22 = !{ptr @__UNIQUE_ID_author305, !23, !"__UNIQUE_ID_author305", i1 false, i1 false}
!23 = !{!"../drivers/media/dvb-frontends/sp2.c", i32 429, i32 1}
!24 = !{ptr @__UNIQUE_ID_file306, !25, !"__UNIQUE_ID_file306", i1 false, i1 false}
!25 = !{!"../drivers/media/dvb-frontends/sp2.c", i32 430, i32 1}
!26 = !{ptr @__UNIQUE_ID_license307, !25, !"__UNIQUE_ID_license307", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/dvb-frontends/sp2.c", i32 127, i32 3}
!29 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @sp2_ci_op_cam._entry, !28, !"_entry", i1 false, i1 false}
!33 = !{ptr @sp2_ci_op_cam._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/dvb-frontends/sp2.c", i32 134, i32 2}
!36 = !{ptr @sp2_ci_op_cam.__UNIQUE_ID_ddebug292, !35, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!37 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/dvb-frontends/sp2.c", i32 67, i32 3}
!43 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @sp2_write_i2c._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @sp2_write_i2c._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/dvb-frontends/sp2.c", i32 78, i32 3}
!48 = !{ptr @sp2_write_i2c._entry.20, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @sp2_write_i2c._entry_ptr.22, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/dvb-frontends/sp2.c", i32 86, i32 2}
!52 = !{ptr @sp2_write_i2c.__UNIQUE_ID_ddebug291, !51, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/dvb-frontends/sp2.c", i32 39, i32 3}
!55 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @sp2_read_i2c._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @sp2_read_i2c._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/dvb-frontends/sp2.c", i32 47, i32 2}
!60 = !{ptr @sp2_read_i2c.__UNIQUE_ID_ddebug290, !59, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!61 = !{ptr @sp2_driver, !62, !"sp2_driver", i1 false, i1 false}
!62 = !{!"../drivers/media/dvb-frontends/sp2.c", i32 417, i32 26}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/dvb-frontends/sp2.c", i32 373, i32 2}
!65 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @sp2_probe.__UNIQUE_ID_ddebug300, !64, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/dvb-frontends/sp2.c", i32 392, i32 2}
!69 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @sp2_probe._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @sp2_probe._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/dvb-frontends/sp2.c", i32 395, i32 2}
!74 = !{ptr @sp2_probe.__UNIQUE_ID_ddebug301, !73, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/dvb-frontends/sp2.c", i32 304, i32 2}
!77 = !{ptr @sp2_init.__UNIQUE_ID_ddebug297, !76, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!78 = !{ptr @sp2_init.__UNIQUE_ID_ddebug298, !79, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!79 = !{!"../drivers/media/dvb-frontends/sp2.c", i32 341, i32 2}
!80 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/dvb-frontends/sp2.c", i32 405, i32 2}
!82 = !{ptr @sp2_remove.__UNIQUE_ID_ddebug302, !81, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!83 = !{ptr @.str.34, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/dvb-frontends/sp2.c", i32 349, i32 2}
!85 = !{ptr @sp2_exit.__UNIQUE_ID_ddebug299, !84, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!86 = !{ptr @sp2_id, !87, !"sp2_id", i1 false, i1 false}
!87 = !{!"../drivers/media/dvb-frontends/sp2.c", i32 411, i32 35}
!88 = !{i32 1, !"wchar_size", i32 2}
!89 = !{i32 1, !"min_enum_size", i32 4}
!90 = !{i32 8, !"branch-target-enforcement", i32 0}
!91 = !{i32 8, !"sign-return-address", i32 0}
!92 = !{i32 8, !"sign-return-address-all", i32 0}
!93 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!94 = !{i32 7, !"uwtable", i32 1}
!95 = !{i32 7, !"frame-pointer", i32 2}
!96 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!97 = !{!"auto-init"}
!98 = !{i64 2148904940, i64 2148904945, i64 2148904958, i64 2148905002, i64 2148905036, i64 2148905057}
