; ModuleID = '/llk/IR_all_yes/drivers/w1/slaves/w1_ds2438.c_pt.bc'
source_filename = "../drivers/w1/slaves/w1_ds2438.c"
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
%struct.w1_slave = type { ptr, [32 x i8], %struct.list_head, %struct.w1_reg_num, %struct.atomic_t, i32, i32, ptr, ptr, ptr, %struct.device, ptr }
%struct.w1_reg_num = type { i64 }

@__initcall__kmod_w1_ds2438__170_513_w1_ds2438_family_init6 = internal global ptr @w1_ds2438_family_init, section ".initcall6.init", align 4
@w1_ds2438_family = internal global { %struct.w1_family, [40 x i8] } { %struct.w1_family { %struct.list_head zeroinitializer, i8 38, ptr @w1_ds2438_fops, ptr null, %struct.atomic_t zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@__exitcall_w1_ds2438_family_exit = internal global ptr @w1_ds2438_family_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file171 = internal constant [43 x i8] c"w1_ds2438.file=drivers/w1/slaves/w1_ds2438\00", section ".modinfo", align 1
@__UNIQUE_ID_license172 = internal constant [22 x i8] c"w1_ds2438.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author173 = internal constant [55 x i8] c"w1_ds2438.author=Mariusz Bialonczyk <manio@skyboo.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description174 = internal constant [82 x i8] c"w1_ds2438.description=1-wire driver for Maxim/Dallas DS2438 Smart Battery Monitor\00", section ".modinfo", align 1
@__UNIQUE_ID_alias175 = internal constant [31 x i8] c"w1_ds2438.alias=w1-family-0x26\00", section ".modinfo", align 1
@w1_ds2438_fops = internal constant { %struct.w1_family_ops, [16 x i8] } { %struct.w1_family_ops { ptr null, ptr null, ptr @w1_ds2438_groups, ptr null }, [16 x i8] zeroinitializer }, align 32
@w1_ds2438_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @w1_ds2438_group, ptr null], [24 x i8] zeroinitializer }, align 32
@w1_ds2438_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr null, ptr @w1_ds2438_bin_attrs }, [44 x i8] zeroinitializer }, align 32
@w1_ds2438_bin_attrs = internal global { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @bin_attr_iad, ptr @bin_attr_page0, ptr @bin_attr_page1, ptr @bin_attr_offset, ptr @bin_attr_temperature, ptr @bin_attr_vad, ptr @bin_attr_vdd, ptr null], [32 x i8] zeroinitializer }, align 32
@bin_attr_iad = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 0, ptr null, ptr null, ptr @iad_read, ptr @iad_write, ptr null }, [52 x i8] zeroinitializer }, align 32
@bin_attr_page0 = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.2, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 8, ptr null, ptr null, ptr @page0_read, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@bin_attr_page1 = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.3, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 8, ptr null, ptr null, ptr @page1_read, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@bin_attr_offset = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.4, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 2, ptr null, ptr null, ptr null, ptr @offset_write, ptr null }, [52 x i8] zeroinitializer }, align 32
@bin_attr_temperature = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.5, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 0, ptr null, ptr null, ptr @temperature_read, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@bin_attr_vad = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.6, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 0, ptr null, ptr null, ptr @vad_read, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@bin_attr_vdd = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.8, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 0, ptr null, ptr null, ptr @vdd_read, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"iad\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%i\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"page0\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"page1\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"offset\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temperature\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vad\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"w1_ds2438_family\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 509, i32 25 }
@___asan_gen_.12 = private unnamed_addr constant [15 x i8] c"w1_ds2438_fops\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 505, i32 35 }
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"w1_ds2438_groups\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 500, i32 38 }
@___asan_gen_.18 = private unnamed_addr constant [16 x i8] c"w1_ds2438_group\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 496, i32 37 }
@___asan_gen_.21 = private unnamed_addr constant [20 x i8] c"w1_ds2438_bin_attrs\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 485, i32 30 }
@___asan_gen_.24 = private unnamed_addr constant [13 x i8] c"bin_attr_iad\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [15 x i8] c"bin_attr_page0\00", align 1
@___asan_gen_.30 = private unnamed_addr constant [15 x i8] c"bin_attr_page1\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [16 x i8] c"bin_attr_offset\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [21 x i8] c"bin_attr_temperature\00", align 1
@___asan_gen_.39 = private unnamed_addr constant [13 x i8] c"bin_attr_vad\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [13 x i8] c"bin_attr_vdd\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 477, i32 8 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 328, i32 30 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 478, i32 8 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 479, i32 8 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 480, i32 8 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 481, i32 8 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 482, i32 8 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 449, i32 30 }
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.70 = private constant [33 x i8] c"../drivers/w1/slaves/w1_ds2438.c\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 483, i32 8 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__UNIQUE_ID_alias175, ptr @__UNIQUE_ID_author173, ptr @__UNIQUE_ID_description174, ptr @__UNIQUE_ID_file171, ptr @__UNIQUE_ID_license172, ptr @__exitcall_w1_ds2438_family_exit, ptr @__initcall__kmod_w1_ds2438__170_513_w1_ds2438_family_init6, ptr @w1_ds2438_family_exit, ptr @w1_ds2438_family, ptr @w1_ds2438_fops, ptr @w1_ds2438_groups, ptr @w1_ds2438_group, ptr @w1_ds2438_bin_attrs, ptr @bin_attr_iad, ptr @bin_attr_page0, ptr @bin_attr_page1, ptr @bin_attr_offset, ptr @bin_attr_temperature, ptr @bin_attr_vad, ptr @bin_attr_vdd, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_ds2438_family to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_ds2438_fops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_ds2438_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_ds2438_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_ds2438_bin_attrs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_iad to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_page0 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_page1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_offset to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_temperature to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_vad to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_vdd to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @w1_ds2438_family_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @w1_register_family(ptr noundef nonnull @w1_ds2438_family) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @w1_ds2438_family_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @w1_unregister_family(ptr noundef nonnull @w1_ds2438_family) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @w1_unregister_family(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @w1_register_family(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iad_read(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readnone %bin_attr, ptr noundef writeonly %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  %w1_buf.i = alloca [9 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %kobj, i32 -80
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %off)
  %cmp.not = icmp eq i64 %off, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %buf, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %w1_buf.i) #6
  %master.i = getelementptr i8, ptr %kobj, i32 -12
  %0 = call ptr @memset(ptr %w1_buf.i, i32 255, i32 9)
  %1 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %master.i, align 4
  %bus_mutex.i = getelementptr inbounds %struct.w1_master, ptr %2, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %bus_mutex.i, i32 noundef 0) #6
  %call.i = call fastcc i32 @w1_ds2438_get_page(ptr noundef %add.ptr.i.i, i32 noundef 0, ptr noundef nonnull %w1_buf.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.then5, label %w1_ds2438_get_current.exit

w1_ds2438_get_current.exit:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %master.i, align 4
  %bus_mutex7.i = getelementptr inbounds %struct.w1_master, ptr %4, i32 0, i32 21
  call void @mutex_unlock(ptr noundef %bus_mutex7.i) #6
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %w1_buf.i) #6
  br label %cleanup

if.then5:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  %5 = getelementptr inbounds [9 x i8], ptr %w1_buf.i, i32 0, i32 6
  %6 = getelementptr inbounds [9 x i8], ptr %w1_buf.i, i32 0, i32 5
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %5, align 1
  %9 = zext i8 %8 to i16
  %shl.i = shl nuw i16 %9, 8
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %6, align 1
  %12 = zext i8 %11 to i16
  %or.i = or i16 %shl.i, %12
  %phi.cast = sext i16 %or.i to i32
  %13 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %master.i, align 4
  %bus_mutex7.i12 = getelementptr inbounds %struct.w1_master, ptr %14, i32 0, i32 21
  call void @mutex_unlock(ptr noundef %bus_mutex7.i12) #6
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %w1_buf.i) #6
  %call6 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef %count, ptr noundef nonnull @.str.1, i32 noundef %phi.cast)
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %w1_ds2438_get_current.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call6, %if.then5 ], [ -5, %w1_ds2438_get_current.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iad_write(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readnone %bin_attr, ptr nocapture noundef readonly %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp.not = icmp eq i32 %count, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %off)
  %cmp1.not = icmp eq i64 %off, 0
  %or.cond = and i1 %cmp1.not, %cmp.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i = getelementptr i8, ptr %kobj, i32 -80
  %master = getelementptr i8, ptr %kobj, i32 -12
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %bus_mutex = getelementptr inbounds %struct.w1_master, ptr %1, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %bus_mutex, i32 noundef 0) #6
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %buf, align 1
  %4 = and i8 %3, 1
  %call3 = tail call fastcc i32 @w1_ds2438_change_config_bit(ptr noundef %add.ptr.i.i, i8 noundef zeroext 1, i8 noundef zeroext %4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp eq i32 %call3, 0
  %. = select i1 %cmp4, i32 1, i32 -5
  %5 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %master, align 4
  %bus_mutex9 = getelementptr inbounds %struct.w1_master, ptr %6, i32 0, i32 21
  tail call void @mutex_unlock(ptr noundef %bus_mutex9) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %., %if.end ], [ -14, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @w1_ds2438_get_page(ptr noundef %sl, i32 noundef %pageno, ptr noundef %buf) unnamed_addr #2 align 64 {
entry:
  %w1_buf = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %w1_buf) #6
  %0 = ptrtoint ptr %w1_buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %w1_buf, align 1, !annotation !56
  %1 = getelementptr inbounds [2 x i8], ptr %w1_buf, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !56
  %conv = trunc i32 %pageno to i8
  %master = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 7
  %arrayidx18 = getelementptr i8, ptr %buf, i32 8
  %call = call i32 @w1_reset_select_slave(ptr noundef %sl) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %entry.while.cond.backedge_crit_edge

entry.while.cond.backedge_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.backedge

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %w1_buf to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -72, ptr %w1_buf, align 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %1, align 1
  %5 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %master, align 4
  call void @w1_write_block(ptr noundef %6, ptr noundef nonnull %w1_buf, i32 noundef 2) #6
  %call3 = call i32 @w1_reset_select_slave(ptr noundef %sl) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.while.cond.backedge_crit_edge

if.end.while.cond.backedge_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.backedge

if.end6:                                          ; preds = %if.end
  %7 = ptrtoint ptr %w1_buf to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -66, ptr %w1_buf, align 1
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %1, align 1
  %9 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %master, align 4
  call void @w1_write_block(ptr noundef %10, ptr noundef nonnull %w1_buf, i32 noundef 2) #6
  %11 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %master, align 4
  %call13 = call zeroext i8 @w1_read_block(ptr noundef %12, ptr noundef %buf, i32 noundef 9) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %call13)
  %cmp = icmp eq i8 %call13, 9
  br i1 %cmp, label %if.then16, label %if.end6.while.cond.backedge_crit_edge

if.end6.while.cond.backedge_crit_edge:            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.backedge

if.then16:                                        ; preds = %if.end6
  %call17 = call zeroext i8 @w1_calc_crc8(ptr noundef %buf, i32 noundef 8) #6
  %13 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx18, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %call17)
  %cmp21 = icmp eq i8 %14, %call17
  br i1 %cmp21, label %if.then16.cleanup_crit_edge, label %if.then16.while.cond.backedge_crit_edge

if.then16.while.cond.backedge_crit_edge:          ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.backedge

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.cond.backedge:                              ; preds = %if.then16.while.cond.backedge_crit_edge, %if.end6.while.cond.backedge_crit_edge, %if.end.while.cond.backedge_crit_edge, %entry.while.cond.backedge_crit_edge
  %call.1 = call i32 @w1_reset_select_slave(ptr noundef %sl) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool1.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool1.not.1, label %if.end.1, label %while.cond.backedge.while.cond.backedge.1_crit_edge

while.cond.backedge.while.cond.backedge.1_crit_edge: ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.backedge.1

if.end.1:                                         ; preds = %while.cond.backedge
  %15 = ptrtoint ptr %w1_buf to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -72, ptr %w1_buf, align 1
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv, ptr %1, align 1
  %17 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %master, align 4
  call void @w1_write_block(ptr noundef %18, ptr noundef nonnull %w1_buf, i32 noundef 2) #6
  %call3.1 = call i32 @w1_reset_select_slave(ptr noundef %sl) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.1)
  %tobool4.not.1 = icmp eq i32 %call3.1, 0
  br i1 %tobool4.not.1, label %if.end6.1, label %if.end.1.while.cond.backedge.1_crit_edge

if.end.1.while.cond.backedge.1_crit_edge:         ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.backedge.1

if.end6.1:                                        ; preds = %if.end.1
  %19 = ptrtoint ptr %w1_buf to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -66, ptr %w1_buf, align 1
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv, ptr %1, align 1
  %21 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %master, align 4
  call void @w1_write_block(ptr noundef %22, ptr noundef nonnull %w1_buf, i32 noundef 2) #6
  %23 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %master, align 4
  %call13.1 = call zeroext i8 @w1_read_block(ptr noundef %24, ptr noundef %buf, i32 noundef 9) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %call13.1)
  %cmp.1 = icmp eq i8 %call13.1, 9
  br i1 %cmp.1, label %if.then16.1, label %if.end6.1.while.cond.backedge.1_crit_edge

if.end6.1.while.cond.backedge.1_crit_edge:        ; preds = %if.end6.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.backedge.1

if.then16.1:                                      ; preds = %if.end6.1
  %call17.1 = call zeroext i8 @w1_calc_crc8(ptr noundef %buf, i32 noundef 8) #6
  %25 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx18, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %26, i8 %call17.1)
  %cmp21.1 = icmp eq i8 %26, %call17.1
  br i1 %cmp21.1, label %if.then16.1.cleanup_crit_edge, label %if.then16.1.while.cond.backedge.1_crit_edge

if.then16.1.while.cond.backedge.1_crit_edge:      ; preds = %if.then16.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.backedge.1

if.then16.1.cleanup_crit_edge:                    ; preds = %if.then16.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.cond.backedge.1:                            ; preds = %if.then16.1.while.cond.backedge.1_crit_edge, %if.end6.1.while.cond.backedge.1_crit_edge, %if.end.1.while.cond.backedge.1_crit_edge, %while.cond.backedge.while.cond.backedge.1_crit_edge
  %call.2 = call i32 @w1_reset_select_slave(ptr noundef %sl) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool1.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool1.not.2, label %if.end.2, label %while.cond.backedge.1.while.cond.backedge.2_crit_edge

while.cond.backedge.1.while.cond.backedge.2_crit_edge: ; preds = %while.cond.backedge.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.backedge.2

if.end.2:                                         ; preds = %while.cond.backedge.1
  %27 = ptrtoint ptr %w1_buf to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -72, ptr %w1_buf, align 1
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv, ptr %1, align 1
  %29 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %master, align 4
  call void @w1_write_block(ptr noundef %30, ptr noundef nonnull %w1_buf, i32 noundef 2) #6
  %call3.2 = call i32 @w1_reset_select_slave(ptr noundef %sl) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.2)
  %tobool4.not.2 = icmp eq i32 %call3.2, 0
  br i1 %tobool4.not.2, label %if.end6.2, label %if.end.2.while.cond.backedge.2_crit_edge

if.end.2.while.cond.backedge.2_crit_edge:         ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.backedge.2

if.end6.2:                                        ; preds = %if.end.2
  %31 = ptrtoint ptr %w1_buf to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -66, ptr %w1_buf, align 1
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv, ptr %1, align 1
  %33 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %master, align 4
  call void @w1_write_block(ptr noundef %34, ptr noundef nonnull %w1_buf, i32 noundef 2) #6
  %35 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %master, align 4
  %call13.2 = call zeroext i8 @w1_read_block(ptr noundef %36, ptr noundef %buf, i32 noundef 9) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %call13.2)
  %cmp.2 = icmp eq i8 %call13.2, 9
  br i1 %cmp.2, label %if.then16.2, label %if.end6.2.while.cond.backedge.2_crit_edge

if.end6.2.while.cond.backedge.2_crit_edge:        ; preds = %if.end6.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.backedge.2

if.then16.2:                                      ; preds = %if.end6.2
  %call17.2 = call zeroext i8 @w1_calc_crc8(ptr noundef %buf, i32 noundef 8) #6
  %37 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx18, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %38, i8 %call17.2)
  %cmp21.2 = icmp eq i8 %38, %call17.2
  br i1 %cmp21.2, label %if.then16.2.cleanup_crit_edge, label %if.then16.2.while.cond.backedge.2_crit_edge

if.then16.2.while.cond.backedge.2_crit_edge:      ; preds = %if.then16.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.backedge.2

if.then16.2.cleanup_crit_edge:                    ; preds = %if.then16.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.cond.backedge.2:                            ; preds = %if.then16.2.while.cond.backedge.2_crit_edge, %if.end6.2.while.cond.backedge.2_crit_edge, %if.end.2.while.cond.backedge.2_crit_edge, %while.cond.backedge.1.while.cond.backedge.2_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %while.cond.backedge.2, %if.then16.2.cleanup_crit_edge, %if.then16.1.cleanup_crit_edge, %if.then16.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then16.cleanup_crit_edge ], [ 0, %if.then16.1.cleanup_crit_edge ], [ 0, %if.then16.2.cleanup_crit_edge ], [ -1, %while.cond.backedge.2 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %w1_buf) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @w1_reset_select_slave(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @w1_write_block(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @w1_read_block(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @w1_calc_crc8(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @w1_ds2438_change_config_bit(ptr noundef %sl, i8 noundef zeroext %mask, i8 noundef zeroext %value) unnamed_addr #2 align 64 {
entry:
  %w1_buf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %w1_buf) #6
  %0 = ptrtoint ptr %w1_buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %w1_buf, align 1, !annotation !56
  %1 = getelementptr inbounds [3 x i8], ptr %w1_buf, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !56
  %3 = getelementptr inbounds [3 x i8], ptr %w1_buf, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !56
  %master = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 7
  %call = call i32 @w1_reset_select_slave(ptr noundef %sl) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %entry.while.cond.backedge_crit_edge

entry.while.cond.backedge_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end.while.cond.backedge_crit_edge, %entry.while.cond.backedge_crit_edge
  %call.1 = call i32 @w1_reset_select_slave(ptr noundef %sl) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool1.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool1.not.1, label %if.end.1, label %while.cond.backedge.while.cond.backedge.1_crit_edge

while.cond.backedge.while.cond.backedge.1_crit_edge: ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.backedge.1

if.end.1:                                         ; preds = %while.cond.backedge
  %5 = ptrtoint ptr %w1_buf to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -72, ptr %w1_buf, align 1
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %1, align 1
  %7 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %master, align 4
  call void @w1_write_block(ptr noundef %8, ptr noundef nonnull %w1_buf, i32 noundef 2) #6
  %call3.1 = call i32 @w1_reset_select_slave(ptr noundef %sl) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.1)
  %tobool4.not.1 = icmp eq i32 %call3.1, 0
  br i1 %tobool4.not.1, label %if.end.1.if.end6_crit_edge, label %if.end.1.while.cond.backedge.1_crit_edge

if.end.1.while.cond.backedge.1_crit_edge:         ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.backedge.1

if.end.1.if.end6_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

while.cond.backedge.1:                            ; preds = %if.end.1.while.cond.backedge.1_crit_edge, %while.cond.backedge.while.cond.backedge.1_crit_edge
  %call.2 = call i32 @w1_reset_select_slave(ptr noundef %sl) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool1.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool1.not.2, label %if.end.2, label %while.cond.backedge.1.cleanup_crit_edge

while.cond.backedge.1.cleanup_crit_edge:          ; preds = %while.cond.backedge.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.2:                                         ; preds = %while.cond.backedge.1
  %9 = ptrtoint ptr %w1_buf to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -72, ptr %w1_buf, align 1
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %1, align 1
  %11 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %master, align 4
  call void @w1_write_block(ptr noundef %12, ptr noundef nonnull %w1_buf, i32 noundef 2) #6
  %call3.2 = call i32 @w1_reset_select_slave(ptr noundef %sl) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.2)
  %tobool4.not.2 = icmp eq i32 %call3.2, 0
  br i1 %tobool4.not.2, label %if.end.2.if.end6_crit_edge, label %if.end.2.cleanup_crit_edge

if.end.2.cleanup_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.2.if.end6_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.end:                                           ; preds = %entry
  %13 = ptrtoint ptr %w1_buf to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -72, ptr %w1_buf, align 1
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %1, align 1
  %15 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %master, align 4
  call void @w1_write_block(ptr noundef %16, ptr noundef nonnull %w1_buf, i32 noundef 2) #6
  %call3 = call i32 @w1_reset_select_slave(ptr noundef %sl) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %if.end.while.cond.backedge_crit_edge

if.end.while.cond.backedge_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.backedge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.end6:                                          ; preds = %if.end.if.end6_crit_edge, %if.end.2.if.end6_crit_edge, %if.end.1.if.end6_crit_edge
  %17 = ptrtoint ptr %w1_buf to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -66, ptr %w1_buf, align 1
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %1, align 1
  %19 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %master, align 4
  call void @w1_write_block(ptr noundef %20, ptr noundef nonnull %w1_buf, i32 noundef 2) #6
  %21 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %master, align 4
  %call12 = call zeroext i8 @w1_read_8(ptr noundef %22) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %value)
  %tobool13.not = icmp eq i8 %value, 0
  %narrow = select i1 %tobool13.not, i8 0, i8 %mask
  %and66 = and i8 %call12, %mask
  call void @__sanitizer_cov_trace_cmp1(i8 %narrow, i8 %and66)
  %cmp = icmp eq i8 %narrow, %and66
  br i1 %cmp, label %if.end6.cleanup_crit_edge, label %while.end

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.end:                                        ; preds = %if.end6
  %xor67 = xor i8 %call12, %mask
  %call30 = call i32 @w1_reset_select_slave(ptr noundef %sl) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %while.end.while.cond26.backedge_crit_edge

while.end.while.cond26.backedge_crit_edge:        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond26.backedge

while.cond26.backedge:                            ; preds = %if.end33.while.cond26.backedge_crit_edge, %while.end.while.cond26.backedge_crit_edge
  %call30.1 = call i32 @w1_reset_select_slave(ptr noundef %sl) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.1)
  %tobool31.not.1 = icmp eq i32 %call30.1, 0
  br i1 %tobool31.not.1, label %if.end33.1, label %while.cond26.backedge.while.cond26.backedge.1_crit_edge

while.cond26.backedge.while.cond26.backedge.1_crit_edge: ; preds = %while.cond26.backedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond26.backedge.1

if.end33.1:                                       ; preds = %while.cond26.backedge
  %23 = ptrtoint ptr %w1_buf to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 78, ptr %w1_buf, align 1
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %1, align 1
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %xor67, ptr %3, align 1
  %26 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %master, align 4
  call void @w1_write_block(ptr noundef %27, ptr noundef nonnull %w1_buf, i32 noundef 3) #6
  %call39.1 = call i32 @w1_reset_select_slave(ptr noundef %sl) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.1)
  %tobool40.not.1 = icmp eq i32 %call39.1, 0
  br i1 %tobool40.not.1, label %if.end33.1.if.end42_crit_edge, label %if.end33.1.while.cond26.backedge.1_crit_edge

if.end33.1.while.cond26.backedge.1_crit_edge:     ; preds = %if.end33.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond26.backedge.1

if.end33.1.if.end42_crit_edge:                    ; preds = %if.end33.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

while.cond26.backedge.1:                          ; preds = %if.end33.1.while.cond26.backedge.1_crit_edge, %while.cond26.backedge.while.cond26.backedge.1_crit_edge
  %call30.2 = call i32 @w1_reset_select_slave(ptr noundef %sl) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.2)
  %tobool31.not.2 = icmp eq i32 %call30.2, 0
  br i1 %tobool31.not.2, label %if.end33.2, label %while.cond26.backedge.1.cleanup_crit_edge

while.cond26.backedge.1.cleanup_crit_edge:        ; preds = %while.cond26.backedge.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end33.2:                                       ; preds = %while.cond26.backedge.1
  %28 = ptrtoint ptr %w1_buf to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 78, ptr %w1_buf, align 1
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %1, align 1
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %xor67, ptr %3, align 1
  %31 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %master, align 4
  call void @w1_write_block(ptr noundef %32, ptr noundef nonnull %w1_buf, i32 noundef 3) #6
  %call39.2 = call i32 @w1_reset_select_slave(ptr noundef %sl) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.2)
  %tobool40.not.2 = icmp eq i32 %call39.2, 0
  br i1 %tobool40.not.2, label %if.end33.2.if.end42_crit_edge, label %if.end33.2.cleanup_crit_edge

if.end33.2.cleanup_crit_edge:                     ; preds = %if.end33.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end33.2.if.end42_crit_edge:                    ; preds = %if.end33.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

if.end33:                                         ; preds = %while.end
  %33 = ptrtoint ptr %w1_buf to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 78, ptr %w1_buf, align 1
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %1, align 1
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %xor67, ptr %3, align 1
  %36 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %master, align 4
  call void @w1_write_block(ptr noundef %37, ptr noundef nonnull %w1_buf, i32 noundef 3) #6
  %call39 = call i32 @w1_reset_select_slave(ptr noundef %sl) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end33.if.end42_crit_edge, label %if.end33.while.cond26.backedge_crit_edge

if.end33.while.cond26.backedge_crit_edge:         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond26.backedge

if.end33.if.end42_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

if.end42:                                         ; preds = %if.end33.if.end42_crit_edge, %if.end33.2.if.end42_crit_edge, %if.end33.1.if.end42_crit_edge
  %38 = ptrtoint ptr %w1_buf to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 72, ptr %w1_buf, align 1
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %1, align 1
  %40 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %master, align 4
  call void @w1_write_block(ptr noundef %41, ptr noundef nonnull %w1_buf, i32 noundef 2) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.end33.2.cleanup_crit_edge, %while.cond26.backedge.1.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.2.cleanup_crit_edge, %while.cond.backedge.1.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end42 ], [ 0, %if.end6.cleanup_crit_edge ], [ -1, %if.end.2.cleanup_crit_edge ], [ -1, %while.cond.backedge.1.cleanup_crit_edge ], [ -1, %if.end33.2.cleanup_crit_edge ], [ -1, %while.cond26.backedge.1.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %w1_buf) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @w1_read_8(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @page0_read(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readnone %bin_attr, ptr noundef writeonly %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  %w1_buf = alloca [9 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %kobj, i32 -80
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %w1_buf) #6
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %off)
  %cmp.not = icmp eq i64 %off, 0
  %0 = call ptr @memset(ptr %w1_buf, i32 255, i32 9)
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %buf, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %master = getelementptr i8, ptr %kobj, i32 -12
  %1 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %master, align 4
  %bus_mutex = getelementptr inbounds %struct.w1_master, ptr %2, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %bus_mutex, i32 noundef 0) #6
  %call6 = call fastcc i32 @w1_ds2438_get_page(ptr noundef %add.ptr.i.i, i32 noundef 0, ptr noundef nonnull %w1_buf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end2.if.end9_crit_edge

if.end2.if.end9_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then8:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  %3 = call i32 @llvm.umin.i32(i32 %count, i32 8)
  %4 = call ptr @memcpy(ptr %buf, ptr %w1_buf, i32 %3)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end2.if.end9_crit_edge
  %ret.0 = phi i32 [ %3, %if.then8 ], [ -5, %if.end2.if.end9_crit_edge ]
  %5 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %master, align 4
  %bus_mutex11 = getelementptr inbounds %struct.w1_master, ptr %6, i32 0, i32 21
  call void @mutex_unlock(ptr noundef %bus_mutex11) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end9 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %w1_buf) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @page1_read(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readnone %bin_attr, ptr noundef writeonly %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  %w1_buf = alloca [9 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %kobj, i32 -80
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %w1_buf) #6
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %off)
  %cmp.not = icmp eq i64 %off, 0
  %0 = call ptr @memset(ptr %w1_buf, i32 255, i32 9)
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %buf, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %master = getelementptr i8, ptr %kobj, i32 -12
  %1 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %master, align 4
  %bus_mutex = getelementptr inbounds %struct.w1_master, ptr %2, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %bus_mutex, i32 noundef 0) #6
  %call6 = call fastcc i32 @w1_ds2438_get_page(ptr noundef %add.ptr.i.i, i32 noundef 1, ptr noundef nonnull %w1_buf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end2.if.end9_crit_edge

if.end2.if.end9_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then8:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  %3 = call i32 @llvm.umin.i32(i32 %count, i32 8)
  %4 = call ptr @memcpy(ptr %buf, ptr %w1_buf, i32 %3)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end2.if.end9_crit_edge
  %ret.0 = phi i32 [ %3, %if.then8 ], [ -5, %if.end2.if.end9_crit_edge ]
  %5 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %master, align 4
  %bus_mutex11 = getelementptr inbounds %struct.w1_master, ptr %6, i32 0, i32 21
  call void @mutex_unlock(ptr noundef %bus_mutex11) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end9 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %w1_buf) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @offset_write(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readnone %bin_attr, ptr nocapture noundef readonly %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  %w1_buf.i = alloca [9 x i8], align 2
  %w1_page1_buf.i = alloca [9 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %kobj, i32 -80
  %master = getelementptr i8, ptr %kobj, i32 -12
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %bus_mutex = getelementptr inbounds %struct.w1_master, ptr %1, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %bus_mutex, i32 noundef 0) #6
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %w1_buf.i) #6
  %2 = getelementptr inbounds [9 x i8], ptr %w1_buf.i, i32 0, i32 1
  %3 = ptrtoint ptr %w1_buf.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %w1_buf.i, align 2
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %w1_page1_buf.i) #6
  %4 = call ptr @memset(ptr %w1_page1_buf.i, i32 255, i32 9)
  %call.i = call fastcc i32 @w1_ds2438_get_page(ptr noundef %add.ptr.i.i, i32 noundef 1, ptr noundef nonnull %w1_page1_buf.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.w1_ds2438_change_offset_register.exit.thread_crit_edge

entry.w1_ds2438_change_offset_register.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %w1_ds2438_change_offset_register.exit.thread

if.then.i:                                        ; preds = %entry
  %5 = getelementptr inbounds [9 x i8], ptr %w1_buf.i, i32 0, i32 8
  %6 = getelementptr inbounds [9 x i8], ptr %w1_buf.i, i32 0, i32 7
  %7 = getelementptr inbounds [9 x i8], ptr %w1_buf.i, i32 0, i32 2
  %8 = call ptr @memcpy(ptr %7, ptr %w1_page1_buf.i, i32 5)
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %buf, align 1
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %6, align 1
  %arrayidx4.i = getelementptr i8, ptr %buf, i32 1
  %12 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx4.i, align 1
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %5, align 2
  %call6.i = call i32 @w1_reset_select_slave(ptr noundef %add.ptr.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end.i, label %if.then.i.while.cond.backedge.i_crit_edge

if.then.i.while.cond.backedge.i_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %if.end.i.while.cond.backedge.i_crit_edge, %if.then.i.while.cond.backedge.i_crit_edge
  %call6.1.i = call i32 @w1_reset_select_slave(ptr noundef %add.ptr.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.1.i)
  %tobool7.not.1.i = icmp eq i32 %call6.1.i, 0
  br i1 %tobool7.not.1.i, label %if.end.1.i, label %while.cond.backedge.i.while.cond.backedge.1.i_crit_edge

while.cond.backedge.i.while.cond.backedge.1.i_crit_edge: ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.backedge.1.i

if.end.1.i:                                       ; preds = %while.cond.backedge.i
  %15 = ptrtoint ptr %w1_buf.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 78, ptr %w1_buf.i, align 2
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %2, align 1
  %17 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %master, align 4
  call void @w1_write_block(ptr noundef %18, ptr noundef nonnull %w1_buf.i, i32 noundef 9) #6
  %call12.1.i = call i32 @w1_reset_select_slave(ptr noundef %add.ptr.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.1.i)
  %tobool13.not.1.i = icmp eq i32 %call12.1.i, 0
  br i1 %tobool13.not.1.i, label %if.end.1.i._crit_edge, label %if.end.1.i.while.cond.backedge.1.i_crit_edge

if.end.1.i.while.cond.backedge.1.i_crit_edge:     ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.backedge.1.i

if.end.1.i._crit_edge:                            ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %27

while.cond.backedge.1.i:                          ; preds = %if.end.1.i.while.cond.backedge.1.i_crit_edge, %while.cond.backedge.i.while.cond.backedge.1.i_crit_edge
  %call6.2.i = call i32 @w1_reset_select_slave(ptr noundef %add.ptr.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.2.i)
  %tobool7.not.2.i = icmp eq i32 %call6.2.i, 0
  br i1 %tobool7.not.2.i, label %if.end.2.i, label %while.cond.backedge.1.i.w1_ds2438_change_offset_register.exit.thread_crit_edge

while.cond.backedge.1.i.w1_ds2438_change_offset_register.exit.thread_crit_edge: ; preds = %while.cond.backedge.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %w1_ds2438_change_offset_register.exit.thread

if.end.2.i:                                       ; preds = %while.cond.backedge.1.i
  %19 = ptrtoint ptr %w1_buf.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 78, ptr %w1_buf.i, align 2
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %2, align 1
  %21 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %master, align 4
  call void @w1_write_block(ptr noundef %22, ptr noundef nonnull %w1_buf.i, i32 noundef 9) #6
  %call12.2.i = call i32 @w1_reset_select_slave(ptr noundef %add.ptr.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.2.i)
  %tobool13.not.2.i = icmp eq i32 %call12.2.i, 0
  br i1 %tobool13.not.2.i, label %if.end.2.i._crit_edge, label %if.end.2.i.w1_ds2438_change_offset_register.exit.thread_crit_edge

if.end.2.i.w1_ds2438_change_offset_register.exit.thread_crit_edge: ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %w1_ds2438_change_offset_register.exit.thread

if.end.2.i._crit_edge:                            ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %27

if.end.i:                                         ; preds = %if.then.i
  %23 = ptrtoint ptr %w1_buf.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 78, ptr %w1_buf.i, align 2
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %2, align 1
  %25 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %master, align 4
  call void @w1_write_block(ptr noundef %26, ptr noundef nonnull %w1_buf.i, i32 noundef 9) #6
  %call12.i = call i32 @w1_reset_select_slave(ptr noundef %add.ptr.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end.i._crit_edge, label %if.end.i.while.cond.backedge.i_crit_edge

if.end.i.while.cond.backedge.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.backedge.i

if.end.i._crit_edge:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %27

w1_ds2438_change_offset_register.exit.thread:     ; preds = %if.end.2.i.w1_ds2438_change_offset_register.exit.thread_crit_edge, %while.cond.backedge.1.i.w1_ds2438_change_offset_register.exit.thread_crit_edge, %entry.w1_ds2438_change_offset_register.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %w1_page1_buf.i) #6
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %w1_buf.i) #6
  br label %32

27:                                               ; preds = %if.end.i._crit_edge, %if.end.2.i._crit_edge, %if.end.1.i._crit_edge
  %28 = ptrtoint ptr %w1_buf.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 72, ptr %w1_buf.i, align 2
  %29 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %2, align 1
  %30 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %master, align 4
  call void @w1_write_block(ptr noundef %31, ptr noundef nonnull %w1_buf.i, i32 noundef 2) #6
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %w1_page1_buf.i) #6
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %w1_buf.i) #6
  br label %32

32:                                               ; preds = %27, %w1_ds2438_change_offset_register.exit.thread
  %33 = phi i32 [ %count, %27 ], [ -5, %w1_ds2438_change_offset_register.exit.thread ]
  %34 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %master, align 4
  %bus_mutex3 = getelementptr inbounds %struct.w1_master, ptr %35, i32 0, i32 21
  call void @mutex_unlock(ptr noundef %bus_mutex3) #6
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temperature_read(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readnone %bin_attr, ptr noundef writeonly %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  %w1_buf.i = alloca [9 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %kobj, i32 -80
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %off)
  %cmp.not = icmp eq i64 %off, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %buf, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %w1_buf.i) #6
  %0 = getelementptr inbounds [9 x i8], ptr %w1_buf.i, i32 0, i32 1
  %1 = getelementptr inbounds [9 x i8], ptr %w1_buf.i, i32 0, i32 2
  %master.i = getelementptr i8, ptr %kobj, i32 -12
  %2 = call ptr @memset(ptr %w1_buf.i, i32 255, i32 9)
  %3 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %master.i, align 4
  %bus_mutex.i = getelementptr inbounds %struct.w1_master, ptr %4, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %bus_mutex.i, i32 noundef 0) #6
  %call.i = tail call i32 @w1_reset_select_slave(ptr noundef %add.ptr.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end2.if.end.i_crit_edge, label %while.cond.1.i

if.end2.if.end.i_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

while.cond.1.i:                                   ; preds = %if.end2
  %call.1.i = tail call i32 @w1_reset_select_slave(ptr noundef %add.ptr.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool1.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool1.not.1.i, label %while.cond.1.i.if.end.i_crit_edge, label %while.cond.2.i

while.cond.1.i.if.end.i_crit_edge:                ; preds = %while.cond.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

while.cond.2.i:                                   ; preds = %while.cond.1.i
  %call.2.i = tail call i32 @w1_reset_select_slave(ptr noundef %add.ptr.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool1.not.2.i = icmp eq i32 %call.2.i, 0
  br i1 %tobool1.not.2.i, label %while.cond.2.i.if.end.i_crit_edge, label %while.cond.2.i.while.end.i_crit_edge

while.cond.2.i.while.end.i_crit_edge:             ; preds = %while.cond.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

while.cond.2.i.if.end.i_crit_edge:                ; preds = %while.cond.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end.i:                                         ; preds = %while.cond.2.i.if.end.i_crit_edge, %while.cond.1.i.if.end.i_crit_edge, %if.end2.if.end.i_crit_edge
  %5 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %master.i, align 4
  tail call void @w1_write_8(ptr noundef %6, i8 noundef zeroext 68) #6
  %7 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %master.i, align 4
  %bus_mutex4.i = getelementptr inbounds %struct.w1_master, ptr %8, i32 0, i32 21
  tail call void @mutex_unlock(ptr noundef %bus_mutex4.i) #6
  %call5.i = tail call i32 @msleep_interruptible(i32 noundef 10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.not.i = icmp eq i32 %call5.i, 0
  br i1 %cmp.not.i, label %if.end7.i, label %if.end.i.w1_ds2438_get_temperature.exit.thread_crit_edge

if.end.i.w1_ds2438_get_temperature.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %w1_ds2438_get_temperature.exit.thread

if.end7.i:                                        ; preds = %if.end.i
  %9 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %master.i, align 4
  %bus_mutex9.i = getelementptr inbounds %struct.w1_master, ptr %10, i32 0, i32 21
  %call10.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %bus_mutex9.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.not.i = icmp eq i32 %call10.i, 0
  br i1 %cmp11.not.i, label %if.end7.i.while.end.i_crit_edge, label %if.end7.i.w1_ds2438_get_temperature.exit.thread_crit_edge

if.end7.i.w1_ds2438_get_temperature.exit.thread_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %w1_ds2438_get_temperature.exit.thread

if.end7.i.while.end.i_crit_edge:                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

while.end.i:                                      ; preds = %if.end7.i.while.end.i_crit_edge, %while.cond.2.i.while.end.i_crit_edge
  %call14.i = call fastcc i32 @w1_ds2438_get_page(ptr noundef %add.ptr.i.i, i32 noundef 0, ptr noundef nonnull %w1_buf.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp15.i = icmp eq i32 %call14.i, 0
  br i1 %cmp15.i, label %if.then5, label %w1_ds2438_get_temperature.exit

w1_ds2438_get_temperature.exit.thread:            ; preds = %if.end7.i.w1_ds2438_get_temperature.exit.thread_crit_edge, %if.end.i.w1_ds2438_get_temperature.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %w1_buf.i) #6
  br label %cleanup

w1_ds2438_get_temperature.exit:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %master.i, align 4
  %bus_mutex24.i = getelementptr inbounds %struct.w1_master, ptr %12, i32 0, i32 21
  call void @mutex_unlock(ptr noundef %bus_mutex24.i) #6
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %w1_buf.i) #6
  br label %cleanup

if.then5:                                         ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %1, align 1
  %15 = zext i8 %14 to i16
  %shl.i = shl nuw i16 %15, 8
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %0, align 1
  %conv20.i = zext i8 %17 to i16
  %or.i = or i16 %shl.i, %conv20.i
  %phi.cast = sext i16 %or.i to i32
  %18 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %master.i, align 4
  %bus_mutex24.i16 = getelementptr inbounds %struct.w1_master, ptr %19, i32 0, i32 21
  call void @mutex_unlock(ptr noundef %bus_mutex24.i16) #6
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %w1_buf.i) #6
  %call6 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef %count, ptr noundef nonnull @.str.1, i32 noundef %phi.cast)
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %w1_ds2438_get_temperature.exit, %w1_ds2438_get_temperature.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call6, %if.then5 ], [ -5, %w1_ds2438_get_temperature.exit ], [ -5, %w1_ds2438_get_temperature.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @w1_write_8(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vad_read(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readnone %bin_attr, ptr noundef writeonly %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  %voltage = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %kobj, i32 -80
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %voltage) #6
  %0 = ptrtoint ptr %voltage to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %voltage, align 2, !annotation !56
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %off)
  %cmp.not = icmp eq i64 %off, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %buf, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %call3 = call fastcc i32 @w1_ds2438_get_voltage(ptr noundef %add.ptr.i.i, i32 noundef 0, ptr noundef nonnull %voltage)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then5:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %voltage to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %voltage, align 2
  %conv = zext i16 %2 to i32
  %call6 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef %count, ptr noundef nonnull @.str.7, i32 noundef %conv)
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call6, %if.then5 ], [ -5, %if.end2.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %voltage) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @w1_ds2438_get_voltage(ptr noundef %sl, i32 noundef %adc_input, ptr nocapture noundef writeonly %voltage) unnamed_addr #2 align 64 {
entry:
  %w1_buf = alloca [9 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %w1_buf) #6
  %0 = getelementptr inbounds [9 x i8], ptr %w1_buf, i32 0, i32 3
  %1 = getelementptr inbounds [9 x i8], ptr %w1_buf, i32 0, i32 4
  %master = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 7
  %2 = call ptr @memset(ptr %w1_buf, i32 255, i32 9)
  %3 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %master, align 4
  %bus_mutex = getelementptr inbounds %struct.w1_master, ptr %4, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %bus_mutex, i32 noundef 0) #6
  %conv = trunc i32 %adc_input to i8
  %call = tail call fastcc i32 @w1_ds2438_change_config_bit(ptr noundef %sl, i8 noundef zeroext 8, i8 noundef zeroext %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.cond.preheader, label %entry.pre_unlock_crit_edge

entry.pre_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %pre_unlock

while.cond.preheader:                             ; preds = %entry
  %call2 = tail call i32 @w1_reset_select_slave(ptr noundef %sl) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %while.cond.preheader.if.end5_crit_edge, label %while.cond.1

while.cond.preheader.if.end5_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

while.cond.1:                                     ; preds = %while.cond.preheader
  %call2.1 = tail call i32 @w1_reset_select_slave(ptr noundef %sl) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.1)
  %tobool3.not.1 = icmp eq i32 %call2.1, 0
  br i1 %tobool3.not.1, label %while.cond.1.if.end5_crit_edge, label %while.cond.2

while.cond.1.if.end5_crit_edge:                   ; preds = %while.cond.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

while.cond.2:                                     ; preds = %while.cond.1
  %call2.2 = tail call i32 @w1_reset_select_slave(ptr noundef %sl) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.2)
  %tobool3.not.2 = icmp eq i32 %call2.2, 0
  br i1 %tobool3.not.2, label %while.cond.2.if.end5_crit_edge, label %while.cond.2.while.end_crit_edge

while.cond.2.while.end_crit_edge:                 ; preds = %while.cond.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.cond.2.if.end5_crit_edge:                   ; preds = %while.cond.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.end5:                                          ; preds = %while.cond.2.if.end5_crit_edge, %while.cond.1.if.end5_crit_edge, %while.cond.preheader.if.end5_crit_edge
  %5 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %master, align 4
  tail call void @w1_write_8(ptr noundef %6, i8 noundef zeroext -76) #6
  %7 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %master, align 4
  %bus_mutex8 = getelementptr inbounds %struct.w1_master, ptr %8, i32 0, i32 21
  tail call void @mutex_unlock(ptr noundef %bus_mutex8) #6
  %call9 = tail call i32 @msleep_interruptible(i32 noundef 10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp.not = icmp eq i32 %call9, 0
  br i1 %cmp.not, label %if.end12, label %if.end5.post_unlock_crit_edge

if.end5.post_unlock_crit_edge:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %post_unlock

if.end12:                                         ; preds = %if.end5
  %9 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %master, align 4
  %bus_mutex14 = getelementptr inbounds %struct.w1_master, ptr %10, i32 0, i32 21
  %call15 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %bus_mutex14, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16.not = icmp eq i32 %call15, 0
  br i1 %cmp16.not, label %if.end12.while.end_crit_edge, label %if.end12.post_unlock_crit_edge

if.end12.post_unlock_crit_edge:                   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %post_unlock

if.end12.while.end_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %if.end12.while.end_crit_edge, %while.cond.2.while.end_crit_edge
  %call20 = call fastcc i32 @w1_ds2438_get_page(ptr noundef %sl, i32 noundef 0, ptr noundef nonnull %w1_buf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %if.then23, label %while.end.pre_unlock_crit_edge

while.end.pre_unlock_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %pre_unlock

if.then23:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %1, align 1
  %conv25 = zext i8 %12 to i16
  %shl = shl nuw i16 %conv25, 8
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %0, align 1
  %conv28 = zext i8 %14 to i16
  %or = or i16 %shl, %conv28
  %15 = ptrtoint ptr %voltage to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %or, ptr %voltage, align 2
  br label %pre_unlock

pre_unlock:                                       ; preds = %if.then23, %while.end.pre_unlock_crit_edge, %entry.pre_unlock_crit_edge
  %ret.0 = phi i32 [ 0, %if.then23 ], [ -1, %entry.pre_unlock_crit_edge ], [ -1, %while.end.pre_unlock_crit_edge ]
  %16 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %master, align 4
  %bus_mutex32 = getelementptr inbounds %struct.w1_master, ptr %17, i32 0, i32 21
  call void @mutex_unlock(ptr noundef %bus_mutex32) #6
  br label %post_unlock

post_unlock:                                      ; preds = %pre_unlock, %if.end12.post_unlock_crit_edge, %if.end5.post_unlock_crit_edge
  %ret.1 = phi i32 [ %ret.0, %pre_unlock ], [ -1, %if.end5.post_unlock_crit_edge ], [ -1, %if.end12.post_unlock_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %w1_buf) #6
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdd_read(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readnone %bin_attr, ptr noundef writeonly %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  %voltage = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %kobj, i32 -80
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %voltage) #6
  %0 = ptrtoint ptr %voltage to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %voltage, align 2, !annotation !56
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %off)
  %cmp.not = icmp eq i64 %off, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %buf, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %call3 = call fastcc i32 @w1_ds2438_get_voltage(ptr noundef %add.ptr.i.i, i32 noundef 1, ptr noundef nonnull %voltage)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then5:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %voltage to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %voltage, align 2
  %conv = zext i16 %2 to i32
  %call6 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef %count, ptr noundef nonnull @.str.7, i32 noundef %conv)
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call6, %if.then5 ], [ -5, %if.end2.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %voltage) #6
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !27, !29, !30, !32, !33, !35, !36, !38, !39, !41, !42, !44, !46}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @__initcall__kmod_w1_ds2438__170_513_w1_ds2438_family_init6, !1, !"__initcall__kmod_w1_ds2438__170_513_w1_ds2438_family_init6", i1 false, i1 false}
!1 = !{!"../drivers/w1/slaves/w1_ds2438.c", i32 513, i32 1}
!2 = !{ptr @__exitcall_w1_ds2438_family_exit, !1, !"__exitcall_w1_ds2438_family_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file171, !4, !"__UNIQUE_ID_file171", i1 false, i1 false}
!4 = !{!"../drivers/w1/slaves/w1_ds2438.c", i32 515, i32 1}
!5 = !{ptr @__UNIQUE_ID_license172, !4, !"__UNIQUE_ID_license172", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author173, !7, !"__UNIQUE_ID_author173", i1 false, i1 false}
!7 = !{!"../drivers/w1/slaves/w1_ds2438.c", i32 516, i32 1}
!8 = !{ptr @__UNIQUE_ID_description174, !9, !"__UNIQUE_ID_description174", i1 false, i1 false}
!9 = !{!"../drivers/w1/slaves/w1_ds2438.c", i32 517, i32 1}
!10 = !{ptr @__UNIQUE_ID_alias175, !11, !"__UNIQUE_ID_alias175", i1 false, i1 false}
!11 = !{!"../drivers/w1/slaves/w1_ds2438.c", i32 518, i32 1}
!12 = !{ptr @w1_ds2438_family, !13, !"w1_ds2438_family", i1 false, i1 false}
!13 = !{!"../drivers/w1/slaves/w1_ds2438.c", i32 509, i32 25}
!14 = !{ptr @w1_ds2438_fops, !15, !"w1_ds2438_fops", i1 false, i1 false}
!15 = !{!"../drivers/w1/slaves/w1_ds2438.c", i32 505, i32 35}
!16 = !{ptr @w1_ds2438_groups, !17, !"w1_ds2438_groups", i1 false, i1 false}
!17 = !{!"../drivers/w1/slaves/w1_ds2438.c", i32 500, i32 38}
!18 = !{ptr @w1_ds2438_group, !19, !"w1_ds2438_group", i1 false, i1 false}
!19 = !{!"../drivers/w1/slaves/w1_ds2438.c", i32 496, i32 37}
!20 = !{ptr @w1_ds2438_bin_attrs, !21, !"w1_ds2438_bin_attrs", i1 false, i1 false}
!21 = !{!"../drivers/w1/slaves/w1_ds2438.c", i32 485, i32 30}
!22 = !{ptr @.str, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/w1/slaves/w1_ds2438.c", i32 477, i32 8}
!24 = !{ptr @bin_attr_iad, !23, !"bin_attr_iad", i1 false, i1 false}
!25 = !{ptr @.str.1, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/w1/slaves/w1_ds2438.c", i32 328, i32 30}
!27 = !{ptr @.str.2, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/w1/slaves/w1_ds2438.c", i32 478, i32 8}
!29 = !{ptr @bin_attr_page0, !28, !"bin_attr_page0", i1 false, i1 false}
!30 = !{ptr @.str.3, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/w1/slaves/w1_ds2438.c", i32 479, i32 8}
!32 = !{ptr @bin_attr_page1, !31, !"bin_attr_page1", i1 false, i1 false}
!33 = !{ptr @.str.4, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/w1/slaves/w1_ds2438.c", i32 480, i32 8}
!35 = !{ptr @bin_attr_offset, !34, !"bin_attr_offset", i1 false, i1 false}
!36 = !{ptr @.str.5, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/w1/slaves/w1_ds2438.c", i32 481, i32 8}
!38 = !{ptr @bin_attr_temperature, !37, !"bin_attr_temperature", i1 false, i1 false}
!39 = !{ptr @.str.6, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/w1/slaves/w1_ds2438.c", i32 482, i32 8}
!41 = !{ptr @bin_attr_vad, !40, !"bin_attr_vad", i1 false, i1 false}
!42 = !{ptr @.str.7, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/w1/slaves/w1_ds2438.c", i32 449, i32 30}
!44 = !{ptr @.str.8, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/w1/slaves/w1_ds2438.c", i32 483, i32 8}
!46 = !{ptr @bin_attr_vdd, !45, !"bin_attr_vdd", i1 false, i1 false}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{!"auto-init"}
