; ModuleID = '/llk/IR_all_yes/drivers/nfc/pn533/i2c.c_pt.bc'
source_filename = "../drivers/nfc/pn533/i2c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pn533_phy_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pn533_i2c_phy = type { ptr, ptr, i8, i32 }
%struct.nfc_dev = type { i32, i32, ptr, i32, i32, %struct.device, i8, i8, i8, i8, ptr, i8, %struct.nfc_genl_data, i32, %struct.list_head, i32, i32, %struct.timer_list, %struct.work_struct, i8, ptr, ptr, i32, ptr, ptr }
%struct.nfc_genl_data = type { i32, %struct.mutex }
%struct.sk_buff = type { %union.anon.42, %union.anon.45, %union.anon.46, [48 x i8], %union.anon.47, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.49, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.42 = type { %struct.anon.43 }
%struct.anon.43 = type { ptr, ptr, %union.anon.44 }
%union.anon.44 = type { ptr }
%union.anon.45 = type { ptr }
%union.anon.46 = type { i64 }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type { i32, ptr }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.51, i32, i32, i32, i16, i16, %union.anon.53, i32, %union.anon.54, %union.anon.55, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.51 = type { i32 }
%union.anon.53 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i16 }
%struct.pn533 = type { ptr, i32, i32, %struct.sk_buff_head, %struct.sk_buff_head, ptr, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.list_head, ptr, i8, %struct.mutex, ptr, ptr, [6 x ptr], i8, i8, i8, i32, i32, %struct.timer_list, i32, ptr, i32, i8, i8, i8, ptr, ptr, ptr, ptr }
%struct.sk_buff_head = type { %union.anon.63, i32, %struct.spinlock }
%union.anon.63 = type { %struct.anon.64 }
%struct.anon.64 = type { ptr, ptr }
%struct.pn533_frame_ops = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, i32, i32, ptr }

@__initcall__kmod_pn533_i2c__368_270_pn533_i2c_driver_init6 = internal global ptr @pn533_i2c_driver_init, section ".initcall6.init", align 4
@pn533_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @pn533_i2c_probe, ptr @pn533_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_pn533_i2c_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @pn533_i2c_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_pn533_i2c_driver_exit = internal global ptr @pn533_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author369 = internal constant [63 x i8] c"pn533_i2c.author=Michael Thalmeier <michael.thalmeier@hale.at>\00", section ".modinfo", align 1
@__UNIQUE_ID_description370 = internal constant [47 x i8] c"pn533_i2c.description=PN533 I2C driver ver 0.1\00", section ".modinfo", align 1
@__UNIQUE_ID_version371 = internal constant [22 x i8] c"pn533_i2c.version=0.1\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pn533_i2c\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.1\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file372 = internal constant [43 x i8] c"pn533_i2c.file=drivers/nfc/pn533/pn533_i2c\00", section ".modinfo", align 1
@__UNIQUE_ID_license373 = internal constant [22 x i8] c"pn533_i2c.license=GPL\00", section ".modinfo", align 1
@of_pn533_i2c_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pn532\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pn533-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pn532-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@pn533_i2c_id_table = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"pn533_i2c\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@pn533_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 174, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"NFC: Need I2C_FUNC_I2C\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pn533_i2c_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/nfc/pn533/i2c.c\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pn533_i2c_probe._entry_ptr = internal global ptr @pn533_i2c_probe._entry, section ".printk_index", align 4
@i2c_phy_ops = internal constant { %struct.pn533_phy_ops, [44 x i8] } { %struct.pn533_phy_ops { ptr @pn533_i2c_send_frame, ptr @pn533_i2c_send_ack, ptr @pn533_i2c_abort_cmd, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@pn533_i2c_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 204, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"NFC: Unable to register IRQ handler\0A\00", [59 x i8] zeroinitializer }, align 32
@pn533_i2c_probe._entry_ptr.10 = internal global ptr @pn533_i2c_probe._entry.8, section ".printk_index", align 4
@pn533_i2c_send_frame.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.11, ptr @.str.5, ptr @.str.12, i8 0, i8 15, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pn533_i2c_send_frame\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PN533_i2c TX: \00", [17 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@pn533_i2c_send_ack.ack = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\00\00\FF\00\FF\00", [26 x i8] zeroinitializer }, align 32
@pn533_i2c_irq_thread_fn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@pn533_i2c_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.5, i32 109, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"NFC: cannot read. r=%d len=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pn533_i2c_read\00", [17 x i8] zeroinitializer }, align 32
@pn533_i2c_read._entry_ptr = internal global ptr @pn533_i2c_read._entry, section ".printk_index", align 4
@pn533_i2c_read._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.5, i32 115, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"NFC: READY flag not set\00", [40 x i8] zeroinitializer }, align 32
@pn533_i2c_read._entry_ptr.18 = internal global ptr @pn533_i2c_read._entry.16, section ".printk_index", align 4
@___asan_gen_.19 = private unnamed_addr constant [17 x i8] c"pn533_i2c_driver\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 260, i32 26 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 274, i32 1 }
@___asan_gen_.31 = private unnamed_addr constant [19 x i8] c"of_pn533_i2c_match\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 242, i32 34 }
@___asan_gen_.34 = private unnamed_addr constant [19 x i8] c"pn533_i2c_id_table\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 254, i32 35 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 174, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant [12 x i8] c"i2c_phy_ops\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 159, i32 35 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 204, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 62, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant [4 x i8] c"ack\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 41, i32 18 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 109, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.89 = private constant [27 x i8] c"../drivers/nfc/pn533/i2c.c\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 115, i32 3 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_author369, ptr @__UNIQUE_ID_description370, ptr @__UNIQUE_ID_file372, ptr @__UNIQUE_ID_license373, ptr @__UNIQUE_ID_version371, ptr @__exitcall_pn533_i2c_driver_exit, ptr @__initcall__kmod_pn533_i2c__368_270_pn533_i2c_driver_init6, ptr @__modver_attr, ptr @pn533_i2c_driver_exit, ptr @pn533_i2c_probe._entry, ptr @pn533_i2c_probe._entry.8, ptr @pn533_i2c_probe._entry_ptr, ptr @pn533_i2c_probe._entry_ptr.10, ptr @pn533_i2c_read._entry, ptr @pn533_i2c_read._entry.16, ptr @pn533_i2c_read._entry_ptr, ptr @pn533_i2c_read._entry_ptr.18, ptr @pn533_i2c_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @of_pn533_i2c_match, ptr @pn533_i2c_id_table, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @i2c_phy_ops, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @pn533_i2c_send_ack.ack, ptr @.str.14, ptr @.str.15, ptr @.str.17], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pn533_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_pn533_i2c_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pn533_i2c_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pn533_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_phy_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pn533_i2c_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pn533_i2c_send_ack.ack to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pn533_i2c_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pn533_i2c_read._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pn533_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @pn533_i2c_driver) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pn533_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @i2c_del_driver(ptr noundef nonnull @pn533_i2c_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pn533_i2c_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1) #4
  %and.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3520) #4
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %client, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call8 = tail call ptr @pn53x_common_init(i32 noundef 4, i32 noundef 0, ptr noundef nonnull %call.i, ptr noundef nonnull @i2c_phy_ops, ptr noundef null, ptr noundef %dev) #4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  %priv13 = getelementptr inbounds %struct.pn533_i2c_phy, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %priv13 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call8, ptr %priv13, align 4
  %call15 = tail call i32 @pn532_i2c_nfc_alloc(ptr noundef %call8, i32 noundef 62, ptr noundef %dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end12.nfc_alloc_err_crit_edge

if.end12.nfc_alloc_err_crit_edge:                 ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %nfc_alloc_err

if.end18:                                         ; preds = %if.end12
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq, align 4
  %call19 = tail call i32 @request_threaded_irq(i32 noundef %11, ptr noundef null, ptr noundef nonnull @pn533_i2c_irq_thread_fn, i32 noundef 8322, ptr noundef nonnull @.str.1, ptr noundef nonnull %call.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp = icmp slt i32 %call19, 0
  br i1 %cmp, label %do.end23, label %if.end25

do.end23:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #7
  br label %irq_rqst_err

if.end25:                                         ; preds = %if.end18
  %call26 = tail call i32 @pn533_finalize_setup(ptr noundef %call8) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end25.fn_setup_err_crit_edge

if.end25.fn_setup_err_crit_edge:                  ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %fn_setup_err

if.end29:                                         ; preds = %if.end25
  %12 = ptrtoint ptr %call8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call8, align 4
  %call30 = tail call i32 @nfc_register_device(ptr noundef %13) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end29.cleanup_crit_edge, label %if.end29.fn_setup_err_crit_edge

if.end29.fn_setup_err_crit_edge:                  ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  br label %fn_setup_err

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

fn_setup_err:                                     ; preds = %if.end29.fn_setup_err_crit_edge, %if.end25.fn_setup_err_crit_edge
  %r.0 = phi i32 [ %call26, %if.end25.fn_setup_err_crit_edge ], [ %call30, %if.end29.fn_setup_err_crit_edge ]
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq, align 4
  %call35 = tail call ptr @free_irq(i32 noundef %15, ptr noundef nonnull %call.i) #4
  br label %irq_rqst_err

irq_rqst_err:                                     ; preds = %fn_setup_err, %do.end23
  %r.1 = phi i32 [ %call19, %do.end23 ], [ %r.0, %fn_setup_err ]
  %16 = ptrtoint ptr %call8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call8, align 4
  %dev1.i = getelementptr inbounds %struct.nfc_dev, ptr %17, i32 0, i32 5
  tail call void @put_device(ptr noundef %dev1.i) #4
  br label %nfc_alloc_err

nfc_alloc_err:                                    ; preds = %irq_rqst_err, %if.end12.nfc_alloc_err_crit_edge
  %r.2 = phi i32 [ %call15, %if.end12.nfc_alloc_err_crit_edge ], [ %r.1, %irq_rqst_err ]
  %18 = ptrtoint ptr %priv13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv13, align 4
  tail call void @pn53x_common_clean(ptr noundef %19) #4
  br label %cleanup

cleanup:                                          ; preds = %nfc_alloc_err, %if.end29.cleanup_crit_edge, %if.then10, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %8, %if.then10 ], [ %r.2, %nfc_alloc_err ], [ -19, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pn533_i2c_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %1) #4
  %priv = getelementptr inbounds %struct.pn533_i2c_phy, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  tail call void @pn53x_unregister_nfc(ptr noundef %5) #4
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 4
  tail call void @pn53x_common_clean(ptr noundef %7) #4
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pn53x_common_init(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pn532_i2c_nfc_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pn533_i2c_irq_thread_fn(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %lor.lhs.false

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %irq1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %irq)
  %cmp.not = icmp eq i32 %3, %irq
  br i1 %cmp.not, label %if.end36, label %lor.lhs.false.land.end_crit_edge

lor.lhs.false.land.end_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

land.end:                                         ; preds = %lor.lhs.false.land.end_crit_edge, %entry.land.end_crit_edge
  %.b70 = load i1, ptr @pn533_i2c_irq_thread_fn.__already_done, align 1
  br i1 %.b70, label %land.end.cleanup_crit_edge, label %if.then7, !prof !63

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then7:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @pn533_i2c_irq_thread_fn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 135, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end36:                                         ; preds = %lor.lhs.false
  %hard_fault = getelementptr inbounds %struct.pn533_i2c_phy, ptr %data, i32 0, i32 3
  %4 = ptrtoint ptr %hard_fault to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hard_fault, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp37.not = icmp eq i32 %5, 0
  br i1 %cmp37.not, label %if.end39, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end39:                                         ; preds = %if.end36
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 276, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #4
  %cmp.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.i, label %if.end39.cleanup_crit_edge, label %if.end.i

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %if.end39
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 276) #4
  %call.i33.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef %call1.i, i32 noundef 276, i16 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 276, i32 %call.i33.i)
  %cmp3.not.i = icmp eq i32 %call.i33.i, 276
  br i1 %cmp3.not.i, label %if.end5.i, label %if.then41

if.end5.i:                                        ; preds = %if.end.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  %10 = and i8 %9, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %do.end9.i, label %if.end50

do.end9.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev10.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10.i, ptr noundef nonnull @.str.17) #7
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #4
  br label %cleanup

if.then41:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.14, i32 noundef %call.i33.i, i32 noundef 276) #7
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #4
  %11 = ptrtoint ptr %hard_fault to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -121, ptr %hard_fault, align 4
  %priv = getelementptr inbounds %struct.pn533_i2c_phy, ptr %data, i32 0, i32 1
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv, align 4
  tail call void @pn533_recv_frame(ptr noundef %13, ptr noundef null, i32 noundef -121) #4
  br label %cleanup

if.end50:                                         ; preds = %if.end5.i
  %call12.i = tail call ptr @skb_pull(ptr noundef nonnull %call.i.i, i32 noundef 1) #4
  %priv.i = getelementptr inbounds %struct.pn533_i2c_phy, ptr %data, i32 0, i32 1
  %14 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv.i, align 4
  %ops.i = getelementptr inbounds %struct.pn533, ptr %15, i32 0, i32 34
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i, align 4
  %rx_frame_size.i = getelementptr inbounds %struct.pn533_frame_ops, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %rx_frame_size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rx_frame_size.i, align 4
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i, align 4
  %call14.i = tail call i32 %19(ptr noundef %21) #4
  tail call void @skb_trim(ptr noundef nonnull %call.i.i, i32 noundef %call14.i) #4
  %aborted = getelementptr inbounds %struct.pn533_i2c_phy, ptr %data, i32 0, i32 2
  %22 = ptrtoint ptr %aborted to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %aborted, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool51.not = icmp eq i8 %23, 0
  br i1 %tobool51.not, label %if.then52, label %if.end50.cleanup_crit_edge

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then52:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #6
  %24 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv.i, align 4
  tail call void @pn533_recv_frame(ptr noundef %25, ptr noundef nonnull %call.i.i, i32 noundef 0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then52, %if.end50.cleanup_crit_edge, %if.then41, %do.end9.i, %if.end39.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %if.then7, %land.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then41 ], [ 0, %if.then7 ], [ 0, %land.end.cleanup_crit_edge ], [ 1, %if.end36.cleanup_crit_edge ], [ 1, %if.then52 ], [ 1, %if.end50.cleanup_crit_edge ], [ 1, %do.end9.i ], [ 1, %if.end39.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pn533_finalize_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pn53x_common_clean(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pn533_i2c_send_frame(ptr noundef %dev, ptr nocapture noundef readonly %out) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %phy1 = getelementptr inbounds %struct.pn533, ptr %dev, i32 0, i32 36
  %0 = ptrtoint ptr %phy1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %hard_fault = getelementptr inbounds %struct.pn533_i2c_phy, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %hard_fault to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hard_fault, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv = getelementptr inbounds %struct.pn533_i2c_phy, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 4
  %cmp3 = icmp eq ptr %7, null
  br i1 %cmp3, label %if.then4, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %priv, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %aborted = getelementptr inbounds %struct.pn533_i2c_phy, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %aborted to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %aborted, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pn533_i2c_send_frame.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pn533_i2c_send_frame, %if.then9)) #4
          to label %do.end [label %if.then9], !srcloc !65

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  %data = getelementptr inbounds %struct.sk_buff, ptr %out, i32 0, i32 19
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %out, i32 0, i32 6
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.12, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %11, i32 noundef %13, i1 noundef zeroext false) #4
  br label %do.end

do.end:                                           ; preds = %if.then9, %if.end6
  %data11 = getelementptr inbounds %struct.sk_buff, ptr %out, i32 0, i32 19
  %14 = ptrtoint ptr %data11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data11, align 4
  %len12 = getelementptr inbounds %struct.sk_buff, ptr %out, i32 0, i32 6
  %16 = ptrtoint ptr %len12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len12, align 4
  %call.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %3, ptr noundef %15, i32 noundef %17, i16 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -121, i32 %call.i)
  %cmp14 = icmp eq i32 %call.i, -121
  br i1 %cmp14, label %if.then15, label %do.end.if.end19_crit_edge

do.end.if.end19_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

if.then15:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @usleep_range_state(i32 noundef 6000, i32 noundef 10000, i32 noundef 2) #4
  %18 = ptrtoint ptr %data11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data11, align 4
  %20 = ptrtoint ptr %len12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len12, align 4
  %call.i45 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %3, ptr noundef %19, i32 noundef %21, i16 noundef zeroext 0) #4
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %do.end.if.end19_crit_edge
  %rc.0 = phi i32 [ %call.i45, %if.then15 ], [ %call.i, %do.end.if.end19_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %rc.0)
  %cmp20 = icmp sgt i32 %rc.0, -1
  br i1 %cmp20, label %if.then21, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %len12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len12, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rc.0, i32 %23)
  %cmp23.not = icmp eq i32 %rc.0, %23
  %. = select i1 %cmp23.not, i32 0, i32 -121
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %if.end19.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %entry.cleanup_crit_edge ], [ %rc.0, %if.end19.cleanup_crit_edge ], [ %., %if.then21 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pn533_i2c_send_ack(ptr nocapture noundef readonly %dev, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %phy1 = getelementptr inbounds %struct.pn533, ptr %dev, i32 0, i32 36
  %0 = ptrtoint ptr %phy1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %3, ptr noundef nonnull @pn533_i2c_send_ack.ack, i32 noundef 6, i16 noundef zeroext 0) #4
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pn533_i2c_abort_cmd(ptr nocapture noundef readonly %dev, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %phy1 = getelementptr inbounds %struct.pn533, ptr %dev, i32 0, i32 36
  %0 = ptrtoint ptr %phy1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy1, align 4
  %aborted = getelementptr inbounds %struct.pn533_i2c_phy, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %aborted to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %aborted, align 4
  %3 = load ptr, ptr %phy1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call.i.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %5, ptr noundef nonnull @pn533_i2c_send_ack.ack, i32 noundef 6, i16 noundef zeroext 0) #4
  %priv = getelementptr inbounds %struct.pn533_i2c_phy, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 4
  tail call void @pn533_recv_frame(ptr noundef %7, ptr noundef null, i32 noundef -2) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pn533_recv_frame(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pn53x_unregister_nfc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !12, !13, !15, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !34, !35, !36, !37, !39, !41, !43, !44, !45, !46, !48, !49, !50, !52}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @__initcall__kmod_pn533_i2c__368_270_pn533_i2c_driver_init6, !1, !"__initcall__kmod_pn533_i2c__368_270_pn533_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/nfc/pn533/i2c.c", i32 270, i32 1}
!2 = !{ptr @__exitcall_pn533_i2c_driver_exit, !1, !"__exitcall_pn533_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author369, !4, !"__UNIQUE_ID_author369", i1 false, i1 false}
!4 = !{!"../drivers/nfc/pn533/i2c.c", i32 272, i32 1}
!5 = !{ptr @__UNIQUE_ID_description370, !6, !"__UNIQUE_ID_description370", i1 false, i1 false}
!6 = !{!"../drivers/nfc/pn533/i2c.c", i32 273, i32 1}
!7 = !{ptr @__UNIQUE_ID_version371, !8, !"__UNIQUE_ID_version371", i1 false, i1 false}
!8 = !{!"../drivers/nfc/pn533/i2c.c", i32 274, i32 1}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__modver_attr, !8, !"__modver_attr", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_file372, !14, !"__UNIQUE_ID_file372", i1 false, i1 false}
!14 = !{!"../drivers/nfc/pn533/i2c.c", i32 275, i32 1}
!15 = !{ptr @__UNIQUE_ID_license373, !14, !"__UNIQUE_ID_license373", i1 false, i1 false}
!16 = !{ptr @pn533_i2c_driver, !17, !"pn533_i2c_driver", i1 false, i1 false}
!17 = !{!"../drivers/nfc/pn533/i2c.c", i32 260, i32 26}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/nfc/pn533/i2c.c", i32 174, i32 3}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @pn533_i2c_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @pn533_i2c_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/nfc/pn533/i2c.c", i32 204, i32 3}
!28 = !{ptr @pn533_i2c_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @pn533_i2c_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @i2c_phy_ops, !31, !"i2c_phy_ops", i1 false, i1 false}
!31 = !{!"../drivers/nfc/pn533/i2c.c", i32 159, i32 35}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/nfc/pn533/i2c.c", i32 62, i32 2}
!34 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @pn533_i2c_send_frame.__UNIQUE_ID_ddebug367, !33, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!36 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @pn533_i2c_send_ack.ack, !38, !"ack", i1 false, i1 false}
!38 = !{!"../drivers/nfc/pn533/i2c.c", i32 41, i32 18}
!39 = distinct !{null, !40, !"__already_done", i1 false, i1 false}
!40 = !{!"../drivers/nfc/pn533/i2c.c", i32 135, i32 3}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/nfc/pn533/i2c.c", i32 109, i32 3}
!43 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @pn533_i2c_read._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @pn533_i2c_read._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/nfc/pn533/i2c.c", i32 115, i32 3}
!48 = !{ptr @pn533_i2c_read._entry.16, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @pn533_i2c_read._entry_ptr.18, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @of_pn533_i2c_match, !51, !"of_pn533_i2c_match", i1 false, i1 false}
!51 = !{!"../drivers/nfc/pn533/i2c.c", i32 242, i32 34}
!52 = !{ptr @pn533_i2c_id_table, !53, !"pn533_i2c_id_table", i1 false, i1 false}
!53 = !{!"../drivers/nfc/pn533/i2c.c", i32 254, i32 35}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{!"branch_weights", i32 2000, i32 1}
!64 = !{i8 0, i8 2}
!65 = !{i64 2148281636, i64 2148281641, i64 2148281654, i64 2148281698, i64 2148281732, i64 2148281753}
