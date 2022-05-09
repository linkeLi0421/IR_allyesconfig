; ModuleID = '/llk/IR_all_yes/drivers/net/mdio/mdio-mux.c_pt.bc'
source_filename = "../drivers/net/mdio/mdio-mux.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mdio_mux_init\22, \22a\22\09"
module asm "\09.weak\09__crc_mdio_mux_init\09\09\09\09"
module asm "\09.long\09__crc_mdio_mux_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mdio_mux_init:\09\09\09\09\09"
module asm "\09.asciz \09\22mdio_mux_init\22\09\09\09\09\09"
module asm "__kstrtabns_mdio_mux_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mdio_mux_uninit\22, \22a\22\09"
module asm "\09.weak\09__crc_mdio_mux_uninit\09\09\09\09"
module asm "\09.long\09__crc_mdio_mux_uninit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mdio_mux_uninit:\09\09\09\09\09"
module asm "\09.asciz \09\22mdio_mux_uninit\22\09\09\09\09\09"
module asm "__kstrtabns_mdio_mux_uninit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mdio_mux_parent_bus = type { ptr, i32, i32, ptr, ptr, ptr }
%struct.mdio_mux_child_bus = type { ptr, ptr, ptr, i32 }

@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mdio-parent-bus\00", [16 x i8] zeroinitializer }, align 32
@parent_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@mdio_mux_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 151, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Error: Failed to find reg for child %pOF\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mdio_mux_init\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/net/mdio/mdio-mux.c\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mdio_mux_init._entry_ptr = internal global ptr @mdio_mux_init._entry, section ".printk_index", align 4
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mdio_mux\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%x.%x\00", [26 x i8] zeroinitializer }, align 32
@mdio_mux_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.3, ptr @.str.4, i32 186, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Error: Failed to register MDIO bus for child %pOF\0A\00", [45 x i8] zeroinitializer }, align 32
@mdio_mux_init._entry_ptr.11 = internal global ptr @mdio_mux_init._entry.9, section ".printk_index", align 4
@mdio_mux_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 197, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Error: No acceptable child buses found\0A\00", [56 x i8] zeroinitializer }, align 32
@mdio_mux_init._entry_ptr.14 = internal global ptr @mdio_mux_init._entry.12, section ".printk_index", align 4
@__kstrtab_mdio_mux_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_mdio_mux_init = external dso_local constant [0 x i8], align 1
@__ksymtab_mdio_mux_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mdio_mux_init to i32), ptr @__kstrtab_mdio_mux_init, ptr @__kstrtabns_mdio_mux_init }, section "___ksymtab_gpl+mdio_mux_init", align 4
@__kstrtab_mdio_mux_uninit = external dso_local constant [0 x i8], align 1
@__kstrtabns_mdio_mux_uninit = external dso_local constant [0 x i8], align 1
@__ksymtab_mdio_mux_uninit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mdio_mux_uninit to i32), ptr @__kstrtab_mdio_mux_uninit, ptr @__kstrtabns_mdio_mux_uninit }, section "___ksymtab_gpl+mdio_mux_uninit", align 4
@__UNIQUE_ID_description281 = internal constant [49 x i8] c"mdio_mux.description=MDIO bus multiplexer driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author282 = internal constant [28 x i8] c"mdio_mux.author=David Daney\00", section ".modinfo", align 1
@__UNIQUE_ID_file283 = internal constant [40 x i8] c"mdio_mux.file=drivers/net/mdio/mdio-mux\00", section ".modinfo", align 1
@__UNIQUE_ID_license284 = internal constant [24 x i8] c"mdio_mux.license=GPL v2\00", section ".modinfo", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 115, i32 10 }
@___asan_gen_.18 = private unnamed_addr constant [13 x i8] c"parent_count\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 83, i32 12 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 147, i32 44 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 149, i32 4 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 170, i32 23 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 171, i32 46 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 184, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.58 = private constant [31 x i8] c"../drivers/net/mdio/mdio-mux.c\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 197, i32 2 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_author282, ptr @__UNIQUE_ID_description281, ptr @__UNIQUE_ID_file283, ptr @__UNIQUE_ID_license284, ptr @__ksymtab_mdio_mux_init, ptr @__ksymtab_mdio_mux_uninit, ptr @mdio_mux_init._entry, ptr @mdio_mux_init._entry.12, ptr @mdio_mux_init._entry.9, ptr @mdio_mux_init._entry_ptr, ptr @mdio_mux_init._entry_ptr.11, ptr @mdio_mux_init._entry_ptr.14, ptr @.str, ptr @parent_count, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parent_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdio_mux_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdio_mux_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdio_mux_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mdio_mux_init(ptr noundef %dev, ptr noundef %mux_node, ptr noundef %switch_fn, ptr nocapture noundef writeonly %mux_handle, ptr noundef %data, ptr noundef %mux_bus) #0 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  %v = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mux_node, null
  br i1 %tobool.not, label %entry.cleanup65_crit_edge, label %if.end

entry.cleanup65_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup65

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %mux_bus, null
  br i1 %tobool1.not, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #5
  %0 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %mux_node, ptr noundef nonnull @.str, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #5
  br label %cleanup65

of_parse_phandle.exit:                            ; preds = %if.then2
  %1 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #5
  %tobool3.not = icmp eq ptr %2, null
  br i1 %tobool3.not, label %of_parse_phandle.exit.cleanup65_crit_edge, label %if.end5

of_parse_phandle.exit.cleanup65_crit_edge:        ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup65

if.end5:                                          ; preds = %of_parse_phandle.exit
  %call6 = call ptr @of_mdio_find_bus(ptr noundef nonnull %2) #5
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end5.err_parent_bus_crit_edge, label %if.end5.if.end12_crit_edge

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.end5.err_parent_bus_crit_edge:                 ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_parent_bus

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev10 = getelementptr inbounds %struct.mii_bus, ptr %mux_bus, i32 0, i32 11
  %call11 = tail call ptr @get_device(ptr noundef %dev10) #5
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.end5.if.end12_crit_edge
  %parent_bus_node.0 = phi ptr [ null, %if.else ], [ %2, %if.end5.if.end12_crit_edge ]
  %parent_bus.0 = phi ptr [ %mux_bus, %if.else ], [ %call6, %if.end5.if.end12_crit_edge ]
  %call.i124 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 24, i32 noundef 3520) #5
  %tobool14.not = icmp eq ptr %call.i124, null
  br i1 %tobool14.not, label %if.end12.err_pb_kz_crit_edge, label %if.end16

if.end12.err_pb_kz_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_pb_kz

if.end16:                                         ; preds = %if.end12
  %switch_data = getelementptr inbounds %struct.mdio_mux_parent_bus, ptr %call.i124, i32 0, i32 3
  %3 = ptrtoint ptr %switch_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %data, ptr %switch_data, align 4
  %switch_fn17 = getelementptr inbounds %struct.mdio_mux_parent_bus, ptr %call.i124, i32 0, i32 4
  %4 = ptrtoint ptr %switch_fn17 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %switch_fn, ptr %switch_fn17, align 4
  %current_child = getelementptr inbounds %struct.mdio_mux_parent_bus, ptr %call.i124, i32 0, i32 1
  %5 = ptrtoint ptr %current_child to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %current_child, align 4
  %6 = load i32, ptr @parent_count, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr @parent_count, align 4
  %parent_id = getelementptr inbounds %struct.mdio_mux_parent_bus, ptr %call.i124, i32 0, i32 2
  %7 = ptrtoint ptr %parent_id to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %parent_id, align 4
  %8 = ptrtoint ptr %call.i124 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %parent_bus.0, ptr %call.i124, align 4
  %call18 = call ptr @of_get_next_available_child(ptr noundef nonnull %mux_node, ptr noundef null) #5
  %cmp.not135 = icmp eq ptr %call18, null
  br i1 %cmp.not135, label %if.end16.for.end_crit_edge, label %for.body.lr.ph

if.end16.for.end_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end16
  %children = getelementptr inbounds %struct.mdio_mux_parent_bus, ptr %call.i124, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %child_bus_node.0136 = phi ptr [ %call18, %for.body.lr.ph ], [ %call56, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v) #5
  %9 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %v, align 4, !annotation !46
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child_bus_node.0136, ptr noundef nonnull @.str.1, ptr noundef nonnull %v, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool20.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool20.not, label %if.end22, label %do.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef nonnull %child_bus_node.0136) #8
  br label %for.inc

if.end22:                                         ; preds = %for.body
  %call.i125 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3520) #5
  %tobool24.not = icmp eq ptr %call.i125, null
  br i1 %tobool24.not, label %if.end22.cleanup_crit_edge, label %if.end26

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end26:                                         ; preds = %if.end22
  %10 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %v, align 4
  %bus_number = getelementptr inbounds %struct.mdio_mux_child_bus, ptr %call.i125, i32 0, i32 3
  %12 = ptrtoint ptr %bus_number to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %bus_number, align 4
  %parent = getelementptr inbounds %struct.mdio_mux_child_bus, ptr %call.i125, i32 0, i32 1
  %13 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i124, ptr %parent, align 4
  %call.i126 = call ptr @mdiobus_alloc_size(i32 noundef 0) #5
  %14 = ptrtoint ptr %call.i125 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i126, ptr %call.i125, align 4
  %tobool30.not = icmp eq ptr %call.i126, null
  br i1 %tobool30.not, label %if.end26.cleanup_crit_edge, label %if.end32

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end32:                                         ; preds = %if.end26
  %priv = getelementptr inbounds %struct.mii_bus, ptr %call.i126, i32 0, i32 3
  %15 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i125, ptr %priv, align 8
  %16 = ptrtoint ptr %call.i125 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call.i125, align 4
  %name = getelementptr inbounds %struct.mii_bus, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.7, ptr %name, align 4
  %19 = load ptr, ptr %call.i125, align 4
  %id = getelementptr inbounds %struct.mii_bus, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %parent_id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %parent_id, align 4
  %22 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %v, align 4
  %call37 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %id, i32 noundef 61, ptr noundef nonnull @.str.8, i32 noundef %21, i32 noundef %23)
  %24 = ptrtoint ptr %call.i125 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call.i125, align 4
  %parent39 = getelementptr inbounds %struct.mii_bus, ptr %25, i32 0, i32 9
  %26 = ptrtoint ptr %parent39 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %dev, ptr %parent39, align 4
  %27 = load ptr, ptr %call.i125, align 4
  %read = getelementptr inbounds %struct.mii_bus, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @mdio_mux_read, ptr %read, align 4
  %29 = load ptr, ptr %call.i125, align 4
  %write = getelementptr inbounds %struct.mii_bus, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @mdio_mux_write, ptr %write, align 8
  %31 = load ptr, ptr %call.i125, align 4
  %call43 = call i32 @of_mdiobus_register(ptr noundef %31, ptr noundef nonnull %child_bus_node.0136) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.else53, label %if.then45

if.then45:                                        ; preds = %if.end32
  %32 = ptrtoint ptr %call.i125 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call.i125, align 4
  call void @mdiobus_free(ptr noundef %33) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call43)
  %cmp47 = icmp eq i32 %call43, -517
  br i1 %cmp47, label %if.then45.cleanup_crit_edge, label %if.end49

if.then45.cleanup_crit_edge:                      ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end49:                                         ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #7
  call void @devm_kfree(ptr noundef %dev, ptr noundef nonnull %call.i125) #5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, ptr noundef nonnull %child_bus_node.0136) #8
  br label %for.inc

if.else53:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %children to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %children, align 4
  %next = getelementptr inbounds %struct.mdio_mux_child_bus, ptr %call.i125, i32 0, i32 2
  %36 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %next, align 4
  store ptr %call.i125, ptr %children, align 4
  br label %for.inc

cleanup:                                          ; preds = %if.then45.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.end22.cleanup_crit_edge
  %ret_val.1 = phi i32 [ -12, %if.end22.cleanup_crit_edge ], [ -12, %if.end26.cleanup_crit_edge ], [ -517, %if.then45.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v) #5
  br label %err_loop

for.inc:                                          ; preds = %if.else53, %if.end49, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v) #5
  %call56 = call ptr @of_get_next_available_child(ptr noundef nonnull %mux_node, ptr noundef nonnull %child_bus_node.0136) #5
  %cmp.not = icmp eq ptr %call56, null
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end16.for.end_crit_edge
  %children57 = getelementptr inbounds %struct.mdio_mux_parent_bus, ptr %call.i124, i32 0, i32 5
  %37 = ptrtoint ptr %children57 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %children57, align 4
  %tobool58.not = icmp eq ptr %38, null
  br i1 %tobool58.not, label %do.end63, label %if.then59

if.then59:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %mux_handle to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i124, ptr %mux_handle, align 4
  br label %cleanup65

do.end63:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #8
  br label %err_loop

err_loop:                                         ; preds = %do.end63, %cleanup
  %child_bus_node.0134 = phi ptr [ %child_bus_node.0136, %cleanup ], [ null, %do.end63 ]
  %ret_val.2 = phi i32 [ %ret_val.1, %cleanup ], [ -19, %do.end63 ]
  %children.i = getelementptr inbounds %struct.mdio_mux_parent_bus, ptr %call.i124, i32 0, i32 5
  %40 = ptrtoint ptr %children.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %cb.05.i = load ptr, ptr %children.i, align 4
  %tobool.not6.i = icmp eq ptr %cb.05.i, null
  br i1 %tobool.not6.i, label %err_loop.mdio_mux_uninit_children.exit_crit_edge, label %err_loop.while.body.i_crit_edge

err_loop.while.body.i_crit_edge:                  ; preds = %err_loop
  br label %while.body.i

err_loop.mdio_mux_uninit_children.exit_crit_edge: ; preds = %err_loop
  call void @__sanitizer_cov_trace_pc() #7
  br label %mdio_mux_uninit_children.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %err_loop.while.body.i_crit_edge
  %cb.07.i = phi ptr [ %cb.0.i, %while.body.i.while.body.i_crit_edge ], [ %cb.05.i, %err_loop.while.body.i_crit_edge ]
  %41 = ptrtoint ptr %cb.07.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cb.07.i, align 4
  call void @mdiobus_unregister(ptr noundef %42) #5
  %43 = ptrtoint ptr %cb.07.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cb.07.i, align 4
  call void @mdiobus_free(ptr noundef %44) #5
  %next.i = getelementptr inbounds %struct.mdio_mux_child_bus, ptr %cb.07.i, i32 0, i32 2
  %45 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %cb.0.i = load ptr, ptr %next.i, align 4
  %tobool.not.i127 = icmp eq ptr %cb.0.i, null
  br i1 %tobool.not.i127, label %while.body.i.mdio_mux_uninit_children.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

while.body.i.mdio_mux_uninit_children.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mdio_mux_uninit_children.exit

mdio_mux_uninit_children.exit:                    ; preds = %while.body.i.mdio_mux_uninit_children.exit_crit_edge, %err_loop.mdio_mux_uninit_children.exit_crit_edge
  call void @of_node_put(ptr noundef %child_bus_node.0134) #5
  br label %err_pb_kz

err_pb_kz:                                        ; preds = %mdio_mux_uninit_children.exit, %if.end12.err_pb_kz_crit_edge
  %ret_val.3 = phi i32 [ %ret_val.2, %mdio_mux_uninit_children.exit ], [ -12, %if.end12.err_pb_kz_crit_edge ]
  %dev64 = getelementptr inbounds %struct.mii_bus, ptr %parent_bus.0, i32 0, i32 11
  call void @put_device(ptr noundef %dev64) #5
  br label %err_parent_bus

err_parent_bus:                                   ; preds = %err_pb_kz, %if.end5.err_parent_bus_crit_edge
  %parent_bus_node.1 = phi ptr [ %parent_bus_node.0, %err_pb_kz ], [ %2, %if.end5.err_parent_bus_crit_edge ]
  %ret_val.4 = phi i32 [ %ret_val.3, %err_pb_kz ], [ -517, %if.end5.err_parent_bus_crit_edge ]
  call void @of_node_put(ptr noundef %parent_bus_node.1) #5
  br label %cleanup65

cleanup65:                                        ; preds = %err_parent_bus, %if.then59, %of_parse_phandle.exit.cleanup65_crit_edge, %of_parse_phandle.exit.thread, %entry.cleanup65_crit_edge
  %retval.0 = phi i32 [ %ret_val.4, %err_parent_bus ], [ 0, %if.then59 ], [ -19, %entry.cleanup65_crit_edge ], [ -19, %of_parse_phandle.exit.cleanup65_crit_edge ], [ -19, %of_parse_phandle.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_mdio_find_bus(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdio_mux_read(ptr nocapture noundef readonly %bus, i32 noundef %phy_id, i32 noundef %regnum) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %parent = getelementptr inbounds %struct.mdio_mux_child_bus, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %mdio_lock = getelementptr inbounds %struct.mii_bus, ptr %5, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock, i32 noundef 1) #5
  %switch_fn = getelementptr inbounds %struct.mdio_mux_parent_bus, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %switch_fn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %switch_fn, align 4
  %current_child = getelementptr inbounds %struct.mdio_mux_parent_bus, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %current_child to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %current_child, align 4
  %bus_number = getelementptr inbounds %struct.mdio_mux_child_bus, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %bus_number to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bus_number, align 4
  %switch_data = getelementptr inbounds %struct.mdio_mux_parent_bus, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %switch_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %switch_data, align 4
  %call = tail call i32 %7(i32 noundef %9, i32 noundef %11, ptr noundef %13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %bus_number to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bus_number, align 4
  %16 = ptrtoint ptr %current_child to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %current_child, align 4
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %3, align 4
  %read = getelementptr inbounds %struct.mii_bus, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read, align 4
  %call5 = tail call i32 %20(ptr noundef %18, i32 noundef %phy_id, i32 noundef %regnum) #5
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %r.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call5, %if.end ]
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %3, align 4
  %mdio_lock7 = getelementptr inbounds %struct.mii_bus, ptr %22, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %mdio_lock7) #5
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdio_mux_write(ptr nocapture noundef readonly %bus, i32 noundef %phy_id, i32 noundef %regnum, i16 noundef zeroext %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %parent = getelementptr inbounds %struct.mdio_mux_child_bus, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %mdio_lock = getelementptr inbounds %struct.mii_bus, ptr %5, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock, i32 noundef 1) #5
  %switch_fn = getelementptr inbounds %struct.mdio_mux_parent_bus, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %switch_fn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %switch_fn, align 4
  %current_child = getelementptr inbounds %struct.mdio_mux_parent_bus, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %current_child to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %current_child, align 4
  %bus_number = getelementptr inbounds %struct.mdio_mux_child_bus, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %bus_number to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bus_number, align 4
  %switch_data = getelementptr inbounds %struct.mdio_mux_parent_bus, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %switch_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %switch_data, align 4
  %call = tail call i32 %7(i32 noundef %9, i32 noundef %11, ptr noundef %13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %bus_number to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bus_number, align 4
  %16 = ptrtoint ptr %current_child to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %current_child, align 4
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %3, align 4
  %write = getelementptr inbounds %struct.mii_bus, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write, align 8
  %call5 = tail call i32 %20(ptr noundef %18, i32 noundef %phy_id, i32 noundef %regnum, i16 noundef zeroext %val) #5
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %r.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call5, %if.end ]
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %3, align 4
  %mdio_lock7 = getelementptr inbounds %struct.mii_bus, ptr %22, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %mdio_lock7) #5
  ret i32 %r.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mdio_mux_uninit(ptr nocapture noundef readonly %mux_handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %children.i = getelementptr inbounds %struct.mdio_mux_parent_bus, ptr %mux_handle, i32 0, i32 5
  %0 = ptrtoint ptr %children.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %cb.05.i = load ptr, ptr %children.i, align 4
  %tobool.not6.i = icmp eq ptr %cb.05.i, null
  br i1 %tobool.not6.i, label %entry.mdio_mux_uninit_children.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.mdio_mux_uninit_children.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %mdio_mux_uninit_children.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %cb.07.i = phi ptr [ %cb.0.i, %while.body.i.while.body.i_crit_edge ], [ %cb.05.i, %entry.while.body.i_crit_edge ]
  %1 = ptrtoint ptr %cb.07.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cb.07.i, align 4
  tail call void @mdiobus_unregister(ptr noundef %2) #5
  %3 = ptrtoint ptr %cb.07.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cb.07.i, align 4
  tail call void @mdiobus_free(ptr noundef %4) #5
  %next.i = getelementptr inbounds %struct.mdio_mux_child_bus, ptr %cb.07.i, i32 0, i32 2
  %5 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %cb.0.i = load ptr, ptr %next.i, align 4
  %tobool.not.i = icmp eq ptr %cb.0.i, null
  br i1 %tobool.not.i, label %while.body.i.mdio_mux_uninit_children.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

while.body.i.mdio_mux_uninit_children.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mdio_mux_uninit_children.exit

mdio_mux_uninit_children.exit:                    ; preds = %while.body.i.mdio_mux_uninit_children.exit_crit_edge, %entry.mdio_mux_uninit_children.exit_crit_edge
  %6 = ptrtoint ptr %mux_handle to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mux_handle, align 4
  %dev = getelementptr inbounds %struct.mii_bus, ptr %7, i32 0, i32 11
  tail call void @put_device(ptr noundef %dev) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_alloc_size(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !16, !18, !19, !20, !22, !23, !24, !26, !28, !30, !32, !34, !35}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/mdio/mdio-mux.c", i32 115, i32 10}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/mdio/mdio-mux.c", i32 147, i32 44}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/mdio/mdio-mux.c", i32 149, i32 4}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @mdio_mux_init._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @mdio_mux_init._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/mdio/mdio-mux.c", i32 170, i32 23}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/mdio/mdio-mux.c", i32 171, i32 46}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/mdio/mdio-mux.c", i32 184, i32 4}
!18 = !{ptr @mdio_mux_init._entry.9, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @mdio_mux_init._entry_ptr.11, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/mdio/mdio-mux.c", i32 197, i32 2}
!22 = !{ptr @mdio_mux_init._entry.12, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @mdio_mux_init._entry_ptr.14, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @__ksymtab_mdio_mux_init, !25, !"__ksymtab_mdio_mux_init", i1 false, i1 false}
!25 = !{!"../drivers/net/mdio/mdio-mux.c", i32 208, i32 1}
!26 = !{ptr @__ksymtab_mdio_mux_uninit, !27, !"__ksymtab_mdio_mux_uninit", i1 false, i1 false}
!27 = !{!"../drivers/net/mdio/mdio-mux.c", i32 217, i32 1}
!28 = !{ptr @__UNIQUE_ID_description281, !29, !"__UNIQUE_ID_description281", i1 false, i1 false}
!29 = !{!"../drivers/net/mdio/mdio-mux.c", i32 219, i32 1}
!30 = !{ptr @__UNIQUE_ID_author282, !31, !"__UNIQUE_ID_author282", i1 false, i1 false}
!31 = !{!"../drivers/net/mdio/mdio-mux.c", i32 220, i32 1}
!32 = !{ptr @__UNIQUE_ID_file283, !33, !"__UNIQUE_ID_file283", i1 false, i1 false}
!33 = !{!"../drivers/net/mdio/mdio-mux.c", i32 221, i32 1}
!34 = !{ptr @__UNIQUE_ID_license284, !33, !"__UNIQUE_ID_license284", i1 false, i1 false}
!35 = !{ptr @parent_count, !36, !"parent_count", i1 false, i1 false}
!36 = !{!"../drivers/net/mdio/mdio-mux.c", i32 83, i32 12}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{!"auto-init"}
