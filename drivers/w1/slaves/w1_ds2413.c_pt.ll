; ModuleID = '/llk/IR_all_yes/drivers/w1/slaves/w1_ds2413.c_pt.bc'
source_filename = "../drivers/w1/slaves/w1_ds2413.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.w1_master = type { %struct.list_head, ptr, [32 x i8], %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i64, %struct.atomic_t, ptr, i32, i32, i32, ptr, %struct.mutex, %struct.mutex, ptr, %struct.device, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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

@__initcall__kmod_w1_ds2413__189_154_w1_family_3a_init6 = internal global ptr @w1_family_3a_init, section ".initcall6.init", align 4
@w1_family_3a = internal global { %struct.w1_family, [40 x i8] } { %struct.w1_family { %struct.list_head zeroinitializer, i8 58, ptr @w1_f3a_fops, ptr null, %struct.atomic_t zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@__exitcall_w1_family_3a_exit = internal global ptr @w1_family_3a_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author190 = internal constant [55 x i8] c"w1_ds2413.author=Mariusz Bialonczyk <manio@skyboo.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description191 = internal constant [62 x i8] c"w1_ds2413.description=w1 family 3a driver for DS2413 2 Pin IO\00", section ".modinfo", align 1
@__UNIQUE_ID_file192 = internal constant [43 x i8] c"w1_ds2413.file=drivers/w1/slaves/w1_ds2413\00", section ".modinfo", align 1
@__UNIQUE_ID_license193 = internal constant [22 x i8] c"w1_ds2413.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias194 = internal constant [31 x i8] c"w1_ds2413.alias=w1-family-0x3A\00", section ".modinfo", align 1
@w1_f3a_fops = internal constant { %struct.w1_family_ops, [16 x i8] } { %struct.w1_family_ops { ptr null, ptr null, ptr @w1_f3a_groups, ptr null }, [16 x i8] zeroinitializer }, align 32
@w1_f3a_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @w1_f3a_group, ptr null], [24 x i8] zeroinitializer }, align 32
@w1_f3a_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr null, ptr @w1_f3a_bin_attrs }, [44 x i8] zeroinitializer }, align 32
@w1_f3a_bin_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @bin_attr_state, ptr @bin_attr_output, ptr null], [20 x i8] zeroinitializer }, align 32
@bin_attr_state = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 1, ptr null, ptr null, ptr @state_read, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@bin_attr_output = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.15, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 1, ptr null, ptr null, ptr null, ptr @output_write, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"state\00", [26 x i8] zeroinitializer }, align 32
@state_read.__UNIQUE_ID_ddebug183 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 9, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"w1_ds2413\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"state_read\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/w1/slaves/w1_ds2413.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Reading %s kobj: %p, off: %0#10x, count: %zu, buff addr: %p\00", [36 x i8] zeroinitializer }, align 32
@state_read.__UNIQUE_ID_ddebug184 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, i8 0, i8 11, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mutex locked\00", [19 x i8] zeroinitializer }, align 32
@state_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 64, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"slave device did not respond to PIO_ACCESS_READ, reselecting, retries left: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@state_read._entry_ptr = internal global ptr @state_read._entry, section ".printk_index", align 4
@state_read._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 71, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"PIO_ACCESS_READ error, retries left: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@state_read._entry_ptr.11 = internal global ptr @state_read._entry.9, section ".printk_index", align 4
@state_read.__UNIQUE_ID_ddebug185 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.12, i8 0, i8 19, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s, mutex unlocked, retries: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"succeeded\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"error\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"output\00", [25 x i8] zeroinitializer }, align 32
@output_write.__UNIQUE_ID_ddebug186 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.16, ptr @.str.3, ptr @.str.17, i8 0, i8 23, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"output_write\00", [19 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"locking mutex for write_output\00", [33 x i8] zeroinitializer }, align 32
@output_write.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.16, ptr @.str.3, ptr @.str.5, i8 0, i8 24, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@output_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.3, i32 119, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"PIO_ACCESS_WRITE error, retries left: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@output_write._entry_ptr = internal global ptr @output_write._entry, section ".printk_index", align 4
@output_write.__UNIQUE_ID_ddebug188 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.16, ptr @.str.3, ptr @.str.12, i8 0, i8 31, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@___asan_gen_.19 = private unnamed_addr constant [13 x i8] c"w1_family_3a\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 150, i32 25 }
@___asan_gen_.22 = private unnamed_addr constant [12 x i8] c"w1_f3a_fops\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 146, i32 35 }
@___asan_gen_.25 = private unnamed_addr constant [14 x i8] c"w1_f3a_groups\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 141, i32 38 }
@___asan_gen_.28 = private unnamed_addr constant [13 x i8] c"w1_f3a_group\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 137, i32 37 }
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"w1_f3a_bin_attrs\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 131, i32 30 }
@___asan_gen_.34 = private unnamed_addr constant [15 x i8] c"bin_attr_state\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [16 x i8] c"bin_attr_output\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 81, i32 8 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 36, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 46, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 63, i32 4 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 71, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 76, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 129, i32 8 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 95, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.97 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.98 = private constant [33 x i8] c"../drivers/w1/slaves/w1_ds2413.c\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 119, i32 3 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__UNIQUE_ID_alias194, ptr @__UNIQUE_ID_author190, ptr @__UNIQUE_ID_description191, ptr @__UNIQUE_ID_file192, ptr @__UNIQUE_ID_license193, ptr @__exitcall_w1_family_3a_exit, ptr @__initcall__kmod_w1_ds2413__189_154_w1_family_3a_init6, ptr @output_write._entry, ptr @output_write._entry_ptr, ptr @state_read._entry, ptr @state_read._entry.9, ptr @state_read._entry_ptr, ptr @state_read._entry_ptr.11, ptr @w1_family_3a_exit, ptr @w1_family_3a, ptr @w1_f3a_fops, ptr @w1_f3a_groups, ptr @w1_f3a_group, ptr @w1_f3a_bin_attrs, ptr @bin_attr_state, ptr @bin_attr_output, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_family_3a to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_f3a_fops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_f3a_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_f3a_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_f3a_bin_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_state to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_output to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @state_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @state_read._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @output_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @w1_family_3a_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @w1_register_family(ptr noundef nonnull @w1_family_3a) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @w1_family_3a_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @w1_unregister_family(ptr noundef nonnull @w1_family_3a) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @w1_unregister_family(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @w1_register_family(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @state_read(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readonly %bin_attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %kobj, i32 -80
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @state_read.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@state_read, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !73

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %bin_attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bin_attr, align 4
  %conv = trunc i64 %off to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @state_read.__UNIQUE_ID_ddebug183, ptr noundef %kobj, ptr noundef nonnull @.str.4, ptr noundef %1, ptr noundef %kobj, i32 noundef %conv, i32 noundef %count, ptr noundef %buf) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %off)
  %cmp.not = icmp eq i64 %off, 0
  br i1 %cmp.not, label %if.end6, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %tobool7.not = icmp eq ptr %buf, null
  br i1 %tobool7.not, label %if.end6.cleanup_crit_edge, label %if.end9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %master = getelementptr i8, ptr %kobj, i32 -12
  %2 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master, align 4
  %bus_mutex = getelementptr inbounds %struct.w1_master, ptr %3, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %bus_mutex, i32 noundef 0) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @state_read.__UNIQUE_ID_ddebug184, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@state_read, %if.then22)) #5
          to label %do.end26 [label %if.then22], !srcloc !73

if.then22:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @state_read.__UNIQUE_ID_ddebug184, ptr noundef %kobj, ptr noundef nonnull @.str.5) #5
  br label %do.end26

do.end26:                                         ; preds = %if.then22, %if.end9
  %call27125 = tail call i32 @w1_reset_select_slave(ptr noundef %add.ptr.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27125)
  %tobool28.not126 = icmp eq i32 %call27125, 0
  br i1 %tobool28.not126, label %do.end26.while.cond.preheader_crit_edge, label %do.end26.out_crit_edge

do.end26.out_crit_edge:                           ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

do.end26.while.cond.preheader_crit_edge:          ; preds = %do.end26
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %do.end47.while.cond.preheader_crit_edge, %do.end26.while.cond.preheader_crit_edge
  %retries.0127 = phi i32 [ %dec122, %do.end47.while.cond.preheader_crit_edge ], [ 3, %do.end26.while.cond.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retries.0127)
  %tobool31.not121 = icmp eq i32 %retries.0127, 0
  br i1 %tobool31.not121, label %while.cond.preheader.out_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.out_crit_edge:               ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

while.body:                                       ; preds = %do.end58.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %dec122.in = phi i32 [ %dec122, %do.end58.while.body_crit_edge ], [ %retries.0127, %while.cond.preheader.while.body_crit_edge ]
  %dec122 = add i32 %dec122.in, -1
  %4 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master, align 4
  tail call void @w1_write_8(ptr noundef %5, i8 noundef zeroext -11) #5
  %6 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %master, align 4
  %call34 = tail call zeroext i8 @w1_read_8(ptr noundef %7) #5
  %conv35 = zext i8 %call34 to i32
  %and = and i32 %conv35, 15
  %8 = lshr i32 %conv35, 4
  %and37 = xor i32 %8, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %and37)
  %cmp38 = icmp eq i32 %and, %and37
  br i1 %cmp38, label %if.then40, label %if.else

if.then40:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %call34, ptr %buf, align 1
  br label %out

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call34)
  %cmp42 = icmp eq i8 %call34, -1
  br i1 %cmp42, label %do.end47, label %if.end50

do.end47:                                         ; preds = %if.else
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %kobj, ptr noundef nonnull @.str.6, i32 noundef %dec122) #8
  %call27 = tail call i32 @w1_reset_select_slave(ptr noundef %add.ptr.i.i) #5
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %do.end47.while.cond.preheader_crit_edge, label %do.end47.out_crit_edge

do.end47.out_crit_edge:                           ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

do.end47.while.cond.preheader_crit_edge:          ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.preheader

if.end50:                                         ; preds = %if.else
  %10 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %master, align 4
  %call52 = tail call i32 @w1_reset_resume_command(ptr noundef %11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %do.end58, label %if.end50.out_crit_edge

if.end50.out_crit_edge:                           ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

do.end58:                                         ; preds = %if.end50
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %kobj, ptr noundef nonnull @.str.10, i32 noundef %dec122) #8
  %tobool31.not = icmp eq i32 %dec122, 0
  br i1 %tobool31.not, label %do.end58.out_crit_edge, label %do.end58.while.body_crit_edge

do.end58.while.body_crit_edge:                    ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

do.end58.out_crit_edge:                           ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

out:                                              ; preds = %do.end58.out_crit_edge, %if.end50.out_crit_edge, %do.end47.out_crit_edge, %if.then40, %while.cond.preheader.out_crit_edge, %do.end26.out_crit_edge
  %cmp76 = phi ptr [ @.str.13, %if.then40 ], [ @.str.14, %do.end26.out_crit_edge ], [ @.str.14, %do.end58.out_crit_edge ], [ @.str.14, %if.end50.out_crit_edge ], [ @.str.14, %while.cond.preheader.out_crit_edge ], [ @.str.14, %do.end47.out_crit_edge ]
  %bytes_read.0 = phi i32 [ 1, %if.then40 ], [ -5, %do.end26.out_crit_edge ], [ -5, %do.end58.out_crit_edge ], [ -5, %if.end50.out_crit_edge ], [ -5, %while.cond.preheader.out_crit_edge ], [ -5, %do.end47.out_crit_edge ]
  %retries.2 = phi i32 [ %dec122, %if.then40 ], [ 3, %do.end26.out_crit_edge ], [ %dec122, %if.end50.out_crit_edge ], [ -1, %do.end58.out_crit_edge ], [ %dec122, %do.end47.out_crit_edge ], [ -1, %while.cond.preheader.out_crit_edge ]
  %12 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %master, align 4
  %bus_mutex61 = getelementptr inbounds %struct.w1_master, ptr %13, i32 0, i32 21
  tail call void @mutex_unlock(ptr noundef %bus_mutex61) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @state_read.__UNIQUE_ID_ddebug185, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@state_read, %if.then74)) #5
          to label %cleanup [label %if.then74], !srcloc !73

if.then74:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @state_read.__UNIQUE_ID_ddebug185, ptr noundef %kobj, ptr noundef nonnull @.str.12, ptr noundef nonnull %cmp76, i32 noundef %retries.2) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then74, %out, %if.end6.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ %bytes_read.0, %if.then74 ], [ %bytes_read.0, %out ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @w1_reset_select_slave(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @w1_write_8(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @w1_read_8(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @w1_reset_resume_command(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @output_write(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readnone %bin_attr, ptr nocapture noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  %w1_buf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %kobj, i32 -80
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %w1_buf) #5
  %0 = ptrtoint ptr %w1_buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %w1_buf, align 1, !annotation !74
  %1 = getelementptr inbounds [3 x i8], ptr %w1_buf, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !74
  %3 = getelementptr inbounds [3 x i8], ptr %w1_buf, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !74
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @output_write.__UNIQUE_ID_ddebug186, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@output_write, %if.then5)) #5
          to label %do.end [label %if.then5], !srcloc !73

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @output_write.__UNIQUE_ID_ddebug186, ptr noundef %kobj, ptr noundef nonnull @.str.17) #5
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %master = getelementptr i8, ptr %kobj, i32 -12
  %5 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %master, align 4
  %bus_mutex = getelementptr inbounds %struct.w1_master, ptr %6, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %bus_mutex, i32 noundef 0) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @output_write.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@output_write, %if.then19)) #5
          to label %do.end23 [label %if.then19], !srcloc !73

if.then19:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @output_write.__UNIQUE_ID_ddebug187, ptr noundef %kobj, ptr noundef nonnull @.str.5) #5
  br label %do.end23

do.end23:                                         ; preds = %if.then19, %do.end
  %call24 = tail call i32 @w1_reset_select_slave(ptr noundef %add.ptr.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %do.end23.out_crit_edge

do.end23.out_crit_edge:                           ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end27:                                         ; preds = %do.end23
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %buf, align 1
  %9 = or i8 %8, -4
  store i8 %9, ptr %buf, align 1
  %10 = ptrtoint ptr %w1_buf to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 90, ptr %w1_buf, align 1
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %9, ptr %1, align 1
  %neg = xor i8 %9, -1
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %neg, ptr %3, align 1
  %13 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %master, align 4
  call void @w1_write_block(ptr noundef %14, ptr noundef nonnull %w1_buf, i32 noundef 3) #5
  %15 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %master, align 4
  %call36 = call zeroext i8 @w1_read_8(ptr noundef %16) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %call36)
  %cmp38 = icmp eq i8 %call36, -86
  br i1 %cmp38, label %if.end27.out_crit_edge, label %if.end41

if.end27.out_crit_edge:                           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end41:                                         ; preds = %if.end27
  %17 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %master, align 4
  %call43 = call i32 @w1_reset_resume_command(ptr noundef %18) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %do.end49, label %if.end41.out_crit_edge

if.end41.out_crit_edge:                           ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

do.end49:                                         ; preds = %if.end41
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %kobj, ptr noundef nonnull @.str.18, i32 noundef 2) #8
  %19 = ptrtoint ptr %w1_buf to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 90, ptr %w1_buf, align 1
  %20 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %buf, align 1
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %1, align 1
  %neg.1 = xor i8 %21, -1
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %neg.1, ptr %3, align 1
  %24 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %master, align 4
  call void @w1_write_block(ptr noundef %25, ptr noundef nonnull %w1_buf, i32 noundef 3) #5
  %26 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %master, align 4
  %call36.1 = call zeroext i8 @w1_read_8(ptr noundef %27) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %call36.1)
  %cmp38.1 = icmp eq i8 %call36.1, -86
  br i1 %cmp38.1, label %do.end49.out_crit_edge, label %if.end41.1

do.end49.out_crit_edge:                           ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end41.1:                                       ; preds = %do.end49
  %28 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %master, align 4
  %call43.1 = call i32 @w1_reset_resume_command(ptr noundef %29) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.1)
  %tobool44.not.1 = icmp eq i32 %call43.1, 0
  br i1 %tobool44.not.1, label %do.end49.1, label %if.end41.1.out_crit_edge

if.end41.1.out_crit_edge:                         ; preds = %if.end41.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

do.end49.1:                                       ; preds = %if.end41.1
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %kobj, ptr noundef nonnull @.str.18, i32 noundef 1) #8
  %30 = ptrtoint ptr %w1_buf to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 90, ptr %w1_buf, align 1
  %31 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %buf, align 1
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %1, align 1
  %neg.2 = xor i8 %32, -1
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %neg.2, ptr %3, align 1
  %35 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %master, align 4
  call void @w1_write_block(ptr noundef %36, ptr noundef nonnull %w1_buf, i32 noundef 3) #5
  %37 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %master, align 4
  %call36.2 = call zeroext i8 @w1_read_8(ptr noundef %38) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %call36.2)
  %cmp38.2 = icmp eq i8 %call36.2, -86
  br i1 %cmp38.2, label %do.end49.1.out_crit_edge, label %if.end41.2

do.end49.1.out_crit_edge:                         ; preds = %do.end49.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end41.2:                                       ; preds = %do.end49.1
  %39 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %master, align 4
  %call43.2 = call i32 @w1_reset_resume_command(ptr noundef %40) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.2)
  %tobool44.not.2 = icmp eq i32 %call43.2, 0
  br i1 %tobool44.not.2, label %do.end49.2, label %if.end41.2.out_crit_edge

if.end41.2.out_crit_edge:                         ; preds = %if.end41.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

do.end49.2:                                       ; preds = %if.end41.2
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %kobj, ptr noundef nonnull @.str.18, i32 noundef 0) #8
  br label %out

out:                                              ; preds = %do.end49.2, %if.end41.2.out_crit_edge, %do.end49.1.out_crit_edge, %if.end41.1.out_crit_edge, %do.end49.out_crit_edge, %if.end41.out_crit_edge, %if.end27.out_crit_edge, %do.end23.out_crit_edge
  %cmp67 = phi ptr [ @.str.14, %do.end23.out_crit_edge ], [ @.str.14, %if.end41.out_crit_edge ], [ @.str.13, %if.end27.out_crit_edge ], [ @.str.13, %do.end49.out_crit_edge ], [ @.str.14, %if.end41.1.out_crit_edge ], [ @.str.13, %do.end49.1.out_crit_edge ], [ @.str.14, %if.end41.2.out_crit_edge ], [ @.str.14, %do.end49.2 ]
  %bytes_written.0 = phi i32 [ -5, %do.end23.out_crit_edge ], [ -5, %if.end41.out_crit_edge ], [ 1, %if.end27.out_crit_edge ], [ 1, %do.end49.out_crit_edge ], [ -5, %if.end41.1.out_crit_edge ], [ 1, %do.end49.1.out_crit_edge ], [ -5, %if.end41.2.out_crit_edge ], [ -5, %do.end49.2 ]
  %retries.1 = phi i32 [ 3, %do.end23.out_crit_edge ], [ 2, %if.end41.out_crit_edge ], [ 2, %if.end27.out_crit_edge ], [ 1, %do.end49.out_crit_edge ], [ 1, %if.end41.1.out_crit_edge ], [ 0, %do.end49.1.out_crit_edge ], [ 0, %if.end41.2.out_crit_edge ], [ -1, %do.end49.2 ]
  %41 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %master, align 4
  %bus_mutex52 = getelementptr inbounds %struct.w1_master, ptr %42, i32 0, i32 21
  call void @mutex_unlock(ptr noundef %bus_mutex52) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @output_write.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@output_write, %if.then65)) #5
          to label %cleanup [label %if.then65], !srcloc !73

if.then65:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @output_write.__UNIQUE_ID_ddebug188, ptr noundef %kobj, ptr noundef nonnull @.str.12, ptr noundef nonnull %cmp67, i32 noundef %retries.1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then65, %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %entry.cleanup_crit_edge ], [ %bytes_written.0, %if.then65 ], [ %bytes_written.0, %out ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %w1_buf) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @w1_write_block(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !25, !27, !28, !29, !30, !31, !33, !34, !36, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !49, !51, !52, !54, !55, !56, !58, !60, !61, !62}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @__initcall__kmod_w1_ds2413__189_154_w1_family_3a_init6, !1, !"__initcall__kmod_w1_ds2413__189_154_w1_family_3a_init6", i1 false, i1 false}
!1 = !{!"../drivers/w1/slaves/w1_ds2413.c", i32 154, i32 1}
!2 = !{ptr @__exitcall_w1_family_3a_exit, !1, !"__exitcall_w1_family_3a_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author190, !4, !"__UNIQUE_ID_author190", i1 false, i1 false}
!4 = !{!"../drivers/w1/slaves/w1_ds2413.c", i32 156, i32 1}
!5 = !{ptr @__UNIQUE_ID_description191, !6, !"__UNIQUE_ID_description191", i1 false, i1 false}
!6 = !{!"../drivers/w1/slaves/w1_ds2413.c", i32 157, i32 1}
!7 = !{ptr @__UNIQUE_ID_file192, !8, !"__UNIQUE_ID_file192", i1 false, i1 false}
!8 = !{!"../drivers/w1/slaves/w1_ds2413.c", i32 158, i32 1}
!9 = !{ptr @__UNIQUE_ID_license193, !8, !"__UNIQUE_ID_license193", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias194, !11, !"__UNIQUE_ID_alias194", i1 false, i1 false}
!11 = !{!"../drivers/w1/slaves/w1_ds2413.c", i32 159, i32 1}
!12 = !{ptr @w1_family_3a, !13, !"w1_family_3a", i1 false, i1 false}
!13 = !{!"../drivers/w1/slaves/w1_ds2413.c", i32 150, i32 25}
!14 = !{ptr @w1_f3a_fops, !15, !"w1_f3a_fops", i1 false, i1 false}
!15 = !{!"../drivers/w1/slaves/w1_ds2413.c", i32 146, i32 35}
!16 = !{ptr @w1_f3a_groups, !17, !"w1_f3a_groups", i1 false, i1 false}
!17 = !{!"../drivers/w1/slaves/w1_ds2413.c", i32 141, i32 38}
!18 = !{ptr @w1_f3a_group, !19, !"w1_f3a_group", i1 false, i1 false}
!19 = !{!"../drivers/w1/slaves/w1_ds2413.c", i32 137, i32 37}
!20 = !{ptr @w1_f3a_bin_attrs, !21, !"w1_f3a_bin_attrs", i1 false, i1 false}
!21 = !{!"../drivers/w1/slaves/w1_ds2413.c", i32 131, i32 30}
!22 = !{ptr @.str, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/w1/slaves/w1_ds2413.c", i32 81, i32 8}
!24 = !{ptr @bin_attr_state, !23, !"bin_attr_state", i1 false, i1 false}
!25 = !{ptr @.str.1, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/w1/slaves/w1_ds2413.c", i32 36, i32 2}
!27 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @state_read.__UNIQUE_ID_ddebug183, !26, !"__UNIQUE_ID_ddebug183", i1 false, i1 false}
!31 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/w1/slaves/w1_ds2413.c", i32 46, i32 2}
!33 = !{ptr @state_read.__UNIQUE_ID_ddebug184, !32, !"__UNIQUE_ID_ddebug184", i1 false, i1 false}
!34 = !{ptr @.str.6, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/w1/slaves/w1_ds2413.c", i32 63, i32 4}
!36 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @state_read._entry, !35, !"_entry", i1 false, i1 false}
!39 = !{ptr @state_read._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/w1/slaves/w1_ds2413.c", i32 71, i32 3}
!42 = !{ptr @state_read._entry.9, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @state_read._entry_ptr.11, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/w1/slaves/w1_ds2413.c", i32 76, i32 2}
!46 = !{ptr @state_read.__UNIQUE_ID_ddebug185, !45, !"__UNIQUE_ID_ddebug185", i1 false, i1 false}
!47 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/w1/slaves/w1_ds2413.c", i32 129, i32 8}
!51 = !{ptr @bin_attr_output, !50, !"bin_attr_output", i1 false, i1 false}
!52 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/w1/slaves/w1_ds2413.c", i32 95, i32 2}
!54 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @output_write.__UNIQUE_ID_ddebug186, !53, !"__UNIQUE_ID_ddebug186", i1 false, i1 false}
!56 = !{ptr @output_write.__UNIQUE_ID_ddebug187, !57, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!57 = !{!"../drivers/w1/slaves/w1_ds2413.c", i32 97, i32 2}
!58 = !{ptr @.str.18, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/w1/slaves/w1_ds2413.c", i32 119, i32 3}
!60 = !{ptr @output_write._entry, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @output_write._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @output_write.__UNIQUE_ID_ddebug188, !63, !"__UNIQUE_ID_ddebug188", i1 false, i1 false}
!63 = !{!"../drivers/w1/slaves/w1_ds2413.c", i32 124, i32 2}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{i64 2148693770, i64 2148693775, i64 2148693788, i64 2148693832, i64 2148693866, i64 2148693887}
!74 = !{!"auto-init"}
