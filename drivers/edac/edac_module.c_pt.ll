; ModuleID = '/llk/IR_all_yes/drivers/edac/edac_module.c_pt.bc'
source_filename = "../drivers/edac/edac_module.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+edac_debug_level\22, \22a\22\09"
module asm "\09.weak\09__crc_edac_debug_level\09\09\09\09"
module asm "\09.long\09__crc_edac_debug_level\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_edac_debug_level:\09\09\09\09\09"
module asm "\09.asciz \09\22edac_debug_level\22\09\09\09\09\09"
module asm "__kstrtabns_edac_debug_level:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+edac_get_sysfs_subsys\22, \22a\22\09"
module asm "\09.weak\09__crc_edac_get_sysfs_subsys\09\09\09\09"
module asm "\09.long\09__crc_edac_get_sysfs_subsys\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_edac_get_sysfs_subsys:\09\09\09\09\09"
module asm "\09.asciz \09\22edac_get_sysfs_subsys\22\09\09\09\09\09"
module asm "__kstrtabns_edac_get_sysfs_subsys:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }

@edac_debug_level = dso_local global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@__kstrtab_edac_debug_level = external dso_local constant [0 x i8], align 1
@__kstrtabns_edac_debug_level = external dso_local constant [0 x i8], align 1
@__ksymtab_edac_debug_level = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @edac_debug_level to i32), ptr @__kstrtab_edac_debug_level, ptr @__kstrtabns_edac_debug_level }, section "___ksymtab_gpl+edac_debug_level", align 4
@__param_str_edac_debug_level = internal constant [27 x i8] c"edac_core.edac_debug_level\00", align 1
@__param_ops_edac_debug_level = internal constant %struct.kernel_param_ops { i32 0, ptr @edac_set_debug_level, ptr @param_get_int, ptr null }, align 4
@__param_edac_debug_level = internal constant %struct.kernel_param { ptr @__param_str_edac_debug_level, ptr null, ptr @__param_ops_edac_debug_level, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @edac_debug_level } }, section "__param", align 4
@__UNIQUE_ID_edac_debug_level236 = internal constant [68 x i8] c"edac_core.parm=edac_debug_level:EDAC debug level: [0-4], default: 2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"POLLED\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"INTERRUPT\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"POLL-INTR\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ALLOC\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"OFFLINE\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UNKNOWN\00", [24 x i8] zeroinitializer }, align 32
@edac_subsys = internal global { %struct.bus_type, [32 x i8] } { %struct.bus_type { ptr @.str.9, ptr @.str.9, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, [32 x i8] zeroinitializer }, align 32
@__kstrtab_edac_get_sysfs_subsys = external dso_local constant [0 x i8], align 1
@__kstrtabns_edac_get_sysfs_subsys = external dso_local constant [0 x i8], align 1
@__ksymtab_edac_get_sysfs_subsys = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @edac_get_sysfs_subsys to i32), ptr @__kstrtab_edac_get_sysfs_subsys, ptr @__kstrtabns_edac_get_sysfs_subsys }, section "___ksymtab_gpl+edac_get_sysfs_subsys", align 4
@edac_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017EDAC DEBUG: %s: \0A\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"edac_exit\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/edac/edac_module.c\00", [37 x i8] zeroinitializer }, align 32
@edac_exit._entry_ptr = internal global ptr @edac_exit._entry, section ".printk_index", align 4
@__initcall__kmod_edac_core__237_163_edac_init4 = internal global ptr @edac_init, section ".initcall4.init", align 4
@__exitcall_edac_exit = internal global ptr @edac_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file238 = internal constant [38 x i8] c"edac_core.file=drivers/edac/edac_core\00", section ".modinfo", align 1
@__UNIQUE_ID_license239 = internal constant [22 x i8] c"edac_core.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author240 = internal constant [63 x i8] c"edac_core.author=Doug Thompson www.softwarebitmaker.com, et al\00", section ".modinfo", align 1
@__UNIQUE_ID_description241 = internal constant [63 x i8] c"edac_core.description=Core library routines for EDAC reporting\00", section ".modinfo", align 1
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"edac\00", [27 x i8] zeroinitializer }, align 32
@edac_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.8, i32 106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016EDAC MC: Ver: 3.0.0\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"edac_init\00", [22 x i8] zeroinitializer }, align 32
@edac_init._entry_ptr = internal global ptr @edac_init._entry, section ".printk_index", align 4
@edac_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.8, i32 129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013EDAC MC: Failure initializing workqueue\0A\00", [53 x i8] zeroinitializer }, align 32
@edac_init._entry_ptr.14 = internal global ptr @edac_init._entry.12, section ".printk_index", align 4
@edac_subsys_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.8, i32 82, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013Error registering toplevel EDAC sysfs dir\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"edac_subsys_init\00", [47 x i8] zeroinitializer }, align 32
@edac_subsys_init._entry_ptr = internal global ptr @edac_subsys_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 256, i64 513, i64 514, i64 515, i64 768]
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"edac_debug_level\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 39, i32 5 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 53, i32 10 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 55, i32 10 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 57, i32 10 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 59, i32 10 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 61, i32 10 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 63, i32 9 }
@___asan_gen_.38 = private unnamed_addr constant [12 x i8] c"edac_subsys\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 70, i32 24 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 151, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 71, i32 10 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 106, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 129, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.78 = private constant [30 x i8] c"../drivers/edac/edac_module.c\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 82, i32 3 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_edac_debug_level236, ptr @__UNIQUE_ID_file238, ptr @__UNIQUE_ID_license239, ptr @__exitcall_edac_exit, ptr @__initcall__kmod_edac_core__237_163_edac_init4, ptr @__ksymtab_edac_debug_level, ptr @__ksymtab_edac_get_sysfs_subsys, ptr @__param_edac_debug_level, ptr @edac_exit, ptr @edac_exit._entry, ptr @edac_exit._entry_ptr, ptr @edac_init._entry, ptr @edac_init._entry.12, ptr @edac_init._entry_ptr, ptr @edac_init._entry_ptr.14, ptr @edac_subsys_init._entry, ptr @edac_subsys_init._entry_ptr, ptr @edac_debug_level, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @edac_subsys, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_debug_level to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_subsys to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_subsys_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @edac_op_state_to_string(i32 noundef %opstate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %opstate to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %opstate, label %if.end15 [
    i32 513, label %entry.return_crit_edge
    i32 514, label %if.then2
    i32 515, label %if.then5
    i32 256, label %if.then8
    i32 768, label %if.then11
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end15:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

return:                                           ; preds = %if.end15, %if.then11, %if.then8, %if.then5, %if.then2, %entry.return_crit_edge
  %retval.0 = phi ptr [ @.str.1, %if.then2 ], [ @.str.2, %if.then5 ], [ @.str.3, %if.then8 ], [ @.str.4, %if.then11 ], [ @.str.5, %if.end15 ], [ @.str, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @edac_get_sysfs_subsys() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @edac_subsys
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @edac_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %0)
  %cmp = icmp sgt i32 %0, -1
  br i1 %cmp, label %do.end, label %entry.do.end2_crit_edge

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #9
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  tail call void @edac_workqueue_teardown() #6
  tail call void @edac_mc_sysfs_exit() #6
  tail call void @edac_debugfs_exit() #6
  tail call void @bus_unregister(ptr noundef nonnull @edac_subsys) #6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @edac_workqueue_teardown() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @edac_mc_sysfs_exit() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @edac_debugfs_exit() local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @edac_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #9
  %call.i = tail call i32 @subsys_system_register(ptr noundef nonnull @edac_subsys, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %edac_subsys_init.exit

edac_subsys_init.exit:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @edac_pci_clear_parity_errors() #6
  %call2 = tail call i32 @edac_mc_sysfs_init() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.err_sysfs_crit_edge

if.end.err_sysfs_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_sysfs

if.end5:                                          ; preds = %if.end
  tail call void @edac_debugfs_init() #6
  %call6 = tail call i32 @edac_workqueue_setup() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %do.end11

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #9
  tail call void @edac_debugfs_exit() #6
  tail call void @edac_mc_sysfs_exit() #6
  br label %err_sysfs

err_sysfs:                                        ; preds = %do.end11, %if.end.err_sysfs_crit_edge
  %err.0 = phi i32 [ %call2, %if.end.err_sysfs_crit_edge ], [ %call6, %do.end11 ]
  tail call void @bus_unregister(ptr noundef nonnull @edac_subsys) #6
  br label %cleanup

cleanup:                                          ; preds = %err_sysfs, %if.end5.cleanup_crit_edge, %edac_subsys_init.exit
  %retval.0 = phi i32 [ %err.0, %err_sysfs ], [ %call.i, %edac_subsys_init.exit ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edac_set_debug_level(ptr noundef %buf, ptr noundef %kp) #4 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !68
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %cmp = icmp ugt i32 %2, 4
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = call i32 @param_set_int(ptr noundef %buf, ptr noundef %kp) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end2 ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_get_int(ptr noundef, ptr noundef) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_set_int(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @edac_pci_clear_parity_errors() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @edac_mc_sysfs_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @edac_debugfs_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @edac_workqueue_setup() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @subsys_system_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

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

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !30, !32, !34, !35, !37, !39, !40, !41, !43, !45, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @edac_debug_level, !1, !"edac_debug_level", i1 false, i1 false}
!1 = !{!"../drivers/edac/edac_module.c", i32 39, i32 5}
!2 = !{ptr @__ksymtab_edac_debug_level, !3, !"__ksymtab_edac_debug_level", i1 false, i1 false}
!3 = !{!"../drivers/edac/edac_module.c", i32 40, i32 1}
!4 = !{ptr @__param_edac_debug_level, !5, !"__param_edac_debug_level", i1 false, i1 false}
!5 = !{!"../drivers/edac/edac_module.c", i32 42, i32 1}
!6 = !{ptr @__UNIQUE_ID_edac_debug_level236, !7, !"__UNIQUE_ID_edac_debug_level236", i1 false, i1 false}
!7 = !{!"../drivers/edac/edac_module.c", i32 44, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/edac/edac_module.c", i32 53, i32 10}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/edac/edac_module.c", i32 55, i32 10}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/edac/edac_module.c", i32 57, i32 10}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/edac/edac_module.c", i32 59, i32 10}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/edac/edac_module.c", i32 61, i32 10}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/edac/edac_module.c", i32 63, i32 9}
!20 = !{ptr @__ksymtab_edac_get_sysfs_subsys, !21, !"__ksymtab_edac_get_sysfs_subsys", i1 false, i1 false}
!21 = !{!"../drivers/edac/edac_module.c", i32 97, i32 1}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/edac/edac_module.c", i32 151, i32 2}
!24 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @edac_exit._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @edac_exit._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @__initcall__kmod_edac_core__237_163_edac_init4, !29, !"__initcall__kmod_edac_core__237_163_edac_init4", i1 false, i1 false}
!29 = !{!"../drivers/edac/edac_module.c", i32 163, i32 1}
!30 = !{ptr @__exitcall_edac_exit, !31, !"__exitcall_edac_exit", i1 false, i1 false}
!31 = !{!"../drivers/edac/edac_module.c", i32 164, i32 1}
!32 = !{ptr @__UNIQUE_ID_file238, !33, !"__UNIQUE_ID_file238", i1 false, i1 false}
!33 = !{!"../drivers/edac/edac_module.c", i32 166, i32 1}
!34 = !{ptr @__UNIQUE_ID_license239, !33, !"__UNIQUE_ID_license239", i1 false, i1 false}
!35 = !{ptr @__UNIQUE_ID_author240, !36, !"__UNIQUE_ID_author240", i1 false, i1 false}
!36 = !{!"../drivers/edac/edac_module.c", i32 167, i32 1}
!37 = !{ptr @__UNIQUE_ID_description241, !38, !"__UNIQUE_ID_description241", i1 false, i1 false}
!38 = !{!"../drivers/edac/edac_module.c", i32 168, i32 1}
!39 = !{ptr @__param_str_edac_debug_level, !5, !"__param_str_edac_debug_level", i1 false, i1 false}
!40 = !{ptr @__param_ops_edac_debug_level, !5, !"__param_ops_edac_debug_level", i1 false, i1 false}
!41 = !{ptr @.str.9, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/edac/edac_module.c", i32 71, i32 10}
!43 = !{ptr @edac_subsys, !44, !"edac_subsys", i1 false, i1 false}
!44 = !{!"../drivers/edac/edac_module.c", i32 70, i32 24}
!45 = !{ptr @.str.10, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/edac/edac_module.c", i32 106, i32 2}
!47 = !{ptr @.str.11, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @edac_init._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @edac_init._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.13, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/edac/edac_module.c", i32 129, i32 3}
!52 = !{ptr @edac_init._entry.12, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @edac_init._entry_ptr.14, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.15, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/edac/edac_module.c", i32 82, i32 3}
!56 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @edac_subsys_init._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @edac_subsys_init._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!68 = !{!"auto-init"}
