; ModuleID = '/llk/IR_all_yes/drivers/w1/slaves/w1_ds2408.c_pt.bc'
source_filename = "../drivers/w1/slaves/w1_ds2408.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.w1_family = type { %struct.list_head, i8, ptr, ptr, %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.w1_family_ops = type { ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.w1_slave = type { ptr, [32 x i8], %struct.list_head, %struct.w1_reg_num, %struct.atomic_t, i32, i32, ptr, ptr, ptr, %struct.device, ptr }
%struct.w1_reg_num = type { i64 }
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
%struct.w1_master = type { %struct.list_head, ptr, [32 x i8], %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i64, %struct.atomic_t, ptr, i32, i32, i32, ptr, %struct.mutex, %struct.mutex, ptr, %struct.device, ptr, i32 }

@__initcall__kmod_w1_ds2408__193_348_w1_family_29_init6 = internal global ptr @w1_family_29_init, section ".initcall6.init", align 4
@w1_family_29 = internal global { %struct.w1_family, [40 x i8] } { %struct.w1_family { %struct.list_head zeroinitializer, i8 41, ptr @w1_f29_fops, ptr null, %struct.atomic_t zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@__exitcall_w1_family_29_exit = internal global ptr @w1_family_29_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author194 = internal constant [65 x i8] c"w1_ds2408.author=Jean-Francois Dagenais <dagenaisj@sonatest.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description195 = internal constant [62 x i8] c"w1_ds2408.description=w1 family 29 driver for DS2408 8 Pin IO\00", section ".modinfo", align 1
@__UNIQUE_ID_file196 = internal constant [43 x i8] c"w1_ds2408.file=drivers/w1/slaves/w1_ds2408\00", section ".modinfo", align 1
@__UNIQUE_ID_license197 = internal constant [22 x i8] c"w1_ds2408.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias198 = internal constant [31 x i8] c"w1_ds2408.alias=w1-family-0x29\00", section ".modinfo", align 1
@w1_f29_fops = internal constant { %struct.w1_family_ops, [16 x i8] } { %struct.w1_family_ops { ptr @w1_f29_disable_test_mode, ptr null, ptr @w1_f29_groups, ptr null }, [16 x i8] zeroinitializer }, align 32
@w1_f29_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @w1_f29_group, ptr null], [24 x i8] zeroinitializer }, align 32
@w1_f29_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr null, ptr @w1_f29_bin_attrs }, [44 x i8] zeroinitializer }, align 32
@w1_f29_bin_attrs = internal global { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @bin_attr_state, ptr @bin_attr_output, ptr @bin_attr_activity, ptr @bin_attr_cond_search_mask, ptr @bin_attr_cond_search_polarity, ptr @bin_attr_status_control, ptr null], [36 x i8] zeroinitializer }, align 32
@bin_attr_state = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 1, ptr null, ptr null, ptr @state_read, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@bin_attr_output = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.9, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 1, ptr null, ptr null, ptr @output_read, ptr @output_write, ptr null }, [52 x i8] zeroinitializer }, align 32
@bin_attr_activity = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.16, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 1, ptr null, ptr null, ptr @activity_read, ptr @activity_write, ptr null }, [52 x i8] zeroinitializer }, align 32
@bin_attr_cond_search_mask = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.18, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 1, ptr null, ptr null, ptr @cond_search_mask_read, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@bin_attr_cond_search_polarity = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.20, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 1, ptr null, ptr null, ptr @cond_search_polarity_read, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@bin_attr_status_control = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.21, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 1, ptr null, ptr null, ptr @status_control_read, ptr @status_control_write, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"state\00", [26 x i8] zeroinitializer }, align 32
@state_read.__UNIQUE_ID_ddebug186 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 18, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"w1_ds2408\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"state_read\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/w1/slaves/w1_ds2408.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Reading %s kobj: %p, off: %0#10x, count: %zu, buff addr: %p\00", [36 x i8] zeroinitializer }, align 32
@_read_reg.__UNIQUE_ID_ddebug183 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.5, ptr @.str.3, ptr @.str.6, i8 0, i8 10, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"_read_reg\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Reading with slave: %p, reg addr: %0#4x, buff addr: %p\00", [41 x i8] zeroinitializer }, align 32
@_read_reg.__UNIQUE_ID_ddebug184 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.5, ptr @.str.3, ptr @.str.7, i8 0, i8 12, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mutex locked\00", [19 x i8] zeroinitializer }, align 32
@_read_reg.__UNIQUE_ID_ddebug185 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.5, ptr @.str.3, ptr @.str.8, i8 0, i8 15, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mutex unlocked\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"output\00", [25 x i8] zeroinitializer }, align 32
@output_read.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str.3, ptr @.str.4, i8 0, i8 21, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"output_read\00", [20 x i8] zeroinitializer }, align 32
@output_write.__UNIQUE_ID_ddebug190 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.11, ptr @.str.3, ptr @.str.12, i8 0, i8 43, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"output_write\00", [19 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"locking mutex for write_output\00", [33 x i8] zeroinitializer }, align 32
@output_write.__UNIQUE_ID_ddebug191 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.11, ptr @.str.3, ptr @.str.7, i8 0, i8 44, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@output_write.__UNIQUE_ID_ddebug192 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.11, ptr @.str.3, ptr @.str.13, i8 0, i8 50, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s, mutex unlocked retries:%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"succeeded\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"error\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"activity\00", [23 x i8] zeroinitializer }, align 32
@activity_read.__UNIQUE_ID_ddebug188 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.17, ptr @.str.3, ptr @.str.4, i8 0, i8 24, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"activity_read\00", [18 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cond_search_mask\00", [47 x i8] zeroinitializer }, align 32
@cond_search_mask_read.__UNIQUE_ID_ddebug189 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.19, ptr @.str.3, ptr @.str.4, i8 0, i8 27, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cond_search_mask_read\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cond_search_polarity\00", [43 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"status_control\00", [17 x i8] zeroinitializer }, align 32
@___asan_gen_.22 = private unnamed_addr constant [13 x i8] c"w1_family_29\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 344, i32 25 }
@___asan_gen_.25 = private unnamed_addr constant [12 x i8] c"w1_f29_fops\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 339, i32 35 }
@___asan_gen_.28 = private unnamed_addr constant [14 x i8] c"w1_f29_groups\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 334, i32 38 }
@___asan_gen_.31 = private unnamed_addr constant [13 x i8] c"w1_f29_group\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 330, i32 37 }
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"w1_f29_bin_attrs\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 320, i32 30 }
@___asan_gen_.37 = private unnamed_addr constant [15 x i8] c"bin_attr_state\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [16 x i8] c"bin_attr_output\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [18 x i8] c"bin_attr_activity\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [26 x i8] c"bin_attr_cond_search_mask\00", align 1
@___asan_gen_.49 = private unnamed_addr constant [30 x i8] c"bin_attr_cond_search_polarity\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [24 x i8] c"bin_attr_status_control\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 313, i32 8 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 71, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 41, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 49, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 63, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 314, i32 8 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 83, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 174, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 202, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 315, i32 8 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 96, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 316, i32 8 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 109, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 317, i32 8 }
@___asan_gen_.118 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.119 = private constant [33 x i8] c"../drivers/w1/slaves/w1_ds2408.c\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 318, i32 8 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @__UNIQUE_ID_alias198, ptr @__UNIQUE_ID_author194, ptr @__UNIQUE_ID_description195, ptr @__UNIQUE_ID_file196, ptr @__UNIQUE_ID_license197, ptr @__exitcall_w1_family_29_exit, ptr @__initcall__kmod_w1_ds2408__193_348_w1_family_29_init6, ptr @w1_family_29_exit, ptr @w1_family_29, ptr @w1_f29_fops, ptr @w1_f29_groups, ptr @w1_f29_group, ptr @w1_f29_bin_attrs, ptr @bin_attr_state, ptr @bin_attr_output, ptr @bin_attr_activity, ptr @bin_attr_cond_search_mask, ptr @bin_attr_cond_search_polarity, ptr @bin_attr_status_control, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_family_29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_f29_fops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_f29_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_f29_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_f29_bin_attrs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_state to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_output to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_activity to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_cond_search_mask to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_cond_search_polarity to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_status_control to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @w1_family_29_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @w1_register_family(ptr noundef nonnull @w1_family_29) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @w1_family_29_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @w1_unregister_family(ptr noundef nonnull @w1_family_29) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @w1_unregister_family(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @w1_register_family(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w1_f29_disable_test_mode(ptr nocapture noundef readonly %sl) #2 align 64 {
entry:
  %magic = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %magic) #5
  %0 = ptrtoint ptr %magic to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -106, ptr %magic, align 1
  %reg_num = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 3
  %1 = ptrtoint ptr %reg_num to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %reg_num, align 8
  %3 = tail call i64 @llvm.bswap.i64(i64 %2)
  %arrayidx = getelementptr inbounds [10 x i8], ptr %magic, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 %3, ptr %arrayidx, align 1
  %arrayidx1 = getelementptr inbounds [10 x i8], ptr %magic, i32 0, i32 9
  %5 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 60, ptr %arrayidx1, align 1
  %master = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 7
  %6 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %master, align 4
  %bus_mutex = getelementptr inbounds %struct.w1_master, ptr %7, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %bus_mutex, i32 noundef 0) #5
  %8 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %master, align 4
  %call = tail call i32 @w1_reset_bus(ptr noundef %9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %master, align 4
  call void @w1_write_block(ptr noundef %11, ptr noundef nonnull %magic, i32 noundef 10) #5
  %12 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %master, align 4
  %call5 = call i32 @w1_reset_bus(ptr noundef %13) #5
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %res.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call5, %if.end ]
  %14 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %master, align 4
  %bus_mutex7 = getelementptr inbounds %struct.w1_master, ptr %15, i32 0, i32 21
  call void @mutex_unlock(ptr noundef %bus_mutex7) #5
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %magic) #5
  ret i32 %res.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @w1_reset_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @w1_write_block(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @state_read(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readonly %bin_attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @state_read.__UNIQUE_ID_ddebug186, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@state_read, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !85

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %bin_attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bin_attr, align 4
  %conv = trunc i64 %off to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @state_read.__UNIQUE_ID_ddebug186, ptr noundef %kobj, ptr noundef nonnull @.str.4, ptr noundef %1, ptr noundef %kobj, i32 noundef %conv, i32 noundef %count, ptr noundef %buf) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp.not = icmp eq i32 %count, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %off)
  %cmp5.not = icmp eq i64 %off, 0
  %or.cond = and i1 %cmp5.not, %cmp.not
  br i1 %or.cond, label %if.end8, label %do.end.return_crit_edge

do.end.return_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i.i16 = getelementptr i8, ptr %kobj, i32 -80
  %call10 = tail call fastcc i32 @_read_reg(ptr noundef %add.ptr.i.i16, i8 noundef zeroext -120, ptr noundef %buf)
  br label %return

return:                                           ; preds = %if.end8, %do.end.return_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end8 ], [ -14, %do.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_read_reg(ptr noundef %sl, i8 noundef zeroext %address, ptr noundef %buf) unnamed_addr #2 align 64 {
entry:
  %wrbuf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %wrbuf) #5
  %0 = getelementptr inbounds [3 x i8], ptr %wrbuf, i32 0, i32 1
  %1 = getelementptr inbounds [3 x i8], ptr %wrbuf, i32 0, i32 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_read_reg.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_read_reg, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !85

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 10
  %conv = zext i8 %address to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @_read_reg.__UNIQUE_ID_ddebug183, ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef %sl, i32 noundef %conv, ptr noundef %buf) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool3.not = icmp eq ptr %buf, null
  br i1 %tobool3.not, label %do.end.cleanup_crit_edge, label %if.end5

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %do.end
  %master = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 7
  %2 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master, align 4
  %bus_mutex = getelementptr inbounds %struct.w1_master, ptr %3, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %bus_mutex, i32 noundef 0) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_read_reg.__UNIQUE_ID_ddebug184, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_read_reg, %if.then18)) #5
          to label %do.end22 [label %if.then18], !srcloc !85

if.then18:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %dev19 = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @_read_reg.__UNIQUE_ID_ddebug184, ptr noundef %dev19, ptr noundef nonnull @.str.7) #5
  br label %do.end22

do.end22:                                         ; preds = %if.then18, %if.end5
  %call23 = tail call i32 @w1_reset_select_slave(ptr noundef %sl) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end28, label %if.then25

if.then25:                                        ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master, align 4
  %bus_mutex27 = getelementptr inbounds %struct.w1_master, ptr %5, i32 0, i32 21
  tail call void @mutex_unlock(ptr noundef %bus_mutex27) #5
  br label %cleanup

if.end28:                                         ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %wrbuf to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -16, ptr %wrbuf, align 1
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %address, ptr %0, align 1
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %1, align 1
  %9 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %master, align 4
  call void @w1_write_block(ptr noundef %10, ptr noundef nonnull %wrbuf, i32 noundef 3) #5
  %11 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %master, align 4
  %call33 = call zeroext i8 @w1_read_8(ptr noundef %12) #5
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %call33, ptr %buf, align 1
  %14 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %master, align 4
  %bus_mutex35 = getelementptr inbounds %struct.w1_master, ptr %15, i32 0, i32 21
  call void @mutex_unlock(ptr noundef %bus_mutex35) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_read_reg.__UNIQUE_ID_ddebug185, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_read_reg, %if.then48)) #5
          to label %cleanup [label %if.then48], !srcloc !85

if.then48:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  %dev49 = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @_read_reg.__UNIQUE_ID_ddebug185, ptr noundef %dev49, ptr noundef nonnull @.str.8) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then48, %if.end28, %if.then25, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.then25 ], [ -22, %do.end.cleanup_crit_edge ], [ 1, %if.then48 ], [ 1, %if.end28 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %wrbuf) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @w1_reset_select_slave(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @w1_read_8(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @output_read(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readonly %bin_attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @output_read.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@output_read, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !85

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %bin_attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bin_attr, align 4
  %conv = trunc i64 %off to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @output_read.__UNIQUE_ID_ddebug187, ptr noundef %kobj, ptr noundef nonnull @.str.4, ptr noundef %1, ptr noundef %kobj, i32 noundef %conv, i32 noundef %count, ptr noundef %buf) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp.not = icmp eq i32 %count, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %off)
  %cmp5.not = icmp eq i64 %off, 0
  %or.cond = and i1 %cmp5.not, %cmp.not
  br i1 %or.cond, label %if.end8, label %do.end.return_crit_edge

do.end.return_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i.i16 = getelementptr i8, ptr %kobj, i32 -80
  %call10 = tail call fastcc i32 @_read_reg(ptr noundef %add.ptr.i.i16, i8 noundef zeroext -119, ptr noundef %buf)
  br label %return

return:                                           ; preds = %if.end8, %do.end.return_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end8 ], [ -14, %do.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @output_write(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readnone %bin_attr, ptr nocapture noundef readonly %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  %w1_buf.i = alloca [3 x i8], align 1
  %w1_buf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %kobj, i32 -80
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %w1_buf) #5
  %0 = ptrtoint ptr %w1_buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %w1_buf, align 1, !annotation !86
  %1 = getelementptr inbounds [3 x i8], ptr %w1_buf, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !86
  %3 = getelementptr inbounds [3 x i8], ptr %w1_buf, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !86
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp.not = icmp eq i32 %count, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %off)
  %cmp1.not = icmp eq i64 %off, 0
  %or.cond = and i1 %cmp1.not, %cmp.not
  br i1 %or.cond, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @output_write.__UNIQUE_ID_ddebug190, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@output_write, %if.then5)) #5
          to label %do.end [label %if.then5], !srcloc !85

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @output_write.__UNIQUE_ID_ddebug190, ptr noundef %kobj, ptr noundef nonnull @.str.12) #5
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %master = getelementptr i8, ptr %kobj, i32 -12
  %5 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %master, align 4
  %bus_mutex = getelementptr inbounds %struct.w1_master, ptr %6, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %bus_mutex, i32 noundef 0) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @output_write.__UNIQUE_ID_ddebug191, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@output_write, %if.then19)) #5
          to label %do.end23 [label %if.then19], !srcloc !85

if.then19:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @output_write.__UNIQUE_ID_ddebug191, ptr noundef %kobj, ptr noundef nonnull @.str.7) #5
  br label %do.end23

do.end23:                                         ; preds = %if.then19, %do.end
  %call24 = tail call i32 @w1_reset_select_slave(ptr noundef %add.ptr.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %do.body28.preheader, label %do.end23.out_crit_edge

do.end23.out_crit_edge:                           ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

do.body28.preheader:                              ; preds = %do.end23
  %7 = getelementptr inbounds [3 x i8], ptr %w1_buf.i, i32 0, i32 2
  %8 = getelementptr inbounds [3 x i8], ptr %w1_buf.i, i32 0, i32 1
  %9 = ptrtoint ptr %w1_buf to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 90, ptr %w1_buf, align 1
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %buf, align 1
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %1, align 1
  %neg = xor i8 %11, -1
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %neg, ptr %3, align 1
  %14 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %master, align 4
  call void @w1_write_block(ptr noundef %15, ptr noundef nonnull %w1_buf, i32 noundef 3) #5
  %16 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %master, align 4
  %call34 = call zeroext i8 @w1_read_8(ptr noundef %17) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %call34)
  %cmp36 = icmp eq i8 %call34, -86
  br i1 %cmp36, label %land.lhs.true, label %do.body28.preheader.if.end41_crit_edge

do.body28.preheader.if.end41_crit_edge:           ; preds = %do.body28.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

land.lhs.true:                                    ; preds = %do.body28.preheader
  %18 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %buf, align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %w1_buf.i) #5
  %20 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %master, align 4
  %call.i = call i32 @w1_reset_resume_command(ptr noundef %21) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %optional_read_back_valid.exit, label %optional_read_back_valid.exit.thread

optional_read_back_valid.exit.thread:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %w1_buf.i) #5
  br label %if.end41

optional_read_back_valid.exit:                    ; preds = %land.lhs.true
  %22 = ptrtoint ptr %w1_buf.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -16, ptr %w1_buf.i, align 1
  %23 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -119, ptr %8, align 1
  %24 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %7, align 1
  %25 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %master, align 4
  call void @w1_write_block(ptr noundef %26, ptr noundef nonnull %w1_buf.i, i32 noundef 3) #5
  %27 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %master, align 4
  %call5.i = call zeroext i8 @w1_read_8(ptr noundef %28) #5
  call void @__sanitizer_cov_trace_cmp1(i8 %call5.i, i8 %19)
  %cmp.i = icmp eq i8 %call5.i, %19
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %w1_buf.i) #5
  br i1 %cmp.i, label %optional_read_back_valid.exit.out_crit_edge, label %optional_read_back_valid.exit.if.end41_crit_edge

optional_read_back_valid.exit.if.end41_crit_edge: ; preds = %optional_read_back_valid.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

optional_read_back_valid.exit.out_crit_edge:      ; preds = %optional_read_back_valid.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end41:                                         ; preds = %optional_read_back_valid.exit.if.end41_crit_edge, %optional_read_back_valid.exit.thread, %do.body28.preheader.if.end41_crit_edge
  %29 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %master, align 4
  %call43 = call i32 @w1_reset_resume_command(ptr noundef %30) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %do.cond47, label %if.end41.out_crit_edge

if.end41.out_crit_edge:                           ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

do.cond47:                                        ; preds = %if.end41
  %31 = ptrtoint ptr %w1_buf to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 90, ptr %w1_buf, align 1
  %32 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %buf, align 1
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %1, align 1
  %neg.1 = xor i8 %33, -1
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %neg.1, ptr %3, align 1
  %36 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %master, align 4
  call void @w1_write_block(ptr noundef %37, ptr noundef nonnull %w1_buf, i32 noundef 3) #5
  %38 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %master, align 4
  %call34.1 = call zeroext i8 @w1_read_8(ptr noundef %39) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %call34.1)
  %cmp36.1 = icmp eq i8 %call34.1, -86
  br i1 %cmp36.1, label %land.lhs.true.1, label %do.cond47.if.end41.1_crit_edge

do.cond47.if.end41.1_crit_edge:                   ; preds = %do.cond47
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41.1

land.lhs.true.1:                                  ; preds = %do.cond47
  %40 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %buf, align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %w1_buf.i) #5
  %42 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %master, align 4
  %call.i.1 = call i32 @w1_reset_resume_command(ptr noundef %43) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool.not.i.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool.not.i.1, label %optional_read_back_valid.exit.1, label %optional_read_back_valid.exit.thread.1

optional_read_back_valid.exit.thread.1:           ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %w1_buf.i) #5
  br label %if.end41.1

optional_read_back_valid.exit.1:                  ; preds = %land.lhs.true.1
  %44 = ptrtoint ptr %w1_buf.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 -16, ptr %w1_buf.i, align 1
  %45 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 -119, ptr %8, align 1
  %46 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %7, align 1
  %47 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %master, align 4
  call void @w1_write_block(ptr noundef %48, ptr noundef nonnull %w1_buf.i, i32 noundef 3) #5
  %49 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %master, align 4
  %call5.i.1 = call zeroext i8 @w1_read_8(ptr noundef %50) #5
  call void @__sanitizer_cov_trace_cmp1(i8 %call5.i.1, i8 %41)
  %cmp.i.1 = icmp eq i8 %call5.i.1, %41
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %w1_buf.i) #5
  br i1 %cmp.i.1, label %optional_read_back_valid.exit.1.out_crit_edge, label %optional_read_back_valid.exit.1.if.end41.1_crit_edge

optional_read_back_valid.exit.1.if.end41.1_crit_edge: ; preds = %optional_read_back_valid.exit.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41.1

optional_read_back_valid.exit.1.out_crit_edge:    ; preds = %optional_read_back_valid.exit.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end41.1:                                       ; preds = %optional_read_back_valid.exit.1.if.end41.1_crit_edge, %optional_read_back_valid.exit.thread.1, %do.cond47.if.end41.1_crit_edge
  %51 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %master, align 4
  %call43.1 = call i32 @w1_reset_resume_command(ptr noundef %52) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.1)
  %tobool44.not.1 = icmp eq i32 %call43.1, 0
  br i1 %tobool44.not.1, label %do.cond47.1, label %if.end41.1.out_crit_edge

if.end41.1.out_crit_edge:                         ; preds = %if.end41.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

do.cond47.1:                                      ; preds = %if.end41.1
  %53 = ptrtoint ptr %w1_buf to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 90, ptr %w1_buf, align 1
  %54 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %buf, align 1
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %1, align 1
  %neg.2 = xor i8 %55, -1
  %57 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %neg.2, ptr %3, align 1
  %58 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %master, align 4
  call void @w1_write_block(ptr noundef %59, ptr noundef nonnull %w1_buf, i32 noundef 3) #5
  %60 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %master, align 4
  %call34.2 = call zeroext i8 @w1_read_8(ptr noundef %61) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %call34.2)
  %cmp36.2 = icmp eq i8 %call34.2, -86
  br i1 %cmp36.2, label %land.lhs.true.2, label %do.cond47.1.if.end41.2_crit_edge

do.cond47.1.if.end41.2_crit_edge:                 ; preds = %do.cond47.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41.2

land.lhs.true.2:                                  ; preds = %do.cond47.1
  %62 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %buf, align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %w1_buf.i) #5
  %64 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %master, align 4
  %call.i.2 = call i32 @w1_reset_resume_command(ptr noundef %65) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %tobool.not.i.2 = icmp eq i32 %call.i.2, 0
  br i1 %tobool.not.i.2, label %optional_read_back_valid.exit.2, label %optional_read_back_valid.exit.thread.2

optional_read_back_valid.exit.thread.2:           ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %w1_buf.i) #5
  br label %if.end41.2

optional_read_back_valid.exit.2:                  ; preds = %land.lhs.true.2
  %66 = ptrtoint ptr %w1_buf.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 -16, ptr %w1_buf.i, align 1
  %67 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 -119, ptr %8, align 1
  %68 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %7, align 1
  %69 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %master, align 4
  call void @w1_write_block(ptr noundef %70, ptr noundef nonnull %w1_buf.i, i32 noundef 3) #5
  %71 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %master, align 4
  %call5.i.2 = call zeroext i8 @w1_read_8(ptr noundef %72) #5
  call void @__sanitizer_cov_trace_cmp1(i8 %call5.i.2, i8 %63)
  %cmp.i.2 = icmp eq i8 %call5.i.2, %63
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %w1_buf.i) #5
  br i1 %cmp.i.2, label %optional_read_back_valid.exit.2.out_crit_edge, label %optional_read_back_valid.exit.2.if.end41.2_crit_edge

optional_read_back_valid.exit.2.if.end41.2_crit_edge: ; preds = %optional_read_back_valid.exit.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41.2

optional_read_back_valid.exit.2.out_crit_edge:    ; preds = %optional_read_back_valid.exit.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end41.2:                                       ; preds = %optional_read_back_valid.exit.2.if.end41.2_crit_edge, %optional_read_back_valid.exit.thread.2, %do.cond47.1.if.end41.2_crit_edge
  %73 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %master, align 4
  %call43.2 = call i32 @w1_reset_resume_command(ptr noundef %74) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.2)
  %tobool44.not.2 = icmp ne i32 %call43.2, 0
  %spec.select = zext i1 %tobool44.not.2 to i32
  br label %out

out:                                              ; preds = %if.end41.2, %optional_read_back_valid.exit.2.out_crit_edge, %if.end41.1.out_crit_edge, %optional_read_back_valid.exit.1.out_crit_edge, %if.end41.out_crit_edge, %optional_read_back_valid.exit.out_crit_edge, %do.end23.out_crit_edge
  %cmp66 = phi ptr [ @.str.15, %do.end23.out_crit_edge ], [ @.str.15, %if.end41.out_crit_edge ], [ @.str.14, %optional_read_back_valid.exit.out_crit_edge ], [ @.str.14, %optional_read_back_valid.exit.1.out_crit_edge ], [ @.str.15, %if.end41.1.out_crit_edge ], [ @.str.14, %optional_read_back_valid.exit.2.out_crit_edge ], [ @.str.15, %if.end41.2 ]
  %bytes_written.0 = phi i32 [ -5, %do.end23.out_crit_edge ], [ -5, %if.end41.out_crit_edge ], [ 1, %optional_read_back_valid.exit.out_crit_edge ], [ 1, %optional_read_back_valid.exit.1.out_crit_edge ], [ -5, %if.end41.1.out_crit_edge ], [ 1, %optional_read_back_valid.exit.2.out_crit_edge ], [ -5, %if.end41.2 ]
  %retries.1 = phi i32 [ 3, %do.end23.out_crit_edge ], [ 3, %if.end41.out_crit_edge ], [ 3, %optional_read_back_valid.exit.out_crit_edge ], [ 2, %optional_read_back_valid.exit.1.out_crit_edge ], [ 2, %if.end41.1.out_crit_edge ], [ 1, %optional_read_back_valid.exit.2.out_crit_edge ], [ %spec.select, %if.end41.2 ]
  %75 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %master, align 4
  %bus_mutex51 = getelementptr inbounds %struct.w1_master, ptr %76, i32 0, i32 21
  call void @mutex_unlock(ptr noundef %bus_mutex51) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @output_write.__UNIQUE_ID_ddebug192, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@output_write, %if.then64)) #5
          to label %cleanup [label %if.then64], !srcloc !85

if.then64:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @output_write.__UNIQUE_ID_ddebug192, ptr noundef %kobj, ptr noundef nonnull @.str.13, ptr noundef nonnull %cmp66, i32 noundef %retries.1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then64, %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %entry.cleanup_crit_edge ], [ %bytes_written.0, %if.then64 ], [ %bytes_written.0, %out ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %w1_buf) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @w1_reset_resume_command(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @activity_read(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readonly %bin_attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @activity_read.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@activity_read, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !85

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %bin_attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bin_attr, align 4
  %conv = trunc i64 %off to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @activity_read.__UNIQUE_ID_ddebug188, ptr noundef %kobj, ptr noundef nonnull @.str.4, ptr noundef %1, ptr noundef %kobj, i32 noundef %conv, i32 noundef %count, ptr noundef %buf) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp.not = icmp eq i32 %count, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %off)
  %cmp5.not = icmp eq i64 %off, 0
  %or.cond = and i1 %cmp5.not, %cmp.not
  br i1 %or.cond, label %if.end8, label %do.end.return_crit_edge

do.end.return_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i.i16 = getelementptr i8, ptr %kobj, i32 -80
  %call10 = tail call fastcc i32 @_read_reg(ptr noundef %add.ptr.i.i16, i8 noundef zeroext -118, ptr noundef %buf)
  br label %return

return:                                           ; preds = %if.end8, %do.end.return_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end8 ], [ -14, %do.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @activity_write(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readnone %bin_attr, ptr nocapture noundef readnone %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp.not = icmp eq i32 %count, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %off)
  %cmp1.not = icmp eq i64 %off, 0
  %or.cond = and i1 %cmp1.not, %cmp.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %kobj, i32 -80
  %master = getelementptr i8, ptr %kobj, i32 -12
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %bus_mutex = getelementptr inbounds %struct.w1_master, ptr %1, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %bus_mutex, i32 noundef 0) #5
  %call2 = tail call i32 @w1_reset_select_slave(ptr noundef %add.ptr.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %while.cond.preheader, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

while.cond.preheader:                             ; preds = %if.end
  %2 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master, align 4
  tail call void @w1_write_8(ptr noundef %3, i8 noundef zeroext -61) #5
  %4 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master, align 4
  %call8 = tail call zeroext i8 @w1_read_8(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %call8)
  %cmp9 = icmp eq i8 %call8, -86
  br i1 %cmp9, label %while.cond.preheader.cleanup.sink.split_crit_edge, label %if.end14

while.cond.preheader.cleanup.sink.split_crit_edge: ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end14:                                         ; preds = %while.cond.preheader
  %6 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %master, align 4
  %call16 = tail call i32 @w1_reset_resume_command(ptr noundef %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %while.cond.1, label %if.end14.cleanup.sink.split_crit_edge

if.end14.cleanup.sink.split_crit_edge:            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

while.cond.1:                                     ; preds = %if.end14
  %8 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %master, align 4
  tail call void @w1_write_8(ptr noundef %9, i8 noundef zeroext -61) #5
  %10 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %master, align 4
  %call8.1 = tail call zeroext i8 @w1_read_8(ptr noundef %11) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %call8.1)
  %cmp9.1 = icmp eq i8 %call8.1, -86
  br i1 %cmp9.1, label %while.cond.1.cleanup.sink.split_crit_edge, label %if.end14.1

while.cond.1.cleanup.sink.split_crit_edge:        ; preds = %while.cond.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end14.1:                                       ; preds = %while.cond.1
  %12 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %master, align 4
  %call16.1 = tail call i32 @w1_reset_resume_command(ptr noundef %13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.1)
  %tobool17.not.1 = icmp eq i32 %call16.1, 0
  br i1 %tobool17.not.1, label %while.cond.2, label %if.end14.1.cleanup.sink.split_crit_edge

if.end14.1.cleanup.sink.split_crit_edge:          ; preds = %if.end14.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

while.cond.2:                                     ; preds = %if.end14.1
  %14 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %master, align 4
  tail call void @w1_write_8(ptr noundef %15, i8 noundef zeroext -61) #5
  %16 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %master, align 4
  %call8.2 = tail call zeroext i8 @w1_read_8(ptr noundef %17) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %call8.2)
  %cmp9.2 = icmp eq i8 %call8.2, -86
  br i1 %cmp9.2, label %while.cond.2.cleanup.sink.split_crit_edge, label %if.end14.2

while.cond.2.cleanup.sink.split_crit_edge:        ; preds = %while.cond.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end14.2:                                       ; preds = %while.cond.2
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %master, align 4
  %call16.2 = tail call i32 @w1_reset_resume_command(ptr noundef %19) #5
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end14.2, %while.cond.2.cleanup.sink.split_crit_edge, %if.end14.1.cleanup.sink.split_crit_edge, %while.cond.1.cleanup.sink.split_crit_edge, %if.end14.cleanup.sink.split_crit_edge, %while.cond.preheader.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 1, %while.cond.2.cleanup.sink.split_crit_edge ], [ 1, %while.cond.1.cleanup.sink.split_crit_edge ], [ 1, %while.cond.preheader.cleanup.sink.split_crit_edge ], [ -5, %if.end14.2 ], [ -5, %if.end14.cleanup.sink.split_crit_edge ], [ -5, %if.end14.1.cleanup.sink.split_crit_edge ], [ -5, %if.end.cleanup.sink.split_crit_edge ]
  %20 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %master, align 4
  %bus_mutex21 = getelementptr inbounds %struct.w1_master, ptr %21, i32 0, i32 21
  tail call void @mutex_unlock(ptr noundef %bus_mutex21) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @w1_write_8(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cond_search_mask_read(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readonly %bin_attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cond_search_mask_read.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cond_search_mask_read, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !85

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %bin_attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bin_attr, align 4
  %conv = trunc i64 %off to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cond_search_mask_read.__UNIQUE_ID_ddebug189, ptr noundef %kobj, ptr noundef nonnull @.str.4, ptr noundef %1, ptr noundef %kobj, i32 noundef %conv, i32 noundef %count, ptr noundef %buf) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp.not = icmp eq i32 %count, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %off)
  %cmp5.not = icmp eq i64 %off, 0
  %or.cond = and i1 %cmp5.not, %cmp.not
  br i1 %or.cond, label %if.end8, label %do.end.return_crit_edge

do.end.return_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i.i16 = getelementptr i8, ptr %kobj, i32 -80
  %call10 = tail call fastcc i32 @_read_reg(ptr noundef %add.ptr.i.i16, i8 noundef zeroext -117, ptr noundef %buf)
  br label %return

return:                                           ; preds = %if.end8, %do.end.return_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end8 ], [ -14, %do.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cond_search_polarity_read(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readnone %bin_attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp.not = icmp eq i32 %count, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %off)
  %cmp1.not = icmp eq i64 %off, 0
  %or.cond = and i1 %cmp1.not, %cmp.not
  br i1 %or.cond, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i.i = getelementptr i8, ptr %kobj, i32 -80
  %call2 = tail call fastcc i32 @_read_reg(ptr noundef %add.ptr.i.i, i8 noundef zeroext -116, ptr noundef %buf)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -14, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @status_control_read(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readnone %bin_attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp.not = icmp eq i32 %count, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %off)
  %cmp1.not = icmp eq i64 %off, 0
  %or.cond = and i1 %cmp1.not, %cmp.not
  br i1 %or.cond, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i.i = getelementptr i8, ptr %kobj, i32 -80
  %call2 = tail call fastcc i32 @_read_reg(ptr noundef %add.ptr.i.i, i8 noundef zeroext -115, ptr noundef %buf)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -14, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @status_control_write(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readnone %bin_attr, ptr nocapture noundef readonly %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  %w1_buf = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %w1_buf) #5
  %0 = getelementptr inbounds [4 x i8], ptr %w1_buf, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i8], ptr %w1_buf, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i8], ptr %w1_buf, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp.not = icmp eq i32 %count, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %off)
  %cmp1.not = icmp eq i64 %off, 0
  %or.cond = and i1 %cmp1.not, %cmp.not
  %3 = ptrtoint ptr %w1_buf to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %w1_buf, align 4
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %kobj, i32 -80
  %master = getelementptr i8, ptr %kobj, i32 -12
  %4 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master, align 4
  %bus_mutex = getelementptr inbounds %struct.w1_master, ptr %5, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %bus_mutex, i32 noundef 0) #5
  %call2 = tail call i32 @w1_reset_select_slave(ptr noundef %add.ptr.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %while.cond.preheader, label %if.end.error_crit_edge

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %error

while.cond.preheader:                             ; preds = %if.end
  %6 = ptrtoint ptr %w1_buf to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -52, ptr %w1_buf, align 4
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -115, ptr %0, align 1
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %1, align 2
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %buf, align 1
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %2, align 1
  %12 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %master, align 4
  call void @w1_write_block(ptr noundef %13, ptr noundef nonnull %w1_buf, i32 noundef 4) #5
  %14 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %master, align 4
  %call11 = call i32 @w1_reset_resume_command(ptr noundef %15) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %while.cond.preheader.error_crit_edge

while.cond.preheader.error_crit_edge:             ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %error

if.end14:                                         ; preds = %while.cond.preheader
  %16 = ptrtoint ptr %w1_buf to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -16, ptr %w1_buf, align 4
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -115, ptr %0, align 1
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %1, align 2
  %19 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %master, align 4
  call void @w1_write_block(ptr noundef %20, ptr noundef nonnull %w1_buf, i32 noundef 3) #5
  %21 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %master, align 4
  %call21 = call zeroext i8 @w1_read_8(ptr noundef %22) #5
  %23 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %call21, i8 %24)
  %cmp23 = icmp eq i8 %call21, %24
  br i1 %cmp23, label %if.end14.cleanup.sink.split_crit_edge, label %while.cond.1

if.end14.cleanup.sink.split_crit_edge:            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

while.cond.1:                                     ; preds = %if.end14
  %25 = ptrtoint ptr %w1_buf to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -52, ptr %w1_buf, align 4
  %26 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -115, ptr %0, align 1
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %1, align 2
  %28 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %buf, align 1
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %2, align 1
  %31 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %master, align 4
  call void @w1_write_block(ptr noundef %32, ptr noundef nonnull %w1_buf, i32 noundef 4) #5
  %33 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %master, align 4
  %call11.1 = call i32 @w1_reset_resume_command(ptr noundef %34) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.1)
  %tobool12.not.1 = icmp eq i32 %call11.1, 0
  br i1 %tobool12.not.1, label %if.end14.1, label %while.cond.1.error_crit_edge

while.cond.1.error_crit_edge:                     ; preds = %while.cond.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %error

if.end14.1:                                       ; preds = %while.cond.1
  %35 = ptrtoint ptr %w1_buf to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -16, ptr %w1_buf, align 4
  %36 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -115, ptr %0, align 1
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %1, align 2
  %38 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %master, align 4
  call void @w1_write_block(ptr noundef %39, ptr noundef nonnull %w1_buf, i32 noundef 3) #5
  %40 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %master, align 4
  %call21.1 = call zeroext i8 @w1_read_8(ptr noundef %41) #5
  %42 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %call21.1, i8 %43)
  %cmp23.1 = icmp eq i8 %call21.1, %43
  br i1 %cmp23.1, label %if.end14.1.cleanup.sink.split_crit_edge, label %while.cond.2

if.end14.1.cleanup.sink.split_crit_edge:          ; preds = %if.end14.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

while.cond.2:                                     ; preds = %if.end14.1
  %44 = ptrtoint ptr %w1_buf to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 -52, ptr %w1_buf, align 4
  %45 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 -115, ptr %0, align 1
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %1, align 2
  %47 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %buf, align 1
  %49 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %2, align 1
  %50 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %master, align 4
  call void @w1_write_block(ptr noundef %51, ptr noundef nonnull %w1_buf, i32 noundef 4) #5
  %52 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %master, align 4
  %call11.2 = call i32 @w1_reset_resume_command(ptr noundef %53) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.2)
  %tobool12.not.2 = icmp eq i32 %call11.2, 0
  br i1 %tobool12.not.2, label %if.end14.2, label %while.cond.2.error_crit_edge

while.cond.2.error_crit_edge:                     ; preds = %while.cond.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %error

if.end14.2:                                       ; preds = %while.cond.2
  %54 = ptrtoint ptr %w1_buf to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 -16, ptr %w1_buf, align 4
  %55 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 -115, ptr %0, align 1
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %1, align 2
  %57 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %master, align 4
  call void @w1_write_block(ptr noundef %58, ptr noundef nonnull %w1_buf, i32 noundef 3) #5
  %59 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %master, align 4
  %call21.2 = call zeroext i8 @w1_read_8(ptr noundef %60) #5
  %61 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %call21.2, i8 %62)
  %cmp23.2 = icmp eq i8 %call21.2, %62
  br i1 %cmp23.2, label %if.end14.2.cleanup.sink.split_crit_edge, label %if.end14.2.error_crit_edge

if.end14.2.error_crit_edge:                       ; preds = %if.end14.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %error

if.end14.2.cleanup.sink.split_crit_edge:          ; preds = %if.end14.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

error:                                            ; preds = %if.end14.2.error_crit_edge, %while.cond.2.error_crit_edge, %while.cond.1.error_crit_edge, %while.cond.preheader.error_crit_edge, %if.end.error_crit_edge
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %error, %if.end14.2.cleanup.sink.split_crit_edge, %if.end14.1.cleanup.sink.split_crit_edge, %if.end14.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -5, %error ], [ 1, %if.end14.2.cleanup.sink.split_crit_edge ], [ 1, %if.end14.1.cleanup.sink.split_crit_edge ], [ 1, %if.end14.cleanup.sink.split_crit_edge ]
  %63 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %master, align 4
  %bus_mutex30 = getelementptr inbounds %struct.w1_master, ptr %64, i32 0, i32 21
  call void @mutex_unlock(ptr noundef %bus_mutex30) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %w1_buf) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !25, !27, !28, !29, !30, !31, !33, !34, !35, !37, !38, !40, !41, !43, !44, !46, !47, !49, !50, !51, !53, !55, !56, !57, !58, !60, !61, !63, !64, !66, !67, !69, !70, !72, !73, !75}
!llvm.module.flags = !{!76, !77, !78, !79, !80, !81, !82, !83}
!llvm.ident = !{!84}

!0 = !{ptr @__initcall__kmod_w1_ds2408__193_348_w1_family_29_init6, !1, !"__initcall__kmod_w1_ds2408__193_348_w1_family_29_init6", i1 false, i1 false}
!1 = !{!"../drivers/w1/slaves/w1_ds2408.c", i32 348, i32 1}
!2 = !{ptr @__exitcall_w1_family_29_exit, !1, !"__exitcall_w1_family_29_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author194, !4, !"__UNIQUE_ID_author194", i1 false, i1 false}
!4 = !{!"../drivers/w1/slaves/w1_ds2408.c", i32 350, i32 1}
!5 = !{ptr @__UNIQUE_ID_description195, !6, !"__UNIQUE_ID_description195", i1 false, i1 false}
!6 = !{!"../drivers/w1/slaves/w1_ds2408.c", i32 351, i32 1}
!7 = !{ptr @__UNIQUE_ID_file196, !8, !"__UNIQUE_ID_file196", i1 false, i1 false}
!8 = !{!"../drivers/w1/slaves/w1_ds2408.c", i32 352, i32 1}
!9 = !{ptr @__UNIQUE_ID_license197, !8, !"__UNIQUE_ID_license197", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias198, !11, !"__UNIQUE_ID_alias198", i1 false, i1 false}
!11 = !{!"../drivers/w1/slaves/w1_ds2408.c", i32 353, i32 1}
!12 = !{ptr @w1_family_29, !13, !"w1_family_29", i1 false, i1 false}
!13 = !{!"../drivers/w1/slaves/w1_ds2408.c", i32 344, i32 25}
!14 = !{ptr @w1_f29_fops, !15, !"w1_f29_fops", i1 false, i1 false}
!15 = !{!"../drivers/w1/slaves/w1_ds2408.c", i32 339, i32 35}
!16 = !{ptr @w1_f29_groups, !17, !"w1_f29_groups", i1 false, i1 false}
!17 = !{!"../drivers/w1/slaves/w1_ds2408.c", i32 334, i32 38}
!18 = !{ptr @w1_f29_group, !19, !"w1_f29_group", i1 false, i1 false}
!19 = !{!"../drivers/w1/slaves/w1_ds2408.c", i32 330, i32 37}
!20 = !{ptr @w1_f29_bin_attrs, !21, !"w1_f29_bin_attrs", i1 false, i1 false}
!21 = !{!"../drivers/w1/slaves/w1_ds2408.c", i32 320, i32 30}
!22 = !{ptr @.str, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/w1/slaves/w1_ds2408.c", i32 313, i32 8}
!24 = !{ptr @bin_attr_state, !23, !"bin_attr_state", i1 false, i1 false}
!25 = !{ptr @.str.1, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/w1/slaves/w1_ds2408.c", i32 71, i32 2}
!27 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @state_read.__UNIQUE_ID_ddebug186, !26, !"__UNIQUE_ID_ddebug186", i1 false, i1 false}
!31 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/w1/slaves/w1_ds2408.c", i32 41, i32 2}
!33 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @_read_reg.__UNIQUE_ID_ddebug183, !32, !"__UNIQUE_ID_ddebug183", i1 false, i1 false}
!35 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/w1/slaves/w1_ds2408.c", i32 49, i32 2}
!37 = !{ptr @_read_reg.__UNIQUE_ID_ddebug184, !36, !"__UNIQUE_ID_ddebug184", i1 false, i1 false}
!38 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/w1/slaves/w1_ds2408.c", i32 63, i32 2}
!40 = !{ptr @_read_reg.__UNIQUE_ID_ddebug185, !39, !"__UNIQUE_ID_ddebug185", i1 false, i1 false}
!41 = !{ptr @.str.9, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/w1/slaves/w1_ds2408.c", i32 314, i32 8}
!43 = !{ptr @bin_attr_output, !42, !"bin_attr_output", i1 false, i1 false}
!44 = !{ptr @.str.10, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/w1/slaves/w1_ds2408.c", i32 83, i32 2}
!46 = !{ptr @output_read.__UNIQUE_ID_ddebug187, !45, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!47 = !{ptr @.str.11, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/w1/slaves/w1_ds2408.c", i32 174, i32 2}
!49 = !{ptr @.str.12, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @output_write.__UNIQUE_ID_ddebug190, !48, !"__UNIQUE_ID_ddebug190", i1 false, i1 false}
!51 = !{ptr @output_write.__UNIQUE_ID_ddebug191, !52, !"__UNIQUE_ID_ddebug191", i1 false, i1 false}
!52 = !{!"../drivers/w1/slaves/w1_ds2408.c", i32 176, i32 2}
!53 = !{ptr @.str.13, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/w1/slaves/w1_ds2408.c", i32 202, i32 2}
!55 = !{ptr @output_write.__UNIQUE_ID_ddebug192, !54, !"__UNIQUE_ID_ddebug192", i1 false, i1 false}
!56 = !{ptr @.str.14, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.15, !54, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.16, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/w1/slaves/w1_ds2408.c", i32 315, i32 8}
!60 = !{ptr @bin_attr_activity, !59, !"bin_attr_activity", i1 false, i1 false}
!61 = !{ptr @.str.17, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/w1/slaves/w1_ds2408.c", i32 96, i32 2}
!63 = !{ptr @activity_read.__UNIQUE_ID_ddebug188, !62, !"__UNIQUE_ID_ddebug188", i1 false, i1 false}
!64 = !{ptr @.str.18, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/w1/slaves/w1_ds2408.c", i32 316, i32 8}
!66 = !{ptr @bin_attr_cond_search_mask, !65, !"bin_attr_cond_search_mask", i1 false, i1 false}
!67 = !{ptr @.str.19, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/w1/slaves/w1_ds2408.c", i32 109, i32 2}
!69 = !{ptr @cond_search_mask_read.__UNIQUE_ID_ddebug189, !68, !"__UNIQUE_ID_ddebug189", i1 false, i1 false}
!70 = !{ptr @.str.20, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/w1/slaves/w1_ds2408.c", i32 317, i32 8}
!72 = !{ptr @bin_attr_cond_search_polarity, !71, !"bin_attr_cond_search_polarity", i1 false, i1 false}
!73 = !{ptr @.str.21, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/w1/slaves/w1_ds2408.c", i32 318, i32 8}
!75 = !{ptr @bin_attr_status_control, !74, !"bin_attr_status_control", i1 false, i1 false}
!76 = !{i32 1, !"wchar_size", i32 2}
!77 = !{i32 1, !"min_enum_size", i32 4}
!78 = !{i32 8, !"branch-target-enforcement", i32 0}
!79 = !{i32 8, !"sign-return-address", i32 0}
!80 = !{i32 8, !"sign-return-address-all", i32 0}
!81 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!82 = !{i32 7, !"uwtable", i32 1}
!83 = !{i32 7, !"frame-pointer", i32 2}
!84 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!85 = !{i64 2148698903, i64 2148698908, i64 2148698921, i64 2148698965, i64 2148698999, i64 2148699020}
!86 = !{!"auto-init"}
