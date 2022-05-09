; ModuleID = '/llk/IR_all_yes/drivers/memory/dfl-emif.c_pt.bc'
source_filename = "../drivers/memory/dfl-emif.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dfl_driver = type { %struct.device_driver, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dfl_device_id = type { i16, i16, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.emif_attr = type { %struct.device_attribute, i32, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dfl_device = type { %struct.device, i32, i16, i16, i8, %struct.resource, ptr, i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.dfl_emif = type { ptr, ptr, %struct.spinlock }

@__initcall__kmod_dfl_emif__175_203_dfl_emif_driver_init6 = internal global ptr @dfl_emif_driver_init, section ".initcall6.init", align 4
@dfl_emif_driver = internal global { %struct.dfl_driver, [40 x i8] } { %struct.dfl_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dfl_emif_groups, ptr null, ptr null, ptr null }, ptr @dfl_emif_ids, ptr @dfl_emif_probe, ptr null }, [40 x i8] zeroinitializer }, align 32
@__exitcall_dfl_emif_driver_exit = internal global ptr @dfl_emif_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description176 = internal constant [37 x i8] c"dfl_emif.description=DFL EMIF driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author177 = internal constant [34 x i8] c"dfl_emif.author=Intel Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_file178 = internal constant [38 x i8] c"dfl_emif.file=drivers/memory/dfl-emif\00", section ".modinfo", align 1
@__UNIQUE_ID_license179 = internal constant [24 x i8] c"dfl_emif.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dfl-emif\00", [23 x i8] zeroinitializer }, align 32
@dfl_emif_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dfl_emif_group, ptr null], [24 x i8] zeroinitializer }, align 32
@dfl_emif_ids = internal constant { [2 x %struct.dfl_device_id], [16 x i8] } { [2 x %struct.dfl_device_id] [%struct.dfl_device_id { i16 0, i16 9, i32 0 }, %struct.dfl_device_id zeroinitializer], [16 x i8] zeroinitializer }, align 32
@dfl_emif_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @dfl_emif_visible, ptr null, ptr @dfl_emif_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@dfl_emif_attrs = internal global { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @emif_attr_inf0_init_done, ptr @emif_attr_inf0_cal_fail, ptr @emif_attr_inf0_clear, ptr @emif_attr_inf1_init_done, ptr @emif_attr_inf1_cal_fail, ptr @emif_attr_inf1_clear, ptr @emif_attr_inf2_init_done, ptr @emif_attr_inf2_cal_fail, ptr @emif_attr_inf2_clear, ptr @emif_attr_inf3_init_done, ptr @emif_attr_inf3_cal_fail, ptr @emif_attr_inf3_clear, ptr null], [44 x i8] zeroinitializer }, align 32
@emif_attr_inf0_init_done = internal global { %struct.emif_attr, [60 x i8] } { %struct.emif_attr { %struct.device_attribute { %struct.attribute { ptr @.str.1, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @emif_state_show, ptr null }, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@emif_attr_inf0_cal_fail = internal global { %struct.emif_attr, [60 x i8] } { %struct.emif_attr { %struct.device_attribute { %struct.attribute { ptr @.str.3, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @emif_state_show, ptr null }, i32 8, i32 0 }, [60 x i8] zeroinitializer }, align 32
@emif_attr_inf0_clear = internal global { %struct.emif_attr, [60 x i8] } { %struct.emif_attr { %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @emif_clear_store }, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@emif_attr_inf1_init_done = internal global { %struct.emif_attr, [60 x i8] } { %struct.emif_attr { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @emif_state_show, ptr null }, i32 0, i32 1 }, [60 x i8] zeroinitializer }, align 32
@emif_attr_inf1_cal_fail = internal global { %struct.emif_attr, [60 x i8] } { %struct.emif_attr { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @emif_state_show, ptr null }, i32 8, i32 1 }, [60 x i8] zeroinitializer }, align 32
@emif_attr_inf1_clear = internal global { %struct.emif_attr, [60 x i8] } { %struct.emif_attr { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @emif_clear_store }, i32 0, i32 1 }, [60 x i8] zeroinitializer }, align 32
@emif_attr_inf2_init_done = internal global { %struct.emif_attr, [60 x i8] } { %struct.emif_attr { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @emif_state_show, ptr null }, i32 0, i32 2 }, [60 x i8] zeroinitializer }, align 32
@emif_attr_inf2_cal_fail = internal global { %struct.emif_attr, [60 x i8] } { %struct.emif_attr { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @emif_state_show, ptr null }, i32 8, i32 2 }, [60 x i8] zeroinitializer }, align 32
@emif_attr_inf2_clear = internal global { %struct.emif_attr, [60 x i8] } { %struct.emif_attr { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @emif_clear_store }, i32 0, i32 2 }, [60 x i8] zeroinitializer }, align 32
@emif_attr_inf3_init_done = internal global { %struct.emif_attr, [60 x i8] } { %struct.emif_attr { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @emif_state_show, ptr null }, i32 0, i32 3 }, [60 x i8] zeroinitializer }, align 32
@emif_attr_inf3_cal_fail = internal global { %struct.emif_attr, [60 x i8] } { %struct.emif_attr { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @emif_state_show, ptr null }, i32 8, i32 3 }, [60 x i8] zeroinitializer }, align 32
@emif_attr_inf3_clear = internal global { %struct.emif_attr, [60 x i8] } { %struct.emif_attr { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @emif_clear_store }, i32 0, i32 3 }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"inf0_init_done\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"inf0_cal_fail\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"inf0_clear\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"1\00", [30 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/memory/dfl-emif.c\00", [38 x i8] zeroinitializer }, align 32
@emif_clear_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.6, i32 86, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"timeout, fail to clear\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"emif_clear_store\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@emif_clear_store._entry_ptr = internal global ptr @emif_clear_store._entry, section ".printk_index", align 4
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"inf1_init_done\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"inf1_cal_fail\00", [18 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"inf1_clear\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"inf2_init_done\00", [17 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"inf2_cal_fail\00", [18 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"inf2_clear\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"inf3_init_done\00", [17 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"inf3_cal_fail\00", [18 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"inf3_clear\00", [21 x i8] zeroinitializer }, align 32
@dfl_emif_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&de->lock\00", [22 x i8] zeroinitializer }, align 32
@___asan_gen_.21 = private unnamed_addr constant [16 x i8] c"dfl_emif_driver\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 195, i32 26 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 197, i32 17 }
@___asan_gen_.27 = private unnamed_addr constant [16 x i8] c"dfl_emif_groups\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 164, i32 38 }
@___asan_gen_.30 = private unnamed_addr constant [13 x i8] c"dfl_emif_ids\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 189, i32 35 }
@___asan_gen_.33 = private unnamed_addr constant [15 x i8] c"dfl_emif_group\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 159, i32 37 }
@___asan_gen_.36 = private unnamed_addr constant [15 x i8] c"dfl_emif_attrs\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 120, i32 26 }
@___asan_gen_.39 = private unnamed_addr constant [25 x i8] c"emif_attr_inf0_init_done\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [24 x i8] c"emif_attr_inf0_cal_fail\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [21 x i8] c"emif_attr_inf0_clear\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [25 x i8] c"emif_attr_inf1_init_done\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [24 x i8] c"emif_attr_inf1_cal_fail\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [21 x i8] c"emif_attr_inf1_clear\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [25 x i8] c"emif_attr_inf2_init_done\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [24 x i8] c"emif_attr_inf2_cal_fail\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [21 x i8] c"emif_attr_inf2_clear\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [25 x i8] c"emif_attr_inf3_init_done\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [24 x i8] c"emif_attr_inf3_cal_fail\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [21 x i8] c"emif_attr_inf3_clear\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 105, i32 1 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 56, i32 25 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 110, i32 1 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 115, i32 1 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 69, i32 24 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 83, i32 6 }
@___asan_gen_.93 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 86, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 106, i32 1 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 111, i32 1 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 116, i32 1 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 107, i32 1 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 112, i32 1 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 117, i32 1 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 108, i32 1 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 113, i32 1 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 118, i32 1 }
@___asan_gen_.135 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.138 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.139 = private constant [29 x i8] c"../drivers/memory/dfl-emif.c\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 183, i32 2 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @__UNIQUE_ID_author177, ptr @__UNIQUE_ID_description176, ptr @__UNIQUE_ID_file178, ptr @__UNIQUE_ID_license179, ptr @__exitcall_dfl_emif_driver_exit, ptr @__initcall__kmod_dfl_emif__175_203_dfl_emif_driver_init6, ptr @dfl_emif_driver_exit, ptr @emif_clear_store._entry, ptr @emif_clear_store._entry_ptr, ptr @dfl_emif_driver, ptr @.str, ptr @dfl_emif_groups, ptr @dfl_emif_ids, ptr @dfl_emif_group, ptr @dfl_emif_attrs, ptr @emif_attr_inf0_init_done, ptr @emif_attr_inf0_cal_fail, ptr @emif_attr_inf0_clear, ptr @emif_attr_inf1_init_done, ptr @emif_attr_inf1_cal_fail, ptr @emif_attr_inf1_clear, ptr @emif_attr_inf2_init_done, ptr @emif_attr_inf2_cal_fail, ptr @emif_attr_inf2_clear, ptr @emif_attr_inf3_init_done, ptr @emif_attr_inf3_cal_fail, ptr @emif_attr_inf3_clear, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @dfl_emif_probe.__key, ptr @.str.20], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfl_emif_driver to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfl_emif_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfl_emif_ids to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfl_emif_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfl_emif_attrs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emif_attr_inf0_init_done to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emif_attr_inf0_cal_fail to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emif_attr_inf0_clear to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emif_attr_inf1_init_done to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emif_attr_inf1_cal_fail to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emif_attr_inf1_clear to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emif_attr_inf2_init_done to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emif_attr_inf2_cal_fail to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emif_attr_inf2_clear to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emif_attr_inf3_init_done to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emif_attr_inf3_cal_fail to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emif_attr_inf3_clear to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emif_clear_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfl_emif_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dfl_emif_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__dfl_driver_register(ptr noundef nonnull @dfl_emif_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dfl_emif_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dfl_driver_unregister(ptr noundef nonnull @dfl_emif_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dfl_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__dfl_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dfl_emif_probe(ptr noundef %ddev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %ddev, i32 noundef 52, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %mmio_res = getelementptr inbounds %struct.dfl_device, ptr %ddev, i32 0, i32 5
  %call2 = tail call ptr @devm_ioremap_resource(ptr noundef %ddev, ptr noundef %mmio_res) #5
  %base = getelementptr inbounds %struct.dfl_emif, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ddev, ptr %call.i, align 4
  %lock = getelementptr inbounds %struct.dfl_emif, ptr %call.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.20, ptr noundef nonnull @dfl_emif_probe.__key, i16 noundef signext 3) #5
  %driver_data.i = getelementptr inbounds %struct.device, ptr %ddev, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then5 ], [ 0, %if.end8 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @dfl_emif_visible(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %attr, i32 noundef %n) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %base = getelementptr inbounds %struct.dfl_emif, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr15 = getelementptr i8, ptr %3, i32 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #5, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !84
  %add.ptr.i = getelementptr i8, ptr %3, i32 20
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !85
  %6 = lshr i32 %4, 24
  %7 = and i32 %6, 15
  %and = zext i32 %7 to i64
  %index = getelementptr inbounds %struct.emif_attr, ptr %attr, i32 0, i32 2
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 4
  %sh_prom = zext i32 %9 to i64
  %shl = shl nuw i64 1, %sh_prom
  %and17 = and i64 %shl, %and
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and17)
  %tobool.not = icmp eq i64 %and17, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %mode = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1
  %10 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %mode, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i16 [ %11, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  ret i16 %cond
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @emif_state_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %base = getelementptr inbounds %struct.dfl_emif, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr1 = getelementptr i8, ptr %3, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #5, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !84
  %add.ptr.i = getelementptr i8, ptr %3, i32 12
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !85
  %6 = zext i32 %5 to i64
  %7 = zext i32 %4 to i64
  %8 = shl nuw i64 %7, 32
  %9 = or i64 %8, %6
  %10 = tail call i64 @llvm.bswap.i64(i64 %9) #5
  %shift = getelementptr inbounds %struct.emif_attr, ptr %attr, i32 0, i32 1
  %11 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %shift, align 4
  %index = getelementptr inbounds %struct.emif_attr, ptr %attr, i32 0, i32 2
  %13 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index, align 4
  %add = add i32 %14, %12
  %sh_prom = zext i32 %add to i64
  %shl = shl nuw i64 1, %sh_prom
  %and = and i64 %shl, %10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool = icmp ne i64 %and, 0
  %lnot.ext = zext i1 %tobool to i32
  %call4 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.2, i32 noundef %lnot.ext) #5
  ret i32 %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @emif_clear_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %base1 = getelementptr inbounds %struct.dfl_emif, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base1, align 4
  %call2 = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.5) #5
  br i1 %call2, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %index = getelementptr inbounds %struct.emif_attr, ptr %attr, i32 0, i32 2
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  %add = add i32 %5, 16
  %sh_prom = zext i32 %add to i64
  %shl = shl nuw i64 1, %sh_prom
  %sh_prom5 = zext i32 %5 to i64
  %shl6 = shl nuw i64 1, %sh_prom5
  %lock = getelementptr inbounds %struct.dfl_emif, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #5
  %add.ptr7 = getelementptr i8, ptr %3, i32 16
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #5, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !84
  %add.ptr.i = getelementptr i8, ptr %3, i32 20
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !85
  %8 = zext i32 %7 to i64
  %9 = zext i32 %6 to i64
  %10 = shl nuw i64 %9, 32
  %.masked = and i64 %10, -1080863914863886336
  %11 = or i64 %.masked, %8
  %12 = tail call i64 @llvm.bswap.i64(i64 %11)
  %or = or i64 %12, %shl6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !86
  tail call void @arm_heavy_mb() #5
  %conv.i = trunc i64 %or to i32
  %13 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %13) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  tail call void @arm_heavy_mb() #5
  %shr.i = lshr i64 %or, 32
  %conv3.i = trunc i64 %shr.i to i32
  %14 = tail call i32 @llvm.bswap.i32(i32 %conv3.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %14) #5, !srcloc !87
  tail call void @_raw_spin_unlock(ptr noundef %lock) #5
  %call11 = tail call i64 @ktime_get() #5
  %add.i = add i64 %call11, 5000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 85) #5
  %add.ptr21 = getelementptr i8, ptr %3, i32 8
  %add.ptr.i70 = getelementptr i8, ptr %3, i32 12
  br label %for.cond

for.cond:                                         ; preds = %if.then35, %if.end
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #5, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !84
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i70) #5, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !85
  %17 = zext i32 %16 to i64
  %18 = zext i32 %15 to i64
  %19 = shl nuw i64 %18, 32
  %20 = or i64 %19, %17
  %21 = tail call i64 @llvm.bswap.i64(i64 %20) #5
  %and23 = and i64 %21, %shl
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and23)
  %tobool.not = icmp eq i64 %and23, 0
  br i1 %tobool.not, label %for.cond.cleanup_crit_edge, label %land.lhs.true

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %for.cond
  %call27 = tail call i64 @ktime_get() #5
  %cmp3.i = icmp sgt i64 %call27, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then35

if.then35:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @usleep_range_state(i32 noundef 2501, i32 noundef 10000, i32 noundef 2) #5
  br label %for.cond

for.end:                                          ; preds = %land.lhs.true
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #5, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !84
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i70) #5, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !85
  %24 = zext i32 %23 to i64
  %25 = zext i32 %22 to i64
  %26 = shl nuw i64 %25, 32
  %27 = or i64 %26, %24
  %28 = tail call i64 @llvm.bswap.i64(i64 %27) #5
  %.pre = and i64 %28, %shl
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.pre)
  %phi.cmp = icmp eq i64 %.pre, 0
  br i1 %phi.cmp, label %for.end.cleanup_crit_edge, label %do.end45

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end45:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.7) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end45, %for.end.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %do.end45 ], [ -22, %entry.cleanup_crit_edge ], [ %count, %for.end.cleanup_crit_edge ], [ %count, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sysfs_streq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !23, !25, !27, !28, !30, !31, !33, !35, !37, !38, !39, !40, !41, !42, !44, !45, !47, !48, !50, !51, !53, !54, !56, !57, !59, !60, !62, !63, !65, !66, !68, !69, !71, !73}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = !{ptr @__initcall__kmod_dfl_emif__175_203_dfl_emif_driver_init6, !1, !"__initcall__kmod_dfl_emif__175_203_dfl_emif_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/memory/dfl-emif.c", i32 203, i32 1}
!2 = !{ptr @__exitcall_dfl_emif_driver_exit, !1, !"__exitcall_dfl_emif_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description176, !4, !"__UNIQUE_ID_description176", i1 false, i1 false}
!4 = !{!"../drivers/memory/dfl-emif.c", i32 205, i32 1}
!5 = !{ptr @__UNIQUE_ID_author177, !6, !"__UNIQUE_ID_author177", i1 false, i1 false}
!6 = !{!"../drivers/memory/dfl-emif.c", i32 206, i32 1}
!7 = !{ptr @__UNIQUE_ID_file178, !8, !"__UNIQUE_ID_file178", i1 false, i1 false}
!8 = !{!"../drivers/memory/dfl-emif.c", i32 207, i32 1}
!9 = !{ptr @__UNIQUE_ID_license179, !8, !"__UNIQUE_ID_license179", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/memory/dfl-emif.c", i32 197, i32 17}
!12 = !{ptr @dfl_emif_driver, !13, !"dfl_emif_driver", i1 false, i1 false}
!13 = !{!"../drivers/memory/dfl-emif.c", i32 195, i32 26}
!14 = !{ptr @dfl_emif_groups, !15, !"dfl_emif_groups", i1 false, i1 false}
!15 = !{!"../drivers/memory/dfl-emif.c", i32 164, i32 38}
!16 = !{ptr @dfl_emif_group, !17, !"dfl_emif_group", i1 false, i1 false}
!17 = !{!"../drivers/memory/dfl-emif.c", i32 159, i32 37}
!18 = !{ptr @dfl_emif_attrs, !19, !"dfl_emif_attrs", i1 false, i1 false}
!19 = !{!"../drivers/memory/dfl-emif.c", i32 120, i32 26}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/memory/dfl-emif.c", i32 105, i32 1}
!22 = !{ptr @emif_attr_inf0_init_done, !21, !"emif_attr_inf0_init_done", i1 false, i1 false}
!23 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/memory/dfl-emif.c", i32 56, i32 25}
!25 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/memory/dfl-emif.c", i32 110, i32 1}
!27 = !{ptr @emif_attr_inf0_cal_fail, !26, !"emif_attr_inf0_cal_fail", i1 false, i1 false}
!28 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/memory/dfl-emif.c", i32 115, i32 1}
!30 = !{ptr @emif_attr_inf0_clear, !29, !"emif_attr_inf0_clear", i1 false, i1 false}
!31 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/memory/dfl-emif.c", i32 69, i32 24}
!33 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/memory/dfl-emif.c", i32 83, i32 6}
!35 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/memory/dfl-emif.c", i32 86, i32 3}
!37 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @emif_clear_store._entry, !36, !"_entry", i1 false, i1 false}
!41 = !{ptr @emif_clear_store._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/memory/dfl-emif.c", i32 106, i32 1}
!44 = !{ptr @emif_attr_inf1_init_done, !43, !"emif_attr_inf1_init_done", i1 false, i1 false}
!45 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/memory/dfl-emif.c", i32 111, i32 1}
!47 = !{ptr @emif_attr_inf1_cal_fail, !46, !"emif_attr_inf1_cal_fail", i1 false, i1 false}
!48 = !{ptr @.str.13, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/memory/dfl-emif.c", i32 116, i32 1}
!50 = !{ptr @emif_attr_inf1_clear, !49, !"emif_attr_inf1_clear", i1 false, i1 false}
!51 = !{ptr @.str.14, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/memory/dfl-emif.c", i32 107, i32 1}
!53 = !{ptr @emif_attr_inf2_init_done, !52, !"emif_attr_inf2_init_done", i1 false, i1 false}
!54 = !{ptr @.str.15, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/memory/dfl-emif.c", i32 112, i32 1}
!56 = !{ptr @emif_attr_inf2_cal_fail, !55, !"emif_attr_inf2_cal_fail", i1 false, i1 false}
!57 = !{ptr @.str.16, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/memory/dfl-emif.c", i32 117, i32 1}
!59 = !{ptr @emif_attr_inf2_clear, !58, !"emif_attr_inf2_clear", i1 false, i1 false}
!60 = !{ptr @.str.17, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/memory/dfl-emif.c", i32 108, i32 1}
!62 = !{ptr @emif_attr_inf3_init_done, !61, !"emif_attr_inf3_init_done", i1 false, i1 false}
!63 = !{ptr @.str.18, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/memory/dfl-emif.c", i32 113, i32 1}
!65 = !{ptr @emif_attr_inf3_cal_fail, !64, !"emif_attr_inf3_cal_fail", i1 false, i1 false}
!66 = !{ptr @.str.19, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/memory/dfl-emif.c", i32 118, i32 1}
!68 = !{ptr @emif_attr_inf3_clear, !67, !"emif_attr_inf3_clear", i1 false, i1 false}
!69 = !{ptr @dfl_emif_ids, !70, !"dfl_emif_ids", i1 false, i1 false}
!70 = !{!"../drivers/memory/dfl-emif.c", i32 189, i32 35}
!71 = !{ptr @dfl_emif_probe.__key, !72, !"__key", i1 false, i1 false}
!72 = !{!"../drivers/memory/dfl-emif.c", i32 183, i32 2}
!73 = !{ptr @.str.20, !72, !"<string literal>", i1 false, i1 false}
!74 = !{i32 1, !"wchar_size", i32 2}
!75 = !{i32 1, !"min_enum_size", i32 4}
!76 = !{i32 8, !"branch-target-enforcement", i32 0}
!77 = !{i32 8, !"sign-return-address", i32 0}
!78 = !{i32 8, !"sign-return-address-all", i32 0}
!79 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!80 = !{i32 7, !"uwtable", i32 1}
!81 = !{i32 7, !"frame-pointer", i32 2}
!82 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!83 = !{i64 4834113}
!84 = !{i64 2152410241}
!85 = !{i64 2152410679}
!86 = !{i64 2152411049}
!87 = !{i64 4833695}
!88 = !{i64 2152411422}
